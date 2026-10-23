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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A126900: Coordination sequence for 6-dimensional cyclotomic lattice Z[zeta_18].

The programs for A126900, the canonical program `A126900.P10599716807792776889` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126900 has offset 0).

The definition of A126900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126900.P10599716807792776889

`A000007(n)+18*A060446(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126900

/-- `A000007(n)+18*A060446(n)` -/
def P10599716807792776889.Spec : Prop :=
  ∀ n, P10599716807792776889.a n = A126900 n

theorem P10599716807792776889.correct : P10599716807792776889.Spec := by
  intro n
  simp only [A126900]

end A126900

/-! ## A126900.P3290263699833079997

`A008683(A022144(n))+18*A060446(n)`
-/

namespace A126900.P3290263699833079997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022144 n).toNat + 18 * A060446 n

end

end A126900.P3290263699833079997

namespace A126900

/-- `A008683(A022144(n))+18*A060446(n)` -/
def P3290263699833079997.Spec : Prop :=
  ∀ n, P3290263699833079997.a n = A126900 n

end A126900

/-! ## A126900.P352505870103599637

`A245596(A121381(n)/A004084(n+1))+18*A060446(n)`
-/

namespace A126900.P352505870103599637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245596 (SequenceMachineLib.roundAway ((A121381 n : ℚ) / (A004084 (n + 1) : ℚ))).toNat + 18 * A060446 n

end

end A126900.P352505870103599637

namespace A126900

/-- `A245596(A121381(n)/A004084(n+1))+18*A060446(n)` -/
def P352505870103599637.Spec : Prop :=
  ∀ n, P352505870103599637.a n = A126900 n

end A126900

/-! ## A126900.P2590289345399616776

`or(18*A060446(n), A000007(2*n))`
-/

namespace A126900.P2590289345399616776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (18 * A060446 n) (A000007 (2 * n))

end

end A126900.P2590289345399616776

namespace A126900

/-- `or(18*A060446(n), A000007(2*n))` -/
def P2590289345399616776.Spec : Prop :=
  ∀ n, P2590289345399616776.a n = A126900 n

end A126900

/-! ## A126900.P4128183439411897851

`xor(18*A060446(n), A000007(3*n))`
-/

namespace A126900.P4128183439411897851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (18 * A060446 n) (A000007 (3 * n))

end

end A126900.P4128183439411897851

namespace A126900

/-- `xor(18*A060446(n), A000007(3*n))` -/
def P4128183439411897851.Spec : Prop :=
  ∀ n, P4128183439411897851.a n = A126900 n

end A126900

/-! ## A126900.P696077578521228457

`A142150(A000040(n+1))+18*A060446(n)`
-/

namespace A126900.P696077578521228457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A000040 (n + 1)).toNat + 18 * A060446 n

end

end A126900.P696077578521228457

namespace A126900

/-- `A142150(A000040(n+1))+18*A060446(n)` -/
def P696077578521228457.Spec : Prop :=
  ∀ n, P696077578521228457.a n = A126900 n

end A126900

/-! ## A126900.P1584566625785265160

`A008683((n+1)²)+18*A060446(n)`
-/

namespace A126900.P1584566625785265160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + 18 * A060446 n

end

end A126900.P1584566625785265160

namespace A126900

/-- `A008683((n+1)²)+18*A060446(n)` -/
def P1584566625785265160.Spec : Prop :=
  ∀ n, P1584566625785265160.a n = A126900 n

end A126900

/-!
# A126904: Coordination sequence for 8-dimensional cyclotomic lattice Z[zeta_24].

The programs for A126904, there is no canonical definition to state claims against.
-/

/-! ## A126904.P1631658237500155960

`A246692(A258475(n+5)^A258445(2*(n+1)))`
-/

namespace A126904.P1631658237500155960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (SequenceMachineLib.roundAway ((A258475 (n + 5) : ℚ) ^ (A258445 (2 * (n + 1)) : ℤ))).toNat

end

end A126904.P1631658237500155960

/-!
# A126905: Coordination sequence for 20-dimensional cyclotomic lattice Z[zeta_25].

The programs for A126905, there is no canonical definition to state claims against.
-/

/-! ## A126905.P12731572777968539527

`A185246(A000124(n))+A060853(n)`
-/

namespace A126905.P12731572777968539527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A000124 n).toNat + A060853 n

end

end A126905.P12731572777968539527

/-! ## A126905.P16511105355893597224

`∑[A010971(n)]+5*A214000(A306721(n))`
-/

namespace A126905.P16511105355893597224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010971 (n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * A214000 (A306721 n).toNat

end

end A126905.P16511105355893597224

/-!
# A126907: Numbers k such that 1 + k^2 + k^4 + k^5 is prime.

The programs for A126907, there is no canonical definition to state claims against.
-/

/-! ## A126907.P12455771558323822147

`A332296(A276142(n+1))+A153452(3*(n+1))`
-/

namespace A126907.P12455771558323822147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332296 (A276142 (n + 1)).toNat + A153452 (3 * (n + 1))

end

end A126907.P12455771558323822147

/-!
# A126909: Numbers k such that 1 + k^2 + k^4 + k^6 + k^8 + k^9 is prime.

The programs for A126909, there is no canonical definition to state claims against.
-/

/-! ## A126909.P4467985815615024151

`∑[A000005(A026098(n+3)!)]`
-/

namespace A126909.P4467985815615024151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (A026098 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126909.P4467985815615024151

/-!
# A126915: Numbers k such that 1 + k^2 + k^4 + k^6 + k^8 + k^10 + k^12 + k^14 + k^16 + k^18 + k^20 + k^21 is prime.

The programs for A126915, there is no canonical definition to state claims against.
-/

/-! ## A126915.P12025824382114261711

`A302601(n+1)+A302601(A357692(n+1))`
-/

namespace A126915.P12025824382114261711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302601 (n + 1) + A302601 (A357692 (n + 1)).toNat

end

end A126915.P12025824382114261711

/-!
# A126917: a(1)=1. a(n) = the (largest proper divisor of n)th integer from among those positive integers not occurring earlier in the sequence.

The programs for A126917, there is no canonical definition to state claims against.
-/

/-! ## A126917.P13605666422129261041

`A008619(A269382(n)%A238790(3*n+2))`
-/

namespace A126917.P13605666422129261041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A269382 n) (A238790 (3 * n + 2))).toNat

end

end A126917.P13605666422129261041

/-! ## A126917.P17673404783700362689

`A110654(A269379(n+1))%A215470(2*(n+1))`
-/

namespace A126917.P17673404783700362689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A269379 (n + 1)).toNat) (A215470 (2 * (n + 1)))

end

end A126917.P17673404783700362689

/-! ## A126917.P18294888255068797936

`A008619(A269379(n+1)%A125524(3*n+2))`
-/

namespace A126917.P18294888255068797936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A269379 (n + 1)) (A125524 (3 * n + 2))).toNat

end

end A126917.P18294888255068797936

/-! ## A126917.P17604001825178792777

`A003602(A269379(n+1))%A353848(3*n+4)`
-/

namespace A126917.P17604001825178792777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A269379 (n + 1)).toNat) (A353848 (3 * n + 4))

end

end A126917.P17604001825178792777

/-!
# A126918: Inverse permutation to sequence A126917.

The programs for A126918, there is no canonical definition to state claims against.
-/

/-! ## A126918.P10160688731986161691

`A253558(A001248(A253554(A269172(2*n+1))))`
-/

namespace A126918.P10160688731986161691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253558 (A001248 (A253554 (A269172 (2 * n + 1)).toNat).toNat).toNat

end

end A126918.P10160688731986161691

/-! ## A126918.P7622702848704201351

`A269396(A269380(2*n+1))%A269421(2*(n+2))`
-/

namespace A126918.P7622702848704201351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269396 (A269380 (2 * n + 1)).toNat) (A269421 (2 * (n + 2)))

end

end A126918.P7622702848704201351

/-! ## A126918.P4323345191591044387

`A033677(A036438(n+1)%A259133(n+1))`
-/

namespace A126918.P4323345191591044387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (Int.tmod (A036438 (n + 1)) (A259133 (n + 1))).toNat

end

end A126918.P4323345191591044387

/-! ## A126918.P11827932435992058929

`A268674(A269172(2*n+1)%A259133(n+1))`
-/

namespace A126918.P11827932435992058929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.tmod (A269172 (2 * n + 1)) (A259133 (n + 1))).toNat

end

end A126918.P11827932435992058929

/-! ## A126918.P14041128154027532659

`A269380(A128135(n+1))`
-/

namespace A126918.P14041128154027532659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A128135 (n + 1)).toNat

end

end A126918.P14041128154027532659

/-!
# A126925: Coordination sequence for 24-dimensional cyclotomic lattice Z[zeta_35].

The programs for A126925, there is no canonical definition to state claims against.
-/

/-! ## A126925.P8107805420632526195

`A010987(n)-A363720(A346895(n))`
-/

namespace A126925.P8107805420632526195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010987 (n + 34) - A363720 (A346895 n).toNat

end

end A126925.P8107805420632526195

/-!
# A126929: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126929, there is no canonical definition to state claims against.
-/

/-! ## A126929.P5073059875957028767

`A033453(n+1)-A027746(A106411(n))`
-/

namespace A126929.P5073059875957028767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033453 (n + 1) - A027746 (A106411 n).toNat

end

end A126929.P5073059875957028767

/-!
# A126930: Inverse binomial transform of A005043.

The programs for A126930, the canonical program `A126930.P10974584581349947886` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126930 has offset 0).

The definition of A126930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126930.P10974584581349947886

`(-1)^n*A001405(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126930

/-- `(-1)^n*A001405(n)` -/
def P10974584581349947886.Spec : Prop :=
  ∀ n, P10974584581349947886.a n = A126930 n

theorem P10974584581349947886.correct : P10974584581349947886.Spec := by
  intro n
  simp only [A126930]

end A126930

/-! ## A126930.P10946080363394696046

`(-1)^n*C(n, floor(n/2))`
-/

namespace A126930.P10946080363394696046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A126930.P10946080363394696046

namespace A126930

/-- `(-1)^n*C(n, floor(n/2))` -/
def P10946080363394696046.Spec : Prop :=
  ∀ n, P10946080363394696046.a n = A126930 n

end A126930

/-! ## A126930.P263666676704400516

`a(n-1)/(floor(n/2)/n-1)` with `a(0)=1`
-/

namespace A126930.P263666676704400516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

end

end A126930.P263666676704400516

namespace A126930

/-- `a(n-1)/(floor(n/2)/n-1)` -/
def P263666676704400516.Spec : Prop :=
  ∀ n, P263666676704400516.a n = (A126930 n : ℚ)

end A126930

/-! ## A126930.P2112701592622679221

`A097331(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A126930.P2112701592622679221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097331 n - (a (n - 1) + a (n - 1))

end

end A126930.P2112701592622679221

namespace A126930

/-- `A097331(n)-(a(n-1)+a(n-1))` -/
def P2112701592622679221.Spec : Prop :=
  ∀ n, P2112701592622679221.a n = A126930 n

end A126930

/-! ## A126930.P10076818303554323238

`A126869(n)-A138364(n)`
-/

namespace A126930.P10076818303554323238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - A138364 n

end

end A126930.P10076818303554323238

namespace A126930

/-- `A126869(n)-A138364(n)` -/
def P10076818303554323238.Spec : Prop :=
  ∀ n, P10076818303554323238.a n = A126930 n

end A126930

/-! ## A126930.P3379554066101871953

`A001405(n)*A033999(n)`
-/

namespace A126930.P3379554066101871953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A033999 n

end

end A126930.P3379554066101871953

namespace A126930

/-- `A001405(n)*A033999(n)` -/
def P3379554066101871953.Spec : Prop :=
  ∀ n, P3379554066101871953.a n = A126930 n

end A126930

/-! ## A126930.P11243089835887466021

`A001405(n)-A126869(n+1)`
-/

namespace A126930.P11243089835887466021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A126869 (n + 1)

end

end A126930.P11243089835887466021

namespace A126930

/-- `A001405(n)-A126869(n+1)` -/
def P11243089835887466021.Spec : Prop :=
  ∀ n, P11243089835887466021.a n = A126930 n

end A126930

/-! ## A126930.P1011368060796287976

`A001405(n)/A033999(n+2)`
-/

namespace A126930.P1011368060796287976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A126930.P1011368060796287976

namespace A126930

/-- `A001405(n)/A033999(n+2)` -/
def P1011368060796287976.Spec : Prop :=
  ∀ n, P1011368060796287976.a n = (A126930 n : ℚ)

end A126930

/-! ## A126930.P15376702521063356704

`A001405(n)-2*A138364(n)`
-/

namespace A126930.P15376702521063356704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - 2 * A138364 n

end

end A126930.P15376702521063356704

namespace A126930

/-- `A001405(n)-2*A138364(n)` -/
def P15376702521063356704.Spec : Prop :=
  ∀ n, P15376702521063356704.a n = A126930 n

end A126930

/-! ## A126930.P5136433571270990361

`A001405(n)*A056594(2*n)`
-/

namespace A126930.P5136433571270990361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A056594 (2 * n)

end

end A126930.P5136433571270990361

namespace A126930

/-- `A001405(n)*A056594(2*n)` -/
def P5136433571270990361.Spec : Prop :=
  ∀ n, P5136433571270990361.a n = A126930 n

end A126930

/-! ## A126930.P12630271788706588542

`A001405(n)*A057077(2*n)`
-/

namespace A126930.P12630271788706588542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A057077 (2 * n)

end

end A126930.P12630271788706588542

namespace A126930

/-- `A001405(n)*A057077(2*n)` -/
def P12630271788706588542.Spec : Prop :=
  ∀ n, P12630271788706588542.a n = A126930 n

end A126930

/-! ## A126930.P17240639898170692800

`A001405(n)*A087960(2*n)`
-/

namespace A126930.P17240639898170692800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A087960 (2 * n)

end

end A126930.P17240639898170692800

namespace A126930

/-- `A001405(n)*A087960(2*n)` -/
def P17240639898170692800.Spec : Prop :=
  ∀ n, P17240639898170692800.a n = A126930 n

end A126930

/-! ## A126930.P13664764991083149193

`A126869(n)+n*A210628(n)`
-/

namespace A126930.P13664764991083149193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + (n : ℤ) * A210628 n

end

end A126930.P13664764991083149193

namespace A126930

/-- `A126869(n)+n*A210628(n)` -/
def P13664764991083149193.Spec : Prop :=
  ∀ n, P13664764991083149193.a n = A126930 n

end A126930

/-! ## A126930.P2425198337868304806

`A126869(n)-n*A097331(n)`
-/

namespace A126930.P2425198337868304806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - (n : ℤ) * A097331 n

end

end A126930.P2425198337868304806

namespace A126930

/-- `A126869(n)-n*A097331(n)` -/
def P2425198337868304806.Spec : Prop :=
  ∀ n, P2425198337868304806.a n = A126930 n

end A126930

/-! ## A126930.P14503962857965753922

`A210736(n+1)-A126869(n+1)`
-/

namespace A126930.P14503962857965753922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A126869 (n + 1)

end

end A126930.P14503962857965753922

namespace A126930

/-- `A210736(n+1)-A126869(n+1)` -/
def P14503962857965753922.Spec : Prop :=
  ∀ n, P14503962857965753922.a n = A126930 n

end A126930

/-! ## A126930.P9289634431445503175

`A210736(n+1)-2*A138364(n)`
-/

namespace A126930.P9289634431445503175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - 2 * A138364 n

end

end A126930.P9289634431445503175

namespace A126930

/-- `A210736(n+1)-2*A138364(n)` -/
def P9289634431445503175.Spec : Prop :=
  ∀ n, P9289634431445503175.a n = A126930 n

end A126930

/-! ## A126930.P13047006815891435677

`A001405(n)*A101455(2*n+1)`
-/

namespace A126930.P13047006815891435677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A101455 (2 * n + 1)

end

end A126930.P13047006815891435677

namespace A126930

/-- `A001405(n)*A101455(2*n+1)` -/
def P13047006815891435677.Spec : Prop :=
  ∀ n, P13047006815891435677.a n = A126930 n

end A126930

/-! ## A126930.P14510258330822584478

`A056594(2*n)*A210736(n+1)`
-/

namespace A126930.P14510258330822584478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A210736 (n + 1)

end

end A126930.P14510258330822584478

namespace A126930

/-- `A056594(2*n)*A210736(n+1)` -/
def P14510258330822584478.Spec : Prop :=
  ∀ n, P14510258330822584478.a n = A126930 n

end A126930

/-! ## A126930.P7133225815864141299

`A126120(n)+A126869(n)-A057977(n)`
-/

namespace A126930.P7133225815864141299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + (A126869 n - A057977 n)

end

end A126930.P7133225815864141299

namespace A126930

/-- `A126120(n)+A126869(n)-A057977(n)` -/
def P7133225815864141299.Spec : Prop :=
  ∀ n, P7133225815864141299.a n = A126930 n

end A126930

/-! ## A126930.P9883397195756976701

`A126869(n)-(A001405(n)-A126869(n))`
-/

namespace A126930.P9883397195756976701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - (A001405 n - A126869 n)

end

end A126930.P9883397195756976701

namespace A126930

/-- `A126869(n)-(A001405(n)-A126869(n))` -/
def P9883397195756976701.Spec : Prop :=
  ∀ n, P9883397195756976701.a n = A126930 n

end A126930

/-!
# A126931: a(n) = A127359(n+1)/2 - A127359(n).

The programs for A126931, there is no canonical definition to state claims against.
-/

/-! ## A126931.P4443178616523097827

`A127359(n+1)/2-A127359(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126931.P4443178616523097827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127359 (n + 1) : ℚ) / 2 - (A127359 n : ℚ)

end

end A126931.P4443178616523097827

/-! ## A126931.P12653579683064789175

`A102898(n+1)/3`
-/

namespace A126931.P12653579683064789175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102898 (n + 1) : ℚ) / 3

end

end A126931.P12653579683064789175

/-! ## A126931.P14528264257247423472

`A126953(∑[n])`
-/

namespace A126931.P14528264257247423472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126931.P14528264257247423472

/-! ## A126931.P16788420526763564571

`A171509(∑[n])`
-/

namespace A126931.P16788420526763564571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126931.P16788420526763564571

/-! ## A126931.P10952678058896360868

`record[A126953(n)]`
-/

namespace A126931.P10952678058896360868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126931.P10952678058896360868

/-! ## A126931.P7692530957268145202

`A028235(A151800(n))*A126953(A000217(n))`
-/

namespace A126931.P7692530957268145202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A151800 n).toNat * A126953 (A000217 n).toNat

end

end A126931.P7692530957268145202

/-!
# A126932: Binomial transform of A127358.

The programs for A126932, there is no canonical definition to state claims against.
-/

/-! ## A126932.P3489274700687431302

`2*A059738(n)-A005773(n+1)`
-/

namespace A126932.P3489274700687431302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059738 n - A005773 (n + 1)

end

end A126932.P3489274700687431302

/-! ## A126932.P7586360057994582277

`record[2*A126954(n)-A038622(n)]`
-/

namespace A126932.P7586360057994582277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126954 n - A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126932.P7586360057994582277

/-! ## A126932.P14652272524737576173

`A254667(A094833(n+1))-A014384(n)`
-/

namespace A126932.P14652272524737576173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A094833 (n + 1)).toNat - A014384 n

end

end A126932.P14652272524737576173

/-!
# A126933: Quotients arising from sequence A053312.

The programs for A126933, the canonical program `A126933.P12167011402341251936` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126933 has offset 1).

The definition of A126933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126933.P12167011402341251936

`A053312(n+1)/Δ[A126646(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126933

/-- `A053312(n+1)/Δ[A126646(n)]` -/
def P12167011402341251936.Spec : Prop :=
  ∀ n, P12167011402341251936.a n = (A126933 (n + 1) : ℚ)

end A126933

/-! ## A126933.P1614864560566386920

`A053312(n+1)/A000079(n+1)`
-/

namespace A126933.P1614864560566386920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053312 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A126933.P1614864560566386920

namespace A126933

/-- `A053312(n+1)/A000079(n+1)` -/
def P1614864560566386920.Spec : Prop :=
  ∀ n, P1614864560566386920.a n = (A126933 (n + 1) : ℚ)

end A126933

/-! ## A126933.P16070756893498085319

`A053312(n+1)/A011782(n+2)`
-/

namespace A126933.P16070756893498085319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053312 (n + 1) : ℚ) / (A011782 (n + 2) : ℚ)

end

end A126933.P16070756893498085319

namespace A126933

/-- `A053312(n+1)/A011782(n+2)` -/
def P16070756893498085319.Spec : Prop :=
  ∀ n, P16070756893498085319.a n = (A126933 (n + 1) : ℚ)

end A126933

/-! ## A126933.P6833913574306736611

`A053312(n+1)/A131577(n+2)`
-/

namespace A126933.P6833913574306736611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053312 (n + 1) : ℚ) / (A131577 (n + 2) : ℚ)

end

end A126933.P6833913574306736611

namespace A126933

/-- `A053312(n+1)/A131577(n+2)` -/
def P6833913574306736611.Spec : Prop :=
  ∀ n, P6833913574306736611.a n = (A126933 (n + 1) : ℚ)

end A126933

/-! ## A126933.P18435084720666343537

`3*A053312(n+1)/A007283(n+1)`
-/

namespace A126933.P18435084720666343537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A053312 (n + 1) : ℚ) / (A007283 (n + 1) : ℚ)

end

end A126933.P18435084720666343537

namespace A126933

/-- `3*A053312(n+1)/A007283(n+1)` -/
def P18435084720666343537.Spec : Prop :=
  ∀ n, P18435084720666343537.a n = (A126933 (n + 1) : ℚ)

end A126933

/-! ## A126933.P92466704392754745

`A053312(n+1)/A072345(A005408(n))`
-/

namespace A126933.P92466704392754745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053312 (n + 1) : ℚ) / (A072345 (A005408 n).toNat : ℚ)

end

end A126933.P92466704392754745

namespace A126933

/-- `A053312(n+1)/A072345(A005408(n))` -/
def P92466704392754745.Spec : Prop :=
  ∀ n, P92466704392754745.a n = (A126933 (n + 1) : ℚ)

end A126933

/-! ## A126933.P17033759695135115813

`A050620(n+1)/A035014(n+1)*A053312(n+1)`
-/

namespace A126933.P17033759695135115813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050620 (n + 1) : ℚ) / (A035014 (n + 1) : ℚ) * (A053312 (n + 1) : ℚ)

end

end A126933.P17033759695135115813

namespace A126933

/-- `A050620(n+1)/A035014(n+1)*A053312(n+1)` -/
def P17033759695135115813.Spec : Prop :=
  ∀ n, P17033759695135115813.a n = (A126933 (n + 1) : ℚ)

end A126933

/-!
# A126934: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(0,2n).

The programs for A126934, the canonical program `A126934.P7330697824820049470` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126934 has offset 0).

The definition of A126934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126934.P7330697824820049470

`(-1)^n*A001147(n)*A001813(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126934

/-- `(-1)^n*A001147(n)*A001813(n)` -/
def P7330697824820049470.Spec : Prop :=
  ∀ n, P7330697824820049470.a n = A126934 n

theorem P7330697824820049470.correct : P7330697824820049470.Spec := by
  intro n
  simp only [A126934]

end A126934

/-! ## A126934.P14906889515549505372

`-∏[-record[(2*n²)^and(1, n)]]`
-/

namespace A126934.P14906889515549505372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A126934.P14906889515549505372

namespace A126934

/-- `-∏[-record[(2*n²)^and(1, n)]]` -/
def P14906889515549505372.Spec : Prop :=
  ∀ n, P14906889515549505372.a n = A126934 n

end A126934

/-! ## A126934.P1278937973935801184

`(-1)^n*∏[record[(2*n²)^and(1, n)]]`
-/

namespace A126934.P1278937973935801184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A126934.P1278937973935801184

namespace A126934

/-- `(-1)^n*∏[record[(2*n²)^and(1, n)]]` -/
def P1278937973935801184.Spec : Prop :=
  ∀ n, P1278937973935801184.a n = A126934 n

end A126934

/-! ## A126934.P7664841998794971206

`∏[2-4*n]/2*∏[abs(1-2*n)]`
-/

namespace A126934.P7664841998794971206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A126934.P7664841998794971206

namespace A126934

/-- `∏[2-4*n]/2*∏[abs(1-2*n)]` -/
def P7664841998794971206.Spec : Prop :=
  ∀ n, P7664841998794971206.a n = (A126934 n : ℚ)

end A126934

/-! ## A126934.P17453354567096255807

`-∏[-A077591(n)]`
-/

namespace A126934.P17453354567096255807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A126934.P17453354567096255807

namespace A126934

/-- `-∏[-A077591(n)]` -/
def P17453354567096255807.Spec : Prop :=
  ∀ n, P17453354567096255807.a n = A126934 n

end A126934

/-!
# A126935: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(n,3).

The programs for A126935, the canonical program `A126935.P13333738668432150418` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126935 has offset 0).

The definition of A126935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126935.P13333738668432150418

`n*(n+2)*(n-5)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126935

/-- `n*(n+2)*(n-5)` -/
def P13333738668432150418.Spec : Prop :=
  ∀ n, P13333738668432150418.a n = A126935 n

theorem P13333738668432150418.correct : P13333738668432150418.Spec := by
  intro n
  simp only [A126935]

end A126935

/-! ## A126935.P3061649118637662589

`6-∑[∑[a(n-1)-6]]` with `a(0)=6, a(1)=6`
-/

namespace A126935.P3061649118637662589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126935.P3061649118637662589

namespace A126935

/-- `6-∑[∑[a(n-1)-6]]` -/
def P3061649118637662589.Spec : Prop :=
  ∀ n, P3061649118637662589.a n = A126935 n

end A126935

/-! ## A126935.P13867052863694676166

`n^3-A140678(n)`
-/

namespace A126935.P13867052863694676166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A140678 n

end

end A126935.P13867052863694676166

namespace A126935

/-- `n^3-A140678(n)` -/
def P13867052863694676166.Spec : Prop :=
  ∀ n, P13867052863694676166.a n = A126935 n

end A126935

/-! ## A126935.P18226479276587062241

`A007531(n)-12*n`
-/

namespace A126935.P18226479276587062241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n - (12 * n : ℤ)

end

end A126935.P18226479276587062241

namespace A126935

/-- `A007531(n)-12*n` -/
def P18226479276587062241.Spec : Prop :=
  ∀ n, P18226479276587062241.a n = A126935 n

end A126935

/-! ## A126935.P6191320163680986164

`A098547(n)-A082112(n)`
-/

namespace A126935.P6191320163680986164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n - A082112 n

end

end A126935.P6191320163680986164

namespace A126935

/-- `A098547(n)-A082112(n)` -/
def P6191320163680986164.Spec : Prop :=
  ∀ n, P6191320163680986164.a n = A126935 n

end A126935

/-! ## A126935.P2109125931325760954

`A177058(n)-A017305(n)`
-/

namespace A126935.P2109125931325760954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177058 n - A017305 n

end

end A126935.P2109125931325760954

namespace A126935

/-- `A177058(n)-A017305(n)` -/
def P2109125931325760954.Spec : Prop :=
  ∀ n, P2109125931325760954.a n = A126935 n

end A126935

/-! ## A126935.P815521354813371995

`A081437(n)-A131878(n)`
-/

namespace A126935.P815521354813371995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n - A131878 n

end

end A126935.P815521354813371995

namespace A126935

/-- `A081437(n)-A131878(n)` -/
def P815521354813371995.Spec : Prop :=
  ∀ n, P815521354813371995.a n = A126935 n

end A126935

/-! ## A126935.P10503365733201525008

`A168297(n)-A082109(n)`
-/

namespace A126935.P10503365733201525008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 n - A082109 n

end

end A126935.P10503365733201525008

namespace A126935

/-- `A168297(n)-A082109(n)` -/
def P10503365733201525008.Spec : Prop :=
  ∀ n, P10503365733201525008.a n = A126935 n

end A126935

/-! ## A126935.P9266762795729856854

`A242659(n)-A008596(n)`
-/

namespace A126935.P9266762795729856854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n - A008596 n

end

end A126935.P9266762795729856854

namespace A126935

/-- `A242659(n)-A008596(n)` -/
def P9266762795729856854.Spec : Prop :=
  ∀ n, P9266762795729856854.a n = A126935 n

end A126935

/-! ## A126935.P17763935083228233362

`A123972(n)-A161532(n)`
-/

namespace A126935.P17763935083228233362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123972 n - A161532 n

end

end A126935.P17763935083228233362

namespace A126935

/-- `A123972(n)-A161532(n)` -/
def P17763935083228233362.Spec : Prop :=
  ∀ n, P17763935083228233362.a n = A126935 n

end A126935

/-! ## A126935.P16620653738690842447

`A152015(n)-A139576(n)`
-/

namespace A126935.P16620653738690842447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 n - A139576 n

end

end A126935.P16620653738690842447

namespace A126935

/-- `A152015(n)-A139576(n)` -/
def P16620653738690842447.Spec : Prop :=
  ∀ n, P16620653738690842447.a n = A126935 n

end A126935

/-! ## A126935.P9993299040675773847

`A155965(n)-A140679(n)`
-/

namespace A126935.P9993299040675773847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155965 n - A140679 n

end

end A126935.P9993299040675773847

namespace A126935

/-- `A155965(n)-A140679(n)` -/
def P9993299040675773847.Spec : Prop :=
  ∀ n, P9993299040675773847.a n = A126935 n

end A126935

/-! ## A126935.P8685461877303020333

`A242135(n)-A140677(n)`
-/

namespace A126935.P8685461877303020333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n - A140677 n

end

end A126935.P8685461877303020333

namespace A126935

/-- `A242135(n)-A140677(n)` -/
def P8685461877303020333.Spec : Prop :=
  ∀ n, P8685461877303020333.a n = A126935 n

end A126935

/-! ## A126935.P1296038251754149395

`A370912(n)-A147651(n)`
-/

namespace A126935.P1296038251754149395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - A147651 n

end

end A126935.P1296038251754149395

namespace A126935

/-- `A370912(n)-A147651(n)` -/
def P1296038251754149395.Spec : Prop :=
  ∀ n, P1296038251754149395.a n = A126935 n

end A126935

/-! ## A126935.P16160497030272417693

`A300758(n)-A280304(n)`
-/

namespace A126935.P16160497030272417693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n - A280304 n

end

end A126935.P16160497030272417693

namespace A126935

/-- `A300758(n)-A280304(n)` -/
def P16160497030272417693.Spec : Prop :=
  ∀ n, P16160497030272417693.a n = A126935 n

end A126935

/-! ## A126935.P10160902802961942213

`A034324(n+1)-A190991(n)`
-/

namespace A126935.P10160902802961942213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034324 (n + 1) - A190991 n

end

end A126935.P10160902802961942213

namespace A126935

/-- `A034324(n+1)-A190991(n)` -/
def P10160902802961942213.Spec : Prop :=
  ∀ n, P10160902802961942213.a n = A126935 n

end A126935

/-! ## A126935.P1346753780859062333

`A061600(n)-A166143(n+1)`
-/

namespace A126935.P1346753780859062333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 n - A166143 (n + 1)

end

end A126935.P1346753780859062333

namespace A126935

/-- `A061600(n)-A166143(n+1)` -/
def P1346753780859062333.Spec : Prop :=
  ∀ n, P1346753780859062333.a n = A126935 n

end A126935

/-! ## A126935.P7446939924968106154

`A081423(n)-A166146(n+1)`
-/

namespace A126935.P7446939924968106154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081423 n - A166146 (n + 1)

end

end A126935.P7446939924968106154

namespace A126935

/-- `A081423(n)-A166146(n+1)` -/
def P7446939924968106154.Spec : Prop :=
  ∀ n, P7446939924968106154.a n = A126935 n

end A126935

/-! ## A126935.P10476954267385336192

`A100705(n)-A166147(n+1)`
-/

namespace A126935.P10476954267385336192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n - A166147 (n + 1)

end

end A126935.P10476954267385336192

namespace A126935

/-- `A100705(n)-A166147(n+1)` -/
def P10476954267385336192.Spec : Prop :=
  ∀ n, P10476954267385336192.a n = A126935 n

end A126935

/-!
# A126936: Coefficients of a polynomial representation of the integral of 1/(x^4 + 2*a*x^2 + 1)^(n+1) from x = 0 to infinity.

The programs for A126936, there is no canonical definition to state claims against.
-/

/-! ## A126936.P15966860019979096978

`A067001(∑[2*n]%comp[∑[n]])`
-/

namespace A126936.P15966860019979096978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067001 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A126936.P15966860019979096978

/-! ## A126936.P2724337560785539776

`A067001(∑[char[∑[n]]]²-(n+1))`
-/

namespace A126936.P2724337560785539776
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067001 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A126936.P2724337560785539776

/-! ## A126936.P17919263138861649755

`lcm(A000034(n), A067001(A061579(n)))`
-/

namespace A126936.P17919263138861649755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A067001 (A061579 n).toNat)

end

end A126936.P17919263138861649755

/-! ## A126936.P8136904947790612337

`or(A000007(n), A067001(A061579(n)))`
-/

namespace A126936.P8136904947790612337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A067001 (A061579 n).toNat)

end

end A126936.P8136904947790612337

/-! ## A126936.P11062091115456273344

`A007318(∑[n])*A067001(A061579(n))`
-/

namespace A126936.P11062091115456273344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A067001 (A061579 n).toNat

end

end A126936.P11062091115456273344

/-!
# A126938: a(1) = 3, a(n) = the smallest prime p > a(n-1) such that (a(n-1)+p)/2 is prime.

The programs for A126938, there is no canonical definition to state claims against.
-/

/-! ## A126938.P2344911930415405826

`A084696(Δ[n²])`
-/

namespace A126938.P2344911930415405826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126938.P2344911930415405826

/-! ## A126938.P5204806154173666243

`p?[A084696(2*n+1)]`
-/

namespace A126938.P5204806154173666243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126938.P5204806154173666243

/-! ## A126938.P7382243753630297869

`or(1, A084696(or(1, 2*n)))`
-/

namespace A126938.P7382243753630297869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084696 (Nat.lor 1 (2 * n)))

end

end A126938.P7382243753630297869

/-! ## A126938.P2213886894803286307

`or(1, A084696(A005408(n)))`
-/

namespace A126938.P2213886894803286307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084696 (A005408 n).toNat)

end

end A126938.P2213886894803286307

/-! ## A126938.P292209638007335053

`A033999(n)²*A084696(2*n+1)`
-/

namespace A126938.P292209638007335053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A084696 (2 * n + 1)

end

end A126938.P292209638007335053

/-! ## A126938.P12291967666151725402

`A033999(2*n)*A084696(2*n+1)`
-/

namespace A126938.P12291967666151725402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A084696 (2 * n + 1)

end

end A126938.P12291967666151725402

/-! ## A126938.P10028881322732585791

`A084696(A005408(n))%A000040(n+1)²`
-/

namespace A126938.P10028881322732585791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084696 (A005408 n).toNat) (A000040 (n + 1) ^ 2)

end

end A126938.P10028881322732585791

/-! ## A126938.P6154798932153562651

`A001222(A084696(n+2))*A084696(2*n+1)`
-/

namespace A126938.P6154798932153562651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084696 (n + 2)).toNat * A084696 (2 * n + 1)

end

end A126938.P6154798932153562651

/-! ## A126938.P3824631762877444284

`A084696(2*n+1)+A002265(Δ[A002265(n+1)])`
-/

namespace A126938.P3824631762877444284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1) + A002265 (f1 (n + 1) - f1 n).toNat

end

end A126938.P3824631762877444284

/-! ## A126938.P14373163722695017283

`A084696(A005408(n+1))-Δ[A084696(2*n+1)]`
-/

namespace A126938.P14373163722695017283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (A005408 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A126938.P14373163722695017283

/-! ## A126938.P3001740168932167728

`A002265(2*n+1)+A084696(2*n+1)-A002265(2*n)`
-/

namespace A126938.P3001740168932167728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n + 1) + (A084696 (2 * n + 1) - A002265 (2 * n))

end

end A126938.P3001740168932167728

/-! ## A126938.P7280661540908862302

`(A026922(2*(n+1))-A026922(2*n+1))*A084696(2*n+1)`
-/

namespace A126938.P7280661540908862302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026922 (2 * (n + 1)) - A026922 (2 * n + 1)) * A084696 (2 * n + 1)

end

end A126938.P7280661540908862302

/-! ## A126938.P18052108712694537780

`A020639(A084696(n+1+n))`
-/

namespace A126938.P18052108712694537780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084696 (n + 1 + n)).toNat

end

end A126938.P18052108712694537780

/-! ## A126938.P2477894336931285186

`filter[A084696(2*n+1), A008966(#)]`
-/

namespace A126938.P2477894336931285186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A126938.P2477894336931285186

/-! ## A126938.P15130823597623502288

`filter[A084696(2*n+1), A010051(#)]`
-/

namespace A126938.P15130823597623502288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A126938.P15130823597623502288

/-! ## A126938.P8805538087728620289

`filter[A084696(2*n+1), A066829(#)]`
-/

namespace A126938.P8805538087728620289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A126938.P8805538087728620289

/-! ## A126938.P12958225257518126579

`filter[A084696(2*n+1), A069513(#)]`
-/

namespace A126938.P12958225257518126579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A126938.P12958225257518126579

/-! ## A126938.P6908706576958514498

`filter[A084696(2*n+1), A011558(#)]`
-/

namespace A126938.P6908706576958514498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A126938.P6908706576958514498

/-! ## A126938.P9996395813131823524

`filter[A084696(2*n+1), A014306(#)]`
-/

namespace A126938.P9996395813131823524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A126938.P9996395813131823524

/-! ## A126938.P7320465736507808435

`filter[A084696(2*n+1), A035263(#)]`
-/

namespace A126938.P7320465736507808435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A126938.P7320465736507808435

/-!
# A126939: "Model 1" for number of free alkanes on n points.

The programs for A126939, there is no canonical definition to state claims against.
-/

/-! ## A126939.P18064628220531993042

`A220494(A085294(n))`
-/

namespace A126939.P18064628220531993042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220494 (A085294 n).toNat

end

end A126939.P18064628220531993042

/-! ## A126939.P13380936544484757737

`A220494(A244519(n))`
-/

namespace A126939.P13380936544484757737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220494 (A244519 n).toNat

end

end A126939.P13380936544484757737

/-! ## A126939.P14696159163767213398

`A220494(A247293(n))`
-/

namespace A126939.P14696159163767213398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220494 (A247293 n).toNat

end

end A126939.P14696159163767213398

/-!
# A126940: "Model 2" for number of free alkanes on n points.

The programs for A126940, there is no canonical definition to state claims against.
-/

/-! ## A126940.P15948484436146487731

`A126945(n+1)-(A126946(n+2)+A126946(n))`
-/

namespace A126940.P15948484436146487731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126945 (n + 1) - (A126946 (n + 2) + A126946 n)

end

end A126940.P15948484436146487731

/-! ## A126940.P3683532832288708285

`A008676(Δ[Δ[A068995(n+1)]])`
-/

namespace A126940.P3683532832288708285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (n + 1) - f1 n).toNat

end

end A126940.P3683532832288708285

/-! ## A126940.P13059812174378381294

`A156689(A151285(n)-A073188(n))`
-/

namespace A126940.P13059812174378381294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A151285 n - A073188 n).toNat

end

end A126940.P13059812174378381294

/-!
# A126941: The sequence b[n] defined in A126939.

The programs for A126941, there is no canonical definition to state claims against.
-/

/-! ## A126941.P13645098067717154280

`Δ[A126939(n)]-A126943(n)`
-/

namespace A126941.P13645098067717154280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126943 n

end

end A126941.P13645098067717154280

/-! ## A126941.P15843733081725923671

`A126939(n+1)-(A126943(n)+A126939(n))`
-/

namespace A126941.P15843733081725923671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126939 (n + 1) - (A126943 n + A126939 n)

end

end A126941.P15843733081725923671

/-!
# A126942: The sequence c[n] defined in A126939.

The programs for A126942, there is no canonical definition to state claims against.
-/

/-! ## A126942.P11739738541864804251

`A126944(n)-A126939(n+1)`
-/

namespace A126942.P11739738541864804251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126944 n - A126939 (n + 1)

end

end A126942.P11739738541864804251

/-! ## A126942.P15997280493761110323

`A126944(n)%A126939(A000027(n+1))`
-/

namespace A126942.P15997280493761110323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126944 n) (A126939 (A000027 (n + 1)).toNat)

end

end A126942.P15997280493761110323

/-! ## A126942.P4678232234326880706

`A126943(n+2)%∑[A126941(n+1)]`
-/

namespace A126942.P4678232234326880706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126943 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126942.P4678232234326880706

/-! ## A126942.P12682811377040941044

`A126944(n)-record[A126939(A002262(n))]`
-/

namespace A126942.P12682811377040941044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126939 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126944 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126942.P12682811377040941044

/-!
# A126943: The sequence d[n] defined in A126939.

The programs for A126943, there is no canonical definition to state claims against.
-/

/-! ## A126943.P3786861038643851558

`Δ[A126939(n)]-A126941(n)`
-/

namespace A126943.P3786861038643851558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126941 n

end

end A126943.P3786861038643851558

/-! ## A126943.P18073215324394308924

`A126939(n+1)-(A126941(n)+A126939(n))`
-/

namespace A126943.P18073215324394308924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126939 (n + 1) - (A126941 n + A126939 n)

end

end A126943.P18073215324394308924

/-! ## A126943.P1864110643059110980

`A126941(n+2)-Δ[A126944(n)]`
-/

namespace A126943.P1864110643059110980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126941 (n + 2) - (f1 (n + 1) - f1 n)

end

end A126943.P1864110643059110980

/-! ## A126943.P12308791205891067578

`A126941(1-xor(n, -1))%Δ[A126944(n)]`
-/

namespace A126943.P12308791205891067578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126941 (1 - Int.xor (n : ℤ) (-1)).toNat) (f1 (n + 1) - f1 n)

end

end A126943.P12308791205891067578

/-! ## A126943.P12931313445935794753

`A126941(A028310(n+2))%Δ[A126944(n)]`
-/

namespace A126943.P12931313445935794753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126941 (A028310 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A126943.P12931313445935794753

/-! ## A126943.P1145651521597195702

`A126941(n+2)+A126944(n)-A126944(n+1)`
-/

namespace A126943.P1145651521597195702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126941 (n + 2) + (A126944 n - A126944 (n + 1))

end

end A126943.P1145651521597195702

/-!
# A126944: The sequence a[n]+b[n]+c[n]+d[n] defined in A126939.

The programs for A126944, there is no canonical definition to state claims against.
-/

/-! ## A126944.P12505742635142994262

`A126942(n)+A126939(n+1)`
-/

namespace A126944.P12505742635142994262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126942 n + A126939 (n + 1)

end

end A126944.P12505742635142994262

/-! ## A126944.P715411575267932819

`A126939(n+1)+A126943(n+2)%∑[A126941(n+1)]`
-/

namespace A126944.P715411575267932819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126939 (n + 1) + Int.tmod (A126943 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126944.P715411575267932819

/-!
# A126945: The sequence a[n]+b[n]+c[n]+d[n] defined in A126940.

The programs for A126945, there is no canonical definition to state claims against.
-/

/-! ## A126945.P13901041565282925492

`A126947(n)+A126940(n+1)`
-/

namespace A126945.P13901041565282925492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126947 n + A126940 (n + 1)

end

end A126945.P13901041565282925492

/-! ## A126945.P8584979247756205687

`or(A126944(n), A306405(A213479(n)))`
-/

namespace A126945.P8584979247756205687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126944 n) (A306405 (A213479 n).toNat)

end

end A126945.P8584979247756205687

/-! ## A126945.P6991867959954385434

`or(A000010(A245900(n+2)), A126944(n))`
-/

namespace A126945.P6991867959954385434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A245900 (n + 2)).toNat) (A126944 n)

end

end A126945.P6991867959954385434

/-!
# A126946: The sequence b[n] defined in A126940.

The programs for A126946, there is no canonical definition to state claims against.
-/

/-! ## A126946.P6311123124021705623

`Δ[A126940(n)]-A126948(n)`
-/

namespace A126946.P6311123124021705623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126948 n

end

end A126946.P6311123124021705623

/-! ## A126946.P9572315177804021539

`A126940(n+1)-(A126948(n)+A126940(n))`
-/

namespace A126946.P9572315177804021539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126940 (n + 1) - (A126948 n + A126940 n)

end

end A126946.P9572315177804021539

/-! ## A126946.P17074686469991424726

`A152955(floor(3^(n-1))+1)-ceil(3^(n-1))`
-/

namespace A126946.P17074686469991424726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152955 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat - ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A126946.P17074686469991424726

/-!
# A126947: The sequence c[n] defined in A126940.

The programs for A126947, there is no canonical definition to state claims against.
-/

/-! ## A126947.P3187258378963543401

`A126945(n)-A126940(n+1)`
-/

namespace A126947.P3187258378963543401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126945 n - A126940 (n + 1)

end

end A126947.P3187258378963543401

/-! ## A126947.P9982501190237996189

`A126945(n)%A126940(-xor(n, -1))`
-/

namespace A126947.P9982501190237996189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126945 n) (A126940 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A126947.P9982501190237996189

/-! ## A126947.P2614400650340174309

`A126945(n)-record[A126940(A008679(n))]`
-/

namespace A126947.P2614400650340174309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126940 (A008679 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126945 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126947.P2614400650340174309

/-! ## A126947.P17136286575630731976

`A126945(n)-record[A126940(A324347(n))]`
-/

namespace A126947.P17136286575630731976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126940 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126945 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126947.P17136286575630731976

/-! ## A126947.P10395529660604922772

`A126945(n)%A126940(A000027(n+1))`
-/

namespace A126947.P10395529660604922772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126945 n) (A126940 (A000027 (n + 1)).toNat)

end

end A126947.P10395529660604922772

/-!
# A126948: The sequence d[n] defined in A126940.

The programs for A126948, there is no canonical definition to state claims against.
-/

/-! ## A126948.P12866153196946667862

`Δ[A126940(n)]-A126946(n)`
-/

namespace A126948.P12866153196946667862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126946 n

end

end A126948.P12866153196946667862

/-! ## A126948.P4110430160826590338

`A126940(n+1)-(A126946(n)+A126940(n))`
-/

namespace A126948.P4110430160826590338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126940 (n + 1) - (A126946 n + A126940 n)

end

end A126948.P4110430160826590338

/-! ## A126948.P3833088062596056739

`A263529(n)-A305936(A003341(n+1))`
-/

namespace A126948.P3833088062596056739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263529 n - A305936 (A003341 (n + 1)).toNat

end

end A126948.P3833088062596056739

/-!
# A126949: Moduli n for which -1 is a (nontrivial) power residue for some power greater than 2, i.e., m^k == -1 (mod n) for some k > 1 and some 1 < m < n-1.

The programs for A126949, there is no canonical definition to state claims against.
-/

/-! ## A126949.P6424047594711497018

`eq[char[A178751(n+1)], A130706(n)]`
-/

namespace A126949.P6424047594711497018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178751 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A126949.P6424047594711497018

/-! ## A126949.P11108485772364403406

`eq[char[A178751(n+1)], A285476(n)]`
-/

namespace A126949.P11108485772364403406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178751 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A126949.P11108485772364403406

/-! ## A126949.P2175029873752471510

`∪[A004169(n+1), A053029(n+1)]`
-/

namespace A126949.P2175029873752471510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126949.P2175029873752471510

/-! ## A126949.P293289517043375331

`comp[eq[A008424(n), A343722(n+1)]-1]+2`
-/

namespace A126949.P293289517043375331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A126949.P293289517043375331

/-! ## A126949.P11166735472265846161

`eq[A290859(n)%4, char[A178751(n+1)]]`
-/

namespace A126949.P11166735472265846161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290859 n) 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178751 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A126949.P11166735472265846161

/-! ## A126949.P17813470035715237292

`lt[0, A274021(n+1)]+1`
-/

namespace A126949.P17813470035715237292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A126949.P17813470035715237292

/-! ## A126949.P15261797367325756572

`lt[0, A274021(A028310(n))]`
-/

namespace A126949.P15261797367325756572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126949.P15261797367325756572

/-! ## A126949.P9229252452081918735

`A020725(lt[0, A274021(n+1)])`
-/

namespace A126949.P9229252452081918735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126949.P9229252452081918735

/-!
# A126950: a(1) = 1; for n>1, a(n) = the smallest number p > a(n-1) such that (a(n-1)+p)/2 is a cube.

The programs for A126950, the canonical program `A126950.P7143892805840475587` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126950 has offset 1).

The definition of A126950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126950.P7143892805840475587

`((2*(n+1)+1)*(2*(n+1)²+2*(n+1)-1)+5*(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126950

/-- `((2*(n+1)+1)*(2*(n+1)²+2*(n+1)-1)+5*(-1)^(n+1))/4` -/
def P7143892805840475587.Spec : Prop :=
  ∀ n, P7143892805840475587.a n = (A126950 (n + 1) : ℚ)

end A126950

/-! ## A126950.P14341674505691809207

`2*(n+1)^3-a(n-1)` with `a(0)=1`
-/

namespace A126950.P14341674505691809207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n + 1) ^ 3 : ℤ) - a (n - 1)

end

end A126950.P14341674505691809207

namespace A126950

/-- `2*(n+1)^3-a(n-1)` -/
def P14341674505691809207.Spec : Prop :=
  ∀ n, P14341674505691809207.a n = A126950 (n + 1)

end A126950

/-! ## A126950.P6626822023001599675

`a(n-2)+∑[12*n]+2` with `a(0)=1, a(1)=15`
-/

namespace A126950.P6626822023001599675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A126950.P6626822023001599675

namespace A126950

/-- `a(n-2)+∑[12*n]+2` -/
def P6626822023001599675.Spec : Prop :=
  ∀ n, (P6626822023001599675.a n : ℤ) = A126950 (n + 1)

end A126950

/-! ## A126950.P11071934241479668604

`Δ[a(n-2)+2*n*n²]` with `a(0)=0, a(1)=1`
-/

namespace A126950.P11071934241479668604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 2 * n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A126950.P11071934241479668604

namespace A126950

/-- `Δ[a(n-2)+2*n*n²]` -/
def P11071934241479668604.Spec : Prop :=
  ∀ n, P11071934241479668604.a n = A126950 (n + 1)

end A126950

/-! ## A126950.P11922897242515767700

`(n+1)^3+(n+1)^3-a(n-1)` with `a(0)=1`
-/

namespace A126950.P11922897242515767700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 3 : ℤ) + (((n + 1) ^ 3 : ℤ) - a (n - 1))

end

end A126950.P11922897242515767700

namespace A126950

/-- `(n+1)^3+(n+1)^3-a(n-1)` -/
def P11922897242515767700.Spec : Prop :=
  ∀ n, P11922897242515767700.a n = A126950 (n + 1)

end A126950

/-! ## A126950.P14502729764479425966

`floor(2*(n+1)*(n+1)²-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126950.P14502729764479425966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * ((n + 1) * (n + 1) ^ 2) : ℤ) - a (n - 1)

end

end A126950.P14502729764479425966

namespace A126950

/-- `floor(2*(n+1)*(n+1)²-a(n-1))` -/
def P14502729764479425966.Spec : Prop :=
  ∀ n, P14502729764479425966.a n = A126950 (n + 1)

end A126950

/-! ## A126950.P15752166773428323907

`A153026(n+1)+A011934(n+1)`
-/

namespace A126950.P15752166773428323907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153026 (n + 1) + A011934 (n + 1)

end

end A126950.P15752166773428323907

namespace A126950

/-- `A153026(n+1)+A011934(n+1)` -/
def P15752166773428323907.Spec : Prop :=
  ∀ n, P15752166773428323907.a n = A126950 (n + 1)

end A126950

/-! ## A126950.P5572684685875388652

`Δ[A097066((n+1)²-1)]`
-/

namespace A126950.P5572684685875388652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 ((n + 1) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126950.P5572684685875388652

namespace A126950

/-- `Δ[A097066((n+1)²-1)]` -/
def P5572684685875388652.Spec : Prop :=
  ∀ n, P5572684685875388652.a n = A126950 (n + 1)

end A126950

/-! ## A126950.P6390941195835072401

`∑[A136320((n+1)²)]-n`
-/

namespace A126950.P6390941195835072401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136320 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A126950.P6390941195835072401

namespace A126950

/-- `∑[A136320((n+1)²)]-n` -/
def P6390941195835072401.Spec : Prop :=
  ∀ n, P6390941195835072401.a n = A126950 (n + 1)

end A126950

/-!
# A126951: List of pairs: k followed by k^3.

The programs for A126951, the canonical program `A126951.P952899582924960830` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126951 has offset 1).

The definition of A126951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126951.P952899582924960830

`((-1)^(n+2)+1)/4*(n+2)-((-1)^(n+2)-1)/16*(n+1)^3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126951

/-- `((-1)^(n+2)+1)/4*(n+2)-((-1)^(n+2)-1)/16*(n+1)^3` -/
def P952899582924960830.Spec : Prop :=
  ∀ n, P952899582924960830.a n = (A126951 (n + 1) : ℚ)

end A126951

/-! ## A126951.P2178076073122012591

`∑[log2(gcd(2, n))]^3^(n%2)`
-/

namespace A126951.P2178076073122012591
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 ^ (n % 2)

end

end A126951.P2178076073122012591

namespace A126951

/-- `∑[log2(gcd(2, n))]^3^(n%2)` -/
def P2178076073122012591.Spec : Prop :=
  ∀ n, P2178076073122012591.a n = (A126951 (n + 1) : ℝ)

end A126951

/-! ## A126951.P7352763653317620941

`round(((n+1)/2)^3^and(1, n))`
-/

namespace A126951.P7352763653317620941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℚ) / 2) ^ 3 ^ Nat.land 1 n)

end

end A126951.P7352763653317620941

namespace A126951

/-- `round(((n+1)/2)^3^and(1, n))` -/
def P7352763653317620941.Spec : Prop :=
  ∀ n, P7352763653317620941.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P265287546197060399

`ceil(((n+1)/2)^and(3, 2*n+1))`
-/

namespace A126951.P265287546197060399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ Nat.land 3 (2 * n + 1)⌉

end

end A126951.P265287546197060399

namespace A126951

/-- `ceil(((n+1)/2)^and(3, 2*n+1))` -/
def P265287546197060399.Spec : Prop :=
  ∀ n, P265287546197060399.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P1020278020074578255

`floor((n+1)²/4)*round(n/2)*round(n/2)/a(n-1)` with `a(0)=1`
-/

namespace A126951.P1020278020074578255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (⌊((n + 1) ^ 2 : ℚ) / 4⌋ * SequenceMachineLib.roundAway ((n : ℚ) / 2) * SequenceMachineLib.roundAway ((n : ℚ) / 2) : ℚ) / a (n - 1)

end

end A126951.P1020278020074578255

namespace A126951

/-- `floor((n+1)²/4)*round(n/2)*round(n/2)/a(n-1)` -/
def P1020278020074578255.Spec : Prop :=
  ∀ n, P1020278020074578255.a n = (A126951 (n + 1) : ℚ)

end A126951

/-! ## A126951.P3265970102953100176

`A152271(n)²*A008619(n)`
-/

namespace A126951.P3265970102953100176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n ^ 2 * A008619 n

end

end A126951.P3265970102953100176

namespace A126951

/-- `A152271(n)²*A008619(n)` -/
def P3265970102953100176.Spec : Prop :=
  ∀ n, P3265970102953100176.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P15261624493844924206

`A000463(n+1)*A152271(n)`
-/

namespace A126951.P15261624493844924206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) * A152271 n

end

end A126951.P15261624493844924206

namespace A126951

/-- `A000463(n+1)*A152271(n)` -/
def P15261624493844924206.Spec : Prop :=
  ∀ n, P15261624493844924206.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P10513449230190665218

`gcd(A027656(n), A210433(n+1))`
-/

namespace A126951.P10513449230190665218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A210433 (n + 1))

end

end A126951.P10513449230190665218

namespace A126951

/-- `gcd(A027656(n), A210433(n+1))` -/
def P10513449230190665218.Spec : Prop :=
  ∀ n, (P10513449230190665218.a n : ℤ) = A126951 (n + 1)

end A126951

/-! ## A126951.P3697748627951467558

`gcd(A059827(n+1), A212765(n))`
-/

namespace A126951.P3697748627951467558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059827 (n + 1)) (A212765 n)

end

end A126951.P3697748627951467558

namespace A126951

/-- `gcd(A059827(n+1), A212765(n))` -/
def P3697748627951467558.Spec : Prop :=
  ∀ n, (P3697748627951467558.a n : ℤ) = A126951 (n + 1)

end A126951

/-! ## A126951.P15468402525986958522

`(A004526(n)+1)*A152271(n)²`
-/

namespace A126951.P15468402525986958522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A152271 n ^ 2

end

end A126951.P15468402525986958522

namespace A126951

/-- `(A004526(n)+1)*A152271(n)²` -/
def P15468402525986958522.Spec : Prop :=
  ∀ n, P15468402525986958522.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P1313022324529303799

`(1-A174007(n+1))²*A008619(n)`
-/

namespace A126951.P1313022324529303799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A174007 (n + 1)) ^ 2 * A008619 n

end

end A126951.P1313022324529303799

namespace A126951

/-- `(1-A174007(n+1))²*A008619(n)` -/
def P1313022324529303799.Spec : Prop :=
  ∀ n, P1313022324529303799.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P1291967058705545331

`gcd(Δ[A212765(n)], A212764(n))`
-/

namespace A126951.P1291967058705545331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A212764 n)

end

end A126951.P1291967058705545331

namespace A126951

/-- `gcd(Δ[A212765(n)], A212764(n))` -/
def P1291967058705545331.Spec : Prop :=
  ∀ n, (P1291967058705545331.a n : ℤ) = A126951 (n + 1)

end A126951

/-! ## A126951.P15026785281105902169

`A152271(n)²*A065033(n+1)`
-/

namespace A126951.P15026785281105902169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n ^ 2 * A065033 (n + 1)

end

end A126951.P15026785281105902169

namespace A126951

/-- `A152271(n)²*A065033(n+1)` -/
def P15026785281105902169.Spec : Prop :=
  ∀ n, P15026785281105902169.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P11015575733833490627

`A109594(A001651(n+1))`
-/

namespace A126951.P11015575733833490627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A001651 (n + 1)).toNat

end

end A126951.P11015575733833490627

namespace A126951

/-- `A109594(A001651(n+1))` -/
def P11015575733833490627.Spec : Prop :=
  ∀ n, P11015575733833490627.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P14421007875187024969

`A109588(A032766(n+1))`
-/

namespace A126951.P14421007875187024969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A032766 (n + 1)).toNat

end

end A126951.P14421007875187024969

namespace A126951

/-- `A109588(A032766(n+1))` -/
def P14421007875187024969.Spec : Prop :=
  ∀ n, P14421007875187024969.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P6663987562164230040

`A109594(A032766(n)+1)`
-/

namespace A126951.P6663987562164230040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A032766 n + 1).toNat

end

end A126951.P6663987562164230040

namespace A126951

/-- `A109594(A032766(n)+1)` -/
def P6663987562164230040.Spec : Prop :=
  ∀ n, P6663987562164230040.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P7604091250409278106

`A109588(A001651(n+2)-1)`
-/

namespace A126951.P7604091250409278106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A001651 (n + 2) - 1).toNat

end

end A126951.P7604091250409278106

namespace A126951

/-- `A109588(A001651(n+2)-1)` -/
def P7604091250409278106.Spec : Prop :=
  ∀ n, P7604091250409278106.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P6549945328557349984

`A109594(∑[(A040425(n)+1)%2+1])`
-/

namespace A126951.P6549945328557349984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040425 n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126951.P6549945328557349984

namespace A126951

/-- `A109594(∑[(A040425(n)+1)%2+1])` -/
def P6549945328557349984.Spec : Prop :=
  ∀ n, P6549945328557349984.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P890874191881634334

`A109816(A114119(n))`
-/

namespace A126951.P890874191881634334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A114119 n).toNat

end

end A126951.P890874191881634334

namespace A126951

/-- `A109816(A114119(n))` -/
def P890874191881634334.Spec : Prop :=
  ∀ n, P890874191881634334.a n = A126951 (n + 1)

end A126951

/-! ## A126951.P199526607998243367

`A109614(A166517(n))`
-/

namespace A126951.P199526607998243367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A166517 n).toNat

end

end A126951.P199526607998243367

namespace A126951

/-- `A109614(A166517(n))` -/
def P199526607998243367.Spec : Prop :=
  ∀ n, P199526607998243367.a n = A126951 (n + 1)

end A126951

/-!
# A126952: a(0)=1, a(n+1) = 5*a(n)-4*A117641(n) for n>=0.

The programs for A126952, there is no canonical definition to state claims against.
-/

/-! ## A126952.P13971277569180817036

`A171243(∑[n])`
-/

namespace A126952.P13971277569180817036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171243 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126952.P13971277569180817036

/-! ## A126952.P15045937829440119593

`or(1, A171243(A000217(n)))`
-/

namespace A126952.P15045937829440119593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171243 (A000217 n).toNat)

end

end A126952.P15045937829440119593

/-! ## A126952.P9757163534600789040

`A171243(round((2*n+1)²/8))+A059995(n)`
-/

namespace A126952.P9757163534600789040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171243 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat + A059995 n

end

end A126952.P9757163534600789040

/-! ## A126952.P9661663175844008160

`A171243(A000217(n))+A025443(n)`
-/

namespace A126952.P9661663175844008160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171243 (A000217 n).toNat + A025443 n

end

end A126952.P9661663175844008160

/-! ## A126952.P7309003544316841278

`A171243(A000217(n))+A131242(n)`
-/

namespace A126952.P7309003544316841278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171243 (A000217 n).toNat + A131242 n

end

end A126952.P7309003544316841278

/-!
# A126955: Numbers k such that 2*k+1, 3*k+2 and 4*k+3 are primes.

The programs for A126955, the canonical program `A126955.P5687026585390495654` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126955 has offset 1).

The definition of A126955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126955.P11501728607523592575

`floor(p?[A014682(A002515(n+1))]/3)`
-/

namespace A126955.P11501728607523592575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌋

end

end A126955.P11501728607523592575

namespace A126955

/-- `floor(p?[A014682(A002515(n+1))]/3)` -/
def P11501728607523592575.Spec : Prop :=
  ∀ n, P11501728607523592575.a n = A126955 (n + 1)

end A126955

/-! ## A126955.P5687026585390495654

`floor(p?[A014682(A005384(n+1))]/3)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A126955

/-- `floor(p?[A014682(A005384(n+1))]/3)` -/
def P5687026585390495654.Spec : Prop :=
  ∀ n, P5687026585390495654.a n = A126955 (n + 1)

theorem P5687026585390495654.correct : P5687026585390495654.Spec := by
  intro n
  simp only [A126955, Nat.add_sub_cancel]

end A126955

/-! ## A126955.P4111031010989986794

`ceil(p?[A014682(A005384(n+2))]/3)-1`
-/

namespace A126955.P4111031010989986794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005384 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌉ - 1

end

end A126955.P4111031010989986794

namespace A126955

/-- `ceil(p?[A014682(A005384(n+2))]/3)-1` -/
def P4111031010989986794.Spec : Prop :=
  ∀ n, P4111031010989986794.a n = A126955 (n + 1)

end A126955

/-! ## A126955.P674268428717744338

`floor(p?[A001651(A176045(n+1))]/3)`
-/

namespace A126955.P674268428717744338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A176045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌋

end

end A126955.P674268428717744338

namespace A126955

/-- `floor(p?[A001651(A176045(n+1))]/3)` -/
def P674268428717744338.Spec : Prop :=
  ∀ n, P674268428717744338.a n = A126955 (n + 1)

end A126955

/-! ## A126955.P1008109589102117348

`A002264(p?[A007494(A002515(n+1))])`
-/

namespace A126955.P1008109589102117348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A002515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126955.P1008109589102117348

namespace A126955

/-- `A002264(p?[A007494(A002515(n+1))])` -/
def P1008109589102117348.Spec : Prop :=
  ∀ n, P1008109589102117348.a n = A126955 (n + 1)

end A126955

/-!
# A126957: Numbers n with all digits distinct, no 0 or 1 digits and such that n is divisible by the product of its digits.

The programs for A126957, there is no canonical definition to state claims against.
-/

/-! ## A126957.P6050217078578143197

`filter[A116960(n+1), A188642(#)]`
-/

namespace A126957.P6050217078578143197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A126957.P6050217078578143197

/-! ## A126957.P7665184825468410759

`∩[A007602(n+1), A116960(n+1)]`
-/

namespace A126957.P7665184825468410759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126957.P7665184825468410759

/-! ## A126957.P16656637109063630434

`∩[A116960(n+1), A180484(n+1)]`
-/

namespace A126957.P16656637109063630434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126957.P16656637109063630434

/-! ## A126957.P13653834819508585514

`∩[A116960(n+1), record[A360073(n+1)]]`
-/

namespace A126957.P13653834819508585514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126957.P13653834819508585514

/-! ## A126957.P12917689067426520037

`∩[A116960(n+1), A288069(n+1)*A360075(n+1)]`
-/

namespace A126957.P12917689067426520037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (n + 1) * A360075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126957.P12917689067426520037

/-!
# A126958: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(n,4).

The programs for A126958, the canonical program `A126958.P15887975961147258666` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126958 has offset 0).

The definition of A126958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126958.P15887975961147258666

`(n+3)*(n+1)*(n²-10*n+12)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126958

/-- `(n+3)*(n+1)*(n²-10*n+12)` -/
def P15887975961147258666.Spec : Prop :=
  ∀ n, P15887975961147258666.a n = A126958 n

theorem P15887975961147258666.correct : P15887975961147258666.Spec := by
  intro n
  simp only [A126958]

end A126958

/-! ## A126958.P1875978563974379285

`A105937(eq[4, A002262(n)])`
-/

namespace A126958.P1875978563974379285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126958.P1875978563974379285

namespace A126958

/-- `A105937(eq[4, A002262(n)])` -/
def P1875978563974379285.Spec : Prop :=
  ∀ n, P1875978563974379285.a n = A126958 n

end A126958

/-! ## A126958.P2399059070904156593

`A105937(A000124(n+4)+3)`
-/

namespace A126958.P2399059070904156593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (A000124 (n + 4) + 3).toNat

end

end A126958.P2399059070904156593

namespace A126958

/-- `A105937(A000124(n+4)+3)` -/
def P2399059070904156593.Spec : Prop :=
  ∀ n, P2399059070904156593.a n = A126958 n

end A126958

/-! ## A126958.P10871195212656817657

`A105937(eq[5, A002260(n+1)])`
-/

namespace A126958.P10871195212656817657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126958.P10871195212656817657

namespace A126958

/-- `A105937(eq[5, A002260(n+1)])` -/
def P10871195212656817657.Spec : Prop :=
  ∀ n, P10871195212656817657.a n = A126958 n

end A126958

/-! ## A126958.P8585347695129580553

`A105937(A000217(n+5)-(n+1))`
-/

namespace A126958.P8585347695129580553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A126958.P8585347695129580553

namespace A126958

/-- `A105937(A000217(n+5)-(n+1))` -/
def P8585347695129580553.Spec : Prop :=
  ∀ n, P8585347695129580553.a n = A126958 n

end A126958

/-! ## A126958.P1878763883610739105

`A105937(A028552(n+3)-∑[n+4])`
-/

namespace A126958.P1878763883610739105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (A028552 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A126958.P1878763883610739105

namespace A126958

/-- `A105937(A028552(n+3)-∑[n+4])` -/
def P1878763883610739105.Spec : Prop :=
  ∀ n, P1878763883610739105.a n = A126958 n

end A126958

/-!
# A126959: a(k) = k! * lim_{n->oo} card({ i*j; i=1..k, j=1..n })/n.

The programs for A126959, there is no canonical definition to state claims against.
-/

/-! ## A126959.P923112624857127618

`A025527(n+1)*A101459(n+1)`
-/

namespace A126959.P923112624857127618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A101459 (n + 1)

end

end A126959.P923112624857127618

/-! ## A126959.P12912697072131137946

`∏[A048671(n+1)]*A101459(n+1)`
-/

namespace A126959.P12912697072131137946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A101459 (n + 1)

end

end A126959.P12912697072131137946

/-!
# A126960: Primes p such that (3p)^2 + 2 is prime.

The programs for A126960, there is no canonical definition to state claims against.
-/

/-! ## A126960.P5352432641671173828

`p?[A232011(n+1)]`
-/

namespace A126960.P5352432641671173828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126960.P5352432641671173828

/-! ## A126960.P13996021234486989061

`p?[2*A056900(n)+1]`
-/

namespace A126960.P13996021234486989061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056900 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126960.P13996021234486989061

/-! ## A126960.P168724197834293992

`p?[A005408(A056900(n))]`
-/

namespace A126960.P168724197834293992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A056900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126960.P168724197834293992

/-! ## A126960.P13125823929655481093

`record[A006530(A232011(n+2))]`
-/

namespace A126960.P13125823929655481093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A232011 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126960.P13125823929655481093

/-!
# A126961: Primes p such that (3p)^2 + 2 is not prime.

The programs for A126961, the canonical program `A126961.P11434301675719672040` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126961 has offset 1).

The definition of A126961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126961.P1899326524628325161

`p?[comp[A232011(n+1)]]`
-/

namespace A126961.P1899326524628325161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232011 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126961.P1899326524628325161

namespace A126961

/-- `p?[comp[A232011(n+1)]]` -/
def P1899326524628325161.Spec : Prop :=
  ∀ n, (P1899326524628325161.a n : ℤ) = A126961 (n + 1)

end A126961

/-! ## A126961.P11434301675719672040

`p?[eq[A355449(3*n), A355450(n+1)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A126961

/-- `p?[eq[A355449(3*n), A355450(n+1)]]` -/
def P11434301675719672040.Spec : Prop :=
  ∀ n, (P11434301675719672040.a n : ℤ) = A126961 (n + 1)

theorem P11434301675719672040.correct : P11434301675719672040.Spec := by
  intro n
  simp only [A126961, Nat.add_sub_cancel]

end A126961

/-! ## A126961.P6633515979574885526

`p?[gcd(n, A300817(A008486(n)))]`
-/

namespace A126961.P6633515979574885526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A300817 (A008486 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126961.P6633515979574885526

namespace A126961

/-- `p?[gcd(n, A300817(A008486(n)))]` -/
def P6633515979574885526.Spec : Prop :=
  ∀ n, (P6633515979574885526.a n : ℤ) = A126961 (n + 1)

end A126961

/-! ## A126961.P17252188833756443457

`p?[lt[A300817(3*n), A089120(n+2)]]`
-/

namespace A126961.P17252188833756443457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126961.P17252188833756443457

namespace A126961

/-- `p?[lt[A300817(3*n), A089120(n+2)]]` -/
def P17252188833756443457.Spec : Prop :=
  ∀ n, (P17252188833756443457.a n : ℤ) = A126961 (n + 1)

end A126961

/-! ## A126961.P7289188858787869909

`p?[lt[A300817(3*n), A089123(n+2)]]`
-/

namespace A126961.P7289188858787869909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089123 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126961.P7289188858787869909

namespace A126961

/-- `p?[lt[A300817(3*n), A089123(n+2)]]` -/
def P7289188858787869909.Spec : Prop :=
  ∀ n, (P7289188858787869909.a n : ℤ) = A126961 (n + 1)

end A126961

/-!
# A126962: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(1,n).

The programs for A126962, there is no canonical definition to state claims against.
-/

/-! ## A126962.P4758581208453565972

`A006882(n)*A127138(n)`
-/

namespace A126962.P4758581208453565972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A127138 n

end

end A126962.P4758581208453565972

/-! ## A126962.P987820958510193796

`A006882(n)*A127080(∑[n+2]-1)`
-/

namespace A126962.P987820958510193796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A127080 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A126962.P987820958510193796

/-! ## A126962.P7976767792319137442

`A105937(∑[n+2]-1)`
-/

namespace A126962.P7976767792319137442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A126962.P7976767792319137442

/-! ## A126962.P16844508409196473756

`or(A000007(n), A105937(A034856(n+1)))`
-/

namespace A126962.P16844508409196473756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A105937 (A034856 (n + 1)).toNat)

end

end A126962.P16844508409196473756

/-! ## A126962.P9551587277433444203

`A105937(A034856(n+1))+A000007(n+1)`
-/

namespace A126962.P9551587277433444203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A126962.P9551587277433444203

/-!
# A126963: Numerators of sequence defined by f(0)=1, f(1)=5/4; f(n) = ( (6*n-1)*f(n-1) - (2*n-1)*f(n-2) )/(4n).

The programs for A126963, there is no canonical definition to state claims against.
-/

/-! ## A126963.P11794508997126173328

`A270822(2*n)/A001316(n)`
-/

namespace A126963.P11794508997126173328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270822 (2 * n) : ℚ) / (A001316 n : ℚ)

end

end A126963.P11794508997126173328

/-! ## A126963.P3837666075464911294

`gcd(A090470(n), A270822(2*n))`
-/

namespace A126963.P3837666075464911294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090470 n) (A270822 (2 * n))

end

end A126963.P3837666075464911294

/-! ## A126963.P16841146396532279320

`A060818(n)/A000142(n)*A090470(n)`
-/

namespace A126963.P16841146396532279320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060818 n : ℚ) / (A000142 n : ℚ) * (A090470 n : ℚ)

end

end A126963.P16841146396532279320

/-! ## A126963.P555839565551010263

`A090470(n)/A000265(A000142(n))`
-/

namespace A126963.P555839565551010263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090470 n : ℚ) / (A000265 (A000142 n).toNat : ℚ)

end

end A126963.P555839565551010263

/-!
# A126964: a(n) = 2*n*(6*n-1).

The programs for A126964, the canonical program `A126964.P15256011894595819792` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126964 has offset 0).

The definition of A126964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(6*n-1)` (program `A126964.P15256011894595819792`, by `A126964.P15256011894595819792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126964.P6789550074718903543

`2*C(6*n, 2)/3`
-/

namespace A126964.P6789550074718903543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (6 * n) 2 : ℚ) / 3

end

end A126964.P6789550074718903543

namespace A126964

/-- `2*C(6*n, 2)/3` -/
def P6789550074718903543.Spec : Prop :=
  ∀ n, P6789550074718903543.a n = (A126964 n : ℚ)

end A126964

/-! ## A126964.P15256011894595819792

`2*n*(6*n-1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126964

/-- `2*n*(6*n-1)` -/
def P15256011894595819792.Spec : Prop :=
  ∀ n, P15256011894595819792.a n = A126964 n

theorem P15256011894595819792.correct : P15256011894595819792.Spec := by
  intro n
  simp only [A126964]

end A126964

/-! ## A126964.P12866314395567461287

`∑[a(n-1)+24]` with `a(0)=0, a(1)=10`
-/

namespace A126964.P12866314395567461287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126964.P12866314395567461287

namespace A126964

/-- `∑[a(n-1)+24]` -/
def P12866314395567461287.Spec : Prop :=
  ∀ n, (P12866314395567461287.a n : ℤ) = A126964 n

end A126964

/-! ## A126964.P12207655755244958296

`C(4*n, 2)+(2*n)²`
-/

namespace A126964.P12207655755244958296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2 + (2 * n) ^ 2

end

end A126964.P12207655755244958296

namespace A126964

/-- `C(4*n, 2)+(2*n)²` -/
def P12207655755244958296.Spec : Prop :=
  ∀ n, (P12207655755244958296.a n : ℤ) = A126964 n

end A126964

/-! ## A126964.P223526928435145483

`lcm(2*n, or(1, -(6*n)))`
-/

namespace A126964.P223526928435145483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (Int.lor 1 (-(6 * n : ℤ)))

end

end A126964.P223526928435145483

namespace A126964

/-- `lcm(2*n, or(1, -(6*n)))` -/
def P223526928435145483.Spec : Prop :=
  ∀ n, (P223526928435145483.a n : ℤ) = A126964 n

end A126964

/-! ## A126964.P18403140832605011983

`4*n+6*C(2*n, 2)`
-/

namespace A126964.P18403140832605011983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6 * Nat.choose (2 * n) 2

end

end A126964.P18403140832605011983

namespace A126964

/-- `4*n+6*C(2*n, 2)` -/
def P18403140832605011983.Spec : Prop :=
  ∀ n, (P18403140832605011983.a n : ℤ) = A126964 n

end A126964

/-! ## A126964.P14185571773849525625

`Δ[lcm((n-1+n)²+n-1, n-1)]`
-/

namespace A126964.P14185571773849525625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 1 + (n : ℤ)) ^ 2 + ((n : ℤ) - 1)) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A126964.P14185571773849525625

namespace A126964

/-- `Δ[lcm((n-1+n)²+n-1, n-1)]` -/
def P14185571773849525625.Spec : Prop :=
  ∀ n, P14185571773849525625.a n = A126964 n

end A126964

/-! ## A126964.P10004877219692808071

`A185918(n)+1`
-/

namespace A126964.P10004877219692808071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185918 n + 1

end

end A126964.P10004877219692808071

namespace A126964

/-- `A185918(n)+1` -/
def P10004877219692808071.Spec : Prop :=
  ∀ n, P10004877219692808071.a n = A126964 n

end A126964

/-! ## A126964.P14745498935002021348

`A062783(n)+n`
-/

namespace A126964.P14745498935002021348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + (n : ℤ)

end

end A126964.P14745498935002021348

namespace A126964

/-- `A062783(n)+n` -/
def P14745498935002021348.Spec : Prop :=
  ∀ n, P14745498935002021348.a n = A126964 n

end A126964

/-! ## A126964.P1173945971784915786

`A396288(n)-n`
-/

namespace A126964.P1173945971784915786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 n - (n : ℤ)

end

end A126964.P1173945971784915786

namespace A126964

/-- `A396288(n)-n` -/
def P1173945971784915786.Spec : Prop :=
  ∀ n, P1173945971784915786.a n = A126964 n

end A126964

/-! ## A126964.P11887274903599083498

`A014642(n)+2*n`
-/

namespace A126964.P11887274903599083498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + (2 * n : ℤ)

end

end A126964.P11887274903599083498

namespace A126964

/-- `A014642(n)+2*n` -/
def P11887274903599083498.Spec : Prop :=
  ∀ n, P11887274903599083498.a n = A126964 n

end A126964

/-! ## A126964.P6957210292302363894

`3*A033991(n)+n`
-/

namespace A126964.P6957210292302363894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033991 n + (n : ℤ)

end

end A126964.P6957210292302363894

namespace A126964

/-- `3*A033991(n)+n` -/
def P6957210292302363894.Spec : Prop :=
  ∀ n, P6957210292302363894.a n = A126964 n

end A126964

/-! ## A126964.P14498527547964555049

`A135453(n)-2*n`
-/

namespace A126964.P14498527547964555049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - (2 * n : ℤ)

end

end A126964.P14498527547964555049

namespace A126964

/-- `A135453(n)-2*n` -/
def P14498527547964555049.Spec : Prop :=
  ∀ n, P14498527547964555049.a n = A126964 n

end A126964

/-! ## A126964.P5001022331830605110

`A158480(n)-Δ[n²]`
-/

namespace A126964.P5001022331830605110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A126964.P5001022331830605110

namespace A126964

/-- `A158480(n)-Δ[n²]` -/
def P5001022331830605110.Spec : Prop :=
  ∀ n, P5001022331830605110.a n = A126964 n

end A126964

/-! ## A126964.P16050904533732279885

`A014635(n)+(2*n)²`
-/

namespace A126964.P16050904533732279885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + ((2 * n) ^ 2 : ℤ)

end

end A126964.P16050904533732279885

namespace A126964

/-- `A014635(n)+(2*n)²` -/
def P16050904533732279885.Spec : Prop :=
  ∀ n, P16050904533732279885.a n = A126964 n

end A126964

/-! ## A126964.P11044142053996847046

`sqrt(A014794(n))+2*n`
-/

namespace A126964.P11044142053996847046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014794 n : ℝ) + (2 * n : ℝ)

end

end A126964.P11044142053996847046

namespace A126964

/-- `sqrt(A014794(n))+2*n` -/
def P11044142053996847046.Spec : Prop :=
  ∀ n, P11044142053996847046.a n = (A126964 n : ℝ)

end A126964

/-! ## A126964.P18177666757009162351

`A244802(n+1)-1+n`
-/

namespace A126964.P18177666757009162351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1) - 1 + (n : ℤ)

end

end A126964.P18177666757009162351

namespace A126964

/-- `A244802(n+1)-1+n` -/
def P18177666757009162351.Spec : Prop :=
  ∀ n, P18177666757009162351.a n = A126964 n

end A126964

/-! ## A126964.P10488908954480211077

`A244803(n+1)-(n+1)`
-/

namespace A126964.P10488908954480211077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244803 (n + 1) - (n + 1 : ℤ)

end

end A126964.P10488908954480211077

namespace A126964

/-- `A244803(n+1)-(n+1)` -/
def P10488908954480211077.Spec : Prop :=
  ∀ n, P10488908954480211077.a n = A126964 n

end A126964

/-! ## A126964.P3583835139557774885

`A016766(n)+A000567(n)`
-/

namespace A126964.P3583835139557774885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A000567 n

end

end A126964.P3583835139557774885

namespace A126964

/-- `A016766(n)+A000567(n)` -/
def P3583835139557774885.Spec : Prop :=
  ∀ n, P3583835139557774885.a n = A126964 n

end A126964

/-!
# A126965: a(n) = (2*n)!*(2*n-1)/(2^n*n!).

The programs for A126965, the canonical program `A126965.P7193354309262096229` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126965 has offset 0).

The definition of A126965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126965.P7193354309262096229

`(2*n)!*(2*n-1)/(2^n*n!)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126965

/-- `(2*n)!*(2*n-1)/(2^n*n!)` -/
def P7193354309262096229.Spec : Prop :=
  ∀ n, P7193354309262096229.a n = (A126965 n : ℚ)

end A126965

/-! ## A126965.P14876271278731246727

`(1-2*n)*∏[2*n-1]`
-/

namespace A126965.P14876271278731246727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A126965.P14876271278731246727

namespace A126965

/-- `(1-2*n)*∏[2*n-1]` -/
def P14876271278731246727.Spec : Prop :=
  ∀ n, P14876271278731246727.a n = A126965 n

end A126965

/-! ## A126965.P14708141548668684064

`∏[Δ[n²]]-A097801(n)`
-/

namespace A126965.P14708141548668684064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A097801 n

end

end A126965.P14708141548668684064

namespace A126965

/-- `∏[Δ[n²]]-A097801(n)` -/
def P14708141548668684064.Spec : Prop :=
  ∀ n, P14708141548668684064.a n = A126965 n

end A126965

/-! ## A126965.P9919524709501230440

`-((1-2*n)*A001147(n))`
-/

namespace A126965.P9919524709501230440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - (2 * n : ℤ)) * A001147 n)

end

end A126965.P9919524709501230440

namespace A126965

/-- `-((1-2*n)*A001147(n))` -/
def P9919524709501230440.Spec : Prop :=
  ∀ n, P9919524709501230440.a n = A126965 n

end A126965

/-! ## A126965.P5533974872530962552

`A001147(n+1)-lcm(4, ∏[n-1+n])/2`
-/

namespace A126965.P5533974872530962552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) : ℚ) - (Int.lcm 4 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A126965.P5533974872530962552

namespace A126965

/-- `A001147(n+1)-lcm(4, ∏[n-1+n])/2` -/
def P5533974872530962552.Spec : Prop :=
  ∀ n, P5533974872530962552.a n = (A126965 n : ℚ)

end A126965

/-! ## A126965.P11208157668325180673

`-(A001147(n)*A165747(n))`
-/

namespace A126965.P11208157668325180673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001147 n * A165747 n)

end

end A126965.P11208157668325180673

namespace A126965

/-- `-(A001147(n)*A165747(n))` -/
def P11208157668325180673.Spec : Prop :=
  ∀ n, P11208157668325180673.a n = A126965 n

end A126965

/-! ## A126965.P13647943224854167044

`Δ[A001147(n)-A076795(n)]`
-/

namespace A126965.P13647943224854167044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A076795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126965.P13647943224854167044

namespace A126965

/-- `Δ[A001147(n)-A076795(n)]` -/
def P13647943224854167044.Spec : Prop :=
  ∀ n, P13647943224854167044.a n = A126965 n

end A126965

/-! ## A126965.P12966296943118373918

`n*A097801(n)-A001147(n)`
-/

namespace A126965.P12966296943118373918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097801 n - A001147 n

end

end A126965.P12966296943118373918

namespace A126965

/-- `n*A097801(n)-A001147(n)` -/
def P12966296943118373918.Spec : Prop :=
  ∀ n, P12966296943118373918.a n = A126965 n

end A126965

/-! ## A126965.P2612513759412084205

`Δ[A161198(∑[n])-A076795(n)]`
-/

namespace A126965.P2612513759412084205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161198 (∑ j ∈ Finset.range (n + 1), f2 j) - A076795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126965.P2612513759412084205

namespace A126965

/-- `Δ[A161198(∑[n])-A076795(n)]` -/
def P2612513759412084205.Spec : Prop :=
  ∀ n, P2612513759412084205.a n = A126965 n

end A126965

/-!
# A126966: Expansion of sqrt(1 - 4*x)/(1 - 2*x).

The programs for A126966, the canonical program `A126966.P12794021674090702556` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126966 has offset 0).

The definition of A126966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126966.P12794021674090702556

`A028329(n)-A082590(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A126966

/-- `A028329(n)-A082590(n)` -/
def P12794021674090702556.Spec : Prop :=
  ∀ n, P12794021674090702556.a n = A126966 n

theorem P12794021674090702556.correct : P12794021674090702556.Spec := by
  intro n
  simp only [A126966]

end A126966

/-! ## A126966.P18266563454237375171

`a(n-1)-A134635(n-1)` with `a(0)=1`
-/

namespace A126966.P18266563454237375171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A134635 (n - 1)

end

end A126966.P18266563454237375171

namespace A126966

/-- `a(n-1)-A134635(n-1)` -/
def P18266563454237375171.Spec : Prop :=
  ∀ n, P18266563454237375171.a n = A126966 n

end A126966

/-! ## A126966.P3427672783793103512

`A002420(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A126966.P3427672783793103512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002420 n + 2 * a (n - 1)

end

end A126966.P3427672783793103512

namespace A126966

/-- `A002420(n)+2*a(n-1)` -/
def P3427672783793103512.Spec : Prop :=
  ∀ n, P3427672783793103512.a n = A126966 n

end A126966

/-! ## A126966.P3477439572356721200

`2*(A115140(n)+a(n-1))` with `a(0)=1`
-/

namespace A126966.P3477439572356721200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A115140 n + a (n - 1))

end

end A126966.P3477439572356721200

namespace A126966

/-- `2*(A115140(n)+a(n-1))` -/
def P3477439572356721200.Spec : Prop :=
  ∀ n, P3477439572356721200.a n = A126966 n

end A126966

/-! ## A126966.P7994489857669980502

`2*(a(n-1)-A120588(n))` with `a(0)=1`
-/

namespace A126966.P7994489857669980502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A120588 n)

end

end A126966.P7994489857669980502

namespace A126966

/-- `2*(a(n-1)-A120588(n))` -/
def P7994489857669980502.Spec : Prop :=
  ∀ n, P7994489857669980502.a n = A126966 n

end A126966

/-! ## A126966.P17621986585152538331

`2*(a(n-1)-A000108(n-1))` with `a(0)=1`
-/

namespace A126966.P17621986585152538331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A000108 (n - 1))

end

end A126966.P17621986585152538331

namespace A126966

/-- `2*(a(n-1)-A000108(n-1))` -/
def P17621986585152538331.Spec : Prop :=
  ∀ n, P17621986585152538331.a n = A126966 n

end A126966

/-! ## A126966.P1385353886286317918

`2*a(n-1)-A089408(2*n)` with `a(0)=1`
-/

namespace A126966.P1385353886286317918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A089408 (2 * n)

end

end A126966.P1385353886286317918

namespace A126966

/-- `2*a(n-1)-A089408(2*n)` -/
def P1385353886286317918.Spec : Prop :=
  ∀ n, P1385353886286317918.a n = A126966 n

end A126966

/-! ## A126966.P840471655338299023

`2*A158499(n)-A000079(n)`
-/

namespace A126966.P840471655338299023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158499 n - A000079 n

end

end A126966.P840471655338299023

namespace A126966

/-- `2*A158499(n)-A000079(n)` -/
def P840471655338299023.Spec : Prop :=
  ∀ n, P840471655338299023.a n = A126966 n

end A126966

/-! ## A126966.P8444487208052606246

`2*A158499(n)-∑[A011782(n)]`
-/

namespace A126966.P8444487208052606246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158499 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126966.P8444487208052606246

namespace A126966

/-- `2*A158499(n)-∑[A011782(n)]` -/
def P8444487208052606246.Spec : Prop :=
  ∀ n, P8444487208052606246.a n = A126966 n

end A126966

/-! ## A126966.P9178097457552905883

`2*A158499(n)-Δ[A000051(n)]`
-/

namespace A126966.P9178097457552905883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158499 n - (f1 (n + 1) - f1 n)

end

end A126966.P9178097457552905883

namespace A126966

/-- `2*A158499(n)-Δ[A000051(n)]` -/
def P9178097457552905883.Spec : Prop :=
  ∀ n, P9178097457552905883.a n = A126966 n

end A126966

/-! ## A126966.P15020481918574020665

`2*A158499(n)-Δ[A000225(n)]`
-/

namespace A126966.P15020481918574020665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158499 n - (f1 (n + 1) - f1 n)

end

end A126966.P15020481918574020665

namespace A126966

/-- `2*A158499(n)-Δ[A000225(n)]` -/
def P15020481918574020665.Spec : Prop :=
  ∀ n, P15020481918574020665.a n = A126966 n

end A126966

/-! ## A126966.P15962917763086230772

`2*A158499(n)-Δ[A000918(n)]`
-/

namespace A126966.P15962917763086230772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158499 n - (f1 (n + 1) - f1 n)

end

end A126966.P15962917763086230772

namespace A126966

/-- `2*A158499(n)-Δ[A000918(n)]` -/
def P15962917763086230772.Spec : Prop :=
  ∀ n, P15962917763086230772.a n = A126966 n

end A126966

/-! ## A126966.P4469685986558811380

`2*A000108(n)-A134635(n)`
-/

namespace A126966.P4469685986558811380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A134635 n

end

end A126966.P4469685986558811380

namespace A126966

/-- `2*A000108(n)-A134635(n)` -/
def P4469685986558811380.Spec : Prop :=
  ∀ n, P4469685986558811380.a n = A126966 n

end A126966

/-! ## A126966.P12196836524011892292

`A000079(n)+A000108(n)-A014318(n)`
-/

namespace A126966.P12196836524011892292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000108 n - A014318 n)

end

end A126966.P12196836524011892292

namespace A126966

/-- `A000079(n)+A000108(n)-A014318(n)` -/
def P12196836524011892292.Spec : Prop :=
  ∀ n, P12196836524011892292.a n = A126966 n

end A126966

/-! ## A126966.P6116824662396606044

`2*A029759(n)-A000984(n)`
-/

namespace A126966.P6116824662396606044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029759 n - A000984 n

end

end A126966.P6116824662396606044

namespace A126966

/-- `2*A029759(n)-A000984(n)` -/
def P6116824662396606044.Spec : Prop :=
  ∀ n, P6116824662396606044.a n = A126966 n

end A126966

/-! ## A126966.P6039818065597696345

`2*A000984(n)-A082590(n)`
-/

namespace A126966.P6039818065597696345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A082590 n

end

end A126966.P6039818065597696345

namespace A126966

/-- `2*A000984(n)-A082590(n)` -/
def P6039818065597696345.Spec : Prop :=
  ∀ n, P6039818065597696345.a n = A126966 n

end A126966

/-! ## A126966.P878025135302501496

`2*A188622(n)-A372239(n)`
-/

namespace A126966.P878025135302501496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188622 n - A372239 n

end

end A126966.P878025135302501496

namespace A126966

/-- `2*A188622(n)-A372239(n)` -/
def P878025135302501496.Spec : Prop :=
  ∀ n, P878025135302501496.a n = A126966 n

end A126966

/-! ## A126966.P16093935858278289629

`A028283(n+1)-A188622(n+1)`
-/

namespace A126966.P16093935858278289629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028283 (n + 1) - A188622 (n + 1)

end

end A126966.P16093935858278289629

namespace A126966

/-- `A028283(n+1)-A188622(n+1)` -/
def P16093935858278289629.Spec : Prop :=
  ∀ n, P16093935858278289629.a n = A126966 n

end A126966

/-! ## A126966.P9161112958608352273

`A063886(2*n+1)-A082590(n)`
-/

namespace A126966.P9161112958608352273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1) - A082590 n

end

end A126966.P9161112958608352273

namespace A126966

/-- `A063886(2*n+1)-A082590(n)` -/
def P9161112958608352273.Spec : Prop :=
  ∀ n, P9161112958608352273.a n = A126966 n

end A126966

/-!
# A126967: Expansion of e.g.f.: sqrt(1+4*x)/(1+2*x).

The programs for A126967, there is no canonical definition to state claims against.
-/

/-! ## A126967.P9541799407005467820

`A127144(2*n)`
-/

namespace A126967.P9541799407005467820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127144 (2 * n)

end

end A126967.P9541799407005467820

/-! ## A126967.P14160764746990202249

`or(A000007(n), A127144(A005843(n)))`
-/

namespace A126967.P14160764746990202249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127144 (A005843 n).toNat)

end

end A126967.P14160764746990202249

/-! ## A126967.P12210056505567394465

`A127080((n+3)*Δ[n²])`
-/

namespace A126967.P12210056505567394465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 ((n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A126967.P12210056505567394465

/-! ## A126967.P16638385880689741621

`or(A000007(n), A127080(A027379(2*n+1)))`
-/

namespace A126967.P16638385880689741621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127080 (A027379 (2 * n + 1)).toNat)

end

end A126967.P16638385880689741621

/-! ## A126967.P10850379027148903279

`A127080(A027379(2*n+1))+A000007(n+1)`
-/

namespace A126967.P10850379027148903279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A027379 (2 * n + 1)).toNat + A000007 (n + 1)

end

end A126967.P10850379027148903279

/-! ## A126967.P12653126578542480097

`A127080(A027379(2*n+1))+A000038(n+1)`
-/

namespace A126967.P12653126578542480097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A027379 (2 * n + 1)).toNat + A000038 (n + 1)

end

end A126967.P12653126578542480097

/-! ## A126967.P1172401928140985395

`A057427(n+1)*A127080(A027379(2*n+1))`
-/

namespace A126967.P1172401928140985395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A127080 (A027379 (2 * n + 1)).toNat

end

end A126967.P1172401928140985395

/-! ## A126967.P16497575759332706937

`and(A057428(n+1), A127080(A027379(2*n+1)))`
-/

namespace A126967.P16497575759332706937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A127080 (A027379 (2 * n + 1)).toNat)

end

end A126967.P16497575759332706937

/-!
# A126972: Number of distinct values taken by the entropy for permutations of [1..n], where the entropy of a permutation pi is Sum_{k=1..n} (pi(k)-k)^2.

The programs for A126972, the canonical program `A126972.P6123117736499530659` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126972 has offset 0).

The definition of A126972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126972.P6123117736499530659

`∑[C(n, 2)]+1-char[3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126972

/-- `∑[C(n, 2)]+1-char[3]` -/
def P6123117736499530659.Spec : Prop :=
  ∀ n, P6123117736499530659.a n = A126972 n

theorem P6123117736499530659.correct : P6123117736499530659.Spec := by
  intro n
  simp only [A126972]

end A126972

/-! ## A126972.P6439794608400706482

`xor(∑[C(n, 2)]+1, char[3])`
-/

namespace A126972.P6439794608400706482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (if ∃ j, f2 j = n then 1 else 0)

end

end A126972.P6439794608400706482

namespace A126972

/-- `xor(∑[C(n, 2)]+1, char[3])` -/
def P6439794608400706482.Spec : Prop :=
  ∀ n, (P6439794608400706482.a n : ℤ) = A126972 n

end A126972

/-! ## A126972.P16053454116312260041

`1-char[3]+C(n+1, 3)`
-/

namespace A126972.P16053454116312260041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (Nat.choose (n + 1) 3 : ℤ)

end

end A126972.P16053454116312260041

namespace A126972

/-- `1-char[3]+C(n+1, 3)` -/
def P16053454116312260041.Spec : Prop :=
  ∀ n, P16053454116312260041.a n = A126972 n

end A126972

/-! ## A126972.P17044230795376934042

`A004006(n)+1-n-char[3]`
-/

namespace A126972.P17044230795376934042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (1 - (n : ℤ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A126972.P17044230795376934042

namespace A126972

/-- `A004006(n)+1-n-char[3]` -/
def P17044230795376934042.Spec : Prop :=
  ∀ n, P17044230795376934042.a n = A126972 n

end A126972

/-! ## A126972.P13830288407740217665

`A361271(n)+A361274(n)-char[3]`
-/

namespace A126972.P13830288407740217665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361271 n + (A361274 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A126972.P13830288407740217665

namespace A126972

/-- `A361271(n)+A361274(n)-char[3]` -/
def P13830288407740217665.Spec : Prop :=
  ∀ n, P13830288407740217665.a n = A126972 n

end A126972

/-!
# A126973: a(n+1) is the smallest integer greater than a(n) such that the sum of the squares of its decimal digits is equal to a(n).

The programs for A126973, there is no canonical definition to state claims against.
-/

/-! ## A126973.P1754976051883400676

`A055016(a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A126973.P1754976051883400676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A055016 (a (n - 1)).toNat

end

end A126973.P1754976051883400676

/-!
# A126974: a(1)=0. a(2)=1. a(n) = a(d(n)) + a(phi(n)), where d(n) = A000005(n), phi(n) = A000010(n).

The programs for A126974, there is no canonical definition to state claims against.
-/

/-! ## A126974.P13859084898839014370

`A365339(n+1)-A225542(A079502(n))`
-/

namespace A126974.P13859084898839014370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365339 (n + 1) - A225542 (A079502 n).toNat

end

end A126974.P13859084898839014370

/-! ## A126974.P15769725522487604896

`A268382(n)-A000035(A300646(3*(n+1)))`
-/

namespace A126974.P15769725522487604896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268382 n - A000035 (A300646 (3 * (n + 1))).toNat

end

end A126974.P15769725522487604896

/-!
# A126975: Primes p with property that, if q is the next prime, then the sum of the prime factors of p+q, taken with multiplicity, is a prime.

The programs for A126975, there is no canonical definition to state claims against.
-/

/-! ## A126975.P3684025028420637086

`p?[A000040(n+1)*A001222(A163508(n+1))]`
-/

namespace A126975.P3684025028420637086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A163508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126975.P3684025028420637086

/-!
# A126979: a(n) = 24*n + 233.

The programs for A126979, the canonical program `A126979.P6144827096891175160` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126979 has offset 0).

The definition of A126979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+233` (program `A126979.P6144827096891175160`, by `A126979.P6144827096891175160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126979.P6144827096891175160

`24*n+233`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126979

/-- `24*n+233` -/
def P6144827096891175160.Spec : Prop :=
  ∀ n, (P6144827096891175160.a n : ℤ) = A126979 n

theorem P6144827096891175160.correct : P6144827096891175160.Spec := by
  intro n
  simp only [A126979]

end A126979

/-!
# A126980: a(n) = 14*n + 47.

The programs for A126980, the canonical program `A126980.P9055034775254403643` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126980 has offset 0).

The definition of A126980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n+47` (program `A126980.P9055034775254403643`, by `A126980.P9055034775254403643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126980.P9055034775254403643

`14*n+47`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126980

/-- `14*n+47` -/
def P9055034775254403643.Spec : Prop :=
  ∀ n, (P9055034775254403643.a n : ℤ) = A126980 n

theorem P9055034775254403643.correct : P9055034775254403643.Spec := by
  intro n
  simp only [A126980]

end A126980

/-!
# A126981: Largest perfect square less than 2*10^n.

The programs for A126981, the canonical program `A126981.P16025738536303423739` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126981 has offset 0).

The definition of A126981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126981.P16025738536303423739

`floor(sqrt(2*10^n))²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126981

/-- `floor(sqrt(2*10^n))²` -/
def P16025738536303423739.Spec : Prop :=
  ∀ n, (P16025738536303423739.a n : ℤ) = A126981 n

theorem P16025738536303423739.correct : P16025738536303423739.Spec := by
  intro n
  simp only [A126981]

end A126981

/-! ## A126981.P11877755441703068393

`A083377(n+1)²^ceil(acot(n))`
-/

namespace A126981.P11877755441703068393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083377 (n + 1) ^ 2 : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A126981.P11877755441703068393

namespace A126981

/-- `A083377(n+1)²^ceil(acot(n))` -/
def P11877755441703068393.Spec : Prop :=
  ∀ n, P11877755441703068393.a n = (A126981 n : ℚ)

end A126981

/-! ## A126981.P1036520761961686812

`floor(sqrt(2*10^n))^A020639(A001316(n))`
-/

namespace A126981.P1036520761961686812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * 10 ^ n) : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A126981.P1036520761961686812

namespace A126981

/-- `floor(sqrt(2*10^n))^A020639(A001316(n))` -/
def P1036520761961686812.Spec : Prop :=
  ∀ n, P1036520761961686812.a n = (A126981 n : ℚ)

end A126981

/-! ## A126981.P8736133291024502438

`floor(sqrt(2*10^n))^A020639(A008122(n))`
-/

namespace A126981.P8736133291024502438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * 10 ^ n) : ℚ) ^ (A020639 (A008122 n).toNat : ℤ)

end

end A126981.P8736133291024502438

namespace A126981

/-- `floor(sqrt(2*10^n))^A020639(A008122(n))` -/
def P8736133291024502438.Spec : Prop :=
  ∀ n, P8736133291024502438.a n = (A126981 n : ℚ)

end A126981

/-! ## A126981.P759510634189112652

`floor(sqrt(2*10^n))^A020639(A008131(n))`
-/

namespace A126981.P759510634189112652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * 10 ^ n) : ℚ) ^ (A020639 (A008131 n).toNat : ℤ)

end

end A126981.P759510634189112652

namespace A126981

/-- `floor(sqrt(2*10^n))^A020639(A008131(n))` -/
def P759510634189112652.Spec : Prop :=
  ∀ n, P759510634189112652.a n = (A126981 n : ℚ)

end A126981

/-!
# A126982: Expansion of 1/(1+3*x*c(x)), c(x) the g.f. of Catalan numbers A000108.

The programs for A126982, there is no canonical definition to state claims against.
-/

/-! ## A126982.P8635242568552634510

`A033999(n)*A086990(2*n+1)`
-/

namespace A126982.P8635242568552634510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A086990 (2 * n + 1)

end

end A126982.P8635242568552634510

/-! ## A126982.P9709763681523749185

`A062157(n+1)*A086990(2*n+1)`
-/

namespace A126982.P9709763681523749185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A086990 (2 * n + 1)

end

end A126982.P9709763681523749185

/-! ## A126982.P16942217427388320433

`A086990(A005408(n))/A033999(n)`
-/

namespace A126982.P16942217427388320433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086990 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A126982.P16942217427388320433

/-!
# A126983: Expansion of 1/(1+x*c(x)), c(x) the g.f. of Catalan numbers A000108.

The programs for A126983, the canonical program `A126983.P5512643725349819796` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126983 has offset 0).

The definition of A126983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126983.P7461270347805362717

`(-1)^n*A064310(n)`
-/

namespace A126983.P7461270347805362717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A064310 n

end

end A126983.P7461270347805362717

namespace A126983

/-- `(-1)^n*A064310(n)` -/
def P7461270347805362717.Spec : Prop :=
  ∀ n, P7461270347805362717.a n = A126983 n

end A126983

/-! ## A126983.P5563237700136308820

`floor(acot(n)-A000957(n))`
-/

namespace A126983.P5563237700136308820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A000957 n : ℝ)⌋

end

end A126983.P5563237700136308820

namespace A126983

/-- `floor(acot(n)-A000957(n))` -/
def P5563237700136308820.Spec : Prop :=
  ∀ n, P5563237700136308820.a n = A126983 n

end A126983

/-! ## A126983.P16971130868072048790

`-((a(n-1)+A000108(n-1))/2)` with `a(0)=1`
-/

namespace A126983.P16971130868072048790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  -((a (n - 1) + (A000108 (n - 1) : ℚ)) / 2)

end

end A126983.P16971130868072048790

namespace A126983

/-- `-((a(n-1)+A000108(n-1))/2)` -/
def P16971130868072048790.Spec : Prop :=
  ∀ n, P16971130868072048790.a n = (A126983 n : ℚ)

end A126983

/-! ## A126983.P5512643725349819796

`A000007(n)-A000957(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126983

/-- `A000007(n)-A000957(n)` -/
def P5512643725349819796.Spec : Prop :=
  ∀ n, P5512643725349819796.a n = A126983 n

theorem P5512643725349819796.correct : P5512643725349819796.Spec := by
  intro n
  simp only [A126983]

end A126983

/-! ## A126983.P1318483160832624543

`A064310(n)/A033999(n)`
-/

namespace A126983.P1318483160832624543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064310 n : ℚ) / (A033999 n : ℚ)

end

end A126983.P1318483160832624543

namespace A126983

/-- `A064310(n)/A033999(n)` -/
def P1318483160832624543.Spec : Prop :=
  ∀ n, P1318483160832624543.a n = (A126983 n : ℚ)

end A126983

/-! ## A126983.P9924174310826920450

`A036987(2*n)-A000957(n)`
-/

namespace A126983.P9924174310826920450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) - A000957 n

end

end A126983.P9924174310826920450

namespace A126983

/-- `A036987(2*n)-A000957(n)` -/
def P9924174310826920450.Spec : Prop :=
  ∀ n, P9924174310826920450.a n = A126983 n

end A126983

/-! ## A126983.P9357127000784532433

`A097331(2*n)-A000957(n)`
-/

namespace A126983.P9357127000784532433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n) - A000957 n

end

end A126983.P9357127000784532433

namespace A126983

/-- `A097331(2*n)-A000957(n)` -/
def P9357127000784532433.Spec : Prop :=
  ∀ n, P9357127000784532433.a n = A126983 n

end A126983

/-! ## A126983.P16496283692517816899

`A010051(2*(n+1))-A000957(n)`
-/

namespace A126983.P16496283692517816899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) - A000957 n

end

end A126983.P16496283692517816899

namespace A126983

/-- `A010051(2*(n+1))-A000957(n)` -/
def P16496283692517816899.Spec : Prop :=
  ∀ n, P16496283692517816899.a n = A126983 n

end A126983

/-! ## A126983.P3110656952090171370

`A048298(2*n+1)-A000957(n)`
-/

namespace A126983.P3110656952090171370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (2 * n + 1) - A000957 n

end

end A126983.P3110656952090171370

namespace A126983

/-- `A048298(2*n+1)-A000957(n)` -/
def P3110656952090171370.Spec : Prop :=
  ∀ n, P3110656952090171370.a n = A126983 n

end A126983

/-! ## A126983.P6927903142183380054

`A115140(n)+(A000108(n-1)-a(n-1))/2` with `a(0)=1`
-/

namespace A126983.P6927903142183380054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A115140 n : ℚ) + ((A000108 (n - 1) : ℚ) - a (n - 1)) / 2

end

end A126983.P6927903142183380054

namespace A126983

/-- `A115140(n)+(A000108(n-1)-a(n-1))/2` -/
def P6927903142183380054.Spec : Prop :=
  ∀ n, P6927903142183380054.a n = (A126983 n : ℚ)

end A126983

/-! ## A126983.P13448338491025856951

`(A000108(n-1)-a(n-1))/2*A057428(n)-a(n-1)` with `a(0)=1`
-/

namespace A126983.P13448338491025856951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A000108 (n - 1) : ℚ) - a (n - 1)) / 2 * (A057428 n : ℚ) - a (n - 1)

end

end A126983.P13448338491025856951

namespace A126983

/-- `(A000108(n-1)-a(n-1))/2*A057428(n)-a(n-1)` -/
def P13448338491025856951.Spec : Prop :=
  ∀ n, P13448338491025856951.a n = (A126983 n : ℚ)

end A126983

/-! ## A126983.P10202731747702882296

`A000035(A004016(n))-A000957(n)`
-/

namespace A126983.P10202731747702882296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004016 n).toNat - A000957 n

end

end A126983.P10202731747702882296

namespace A126983

/-- `A000035(A004016(n))-A000957(n)` -/
def P10202731747702882296.Spec : Prop :=
  ∀ n, P10202731747702882296.a n = A126983 n

end A126983

/-! ## A126983.P2047781920947959084

`A008966(A004011(n))-A000957(n)`
-/

namespace A126983.P2047781920947959084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A004011 n).toNat - A000957 n

end

end A126983.P2047781920947959084

namespace A126983

/-- `A008966(A004011(n))-A000957(n)` -/
def P2047781920947959084.Spec : Prop :=
  ∀ n, P2047781920947959084.a n = A126983 n

end A126983

/-! ## A126983.P3279983306412183015

`A008683(A008574(n))-A000957(n)`
-/

namespace A126983.P3279983306412183015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat - A000957 n

end

end A126983.P3279983306412183015

namespace A126983

/-- `A008683(A008574(n))-A000957(n)` -/
def P3279983306412183015.Spec : Prop :=
  ∀ n, P3279983306412183015.a n = A126983 n

end A126983

/-! ## A126983.P8572580882617751726

`A035327(A003817(n))-A000957(n)`
-/

namespace A126983.P8572580882617751726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A003817 n).toNat - A000957 n

end

end A126983.P8572580882617751726

namespace A126983

/-- `A035327(A003817(n))-A000957(n)` -/
def P8572580882617751726.Spec : Prop :=
  ∀ n, P8572580882617751726.a n = A126983 n

end A126983

/-! ## A126983.P6839825983056964772

`A055641(A000120(n))-A000957(n)`
-/

namespace A126983.P6839825983056964772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000120 n).toNat - A000957 n

end

end A126983.P6839825983056964772

namespace A126983

/-- `A055641(A000120(n))-A000957(n)` -/
def P6839825983056964772.Spec : Prop :=
  ∀ n, P6839825983056964772.a n = A126983 n

end A126983

/-! ## A126983.P11257376873064170325

`A084681(A008458(n))-A000957(n)`
-/

namespace A126983.P11257376873064170325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A008458 n).toNat - A000957 n

end

end A126983.P11257376873064170325

namespace A126983

/-- `A084681(A008458(n))-A000957(n)` -/
def P11257376873064170325.Spec : Prop :=
  ∀ n, P11257376873064170325.a n = A126983 n

end A126983

/-! ## A126983.P13880572214901982093

`A319394(A000217(n))-A000957(n)`
-/

namespace A126983.P13880572214901982093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A000217 n).toNat - A000957 n

end

end A126983.P13880572214901982093

namespace A126983

/-- `A319394(A000217(n))-A000957(n)` -/
def P13880572214901982093.Spec : Prop :=
  ∀ n, P13880572214901982093.a n = A126983 n

end A126983

/-! ## A126983.P4939901344882551969

`A288117(A127321(n))-A000957(n)`
-/

namespace A126983.P4939901344882551969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288117 (A127321 n).toNat - A000957 n

end

end A126983.P4939901344882551969

namespace A126983

/-- `A288117(A127321(n))-A000957(n)` -/
def P4939901344882551969.Spec : Prop :=
  ∀ n, P4939901344882551969.a n = A126983 n

end A126983

/-!
# A126984: Expansion of 1/(1+2*x*c(x)), c(x) the g.f. of Catalan numbers A000108.

The programs for A126984, there is no canonical definition to state claims against.
-/

/-! ## A126984.P8375231183666055447

`A387085(n)+A387085(n)-A000984(n)`
-/

namespace A126984.P8375231183666055447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387085 n + (A387085 n - A000984 n)

end

end A126984.P8375231183666055447

/-!
# A126985: Expansion of 1/(1+8*x*c(x)), c(x) the g.f. of Catalan numbers A000108.

The programs for A126985, there is no canonical definition to state claims against.
-/

/-! ## A126985.P5049431266512612337

`(-1)^n*A090413(2*n)`
-/

namespace A126985.P5049431266512612337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A090413 (2 * n)

end

end A126985.P5049431266512612337

/-! ## A126985.P12437253636097816463

`A090413(2*n)*A195017(A000040(n+1))`
-/

namespace A126985.P12437253636097816463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090413 (2 * n) * A195017 (A000040 (n + 1)).toNat

end

end A126985.P12437253636097816463

/-!
# A126987: Expansion of 1/(1+5*x*c(x)), c(x) the g.f. of Catalan numbers A000108.

The programs for A126987, there is no canonical definition to state claims against.
-/

/-! ## A126987.P14589550137705286849

`A152185(n)-A333753(A000364(n))`
-/

namespace A126987.P14589550137705286849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152185 n - A333753 (A000364 n).toNat

end

end A126987.P14589550137705286849

/-!
# A126988: Triangle read by rows: T(n,k) = n/k if k is a divisor of n; T(n,k) = 0 if k is not a divisor of n (1 <= k <= n).

The programs for A126988, the canonical program `A126988.P9816827205040377566` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126988 has offset 1).

The definition of A126988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126988.P1106857671548370038

`A001057(A143315(n+1))`
-/

namespace A126988.P1106857671548370038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A143315 (n + 1)).toNat

end

end A126988.P1106857671548370038

namespace A126988

/-- `A001057(A143315(n+1))` -/
def P1106857671548370038.Spec : Prop :=
  ∀ n, P1106857671548370038.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P12386800024822686361

`A141680(n+1)/A135278(n)`
-/

namespace A126988.P12386800024822686361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141680 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A126988.P12386800024822686361

namespace A126988

/-- `A141680(n+1)/A135278(n)` -/
def P12386800024822686361.Spec : Prop :=
  ∀ n, P12386800024822686361.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P9312749477299262278

`gcd(A127168(n), A167990(n+1))`
-/

namespace A126988.P9312749477299262278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127168 n) (A167990 (n + 1))

end

end A126988.P9312749477299262278

namespace A126988

/-- `gcd(A127168(n), A167990(n+1))` -/
def P9312749477299262278.Spec : Prop :=
  ∀ n, (P9312749477299262278.a n : ℤ) = A126988 (n + 1)

end A126988

/-! ## A126988.P14619496506899222308

`lcm(A010766(n+1), A129555(n))`
-/

namespace A126988.P14619496506899222308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010766 (n + 1)) (A129555 n)

end

end A126988.P14619496506899222308

namespace A126988

/-- `lcm(A010766(n+1), A129555(n))` -/
def P14619496506899222308.Spec : Prop :=
  ∀ n, (P14619496506899222308.a n : ℤ) = A126988 (n + 1)

end A126988

/-! ## A126988.P9816827205040377566

`A010766(n+1)*A051731(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A126988

/-- `A010766(n+1)*A051731(n+1)` -/
def P9816827205040377566.Spec : Prop :=
  ∀ n, P9816827205040377566.a n = A126988 (n + 1)

theorem P9816827205040377566.correct : P9816827205040377566.Spec := by
  intro n
  simp only [A126988, Nat.add_sub_cancel]

end A126988

/-! ## A126988.P5523060523131765472

`A049834(n+1)*A051731(n+1)`
-/

namespace A126988.P5523060523131765472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A051731 (n + 1)

end

end A126988.P5523060523131765472

namespace A126988

/-- `A049834(n+1)*A051731(n+1)` -/
def P5523060523131765472.Spec : Prop :=
  ∀ n, P5523060523131765472.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P7318421178087839764

`A051537(n+1)*A051731(n+1)`
-/

namespace A126988.P7318421178087839764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A051731 (n + 1)

end

end A126988.P7318421178087839764

namespace A126988

/-- `A051537(n+1)*A051731(n+1)` -/
def P7318421178087839764.Spec : Prop :=
  ∀ n, P7318421178087839764.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P17442921514795733857

`A051731(n+1)*A054531(n+1)`
-/

namespace A126988.P17442921514795733857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A054531 (n + 1)

end

end A126988.P17442921514795733857

namespace A126988

/-- `A051731(n+1)*A054531(n+1)` -/
def P17442921514795733857.Spec : Prop :=
  ∀ n, P17442921514795733857.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P2100741955583136106

`A051731(n+1)*A059026(n+1)`
-/

namespace A126988.P2100741955583136106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A059026 (n + 1)

end

end A126988.P2100741955583136106

namespace A126988

/-- `A051731(n+1)*A059026(n+1)` -/
def P2100741955583136106.Spec : Prop :=
  ∀ n, P2100741955583136106.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P16534638754151218393

`A051731(n+1)*A219158(n+1)`
-/

namespace A126988.P16534638754151218393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A219158 (n + 1)

end

end A126988.P16534638754151218393

namespace A126988

/-- `A051731(n+1)*A219158(n+1)` -/
def P16534638754151218393.Spec : Prop :=
  ∀ n, P16534638754151218393.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P4401140830599592856

`A051731(n+1)*A234575(n+1)`
-/

namespace A126988.P4401140830599592856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A234575 (n + 1)

end

end A126988.P4401140830599592856

namespace A126988

/-- `A051731(n+1)*A234575(n+1)` -/
def P4401140830599592856.Spec : Prop :=
  ∀ n, P4401140830599592856.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P6004092453240732035

`A051731(n+1)*A372523(n+1)`
-/

namespace A126988.P6004092453240732035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A372523 (n + 1)

end

end A126988.P6004092453240732035

namespace A126988

/-- `A051731(n+1)*A372523(n+1)` -/
def P6004092453240732035.Spec : Prop :=
  ∀ n, P6004092453240732035.a n = A126988 (n + 1)

end A126988

/-! ## A126988.P16250971381638691893

`A127446(n+1)/A002260(n+1)`
-/

namespace A126988.P16250971381638691893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127446 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A126988.P16250971381638691893

namespace A126988

/-- `A127446(n+1)/A002260(n+1)` -/
def P16250971381638691893.Spec : Prop :=
  ∀ n, P16250971381638691893.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P5258756279311994610

`A127446(n+1)/(A002262(n)+1)`
-/

namespace A126988.P5258756279311994610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127446 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A126988.P5258756279311994610

namespace A126988

/-- `A127446(n+1)/(A002262(n)+1)` -/
def P5258756279311994610.Spec : Prop :=
  ∀ n, P5258756279311994610.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P12896122158046435071

`A143311(n+1)/A002024(n+1)`
-/

namespace A126988.P12896122158046435071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143311 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A126988.P12896122158046435071

namespace A126988

/-- `A143311(n+1)/A002024(n+1)` -/
def P12896122158046435071.Spec : Prop :=
  ∀ n, P12896122158046435071.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P15558937041124266441

`A127446(n+1)/A050873(n+1)`
-/

namespace A126988.P15558937041124266441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127446 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A126988.P15558937041124266441

namespace A126988

/-- `A127446(n+1)/A050873(n+1)` -/
def P15558937041124266441.Spec : Prop :=
  ∀ n, P15558937041124266441.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P9187342860493158569

`A127478(n+1)/A054526(n+1)`
-/

namespace A126988.P9187342860493158569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A126988.P9187342860493158569

namespace A126988

/-- `A127478(n+1)/A054526(n+1)` -/
def P9187342860493158569.Spec : Prop :=
  ∀ n, P9187342860493158569.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P2648145586618021542

`A143311(n+1)/A049840(n+1)`
-/

namespace A126988.P2648145586618021542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143311 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

end

end A126988.P2648145586618021542

namespace A126988

/-- `A143311(n+1)/A049840(n+1)` -/
def P2648145586618021542.Spec : Prop :=
  ∀ n, P2648145586618021542.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P3511736672857141557

`A143311(n+1)/A051173(n+1)`
-/

namespace A126988.P3511736672857141557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143311 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A126988.P3511736672857141557

namespace A126988

/-- `A143311(n+1)/A051173(n+1)` -/
def P3511736672857141557.Spec : Prop :=
  ∀ n, P3511736672857141557.a n = (A126988 (n + 1) : ℚ)

end A126988

/-! ## A126988.P6349144818556555304

`A134576(n+1)/A075362(n+1)`
-/

namespace A126988.P6349144818556555304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134576 (n + 1) : ℚ) / (A075362 (n + 1) : ℚ)

end

end A126988.P6349144818556555304

namespace A126988

/-- `A134576(n+1)/A075362(n+1)` -/
def P6349144818556555304.Spec : Prop :=
  ∀ n, P6349144818556555304.a n = (A126988 (n + 1) : ℚ)

end A126988

/-!
# A126989: Gaps associated with the first and smallest arithmetic progressions of n consecutive primes in A006560.

The programs for A126989, there is no canonical definition to state claims against.
-/

/-! ## A126989.P12128544735692130098

`lcm(a(n-1), ∑[n])` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A126989.P12128544735692130098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126989.P12128544735692130098

/-! ## A126989.P12863011671017188196

`or(1, n)*a(floor((n+2)/2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A126989.P12863011671017188196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.lor 1 n * a ⌊(n + 2 : ℚ) / 2⌋.toNat

end

end A126989.P12863011671017188196

/-! ## A126989.P2928281616753924700

`ceil((n+1)/∏{p}[n+1, (n+1)/#])*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A126989.P2928281616753924700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ * a (n - 1)

end

end A126989.P2928281616753924700

/-!
# A126990: Largest prime preceding geometric mean of prime(n) and prime(n+2).

The programs for A126990, the canonical program `A126990.P1126875488273332131` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126990 has offset 1).

The definition of A126990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A073273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126990.P1126875488273332131

`A007917(A073273(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A126990

/-- `A007917(A073273(n+1))` -/
def P1126875488273332131.Spec : Prop :=
  ∀ n, P1126875488273332131.a n = A126990 (n + 1)

theorem P1126875488273332131.correct : P1126875488273332131.Spec := by
  intro n
  simp only [A126990, Nat.add_sub_cancel]

end A126990

/-! ## A126990.P6431032460889897530

`A000040(2-A139312(n+2)+n)`
-/

namespace A126990.P6431032460889897530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A139312 (n + 2) + (n : ℤ)).toNat

end

end A126990.P6431032460889897530

namespace A126990

/-- `A000040(2-A139312(n+2)+n)` -/
def P6431032460889897530.Spec : Prop :=
  ∀ n, P6431032460889897530.a n = A126990 (n + 1)

end A126990

/-! ## A126990.P10536405924363556977

`A000040(ceil(A036263(n+1)/(n+1)+n+1))`
-/

namespace A126990.P10536405924363556977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A036263 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌉.toNat

end

end A126990.P10536405924363556977

namespace A126990

/-- `A000040(ceil(A036263(n+1)/(n+1)+n+1))` -/
def P10536405924363556977.Spec : Prop :=
  ∀ n, P10536405924363556977.a n = A126990 (n + 1)

end A126990

/-! ## A126990.P14778375109515556974

`A000040(A339270(n+2)-A046929(n+2)+n+1)`
-/

namespace A126990.P14778375109515556974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A339270 (n + 2) - A046929 (n + 2) + (n : ℤ) + 1).toNat

end

end A126990.P14778375109515556974

namespace A126990

/-- `A000040(A339270(n+2)-A046929(n+2)+n+1)` -/
def P14778375109515556974.Spec : Prop :=
  ∀ n, P14778375109515556974.a n = A126990 (n + 1)

end A126990

/-! ## A126990.P16325865719499057597

`A000040(A000720(A073271(n+1)))`
-/

namespace A126990.P16325865719499057597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A073271 (n + 1)).toNat).toNat

end

end A126990.P16325865719499057597

namespace A126990

/-- `A000040(A000720(A073271(n+1)))` -/
def P16325865719499057597.Spec : Prop :=
  ∀ n, P16325865719499057597.a n = A126990 (n + 1)

end A126990

/-! ## A126990.P8630037004187683658

`A007917(A054541(n+3)+A006093(n+1))`
-/

namespace A126990.P8630037004187683658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A054541 (n + 3) + A006093 (n + 1)).toNat

end

end A126990.P8630037004187683658

namespace A126990

/-- `A007917(A054541(n+3)+A006093(n+1))` -/
def P8630037004187683658.Spec : Prop :=
  ∀ n, P8630037004187683658.a n = A126990 (n + 1)

end A126990

/-! ## A126990.P10417306313435112920

`A136548(A093667(n+1))`
-/

namespace A126990.P10417306313435112920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A093667 (n + 1)).toNat

end

end A126990.P10417306313435112920

namespace A126990

/-- `A136548(A093667(n+1))` -/
def P10417306313435112920.Spec : Prop :=
  ∀ n, P10417306313435112920.a n = A126990 (n + 1)

end A126990

/-!
# A126991: Prime preceding the geometric mean of prime(n-2) and prime(n+2).

The programs for A126991, there is no canonical definition to state claims against.
-/

/-! ## A126991.P12698551745406640204

`A056813(∑[A017473(A008578(n+1))])`
-/

namespace A126991.P12698551745406640204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126991.P12698551745406640204

/-! ## A126991.P7091957813541907011

`A056813(A000040(n+1)*A000040(n+5))`
-/

namespace A126991.P7091957813541907011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A000040 (n + 1) * A000040 (n + 5)).toNat

end

end A126991.P7091957813541907011

/-! ## A126991.P13484086452996626810

`A273282(A000040(n+1)*A000040(n+5))`
-/

namespace A126991.P13484086452996626810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (A000040 (n + 1) * A000040 (n + 5)).toNat

end

end A126991.P13484086452996626810

/-! ## A126991.P15506592674907320807

`A273282(A273960(n+1)*A273960(n+5))`
-/

namespace A126991.P15506592674907320807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (A273960 (n + 1) * A273960 (n + 5)).toNat

end

end A126991.P15506592674907320807

/-! ## A126991.P9638614200635894827

`A056813(A008578(n+2)*A008578(n+6))`
-/

namespace A126991.P9638614200635894827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A008578 (n + 2) * A008578 (n + 6)).toNat

end

end A126991.P9638614200635894827

/-!
# A126992: a(n) is the largest prime smaller than sqrt(prime(n)*prime(n+6)).

The programs for A126992, there is no canonical definition to state claims against.
-/

/-! ## A126992.P9521611887187687003

`A056813(A008578(n+2)*A008578(n+8))`
-/

namespace A126992.P9521611887187687003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A008578 (n + 2) * A008578 (n + 8)).toNat

end

end A126992.P9521611887187687003

/-! ## A126992.P13189597108904770492

`A056813(A182986(n+2)*A182986(n+8))`
-/

namespace A126992.P13189597108904770492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A182986 (n + 2) * A182986 (n + 8)).toNat

end

end A126992.P13189597108904770492

/-! ## A126992.P11177477773495351838

`A000040(A000720(A171519(A171519(A000040(n+1)))))`
-/

namespace A126992.P11177477773495351838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A171519 (A171519 (A000040 (n + 1)).toNat).toNat).toNat).toNat

end

end A126992.P11177477773495351838

/-! ## A126992.P1198132706071548105

`A245396(n+1)+A089799(A000294(n))`
-/

namespace A126992.P1198132706071548105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (n + 1) + A089799 (A000294 n).toNat

end

end A126992.P1198132706071548105

/-! ## A126992.P16787178771585142835

`A245396(n+1)+A214304(A245425(n+1))`
-/

namespace A126992.P16787178771585142835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (n + 1) + A214304 (A245425 (n + 1)).toNat

end

end A126992.P16787178771585142835

/-!
# A126993: a(n) = binomial(prime(n+3), prime(n)).

The programs for A126993, the canonical program `A126993.P13603353054685926985` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126993 has offset 1).

The definition of A126993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126993.P746389699559176855

`C(p?[2*n+7], Δ[A007504(n)])`
-/

namespace A126993.P746389699559176855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (n + 1) - f2 n).toNat

end

end A126993.P746389699559176855

namespace A126993

/-- `C(p?[2*n+7], Δ[A007504(n)])` -/
def P746389699559176855.Spec : Prop :=
  ∀ n, (P746389699559176855.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P11402987628867307333

`C(p?[2*n+7], p?[A018252(n+1)-7])`
-/

namespace A126993.P11402987628867307333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

end

end A126993.P11402987628867307333

namespace A126993

/-- `C(p?[2*n+7], p?[A018252(n+1)-7])` -/
def P11402987628867307333.Spec : Prop :=
  ∀ n, (P11402987628867307333.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P4530197703250793216

`C(A215848(n+2), p?[A001057(n)])`
-/

namespace A126993.P4530197703250793216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126993.P4530197703250793216

namespace A126993

/-- `C(A215848(n+2), p?[A001057(n)])` -/
def P4530197703250793216.Spec : Prop :=
  ∀ n, (P4530197703250793216.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P2856070004748781029

`C(A215848(n+2), p?[A014681(n)])`
-/

namespace A126993.P2856070004748781029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126993.P2856070004748781029

namespace A126993

/-- `C(A215848(n+2), p?[A014681(n)])` -/
def P2856070004748781029.Spec : Prop :=
  ∀ n, (P2856070004748781029.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P17855629777976216962

`C(A215848(n+2), p?[A074306(n)])`
-/

namespace A126993.P17855629777976216962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126993.P17855629777976216962

namespace A126993

/-- `C(A215848(n+2), p?[A074306(n)])` -/
def P17855629777976216962.Spec : Prop :=
  ∀ n, (P17855629777976216962.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P9948938174336601866

`C(A215848(n+2), A008578(n+2))`
-/

namespace A126993.P9948938174336601866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 2)).toNat (A008578 (n + 2)).toNat

end

end A126993.P9948938174336601866

namespace A126993

/-- `C(A215848(n+2), A008578(n+2))` -/
def P9948938174336601866.Spec : Prop :=
  ∀ n, (P9948938174336601866.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P13603353054685926985

`C(A000040(n+4), A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126993

/-- `C(A000040(n+4), A000040(n+1))` -/
def P13603353054685926985.Spec : Prop :=
  ∀ n, (P13603353054685926985.a n : ℤ) = A126993 (n + 1)

theorem P13603353054685926985.correct : P13603353054685926985.Spec := by
  intro n
  simp only [A126993, Nat.add_sub_cancel]

end A126993

/-! ## A126993.P11111923921055607961

`C(A065091(n+3), A008578(n+2))`
-/

namespace A126993.P11111923921055607961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 3)).toNat (A008578 (n + 2)).toNat

end

end A126993.P11111923921055607961

namespace A126993

/-- `C(A065091(n+3), A008578(n+2))` -/
def P11111923921055607961.Spec : Prop :=
  ∀ n, (P11111923921055607961.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P12645686916419223242

`C(A008578(n+5), ∑[A054541(n+1)])`
-/

namespace A126993.P12645686916419223242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 5)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126993.P12645686916419223242

namespace A126993

/-- `C(A008578(n+5), ∑[A054541(n+1)])` -/
def P12645686916419223242.Spec : Prop :=
  ∀ n, (P12645686916419223242.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P6301438024922878557

`C(p?[A007775(n+1)], A008578(n+2))`
-/

namespace A126993.P6301438024922878557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat (A008578 (n + 2)).toNat

end

end A126993.P6301438024922878557

namespace A126993

/-- `C(p?[A007775(n+1)], A008578(n+2))` -/
def P6301438024922878557.Spec : Prop :=
  ∀ n, (P6301438024922878557.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P13347805521213144194

`C(A065091(n+3), A006093(n+1)+1)`
-/

namespace A126993.P13347805521213144194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 3)).toNat (A006093 (n + 1) + 1).toNat

end

end A126993.P13347805521213144194

namespace A126993

/-- `C(A065091(n+3), A006093(n+1)+1)` -/
def P13347805521213144194.Spec : Prop :=
  ∀ n, (P13347805521213144194.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P18367633071422380895

`C(A065091(n+3), A008864(n+1)-1)`
-/

namespace A126993.P18367633071422380895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 3)).toNat (A008864 (n + 1) - 1).toNat

end

end A126993.P18367633071422380895

namespace A126993

/-- `C(A065091(n+3), A008864(n+1)-1)` -/
def P18367633071422380895.Spec : Prop :=
  ∀ n, (P18367633071422380895.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P14879805369648846978

`C(A065091(n+3), A001748(n+1)/3)`
-/

namespace A126993.P14879805369648846978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 3)).toNat (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A126993.P14879805369648846978

namespace A126993

/-- `C(A065091(n+3), A001748(n+1)/3)` -/
def P14879805369648846978.Spec : Prop :=
  ∀ n, (P14879805369648846978.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P17696810986927819504

`C(A008578(n+5), A100484(n+1)/2)`
-/

namespace A126993.P17696810986927819504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 5)).toNat (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A126993.P17696810986927819504

namespace A126993

/-- `C(A008578(n+5), A100484(n+1)/2)` -/
def P17696810986927819504.Spec : Prop :=
  ∀ n, (P17696810986927819504.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P1568197783733829670

`C(A065091(n+3), A014692(n+1)+n)`
-/

namespace A126993.P1568197783733829670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 3)).toNat (A014692 (n + 1) + (n : ℤ)).toNat

end

end A126993.P1568197783733829670

namespace A126993

/-- `C(A065091(n+3), A014692(n+1)+n)` -/
def P1568197783733829670.Spec : Prop :=
  ∀ n, (P1568197783733829670.a n : ℤ) = A126993 (n + 1)

end A126993

/-! ## A126993.P18362187863059107305

`C(A008578(n+5), A006530(A001747(n+2)))`
-/

namespace A126993.P18362187863059107305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 5)).toNat (A006530 (A001747 (n + 2)).toNat).toNat

end

end A126993.P18362187863059107305

namespace A126993

/-- `C(A008578(n+5), A006530(A001747(n+2)))` -/
def P18362187863059107305.Spec : Prop :=
  ∀ n, (P18362187863059107305.a n : ℤ) = A126993 (n + 1)

end A126993

/-!
# A126994: a(n) = binomial(prime(n+5), prime(n)).

The programs for A126994, the canonical program `A126994.P4632557571172505909` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126994 has offset 0).

The definition of A126994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126994.P4632557571172505909

`C(A045344(n+4), A182986(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A126994

/-- `C(A045344(n+4), A182986(n+1))` -/
def P4632557571172505909.Spec : Prop :=
  ∀ n, (P4632557571172505909.a n : ℤ) = A126994 n

theorem P4632557571172505909.correct : P4632557571172505909.Spec := by
  intro n
  simp only [A126994]

end A126994

/-! ## A126994.P7406247341965015369

`C(A065091(n+4), A182986(n+1))`
-/

namespace A126994.P7406247341965015369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 4)).toNat (A182986 (n + 1)).toNat

end

end A126994.P7406247341965015369

namespace A126994

/-- `C(A065091(n+4), A182986(n+1))` -/
def P7406247341965015369.Spec : Prop :=
  ∀ n, (P7406247341965015369.a n : ℤ) = A126994 n

end A126994

/-! ## A126994.P5669615257639073046

`C(A000040(n+5), A182986(n+1))`
-/

namespace A126994.P5669615257639073046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat (A182986 (n + 1)).toNat

end

end A126994.P5669615257639073046

namespace A126994

/-- `C(A000040(n+5), A182986(n+1))` -/
def P5669615257639073046.Spec : Prop :=
  ∀ n, (P5669615257639073046.a n : ℤ) = A126994 n

end A126994

/-! ## A126994.P7583561522895011819

`C(A006005(n+5), A182986(n+1))`
-/

namespace A126994.P7583561522895011819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 5)).toNat (A182986 (n + 1)).toNat

end

end A126994.P7583561522895011819

namespace A126994

/-- `C(A006005(n+5), A182986(n+1))` -/
def P7583561522895011819.Spec : Prop :=
  ∀ n, (P7583561522895011819.a n : ℤ) = A126994 n

end A126994

/-! ## A126994.P3389975413051872455

`C(A151800(A008864(n+4)), A182986(n+1))`
-/

namespace A126994.P3389975413051872455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151800 (A008864 (n + 4)).toNat).toNat (A182986 (n + 1)).toNat

end

end A126994.P3389975413051872455

namespace A126994

/-- `C(A151800(A008864(n+4)), A182986(n+1))` -/
def P3389975413051872455.Spec : Prop :=
  ∀ n, (P3389975413051872455.a n : ℤ) = A126994 n

end A126994

/-! ## A126994.P12353183365640124968

`C(A006530(A090076(n+3)), A182986(n+1))`
-/

namespace A126994.P12353183365640124968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (A090076 (n + 3)).toNat).toNat (A182986 (n + 1)).toNat

end

end A126994.P12353183365640124968

namespace A126994

/-- `C(A006530(A090076(n+3)), A182986(n+1))` -/
def P12353183365640124968.Spec : Prop :=
  ∀ n, (P12353183365640124968.a n : ℤ) = A126994 n

end A126994

/-!
# A126995: a(n) = binomial(prime(n+2), 3).

The programs for A126995, the canonical program `A126995.P13544470788669293982` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126995 has offset 0).

The definition of A126995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126995.P13544470788669293982

`C(p?[2*n+1], 3)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126995

/-- `C(p?[2*n+1], 3)` -/
def P13544470788669293982.Spec : Prop :=
  ∀ n, (P13544470788669293982.a n : ℤ) = A126995 n

theorem P13544470788669293982.correct : P13544470788669293982.Spec := by
  intro n
  simp only [A126995]

end A126995

/-! ## A126995.P9334074254967290821

`C(A065091(n+1), 3)`
-/

namespace A126995.P9334074254967290821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat 3

end

end A126995.P9334074254967290821

namespace A126995

/-- `C(A065091(n+1), 3)` -/
def P9334074254967290821.Spec : Prop :=
  ∀ n, (P9334074254967290821.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P7557879708498015617

`C(A000040(n+2), 3)`
-/

namespace A126995.P7557879708498015617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2)).toNat 3

end

end A126995.P7557879708498015617

namespace A126995

/-- `C(A000040(n+2), 3)` -/
def P7557879708498015617.Spec : Prop :=
  ∀ n, (P7557879708498015617.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P16577925274896655945

`C(A006005(n+2), 3)`
-/

namespace A126995.P16577925274896655945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 2)).toNat 3

end

end A126995.P16577925274896655945

namespace A126995

/-- `C(A006005(n+2), 3)` -/
def P16577925274896655945.Spec : Prop :=
  ∀ n, (P16577925274896655945.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P5527308033983241526

`A072206(n+2)-A000040(n+2)`
-/

namespace A126995.P5527308033983241526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072206 (n + 2) - A000040 (n + 2)

end

end A126995.P5527308033983241526

namespace A126995

/-- `A072206(n+2)-A000040(n+2)` -/
def P5527308033983241526.Spec : Prop :=
  ∀ n, P5527308033983241526.a n = A126995 n

end A126995

/-! ## A126995.P10684682335416581817

`A127920(n+2)-A008837(n+2)`
-/

namespace A126995.P10684682335416581817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127920 (n + 2) - A008837 (n + 2)

end

end A126995.P10684682335416581817

namespace A126995

/-- `A127920(n+2)-A008837(n+2)` -/
def P10684682335416581817.Spec : Prop :=
  ∀ n, P10684682335416581817.a n = A126995 n

end A126995

/-! ## A126995.P15487201375608553071

`A138416(n+2)-A127919(n+2)`
-/

namespace A126995.P15487201375608553071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 2) - A127919 (n + 2)

end

end A126995.P15487201375608553071

namespace A126995

/-- `A138416(n+2)-A127919(n+2)` -/
def P15487201375608553071.Spec : Prop :=
  ∀ n, P15487201375608553071.a n = A126995 n

end A126995

/-! ## A126995.P17924603502675221599

`A000040(n+2)+A127920(n+2)-A034953(n+2)`
-/

namespace A126995.P17924603502675221599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A127920 (n + 2) - A034953 (n + 2))

end

end A126995.P17924603502675221599

namespace A126995

/-- `A000040(n+2)+A127920(n+2)-A034953(n+2)` -/
def P17924603502675221599.Spec : Prop :=
  ∀ n, P17924603502675221599.a n = A126995 n

end A126995

/-! ## A126995.P13241912104116328430

`A138416(n+2)-A127920(n+2)-A127920(n+2)`
-/

namespace A126995.P13241912104116328430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 2) - A127920 (n + 2) - A127920 (n + 2)

end

end A126995.P13241912104116328430

namespace A126995

/-- `A138416(n+2)-A127920(n+2)-A127920(n+2)` -/
def P13241912104116328430.Spec : Prop :=
  ∀ n, P13241912104116328430.a n = A126995 n

end A126995

/-! ## A126995.P5901921645228733773

`C(A008578(n+3), 3)`
-/

namespace A126995.P5901921645228733773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 3)).toNat 3

end

end A126995.P5901921645228733773

namespace A126995

/-- `C(A008578(n+3), 3)` -/
def P5901921645228733773.Spec : Prop :=
  ∀ n, (P5901921645228733773.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P18132989557079424734

`C(A182986(n+3), 3)`
-/

namespace A126995.P18132989557079424734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182986 (n + 3)).toNat 3

end

end A126995.P18132989557079424734

namespace A126995

/-- `C(A182986(n+3), 3)` -/
def P18132989557079424734.Spec : Prop :=
  ∀ n, (P18132989557079424734.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P11087754974042768251

`record[C(A006530(n+3), 3)]`
-/

namespace A126995.P11087754974042768251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 3)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126995.P11087754974042768251

namespace A126995

/-- `record[C(A006530(n+3), 3)]` -/
def P11087754974042768251.Spec : Prop :=
  ∀ n, (P11087754974042768251.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P3648566079020465468

`record[C(A020639(n+3), 3)]`
-/

namespace A126995.P3648566079020465468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 3)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126995.P3648566079020465468

namespace A126995

/-- `record[C(A020639(n+3), 3)]` -/
def P3648566079020465468.Spec : Prop :=
  ∀ n, (P3648566079020465468.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P15926961527685369050

`C(A116570(2*n+1), 3)`
-/

namespace A126995.P15926961527685369050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A116570 (2 * n + 1)).toNat 3

end

end A126995.P15926961527685369050

namespace A126995

/-- `C(A116570(2*n+1), 3)` -/
def P15926961527685369050.Spec : Prop :=
  ∀ n, (P15926961527685369050.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P4996384744080604268

`C(A075643(n+3), 3)`
-/

namespace A126995.P4996384744080604268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075643 (n + 3)).toNat 3

end

end A126995.P4996384744080604268

namespace A126995

/-- `C(A075643(n+3), 3)` -/
def P4996384744080604268.Spec : Prop :=
  ∀ n, (P4996384744080604268.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P4958998759330180187

`record[∏{p}[2*n+1, C(#, 3)]]`
-/

namespace A126995.P4958998759330180187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126995.P4958998759330180187

namespace A126995

/-- `record[∏{p}[2*n+1, C(#, 3)]]` -/
def P4958998759330180187.Spec : Prop :=
  ∀ n, (P4958998759330180187.a n : ℤ) = A126995 n

end A126995

/-! ## A126995.P3203067658905749751

`A000447(A005097(n+1))`
-/

namespace A126995.P3203067658905749751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A005097 (n + 1)).toNat

end

end A126995.P3203067658905749751

namespace A126995

/-- `A000447(A005097(n+1))` -/
def P3203067658905749751.Spec : Prop :=
  ∀ n, P3203067658905749751.a n = A126995 n

end A126995

/-! ## A126995.P14727528134525274438

`A000447(A102781(n+2))`
-/

namespace A126995.P14727528134525274438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A102781 (n + 2)).toNat

end

end A126995.P14727528134525274438

namespace A126995

/-- `A000447(A102781(n+2))` -/
def P14727528134525274438.Spec : Prop :=
  ∀ n, P14727528134525274438.a n = A126995 n

end A126995

/-! ## A126995.P4504080619164376582

`A000447(A130290(n+2))`
-/

namespace A126995.P4504080619164376582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A130290 (n + 2)).toNat

end

end A126995.P4504080619164376582

namespace A126995

/-- `A000447(A130290(n+2))` -/
def P4504080619164376582.Spec : Prop :=
  ∀ n, P4504080619164376582.a n = A126995 n

end A126995

/-! ## A126995.P8415312843630956461

`A080214(A001748(n+2))`
-/

namespace A126995.P8415312843630956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (A001748 (n + 2)).toNat

end

end A126995.P8415312843630956461

namespace A126995

/-- `A080214(A001748(n+2))` -/
def P8415312843630956461.Spec : Prop :=
  ∀ n, P8415312843630956461.a n = A126995 n

end A126995

/-!
# A126996: a(n) = binomial(prime(3+n), prime(3)).

The programs for A126996, the canonical program `A126996.P1210035954833010798` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126996 has offset 0).

The definition of A126996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126996.P1210035954833010798

`C(p?[2*n+5], 5)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126996

/-- `C(p?[2*n+5], 5)` -/
def P1210035954833010798.Spec : Prop :=
  ∀ n, (P1210035954833010798.a n : ℤ) = A126996 n

theorem P1210035954833010798.correct : P1210035954833010798.Spec := by
  intro n
  simp only [A126996]

end A126996

/-! ## A126996.P8528748528342166942

`C(A215848(n+1), 5)`
-/

namespace A126996.P8528748528342166942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 1)).toNat 5

end

end A126996.P8528748528342166942

namespace A126996

/-- `C(A215848(n+1), 5)` -/
def P8528748528342166942.Spec : Prop :=
  ∀ n, (P8528748528342166942.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P17499455210564989659

`C(A045344(n+2), 5)`
-/

namespace A126996.P17499455210564989659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045344 (n + 2)).toNat 5

end

end A126996.P17499455210564989659

namespace A126996

/-- `C(A045344(n+2), 5)` -/
def P17499455210564989659.Spec : Prop :=
  ∀ n, (P17499455210564989659.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P8318966121810822429

`C(A065091(n+2), 5)`
-/

namespace A126996.P8318966121810822429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 2)).toNat 5

end

end A126996.P8318966121810822429

namespace A126996

/-- `C(A065091(n+2), 5)` -/
def P8318966121810822429.Spec : Prop :=
  ∀ n, (P8318966121810822429.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P6015394821296107121

`C(A140475(n+2), 5)`
-/

namespace A126996.P6015394821296107121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140475 (n + 2)).toNat 5

end

end A126996.P6015394821296107121

namespace A126996

/-- `C(A140475(n+2), 5)` -/
def P6015394821296107121.Spec : Prop :=
  ∀ n, (P6015394821296107121.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P18132873496505461655

`C(A000040(n+3), 5)`
-/

namespace A126996.P18132873496505461655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 3)).toNat 5

end

end A126996.P18132873496505461655

namespace A126996

/-- `C(A000040(n+3), 5)` -/
def P18132873496505461655.Spec : Prop :=
  ∀ n, (P18132873496505461655.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P18261912069788907852

`C(A006005(n+3), 5)`
-/

namespace A126996.P18261912069788907852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 3)).toNat 5

end

end A126996.P18261912069788907852

namespace A126996

/-- `C(A006005(n+3), 5)` -/
def P18261912069788907852.Spec : Prop :=
  ∀ n, (P18261912069788907852.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P7828133927516428752

`C(A171577(n+3), 5)`
-/

namespace A126996.P7828133927516428752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A171577 (n + 3)).toNat 5

end

end A126996.P7828133927516428752

namespace A126996

/-- `C(A171577(n+3), 5)` -/
def P7828133927516428752.Spec : Prop :=
  ∀ n, (P7828133927516428752.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P4948969538836808683

`record[C(A306289(n+1), 5)]`
-/

namespace A126996.P4948969538836808683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A306289 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126996.P4948969538836808683

namespace A126996

/-- `record[C(A306289(n+1), 5)]` -/
def P4948969538836808683.Spec : Prop :=
  ∀ n, (P4948969538836808683.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P14007000801125778121

`record[∏{p}[2*n+1, C(#, 5)]]`
-/

namespace A126996.P14007000801125778121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126996.P14007000801125778121

namespace A126996

/-- `record[∏{p}[2*n+1, C(#, 5)]]` -/
def P14007000801125778121.Spec : Prop :=
  ∀ n, (P14007000801125778121.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P12338062779272438890

`A002299(A089038(n+1))`
-/

namespace A126996.P12338062779272438890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (A089038 (n + 1)).toNat

end

end A126996.P12338062779272438890

namespace A126996

/-- `A002299(A089038(n+1))` -/
def P12338062779272438890.Spec : Prop :=
  ∀ n, P12338062779272438890.a n = A126996 n

end A126996

/-! ## A126996.P10569188443140881835

`record[C(A089026(n+5), 5)]`
-/

namespace A126996.P10569188443140881835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089026 (n + 5)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126996.P10569188443140881835

namespace A126996

/-- `record[C(A089026(n+5), 5)]` -/
def P10569188443140881835.Spec : Prop :=
  ∀ n, (P10569188443140881835.a n : ℤ) = A126996 n

end A126996

/-! ## A126996.P7969571529143030822

`A000389(A215848(n+1))`
-/

namespace A126996.P7969571529143030822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A215848 (n + 1)).toNat

end

end A126996.P7969571529143030822

namespace A126996

/-- `A000389(A215848(n+1))` -/
def P7969571529143030822.Spec : Prop :=
  ∀ n, P7969571529143030822.a n = A126996 n

end A126996

/-! ## A126996.P16560048440219082109

`A000389(A045344(n+2))`
-/

namespace A126996.P16560048440219082109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A045344 (n + 2)).toNat

end

end A126996.P16560048440219082109

namespace A126996

/-- `A000389(A045344(n+2))` -/
def P16560048440219082109.Spec : Prop :=
  ∀ n, P16560048440219082109.a n = A126996 n

end A126996

/-! ## A126996.P8202125559929280563

`A000389(A065091(n+2))`
-/

namespace A126996.P8202125559929280563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A065091 (n + 2)).toNat

end

end A126996.P8202125559929280563

namespace A126996

/-- `A000389(A065091(n+2))` -/
def P8202125559929280563.Spec : Prop :=
  ∀ n, P8202125559929280563.a n = A126996 n

end A126996

/-! ## A126996.P11082512796681668825

`A000389(A140475(n+2))`
-/

namespace A126996.P11082512796681668825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A140475 (n + 2)).toNat

end

end A126996.P11082512796681668825

namespace A126996

/-- `A000389(A140475(n+2))` -/
def P11082512796681668825.Spec : Prop :=
  ∀ n, P11082512796681668825.a n = A126996 n

end A126996

/-! ## A126996.P17847716789249353517

`A000389(A000040(n+3))`
-/

namespace A126996.P17847716789249353517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A000040 (n + 3)).toNat

end

end A126996.P17847716789249353517

namespace A126996

/-- `A000389(A000040(n+3))` -/
def P17847716789249353517.Spec : Prop :=
  ∀ n, P17847716789249353517.a n = A126996 n

end A126996

/-! ## A126996.P14547440456156005731

`A000389(p?[A066047(n+1)])`
-/

namespace A126996.P14547440456156005731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126996.P14547440456156005731

namespace A126996

/-- `A000389(p?[A066047(n+1)])` -/
def P14547440456156005731.Spec : Prop :=
  ∀ n, P14547440456156005731.a n = A126996 n

end A126996

/-! ## A126996.P6073162554579140160

`A000389(p?[A175212(n+1)])`
-/

namespace A126996.P6073162554579140160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126996.P6073162554579140160

namespace A126996

/-- `A000389(p?[A175212(n+1)])` -/
def P6073162554579140160.Spec : Prop :=
  ∀ n, P6073162554579140160.a n = A126996 n

end A126996

/-! ## A126996.P2061566037451406767

`A080214(5*A000040(n+3))`
-/

namespace A126996.P2061566037451406767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (5 * A000040 (n + 3)).toNat

end

end A126996.P2061566037451406767

namespace A126996

/-- `A080214(5*A000040(n+3))` -/
def P2061566037451406767.Spec : Prop :=
  ∀ n, P2061566037451406767.a n = A126996 n

end A126996

/-!
# A126997: a(n) = binomial(prime(4+n), prime(4)).

The programs for A126997, the canonical program `A126997.P13937931798826321892` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126997 has offset 0).

The definition of A126997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126997.P13937931798826321892

`C(p?[2*n+7], 7)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126997

/-- `C(p?[2*n+7], 7)` -/
def P13937931798826321892.Spec : Prop :=
  ∀ n, (P13937931798826321892.a n : ℤ) = A126997 n

theorem P13937931798826321892.correct : P13937931798826321892.Spec := by
  intro n
  simp only [A126997]

end A126997

/-! ## A126997.P17508084821165629593

`C(A004139(n+2), 7)`
-/

namespace A126997.P17508084821165629593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004139 (n + 2)).toNat 7

end

end A126997.P17508084821165629593

namespace A126997

/-- `C(A004139(n+2), 7)` -/
def P17508084821165629593.Spec : Prop :=
  ∀ n, (P17508084821165629593.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P16366218120218834933

`C(A215848(n+2), 7)`
-/

namespace A126997.P16366218120218834933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215848 (n + 2)).toNat 7

end

end A126997.P16366218120218834933

namespace A126997

/-- `C(A215848(n+2), 7)` -/
def P16366218120218834933.Spec : Prop :=
  ∀ n, (P16366218120218834933.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P14154173480425357177

`C(A045319(n+3), 7)`
-/

namespace A126997.P14154173480425357177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045319 (n + 3)).toNat 7

end

end A126997.P14154173480425357177

namespace A126997

/-- `C(A045319(n+3), 7)` -/
def P14154173480425357177.Spec : Prop :=
  ∀ n, (P14154173480425357177.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P13064558037906893008

`C(A045344(n+3), 7)`
-/

namespace A126997.P13064558037906893008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045344 (n + 3)).toNat 7

end

end A126997.P13064558037906893008

namespace A126997

/-- `C(A045344(n+3), 7)` -/
def P13064558037906893008.Spec : Prop :=
  ∀ n, (P13064558037906893008.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P2653509870476744587

`C(A065091(n+3), 7)`
-/

namespace A126997.P2653509870476744587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 3)).toNat 7

end

end A126997.P2653509870476744587

namespace A126997

/-- `C(A065091(n+3), 7)` -/
def P2653509870476744587.Spec : Prop :=
  ∀ n, (P2653509870476744587.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P17518494072466755558

`C(A140475(n+3), 7)`
-/

namespace A126997.P17518494072466755558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140475 (n + 3)).toNat 7

end

end A126997.P17518494072466755558

namespace A126997

/-- `C(A140475(n+3), 7)` -/
def P17518494072466755558.Spec : Prop :=
  ∀ n, (P17518494072466755558.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P11396319550394155850

`C(A000040(n+4), 7)`
-/

namespace A126997.P11396319550394155850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 4)).toNat 7

end

end A126997.P11396319550394155850

namespace A126997

/-- `C(A000040(n+4), 7)` -/
def P11396319550394155850.Spec : Prop :=
  ∀ n, (P11396319550394155850.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P9642437108349073812

`C(A008578(n+5), 7)`
-/

namespace A126997.P9642437108349073812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 5)).toNat 7

end

end A126997.P9642437108349073812

namespace A126997

/-- `C(A008578(n+5), 7)` -/
def P9642437108349073812.Spec : Prop :=
  ∀ n, (P9642437108349073812.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P13914086342233162989

`record[∏{p}[2*n+1, C(#, 7)]]`
-/

namespace A126997.P13914086342233162989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126997.P13914086342233162989

namespace A126997

/-- `record[∏{p}[2*n+1, C(#, 7)]]` -/
def P13914086342233162989.Spec : Prop :=
  ∀ n, (P13914086342233162989.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P6623795713224567958

`A053136(A105760(n+1))`
-/

namespace A126997.P6623795713224567958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053136 (A105760 (n + 1)).toNat

end

end A126997.P6623795713224567958

namespace A126997

/-- `A053136(A105760(n+1))` -/
def P6623795713224567958.Spec : Prop :=
  ∀ n, P6623795713224567958.a n = A126997 n

end A126997

/-! ## A126997.P18405247310670771009

`A053136(A161720(n+4))`
-/

namespace A126997.P18405247310670771009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053136 (A161720 (n + 4)).toNat

end

end A126997.P18405247310670771009

namespace A126997

/-- `A053136(A161720(n+4))` -/
def P18405247310670771009.Spec : Prop :=
  ∀ n, P18405247310670771009.a n = A126997 n

end A126997

/-! ## A126997.P4581838189170938723

`C(record[A014963(n+7)], 7)`
-/

namespace A126997.P4581838189170938723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 7

end

end A126997.P4581838189170938723

namespace A126997

/-- `C(record[A014963(n+7)], 7)` -/
def P4581838189170938723.Spec : Prop :=
  ∀ n, (P4581838189170938723.a n : ℤ) = A126997 n

end A126997

/-! ## A126997.P2191695645205921225

`A000580(A004139(n+2))`
-/

namespace A126997.P2191695645205921225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (A004139 (n + 2)).toNat

end

end A126997.P2191695645205921225

namespace A126997

/-- `A000580(A004139(n+2))` -/
def P2191695645205921225.Spec : Prop :=
  ∀ n, P2191695645205921225.a n = A126997 n

end A126997

/-! ## A126997.P14975947020023114465

`A000580(A215848(n+2))`
-/

namespace A126997.P14975947020023114465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (A215848 (n + 2)).toNat

end

end A126997.P14975947020023114465

namespace A126997

/-- `A000580(A215848(n+2))` -/
def P14975947020023114465.Spec : Prop :=
  ∀ n, P14975947020023114465.a n = A126997 n

end A126997

/-! ## A126997.P14379605207191763243

`A000580(A000040(n+4))`
-/

namespace A126997.P14379605207191763243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (A000040 (n + 4)).toNat

end

end A126997.P14379605207191763243

namespace A126997

/-- `A000580(A000040(n+4))` -/
def P14379605207191763243.Spec : Prop :=
  ∀ n, P14379605207191763243.a n = A126997 n

end A126997

/-! ## A126997.P3641191892302987932

`A000580(p?[A066047(n+2)])`
-/

namespace A126997.P3641191892302987932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126997.P3641191892302987932

namespace A126997

/-- `A000580(p?[A066047(n+2)])` -/
def P3641191892302987932.Spec : Prop :=
  ∀ n, P3641191892302987932.a n = A126997 n

end A126997

/-!
# A126998: a(n) = binomial(prime(n+5), prime(5)).

The programs for A126998, the canonical program `A126998.P4159394550312629706` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126998 has offset 0).

The definition of A126998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126998.P4159394550312629706

`C(p?[2*n+9], 11)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126998

/-- `C(p?[2*n+9], 11)` -/
def P4159394550312629706.Spec : Prop :=
  ∀ n, (P4159394550312629706.a n : ℤ) = A126998 n

theorem P4159394550312629706.correct : P4159394550312629706.Spec := by
  intro n
  simp only [A126998]

end A126998

/-! ## A126998.P10066525631123940348

`C(A065091(n+4), 11)`
-/

namespace A126998.P10066525631123940348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 4)).toNat 11

end

end A126998.P10066525631123940348

namespace A126998

/-- `C(A065091(n+4), 11)` -/
def P10066525631123940348.Spec : Prop :=
  ∀ n, (P10066525631123940348.a n : ℤ) = A126998 n

end A126998

/-! ## A126998.P15891646989461116572

`C(A000040(n+5), 11)`
-/

namespace A126998.P15891646989461116572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat 11

end

end A126998.P15891646989461116572

namespace A126998

/-- `C(A000040(n+5), 11)` -/
def P15891646989461116572.Spec : Prop :=
  ∀ n, (P15891646989461116572.a n : ℤ) = A126998 n

end A126998

/-! ## A126998.P9415781432477865697

`C(A006530(A100484(n+5)), 11)`
-/

namespace A126998.P9415781432477865697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (A100484 (n + 5)).toNat).toNat 11

end

end A126998.P9415781432477865697

namespace A126998

/-- `C(A006530(A100484(n+5)), 11)` -/
def P9415781432477865697.Spec : Prop :=
  ∀ n, (P9415781432477865697.a n : ℤ) = A126998 n

end A126998

/-! ## A126998.P7365848829579790597

`record[C(A014963(n+11), 11)]`
-/

namespace A126998.P7365848829579790597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 11)).toNat 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126998.P7365848829579790597

namespace A126998

/-- `record[C(A014963(n+11), 11)]` -/
def P7365848829579790597.Spec : Prop :=
  ∀ n, (P7365848829579790597.a n : ℤ) = A126998 n

end A126998

/-! ## A126998.P15050925509714467062

`record[C(n+1, A135684(n+1))]`
-/

namespace A126998.P15050925509714467062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A135684 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126998.P15050925509714467062

namespace A126998

/-- `record[C(n+1, A135684(n+1))]` -/
def P15050925509714467062.Spec : Prop :=
  ∀ n, (P15050925509714467062.a n : ℤ) = A126998 n

end A126998

/-! ## A126998.P2468207029837161091

`A080214(11*A008578(n+6))`
-/

namespace A126998.P2468207029837161091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (11 * A008578 (n + 6)).toNat

end

end A126998.P2468207029837161091

namespace A126998

/-- `A080214(11*A008578(n+6))` -/
def P2468207029837161091.Spec : Prop :=
  ∀ n, P2468207029837161091.a n = A126998 n

end A126998

/-! ## A126998.P13237870857149126812

`C(A006530(A006094(n+4)), 11)`
-/

namespace A126998.P13237870857149126812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (A006094 (n + 4)).toNat).toNat 11

end

end A126998.P13237870857149126812

namespace A126998

/-- `C(A006530(A006094(n+4)), 11)` -/
def P13237870857149126812.Spec : Prop :=
  ∀ n, (P13237870857149126812.a n : ℤ) = A126998 n

end A126998

/-!
# A126999: Zero-one fractional-part array for the golden ratio; a rectangular array T by antidiagonals.

The programs for A126999, there is no canonical definition to state claims against.
-/

/-! ## A126999.P8789520271012966614

`A054069(A014132(n+1))-A014132(A054069(n+1))`
-/

namespace A126999.P8789520271012966614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054069 (A014132 (n + 1)).toNat - A014132 (A054069 (n + 1)).toNat

end

end A126999.P8789520271012966614

/-! ## A126999.P11525366588784612236

`A003849(A259556(n+1)+A002260(n+1))`
-/

namespace A126999.P11525366588784612236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A259556 (n + 1) + A002260 (n + 1)).toNat

end

end A126999.P11525366588784612236

/-! ## A126999.P16261424347161197620

`A096270(A259556(n+1)+A002260(n+1))`
-/

namespace A126999.P16261424347161197620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A259556 (n + 1) + A002260 (n + 1)).toNat

end

end A126999.P16261424347161197620

/-! ## A126999.P2686620032528332012

`A114986(A259556(n+1)+A002260(n+1))`
-/

namespace A126999.P2686620032528332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A259556 (n + 1) + A002260 (n + 1)).toNat

end

end A126999.P2686620032528332012

/-! ## A126999.P4195352091488075894

`A067255(A028327(n))^n²`
-/

namespace A126999.P4195352091488075894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (A028327 n).toNat ^ n ^ 2

end

end A126999.P4195352091488075894

