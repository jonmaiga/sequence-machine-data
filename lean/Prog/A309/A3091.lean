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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C032
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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

/-!
# A309101: Primes whose decimal representation can be written as a sequence of primes separated by single zeros.

The programs for A309101, there is no canonical definition to state claims against.
-/

/-! ## A309101.P12289130952895419273

`filter[A159911(n+1), A217096(#)]`
-/

namespace A309101.P12289130952895419273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A309101.P12289130952895419273

/-! ## A309101.P11084612303709554003

`∩[A159911(n+1), A056709(A007095(n+4))]`
-/

namespace A309101.P11084612303709554003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (A007095 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309101.P11084612303709554003

/-!
# A309102: Nonnegative integers that are not the sum of two refactorable numbers.

The programs for A309102, there is no canonical definition to state claims against.
-/

/-! ## A309102.P10756134975932639461

`eq[0, A172398(n^floor(atan(n)))]`
-/

namespace A309102.P10756134975932639461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309102.P10756134975932639461

/-! ## A309102.P3110145227451691538

`eq[0, A172398(round(sqrt(n²+1)))]`
-/

namespace A309102.P3110145227451691538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309102.P3110145227451691538

/-! ## A309102.P3505057066218212313

`lt[A172398(A028310(n)), 1]`
-/

namespace A309102.P3505057066218212313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A309102.P3505057066218212313

/-! ## A309102.P8826257677700878256

`lt[A172398(A000007(n)+n), 1]`
-/

namespace A309102.P8826257677700878256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A309102.P8826257677700878256

/-! ## A309102.P1959527163922436907

`record[gcd(A131738(n), A172398(n+1))]`
-/

namespace A309102.P1959527163922436907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A172398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309102.P1959527163922436907

/-! ## A309102.P3573470624510690311

`record[gcd(A172398(A065033(2*n)), n)]`
-/

namespace A309102.P3573470624510690311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172398 (A065033 (2 * n)).toNat) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309102.P3573470624510690311

/-! ## A309102.P5590053111110380288

`lt[A172398(C(A055976(n+1), n)+n), 1]`
-/

namespace A309102.P5590053111110380288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172398 (Nat.choose (A055976 (n + 1)).toNat n + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A309102.P5590053111110380288

/-!
# A309103: a(n) = Sum_{k >= 0} (-1)^k * floor(n^k / k!).

The programs for A309103, there is no canonical definition to state claims against.
-/

/-! ## A309103.P7183678827944555670

`A309105(n)-A309104(n)`
-/

namespace A309103.P7183678827944555670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309105 n - A309104 n

end

end A309103.P7183678827944555670

/-! ## A309103.P1793141476093118298

`2*A309105(n)-A309087(n)`
-/

namespace A309103.P1793141476093118298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309105 n - A309087 n

end

end A309103.P1793141476093118298

/-! ## A309103.P5486681618817479258

`A309087(n)-2*A309104(n)`
-/

namespace A309103.P5486681618817479258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309087 n - 2 * A309104 n

end

end A309103.P5486681618817479258

/-! ## A309103.P14646077948280867548

`A309105(A028310(n))-(A309087(n)-A309105(n))`
-/

namespace A309103.P14646077948280867548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309105 (A028310 n).toNat - (A309087 n - A309105 n)

end

end A309103.P14646077948280867548

/-! ## A309103.P852866480676007505

`A309105(n)+A008683(A006093(n+1)+1)*A309104(n)`
-/

namespace A309103.P852866480676007505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309105 n + A008683 (A006093 (n + 1) + 1).toNat * A309104 n

end

end A309103.P852866480676007505

/-!
# A309104: a(n) = Sum_{k >= 0} floor(n^(2*k+1) / (2*k+1)!).

The programs for A309104, there is no canonical definition to state claims against.
-/

/-! ## A309104.P2580168224873637014

`A309087(n)-A309105(n)`
-/

namespace A309104.P2580168224873637014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309087 n - A309105 n

end

end A309104.P2580168224873637014

/-! ## A309104.P2929349958258193675

`A309105(n)-A309103(n)`
-/

namespace A309104.P2929349958258193675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309105 n - A309103 n

end

end A309104.P2929349958258193675

/-! ## A309104.P15402999938790170722

`(A309087(n)-A309103(n))/2`
-/

namespace A309104.P15402999938790170722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309087 n - A309103 n : ℚ) / 2

end

end A309104.P15402999938790170722

/-! ## A309104.P17500992623572474795

`A309087(n)+A008683(A006093(n+1)+1)*A309105(n)`
-/

namespace A309104.P17500992623572474795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309087 n + A008683 (A006093 (n + 1) + 1).toNat * A309105 n

end

end A309104.P17500992623572474795

/-! ## A309104.P8972101293278202760

`A273943(A309087(n)-A309103(n))`
-/

namespace A309104.P8972101293278202760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A309087 n - A309103 n).toNat

end

end A309104.P8972101293278202760

/-!
# A309105: a(n) = Sum_{k >= 0} floor(n^(2*k) / (2*k)!).

The programs for A309105, there is no canonical definition to state claims against.
-/

/-! ## A309105.P2104703204118839001

`A309104(n)+A309103(n)`
-/

namespace A309105.P2104703204118839001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309104 n + A309103 n

end

end A309105.P2104703204118839001

/-! ## A309105.P17812376131839814476

`A309087(n)-A309104(n)`
-/

namespace A309105.P17812376131839814476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309087 n - A309104 n

end

end A309105.P17812376131839814476

/-! ## A309105.P2414020654793224299

`(A309103(n)+A309087(n))/2`
-/

namespace A309105.P2414020654793224299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309103 n + A309087 n : ℚ) / 2

end

end A309105.P2414020654793224299

/-! ## A309105.P11115493500450424750

`A309087(n)+A008683(A006093(n+1)+1)*A309104(n)`
-/

namespace A309105.P11115493500450424750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309087 n + A008683 (A006093 (n + 1) + 1).toNat * A309104 n

end

end A309105.P11115493500450424750

/-! ## A309105.P4110731848716514846

`A273943(A309103(n)+A309087(n))`
-/

namespace A309105.P4110731848716514846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A309103 n + A309087 n).toNat

end

end A309105.P4110731848716514846

/-!
# A309106: Triangular array T(m,n): number of sequences of n residues modulo m such that no nonempty subsequence sums to zero, for m>=1, n=0..m-1.

The programs for A309106, there is no canonical definition to state claims against.
-/

/-! ## A309106.P15852493356426005169

`A287272(A156953(n))+A143327(n+1)`
-/

namespace A309106.P15852493356426005169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A156953 n).toNat + A143327 (n + 1)

end

end A309106.P15852493356426005169

/-! ## A309106.P14940131813457192425

`A006466(A036426(n))*A117919(n+1)`
-/

namespace A309106.P14940131813457192425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A036426 n).toNat * A117919 (n + 1)

end

end A309106.P14940131813457192425

/-! ## A309106.P8999211472981009248

`A002487(A249027(n+1))*A007318(n)`
-/

namespace A309106.P8999211472981009248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A249027 (n + 1)).toNat * A007318 n

end

end A309106.P8999211472981009248

/-! ## A309106.P14548849836680132371

`A002487(A249027(n+1))*A034932(n)`
-/

namespace A309106.P14548849836680132371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A249027 (n + 1)).toNat * A034932 n

end

end A309106.P14548849836680132371

/-! ## A309106.P379524427459093132

`A117919(n+1)*A292901(A094544(n))`
-/

namespace A309106.P379524427459093132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (n + 1) * A292901 (A094544 n).toNat

end

end A309106.P379524427459093132

/-!
# A309107: A member of a family of generalizations of van Eck's sequence as defined below.

The programs for A309107, there is no canonical definition to state claims against.
-/

/-! ## A309107.P7068972637504565014

`A268755(lt[2, A133112(3*n+1)])`
-/

namespace A309107.P7068972637504565014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A309107.P7068972637504565014

/-! ## A309107.P10402872901942629601

`A275962(A266298(n)+A080039(n))`
-/

namespace A309107.P10402872901942629601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A266298 n + A080039 n).toNat

end

end A309107.P10402872901942629601

/-! ## A309107.P11429500466384927466

`A275962(A080039(n)-A266298(n))`
-/

namespace A309107.P11429500466384927466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A080039 n - A266298 n).toNat

end

end A309107.P11429500466384927466

/-! ## A309107.P8776194699648475444

`A275962(xor(A080039(n), A266298(n)))`
-/

namespace A309107.P8776194699648475444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (Int.xor (A080039 n) (A266298 n)).toNat

end

end A309107.P8776194699648475444

/-!
# A309114: Minimal linear spaces on n points.

The programs for A309114, there is no canonical definition to state claims against.
-/

/-! ## A309114.P5742222800244327329

`abs(A201219(n+1)-A335637(n))`
-/

namespace A309114.P5742222800244327329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201219 (n + 1) - A335637 n|

end

end A309114.P5742222800244327329

/-! ## A309114.P2406715035971153760

`A068415(n+1)%A265418(n+1)`
-/

namespace A309114.P2406715035971153760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068415 (n + 1)) (A265418 (n + 1))

end

end A309114.P2406715035971153760

/-! ## A309114.P8039208006172978318

`A316961(A266530(n+1))-n%2`
-/

namespace A309114.P8039208006172978318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316961 (A266530 (n + 1)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A309114.P8039208006172978318

/-!
# A309117: Number of perfect matchings on a triangular lattice of width 4 and length n.

The programs for A309117, there is no canonical definition to state claims against.
-/

/-! ## A309117.P12449455379135972255

`2*A005190(n)-A248183(xor(2, A005190(n)))`
-/

namespace A309117.P12449455379135972255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005190 n - A248183 (Int.xor 2 (A005190 n)).toNat

end

end A309117.P12449455379135972255

/-! ## A309117.P11145436146950147319

`2*A005190(n)-(A148900(n)+A011731(A193657(n)))`
-/

namespace A309117.P11145436146950147319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005190 n - (A148900 n + A011731 (A193657 n).toNat)

end

end A309117.P11145436146950147319

/-! ## A309117.P5307867215236622022

`2*A005190(n)-(A148965(n)+A070682(A184973(n)))`
-/

namespace A309117.P5307867215236622022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005190 n - (A148965 n + A070682 (A184973 n).toNat)

end

end A309117.P5307867215236622022

/-!
# A309118: Number of tiles added at iteration n when successively, layer by layer, building a symmetric patch of a rhombille tiling around a central star of six rhombs.

The programs for A309118, the canonical program `A309118.P7487567431502415498` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309118 has offset 1).

The definition of A309118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309118.P7487567431502415498

`2*a(n-2)-a(n-4)` with `a(0)=6, a(1)=6, a(2)=12, a(3)=18, a(4)=24, a(5)=24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309118

/-- `2*a(n-2)-a(n-4)` -/
def P7487567431502415498.Spec : Prop :=
  ∀ n, P7487567431502415498.a n = A309118 (n + 1)

theorem P7487567431502415498.correct : P7487567431502415498.Spec := by
  intro n
  simp only [A309118, Nat.add_sub_cancel]

end A309118

/-! ## A309118.P5662058829819546665

`A008458(C(2, C(3, n²))+n-A057979(n))`
-/

namespace A309118.P5662058829819546665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n : ℤ) - A057979 n).toNat

end

end A309118.P5662058829819546665

namespace A309118

/-- `A008458(C(2, C(3, n²))+n-A057979(n))` -/
def P5662058829819546665.Spec : Prop :=
  ∀ n, P5662058829819546665.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P14426767163621569480

`A008458(A181440(n+1)-A057979(n))`
-/

namespace A309118.P14426767163621569480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A181440 (n + 1) - A057979 n).toNat

end

end A309118.P14426767163621569480

namespace A309118

/-- `A008458(A181440(n+1)-A057979(n))` -/
def P14426767163621569480.Spec : Prop :=
  ∀ n, P14426767163621569480.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P2660320199761143921

`A008588(A181440(n+1)-A057979(n))`
-/

namespace A309118.P2660320199761143921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A181440 (n + 1) - A057979 n).toNat

end

end A309118.P2660320199761143921

namespace A309118

/-- `A008588(A181440(n+1)-A057979(n))` -/
def P2660320199761143921.Spec : Prop :=
  ∀ n, P2660320199761143921.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P13347651777979907125

`6*(A003963(p?[A153152(n)])-A057979(n))`
-/

namespace A309118.P13347651777979907125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A057979 n)

end

end A309118.P13347651777979907125

namespace A309118

/-- `6*(A003963(p?[A153152(n)])-A057979(n))` -/
def P13347651777979907125.Spec : Prop :=
  ∀ n, P13347651777979907125.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P1148723313337786782

`6*(A056239(p?[A153152(n)])-A057979(n))`
-/

namespace A309118.P1148723313337786782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A057979 n)

end

end A309118.P1148723313337786782

namespace A309118

/-- `6*(A056239(p?[A153152(n)])-A057979(n))` -/
def P1148723313337786782.Spec : Prop :=
  ∀ n, P1148723313337786782.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P15677757619818943289

`A008458(A028310(n-A055087(A213038(n))))`
-/

namespace A309118.P15677757619818943289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A028310 ((n : ℤ) - A055087 (A213038 n).toNat).toNat).toNat

end

end A309118.P15677757619818943289

namespace A309118

/-- `A008458(A028310(n-A055087(A213038(n))))` -/
def P15677757619818943289.Spec : Prop :=
  ∀ n, P15677757619818943289.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P13865033598039896307

`6*A349520(n²+2)`
-/

namespace A309118.P13865033598039896307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A349520 (n ^ 2 + 2)

end

end A309118.P13865033598039896307

namespace A309118

/-- `6*A349520(n²+2)` -/
def P13865033598039896307.Spec : Prop :=
  ∀ n, P13865033598039896307.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P13555468083931250816

`A008458(A349520(n²+2))`
-/

namespace A309118.P13555468083931250816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A349520 (n ^ 2 + 2)).toNat

end

end A309118.P13555468083931250816

namespace A309118

/-- `A008458(A349520(n²+2))` -/
def P13555468083931250816.Spec : Prop :=
  ∀ n, P13555468083931250816.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P860292638739292022

`2*3*A349520(A002522(n)+1)`
-/

namespace A309118.P860292638739292022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A349520 (A002522 n + 1).toNat)

end

end A309118.P860292638739292022

namespace A309118

/-- `2*3*A349520(A002522(n)+1)` -/
def P860292638739292022.Spec : Prop :=
  ∀ n, P860292638739292022.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P6289304992481861366

`A008588(A349520(A010000(n)))`
-/

namespace A309118.P6289304992481861366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A349520 (A010000 n).toNat).toNat

end

end A309118.P6289304992481861366

namespace A309118

/-- `A008588(A349520(A010000(n)))` -/
def P6289304992481861366.Spec : Prop :=
  ∀ n, P6289304992481861366.a n = A309118 (n + 1)

end A309118

/-! ## A309118.P4022434364522960893

`A008588(A349520(A002522(n)+1))`
-/

namespace A309118.P4022434364522960893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A349520 (A002522 n + 1).toNat).toNat

end

end A309118.P4022434364522960893

namespace A309118

/-- `A008588(A349520(A002522(n)+1))` -/
def P4022434364522960893.Spec : Prop :=
  ∀ n, P4022434364522960893.a n = A309118 (n + 1)

end A309118

/-!
# A309119: a(n) is the number of 1's minus the number of 2's among the ternary representations of the integers in the interval [0..n].

The programs for A309119, the canonical program `A309119.P4765163560253556487` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309119 has offset 0).

The definition of A309119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309119.P4765163560253556487

`∑[A062756(n)-A081603(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309119

/-- `∑[A062756(n)-A081603(n)]` -/
def P4765163560253556487.Spec : Prop :=
  ∀ n, P4765163560253556487.a n = A309119 n

theorem P4765163560253556487.correct : P4765163560253556487.Spec := by
  intro n
  simp only [A309119]

end A309119

/-! ## A309119.P12441830567982879833

`∑[A120855(n)-A053735(n)]`
-/

namespace A309119.P12441830567982879833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120855 n - A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P12441830567982879833

namespace A309119

/-- `∑[A120855(n)-A053735(n)]` -/
def P12441830567982879833.Spec : Prop :=
  ∀ n, P12441830567982879833.a n = A309119 n

end A309119

/-! ## A309119.P194480458094725758

`∑[∑{digits}[A007089(n), A117966(#)]]`
-/

namespace A309119.P194480458094725758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A117966 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P194480458094725758

namespace A309119

/-- `∑[∑{digits}[A007089(n), A117966(#)]]` -/
def P194480458094725758.Spec : Prop :=
  ∀ n, P194480458094725758.a n = A309119 n

end A309119

/-! ## A309119.P15019516060841366354

`∑[∑{digits}[A007089(n), A226162(#)]]`
-/

namespace A309119.P15019516060841366354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A226162 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P15019516060841366354

namespace A309119

/-- `∑[∑{digits}[A007089(n), A226162(#)]]` -/
def P15019516060841366354.Spec : Prop :=
  ∀ n, P15019516060841366354.a n = A309119 n

end A309119

/-! ## A309119.P18079188117413099669

`∑[∑{digits}[A007089(n), A001281(#)-#]]`
-/

namespace A309119.P18079188117413099669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A001281 x - (x : ℤ)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P18079188117413099669

namespace A309119

/-- `∑[∑{digits}[A007089(n), A001281(#)-#]]` -/
def P18079188117413099669.Spec : Prop :=
  ∀ n, P18079188117413099669.a n = A309119 n

end A309119

/-! ## A309119.P6135009119157992396

`∑[2*A189674(n+1)-n-A081603(n)]`
-/

namespace A309119.P6135009119157992396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189674 (n + 1) - (n : ℤ) - A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P6135009119157992396

namespace A309119

/-- `∑[2*A189674(n+1)-n-A081603(n)]` -/
def P6135009119157992396.Spec : Prop :=
  ∀ n, P6135009119157992396.a n = A309119 n

end A309119

/-! ## A309119.P14822817691779368939

`∑[A062756(n)-A001222(A117592(n))]`
-/

namespace A309119.P14822817691779368939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n - A001222 (A117592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P14822817691779368939

namespace A309119

/-- `∑[A062756(n)-A001222(A117592(n))]` -/
def P14822817691779368939.Spec : Prop :=
  ∀ n, P14822817691779368939.a n = A309119 n

end A309119

/-! ## A309119.P13699737604763608624

`∑[A053735(A004488(n))-A053735(n)]`
-/

namespace A309119.P13699737604763608624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A004488 n).toNat - A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P13699737604763608624

namespace A309119

/-- `∑[A053735(A004488(n))-A053735(n)]` -/
def P13699737604763608624.Spec : Prop :=
  ∀ n, P13699737604763608624.a n = A309119 n

end A309119

/-! ## A309119.P8702401573555205859

`∑[A081603(A004488(n))-A081603(n)]`
-/

namespace A309119.P8702401573555205859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A004488 n).toNat - A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309119.P8702401573555205859

namespace A309119

/-- `∑[A081603(A004488(n))-A081603(n)]` -/
def P8702401573555205859.Spec : Prop :=
  ∀ n, P8702401573555205859.a n = A309119 n

end A309119

/-! ## A309119.P166607804482002960

`A030350(A280724(n))`
-/

namespace A309119.P166607804482002960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030350 (A280724 n).toNat

end

end A309119.P166607804482002960

namespace A309119

/-- `A030350(A280724(n))` -/
def P166607804482002960.Spec : Prop :=
  ∀ n, P166607804482002960.a n = A309119 n

end A309119

/-!
# A309121: a(n) gives the number of primes in the interval I_j = [(j^2 + 3*j - 2)/2, j*(j + 5)/2] = [A034856(j), A095998(j)], for j >= 1.

The programs for A309121, there is no canonical definition to state claims against.
-/

/-! ## A309121.P8858178995749861026

`Δ[A230980((n+5)*n/2)]`
-/

namespace A309121.P8858178995749861026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway ((n + 5 : ℚ) * ((n : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309121.P8858178995749861026

/-! ## A309121.P4812850249643545309

`Δ[A000720(A027379(n))]`
-/

namespace A309121.P4812850249643545309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309121.P4812850249643545309

/-!
# A309122: Sum of the sizes of all subsets of [n] whose sum is divisible by n.

The programs for A309122, there is no canonical definition to state claims against.
-/

/-! ## A309122.P9037530122220513704

`A184413(A309128(n+1))`
-/

namespace A309122.P9037530122220513704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (A309128 (n + 1)).toNat

end

end A309122.P9037530122220513704

/-! ## A309122.P15753009076174761805

`A184413(A309280(∑[∑[n]+1]))`
-/

namespace A309122.P15753009076174761805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (A309280 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309122.P15753009076174761805

/-!
# A309123: a(1) = 50 and for any n > 0, a(n+1)^2 is the smallest square that begins with a(n).

The programs for A309123, there is no canonical definition to state claims against.
-/

/-! ## A309123.P13722503398335346767

`sqrt(A018796(a(n-1)))` with `a(0)=50`
-/

namespace A309123.P13722503398335346767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [50] fun n a =>
  Real.sqrt (A018796 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A309123.P13722503398335346767

/-! ## A309123.P12076615225171453044

`A018796(floor(a(n-1)))^(1/2)` with `a(0)=50`

`floor` is left out, it is the identity on integers.
-/

namespace A309123.P12076615225171453044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [50] fun n a =>
  (A018796 ⌊a (n - 1)⌋.toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A309123.P12076615225171453044

/-! ## A309123.P8777700637858733883

`A018796(ceil(abs(a(n-1))))^(1/2)` with `a(0)=50`

`ceil` is left out, it is the identity on integers.
-/

namespace A309123.P8777700637858733883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [50] fun n a =>
  (A018796 ⌈|a (n - 1)|⌉.toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A309123.P8777700637858733883

/-! ## A309123.P16351834942000352203

`A018796(a(A028310(n)-1))^(1/2)` with `a(0)=50`
-/

namespace A309123.P16351834942000352203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [50] fun n a =>
  (A018796 (SequenceMachineLib.roundAway (a (A028310 n - 1).toNat)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A309123.P16351834942000352203

/-!
# A309124: a(n) = n - 3 * floor(n/3) + 5 * floor(n/5) - 7 * floor(n/7) + ...

The programs for A309124, the canonical program `A309124.P14266994735095652977` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309124 has offset 1).

The definition of A309124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309124.P14266994735095652977

`∑[A050457(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309124

/-- `∑[A050457(n+1)]` -/
def P14266994735095652977.Spec : Prop :=
  ∀ n, P14266994735095652977.a n = A309124 (n + 1)

theorem P14266994735095652977.correct : P14266994735095652977.Spec := by
  intro n
  simp only [A309124, Nat.add_sub_cancel]

end A309124

/-! ## A309124.P12758020212788744324

`∑[∑{d}[n+1, #*A056594(#-1)]]`
-/

namespace A309124.P12758020212788744324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A056594 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P12758020212788744324

namespace A309124

/-- `∑[∑{d}[n+1, #*A056594(#-1)]]` -/
def P12758020212788744324.Spec : Prop :=
  ∀ n, P12758020212788744324.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P9559519626752446944

`A050457(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A309124.P9559519626752446944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050457 (n + 1) + a (A023443 n).toNat

end

end A309124.P9559519626752446944

namespace A309124

/-- `A050457(n+1)+a(A023443(n))` -/
def P9559519626752446944.Spec : Prop :=
  ∀ n, P9559519626752446944.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P13596150778622488755

`∑[A050449(n+1)-A050452(n+1)]`
-/

namespace A309124.P13596150778622488755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) - A050452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P13596150778622488755

namespace A309124

/-- `∑[A050449(n+1)-A050452(n+1)]` -/
def P13596150778622488755.Spec : Prop :=
  ∀ n, P13596150778622488755.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P15056532040816109032

`∑[A082053(n+1)-A082052(n+1)]`
-/

namespace A309124.P15056532040816109032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - A082052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P15056532040816109032

namespace A309124

/-- `∑[A082053(n+1)-A082052(n+1)]` -/
def P15056532040816109032.Spec : Prop :=
  ∀ n, P15056532040816109032.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P8306986331671133930

`∑[A326052(n+1)-A326049(n+1)]`
-/

namespace A309124.P8306986331671133930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1) - A326049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P8306986331671133930

namespace A309124

/-- `∑[A326052(n+1)-A326049(n+1)]` -/
def P8306986331671133930.Spec : Prop :=
  ∀ n, P8306986331671133930.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P13367867594702256906

`∑[n+1-(A326049(n+1)+A050452(n+1))]`
-/

namespace A309124.P13367867594702256906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A326049 (n + 1) + A050452 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P13367867594702256906

namespace A309124

/-- `∑[n+1-(A326049(n+1)+A050452(n+1))]` -/
def P13367867594702256906.Spec : Prop :=
  ∀ n, P13367867594702256906.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P8950321059107924945

`∑[∑{d}[n+1, #*A117569(#)]]`
-/

namespace A309124.P8950321059107924945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A117569 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P8950321059107924945

namespace A309124

/-- `∑[∑{d}[n+1, #*A117569(#)]]` -/
def P8950321059107924945.Spec : Prop :=
  ∀ n, P8950321059107924945.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P13892375543574879369

`A050457(2*(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A309124.P13892375543574879369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050457 (2 * (n + 1)) + a (n - 1)

end

end A309124.P13892375543574879369

namespace A309124

/-- `A050457(2*(n+1))+a(n-1)` -/
def P13892375543574879369.Spec : Prop :=
  ∀ n, P13892375543574879369.a n = A309124 (n + 1)

end A309124

/-! ## A309124.P10731414607105358200

`∑[A322143(∑[n+2])]`
-/

namespace A309124.P10731414607105358200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322143 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309124.P10731414607105358200

namespace A309124

/-- `∑[A322143(∑[n+2])]` -/
def P10731414607105358200.Spec : Prop :=
  ∀ n, P10731414607105358200.a n = A309124 (n + 1)

end A309124

/-!
# A309125: a(n) = n + 2^2 * floor(n/2^2) + 3^2 * floor(n/3^2) + 4^2 * floor(n/4^2) + ...

The programs for A309125, the canonical program `A309125.P14621074972548703162` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309125 has offset 1).

The definition of A309125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309125.P14621074972548703162

`∑[A035316(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309125

/-- `∑[A035316(n+1)]` -/
def P14621074972548703162.Spec : Prop :=
  ∀ n, P14621074972548703162.a n = A309125 (n + 1)

theorem P14621074972548703162.correct : P14621074972548703162.Spec := by
  intro n
  simp only [A309125, Nat.add_sub_cancel]

end A309125

/-! ## A309125.P8052135004733199121

`∑[A071326(n+1)+1]`
-/

namespace A309125.P8052135004733199121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071326 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P8052135004733199121

namespace A309125

/-- `∑[A071326(n+1)+1]` -/
def P8052135004733199121.Spec : Prop :=
  ∀ n, P8052135004733199121.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P11844360277831006402

`∑[∑{d}[A000188(n+1), #²]]`
-/

namespace A309125.P11844360277831006402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P11844360277831006402

namespace A309125

/-- `∑[∑{d}[A000188(n+1), #²]]` -/
def P11844360277831006402.Spec : Prop :=
  ∀ n, (P11844360277831006402.a n : ℤ) = A309125 (n + 1)

end A309125

/-! ## A309125.P17619720801676563549

`∑[1-A326058(n+1)+n]`
-/

namespace A309125.P17619720801676563549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326058 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P17619720801676563549

namespace A309125

/-- `∑[1-A326058(n+1)+n]` -/
def P17619720801676563549.Spec : Prop :=
  ∀ n, P17619720801676563549.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P9823305596567063562

`∑[∑{d}[n+1, #*A010052(#)]]`
-/

namespace A309125.P9823305596567063562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A010052 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P9823305596567063562

namespace A309125

/-- `∑[∑{d}[n+1, #*A010052(#)]]` -/
def P9823305596567063562.Spec : Prop :=
  ∀ n, P9823305596567063562.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P9619545046465113355

`∑[A001157(A000188(n+1))]`
-/

namespace A309125.P9619545046465113355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P9619545046465113355

namespace A309125

/-- `∑[A001157(A000188(n+1))]` -/
def P9619545046465113355.Spec : Prop :=
  ∀ n, P9619545046465113355.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P15804725272571302717

`∑[A001157(A057918(n+1)+1)]`
-/

namespace A309125.P15804725272571302717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A057918 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P15804725272571302717

namespace A309125

/-- `∑[A001157(A057918(n+1)+1)]` -/
def P15804725272571302717.Spec : Prop :=
  ∀ n, P15804725272571302717.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P11223831448838703271

`∑[A000203(n+1)-A285309(n+1)]`
-/

namespace A309125.P11223831448838703271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A285309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P11223831448838703271

namespace A309125

/-- `∑[A000203(n+1)-A285309(n+1)]` -/
def P11223831448838703271.Spec : Prop :=
  ∀ n, P11223831448838703271.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P17558205474529187212

`∑[A001065(n+1)-A326059(n+1)]`
-/

namespace A309125.P17558205474529187212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P17558205474529187212

namespace A309125

/-- `∑[A001065(n+1)-A326059(n+1)]` -/
def P17558205474529187212.Spec : Prop :=
  ∀ n, P17558205474529187212.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P16279759772888683077

`∑[A088580(n+1)-(A285309(n+1)+1)]`
-/

namespace A309125.P16279759772888683077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A285309 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P16279759772888683077

namespace A309125

/-- `∑[A088580(n+1)-(A285309(n+1)+1)]` -/
def P16279759772888683077.Spec : Prop :=
  ∀ n, P16279759772888683077.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P48661727029989156

`∑[A001065(n+1)+1+n-A285309(n+1)]`
-/

namespace A309125.P48661727029989156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A285309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P48661727029989156

namespace A309125

/-- `∑[A001065(n+1)+1+n-A285309(n+1)]` -/
def P48661727029989156.Spec : Prop :=
  ∀ n, P48661727029989156.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P118196850215477441

`∑[A155085(n+1)-(n+1)-A285309(n+1)]`
-/

namespace A309125.P118196850215477441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A285309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P118196850215477441

namespace A309125

/-- `∑[A155085(n+1)-(n+1)-A285309(n+1)]` -/
def P118196850215477441.Spec : Prop :=
  ∀ n, P118196850215477441.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P17712623368595172897

`∑[A064987(n+1)/(n+1)-A285309(n+1)]`
-/

namespace A309125.P17712623368595172897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A285309 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P17712623368595172897

namespace A309125

/-- `∑[A064987(n+1)/(n+1)-A285309(n+1)]` -/
def P17712623368595172897.Spec : Prop :=
  ∀ n, P17712623368595172897.a n = (A309125 (n + 1) : ℚ)

end A309125

/-! ## A309125.P16455068529752366028

`∑[A048250(n+1)+A162296(n+1)-A285309(n+1)]`
-/

namespace A309125.P16455068529752366028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A285309 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P16455068529752366028

namespace A309125

/-- `∑[A048250(n+1)+A162296(n+1)-A285309(n+1)]` -/
def P16455068529752366028.Spec : Prop :=
  ∀ n, P16455068529752366028.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P16671213633400944074

`∑[A293235(A087560(n+1))]`
-/

namespace A309125.P16671213633400944074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A087560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P16671213633400944074

namespace A309125

/-- `∑[A293235(A087560(n+1))]` -/
def P16671213633400944074.Spec : Prop :=
  ∀ n, P16671213633400944074.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P16904582948144325327

`∑[A293235(A071892(n+1))]`
-/

namespace A309125.P16904582948144325327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A071892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P16904582948144325327

namespace A309125

/-- `∑[A293235(A071892(n+1))]` -/
def P16904582948144325327.Spec : Prop :=
  ∀ n, P16904582948144325327.a n = A309125 (n + 1)

end A309125

/-! ## A309125.P5330225058113699659

`∑[A293235(A119416(n+1))]`
-/

namespace A309125.P5330225058113699659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A119416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309125.P5330225058113699659

namespace A309125

/-- `∑[A293235(A119416(n+1))]` -/
def P5330225058113699659.Spec : Prop :=
  ∀ n, P5330225058113699659.a n = A309125 (n + 1)

end A309125

/-!
# A309126: a(n) = n + 2^3 * floor(n/2^3) + 3^3 * floor(n/3^3) + 4^3 * floor(n/4^3) + ...

The programs for A309126, the canonical program `A309126.P13420984772726904485` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309126 has offset 1).

The definition of A309126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309126.P13420984772726904485

`∑[A113061(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309126

/-- `∑[A113061(n+1)]` -/
def P13420984772726904485.Spec : Prop :=
  ∀ n, P13420984772726904485.a n = A309126 (n + 1)

theorem P13420984772726904485.correct : P13420984772726904485.Spec := by
  intro n
  simp only [A309126, Nat.add_sub_cancel]

end A309126

/-! ## A309126.P14393815513193449832

`∑[∑{d}[n+1, #*A010057(#)]]`
-/

namespace A309126.P14393815513193449832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A010057 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309126.P14393815513193449832

namespace A309126

/-- `∑[∑{d}[n+1, #*A010057(#)]]` -/
def P14393815513193449832.Spec : Prop :=
  ∀ n, P14393815513193449832.a n = A309126 (n + 1)

end A309126

/-! ## A309126.P6398369423528965589

`∑[A001158(A053150(n+1))]`
-/

namespace A309126.P6398369423528965589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A053150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309126.P6398369423528965589

namespace A309126

/-- `∑[A001158(A053150(n+1))]` -/
def P6398369423528965589.Spec : Prop :=
  ∀ n, P6398369423528965589.a n = A309126 (n + 1)

end A309126

/-! ## A309126.P8601681556355248260

`∑[A327626(A008834(n+1))]`
-/

namespace A309126.P8601681556355248260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327626 (A008834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309126.P8601681556355248260

namespace A309126

/-- `∑[A327626(A008834(n+1))]` -/
def P8601681556355248260.Spec : Prop :=
  ∀ n, P8601681556355248260.a n = A309126 (n + 1)

end A309126

/-! ## A309126.P6348066009632942226

`a(n-1)+1+A113061(n+1)+A057428(n)` with `a(0)=1`
-/

namespace A309126.P6348066009632942226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (A113061 (n + 1) + A057428 n)

end

end A309126.P6348066009632942226

namespace A309126

/-- `a(n-1)+1+A113061(n+1)+A057428(n)` -/
def P6348066009632942226.Spec : Prop :=
  ∀ n, P6348066009632942226.a n = A309126 (n + 1)

end A309126

/-! ## A309126.P4577122169733979248

`a(n-1)+A113061(n+1)%A060432(n+1)` with `a(0)=1`
-/

namespace A309126.P4577122169733979248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A113061 (n + 1)) (A060432 (n + 1))

end

end A309126.P4577122169733979248

namespace A309126

/-- `a(n-1)+A113061(n+1)%A060432(n+1)` -/
def P4577122169733979248.Spec : Prop :=
  ∀ n, P4577122169733979248.a n = A309126 (n + 1)

end A309126

/-!
# A309127: a(n) = n + 2^4 * floor(n/2^4) + 3^4 * floor(n/3^4) + 4^4 * floor(n/4^4) + ...

The programs for A309127, the canonical program `A309127.P10252397170693859739` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309127 has offset 1).

The definition of A309127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309127.P10252397170693859739

`∑[A300909(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309127

/-- `∑[A300909(n+1)]` -/
def P10252397170693859739.Spec : Prop :=
  ∀ n, P10252397170693859739.a n = A309127 (n + 1)

theorem P10252397170693859739.correct : P10252397170693859739.Spec := by
  intro n
  simp only [A309127, Nat.add_sub_cancel]

end A309127

/-! ## A309127.P6774203219290491840

`∑[A351307(sqrt(A008833(n+1)))]`
-/

namespace A309127.P6774203219290491840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P6774203219290491840

namespace A309127

/-- `∑[A351307(sqrt(A008833(n+1)))]` -/
def P6774203219290491840.Spec : Prop :=
  ∀ n, P6774203219290491840.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P2179904123518025722

`∑[∑{d}[A000188(A000188(n+1)), #²²]]`
-/

namespace A309127.P2179904123518025722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000188 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P2179904123518025722

namespace A309127

/-- `∑[∑{d}[A000188(A000188(n+1)), #²²]]` -/
def P2179904123518025722.Spec : Prop :=
  ∀ n, (P2179904123518025722.a n : ℤ) = A309127 (n + 1)

end A309127

/-! ## A309127.P10076067128779862622

`∑[∑{d}[n+1, A037213(A037213(#))²²]]`
-/

namespace A309127.P10076067128779862622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A037213 (A037213 d).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P10076067128779862622

namespace A309127

/-- `∑[∑{d}[n+1, A037213(A037213(#))²²]]` -/
def P10076067128779862622.Spec : Prop :=
  ∀ n, P10076067128779862622.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P644040739956528439

`∑[A351307(sqrt((n+1)/A007913(n+1)))]`
-/

namespace A309127.P644040739956528439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P644040739956528439

namespace A309127

/-- `∑[A351307(sqrt((n+1)/A007913(n+1)))]` -/
def P644040739956528439.Spec : Prop :=
  ∀ n, P644040739956528439.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P17227864504463507257

`∑[A175402(A008835(n+1))+A008835(n+1)]`
-/

namespace A309127.P17227864504463507257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 (A008835 (n + 1)).toNat + A008835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P17227864504463507257

namespace A309127

/-- `∑[A175402(A008835(n+1))+A008835(n+1)]` -/
def P17227864504463507257.Spec : Prop :=
  ∀ n, P17227864504463507257.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P17008282779394858006

`∑[A286685(A008835(n+1)²)+A008835(n+1)]`
-/

namespace A309127.P17008282779394858006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A008835 (n + 1) ^ 2).toNat + A008835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P17008282779394858006

namespace A309127

/-- `∑[A286685(A008835(n+1)²)+A008835(n+1)]` -/
def P17008282779394858006.Spec : Prop :=
  ∀ n, P17008282779394858006.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P5019442958113908413

`∑[A000005(A008835(n+1)²²)]`
-/

namespace A309127.P5019442958113908413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A008835 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309127.P5019442958113908413

namespace A309127

/-- `∑[A000005(A008835(n+1)²²)]` -/
def P5019442958113908413.Spec : Prop :=
  ∀ n, P5019442958113908413.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P1987670477933703632

`A004457(A115420(n+2))`
-/

namespace A309127.P1987670477933703632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A115420 (n + 2)).toNat

end

end A309127.P1987670477933703632

namespace A309127

/-- `A004457(A115420(n+2))` -/
def P1987670477933703632.Spec : Prop :=
  ∀ n, P1987670477933703632.a n = A309127 (n + 1)

end A309127

/-! ## A309127.P12074942595905693858

`A309952(A326782(n+2))`
-/

namespace A309127.P12074942595905693858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A326782 (n + 2)).toNat

end

end A309127.P12074942595905693858

namespace A309127

/-- `A309952(A326782(n+2))` -/
def P12074942595905693858.Spec : Prop :=
  ∀ n, P12074942595905693858.a n = A309127 (n + 1)

end A309127

/-!
# A309128: (1/n) times the sum of the elements of all subsets of [n] whose sum is divisible by n.

The programs for A309128, there is no canonical definition to state claims against.
-/

/-! ## A309128.P15220984814933262633

`A309280(∑[∑[n]+1])`
-/

namespace A309128.P15220984814933262633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309128.P15220984814933262633

/-! ## A309128.P1301102806548684546

`A335127(or(A059966(n+1), A335434(n+1)))`
-/

namespace A309128.P1301102806548684546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (Int.lor (A059966 (n + 1)) (A335434 (n + 1))).toNat

end

end A309128.P1301102806548684546

/-!
# A309129: Numbers k such that -k is a quadratic nonresidue modulo all odd primes p <= sqrt(k) which do not divide k.

The programs for A309129, there is no canonical definition to state claims against.
-/

/-! ## A309129.P2747583670481498277

`eq[A145367(A347161(n+4)), A347161(n+1)]`
-/

namespace A309129.P2747583670481498277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145367 (A347161 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309129.P2747583670481498277

/-! ## A309129.P12250513061760557057

`lt[A057597(n+2), A114999(A072378(n+1))]`
-/

namespace A309129.P12250513061760557057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114999 (A072378 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309129.P12250513061760557057

/-! ## A309129.P14431638785506781782

`lt[A000040(A071988(n+4)), A108544(n+1)]`
-/

namespace A309129.P14431638785506781782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071988 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309129.P14431638785506781782

/-! ## A309129.P2502169250947880679

`lt[A284312(n), A066099(A008000(2*n+1))]`
-/

namespace A309129.P2502169250947880679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A008000 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309129.P2502169250947880679

/-! ## A309129.P11025929937421822846

`lt[A256351(A071988(n+4)), A191210(3*n+1)]`
-/

namespace A309129.P11025929937421822846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256351 (A071988 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309129.P11025929937421822846

/-!
# A309131: Triangle read by rows: T(n, k) = (n - k)*prime(1 + k), with 0 <= k < n.

The programs for A309131, there is no canonical definition to state claims against.
-/

/-! ## A309131.P8299657181188415750

`(C(comp[∑[n]]-n, 2)-n)*A037126(n+1)`
-/

namespace A309131.P8299657181188415750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A037126 (n + 1)

end

end A309131.P8299657181188415750

/-! ## A309131.P3421166753713642838

`(C(comp[∑[n]]-n, 2)-n)*A000040(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A309131.P3421166753713642838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A309131.P3421166753713642838

/-! ## A309131.P7081479419886507302

`(C(comp[∑[n]]-n, 2)-n)*A000040(1-(C(∑[char[∑[n]]], 2)-n))`
-/

namespace A309131.P7081479419886507302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A000040 (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) - (n : ℤ))).toNat

end

end A309131.P7081479419886507302

/-! ## A309131.P13678668648138370803

`A004736(n+1)*A037126(n+1)`
-/

namespace A309131.P13678668648138370803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A037126 (n + 1)

end

end A309131.P13678668648138370803

/-! ## A309131.P4728971148760175319

`(A025581(n)+1)*A037126(n+1)`
-/

namespace A309131.P4728971148760175319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A037126 (n + 1)

end

end A309131.P4728971148760175319

/-! ## A309131.P565040224116125828

`A037126(n+1)*A373214(n+1)`
-/

namespace A309131.P565040224116125828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A373214 (n + 1)

end

end A309131.P565040224116125828

/-! ## A309131.P9175075295521857217

`(A127739(n+1)-n)*A037126(n+1)`
-/

namespace A309131.P9175075295521857217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A037126 (n + 1)

end

end A309131.P9175075295521857217

/-! ## A309131.P6264281655691893575

`(C(comp[∑[n]]-n, 2)-n)*A000040(A002260(n+1))`
-/

namespace A309131.P6264281655691893575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A000040 (A002260 (n + 1)).toNat

end

end A309131.P6264281655691893575

/-! ## A309131.P5699963846635127587

`(C(comp[∑[n]]-n, 2)-n)*A000040(A002262(n)+1)`
-/

namespace A309131.P5699963846635127587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A000040 (A002262 n + 1).toNat

end

end A309131.P5699963846635127587

/-! ## A309131.P10966895646098623968

`A000040(1-C(∑[char[∑[n]]], 2)+n)*A004736(n+1)`
-/

namespace A309131.P10966895646098623968
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A004736 (n + 1)

end

end A309131.P10966895646098623968

/-!
# A309132: a(n) is the denominator of F(n) = A027641(n-1)/n + A027642(n-1)/n^2.

The programs for A309132, the canonical program `A309132.P6253841371733913923` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309132 has offset 1).

The definition of A309132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309132.P6253841371733913923

`lcm(A326478(n+1)², A326478(A055032(n+1)²))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A309132

/-- `lcm(A326478(n+1)², A326478(A055032(n+1)²))` -/
def P6253841371733913923.Spec : Prop :=
  ∀ n, (P6253841371733913923.a n : ℤ) = A309132 (n + 1)

theorem P6253841371733913923.correct : P6253841371733913923.Spec := by
  intro n
  simp only [A309132, Nat.add_sub_cancel]

end A309132

/-! ## A309132.P7890350758506847238

`lcm(A055032(n+1), A055032(A326578(n+1)))`
-/

namespace A309132.P7890350758506847238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055032 (n + 1)) (A055032 (A326578 (n + 1)).toNat)

end

end A309132.P7890350758506847238

namespace A309132

/-- `lcm(A055032(n+1), A055032(A326578(n+1)))` -/
def P7890350758506847238.Spec : Prop :=
  ∀ n, (P7890350758506847238.a n : ℤ) = A309132 (n + 1)

end A309132

/-! ## A309132.P10815085204544664482

`gcd(A174342(n)², A326578(n+1))`
-/

namespace A309132.P10815085204544664482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174342 n ^ 2) (A326578 (n + 1))

end

end A309132.P10815085204544664482

namespace A309132

/-- `gcd(A174342(n)², A326578(n+1))` -/
def P10815085204544664482.Spec : Prop :=
  ∀ n, (P10815085204544664482.a n : ℤ) = A309132 (n + 1)

end A309132

/-! ## A309132.P4489303919732198621

`(n+1)/A027642(n)*A174342(n)`
-/

namespace A309132.P4489303919732198621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A027642 n : ℚ) * (A174342 n : ℚ)

end

end A309132.P4489303919732198621

namespace A309132

/-- `(n+1)/A027642(n)*A174342(n)` -/
def P4489303919732198621.Spec : Prop :=
  ∀ n, P4489303919732198621.a n = (A309132 (n + 1) : ℚ)

end A309132

/-! ## A309132.P12231822801522487685

`lcm(A326478(n+1)², A326582(n))`
-/

namespace A309132.P12231822801522487685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326478 (n + 1) ^ 2) (A326582 n)

end

end A309132.P12231822801522487685

namespace A309132

/-- `lcm(A326478(n+1)², A326582(n))` -/
def P12231822801522487685.Spec : Prop :=
  ∀ n, (P12231822801522487685.a n : ℤ) = A309132 (n + 1)

end A309132

/-!
# A309133: Nonnegative integers of the form 4*x^2+6*x*y-7*y^2.

The programs for A309133, there is no canonical definition to state claims against.
-/

/-! ## A309133.P13518870165957781004

`record[A263390(A309134(n+1))]`
-/

namespace A309133.P13518870165957781004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A309134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309133.P13518870165957781004

/-!
# A309135: Nonnegative integers of the form 9*x^2+7*x*y-5*y^2.

The programs for A309135, there is no canonical definition to state claims against.
-/

/-! ## A309135.P11050008601617495429

`record[A263390(A309136(n+1))]`
-/

namespace A309135.P11050008601617495429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A309136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309135.P11050008601617495429

/-! ## A309135.P4574585260586715124

`A088828(n+1)-A007978(A247025(n+1))`
-/

namespace A309135.P4574585260586715124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1) - A007978 (A247025 (n + 1)).toNat

end

end A309135.P4574585260586715124

/-!
# A309136: Nonnegative integers of the form x^2+15*x*y-y^2.

The programs for A309136, there is no canonical definition to state claims against.
-/

/-! ## A309136.P4205677327879378487

`lt[A124607(n), A124644(2*(n+1))%A124602(2*n+1)]`
-/

namespace A309136.P4205677327879378487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124644 (2 * (n + 1))) (A124602 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309136.P4205677327879378487

/-! ## A309136.P15592762028000021763

`A010427(∑[2^A096008(n+1)])`
-/

namespace A309136.P15592762028000021763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A096008 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010427 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309136.P15592762028000021763

/-! ## A309136.P3179240438672767190

`A010427(∑[A096008(n+1)²+1])`
-/

namespace A309136.P3179240438672767190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309136.P3179240438672767190

/-! ## A309136.P12376801143546898101

`A010427(A348799(n+1)+A004526(n))`
-/

namespace A309136.P12376801143546898101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010427 (A348799 (n + 1) + A004526 n).toNat

end

end A309136.P12376801143546898101

/-!
# A309137: Nonnegative integers of the form 5*x^2 + 5*x*y - y^2.

The programs for A309137, there is no canonical definition to state claims against.
-/

/-! ## A309137.P14117893275524142323

`eq[char[A281385(n)], A131713(n)]`
-/

namespace A309137.P14117893275524142323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309137.P14117893275524142323

/-! ## A309137.P8815139408591039636

`eq[char[A281385(n)], A257075(n)]`
-/

namespace A309137.P8815139408591039636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309137.P8815139408591039636

/-! ## A309137.P1365103118650153629

`eq[char[A005752(n)], A061347(n+2)]`
-/

namespace A309137.P1365103118650153629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309137.P1365103118650153629

/-! ## A309137.P219789733914196067

`eq[char[A281385(n)], A060865(n+2)]`
-/

namespace A309137.P219789733914196067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309137.P219789733914196067

/-! ## A309137.P2343012426749967809

`eq[char[A281385(n)], A061347(n+2)]`
-/

namespace A309137.P2343012426749967809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309137.P2343012426749967809

/-! ## A309137.P6250436923108246116

`eq[char[A005752(3*(n+1))], A057427(n)]`
-/

namespace A309137.P6250436923108246116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309137.P6250436923108246116

/-!
# A309138: Nonnegative integers of the form x^2 + 23*y^2.

The programs for A309138, there is no canonical definition to state claims against.
-/

/-! ## A309138.P4785887043613043112

`lt[0, A033735(n)]`
-/

namespace A309138.P4785887043613043112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309138.P4785887043613043112

/-! ## A309138.P9208205669077498301

`eq[0, A000038(A033735(n)²)]`
-/

namespace A309138.P9208205669077498301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P9208205669077498301

/-! ## A309138.P11779368806835406535

`eq[0, A023531(A033735(n)²)]`
-/

namespace A309138.P11779368806835406535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P11779368806835406535

/-! ## A309138.P1828623610851608612

`eq[0, A030216(A033735(n)²)]`
-/

namespace A309138.P1828623610851608612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030216 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P1828623610851608612

/-! ## A309138.P10417724685687576352

`eq[1, A002828(A033735(n)²)]`
-/

namespace A309138.P10417724685687576352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P10417724685687576352

/-! ## A309138.P15421952094147797036

`eq[1, A025435(A033735(n)²)]`
-/

namespace A309138.P15421952094147797036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P15421952094147797036

/-! ## A309138.P8022674952462992356

`eq[2, A000122(A033735(n)²)]`
-/

namespace A309138.P8022674952462992356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P8022674952462992356

/-! ## A309138.P4710994948745709189

`eq[2, A000925(A033735(n)²)]`
-/

namespace A309138.P4710994948745709189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A033735 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P4710994948745709189

/-! ## A309138.P7867109263388669789

`eq[0, A000005(A033735(n)²+1)%2]`
-/

namespace A309138.P7867109263388669789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A033735 n ^ 2 + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P7867109263388669789

/-! ## A309138.P12165154684612543776

`eq[3, (A033735(A033735(n)²)+1)%4]`
-/

namespace A309138.P12165154684612543776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033735 (A033735 n ^ 2).toNat + 1) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309138.P12165154684612543776

/-!
# A309139: Primes of the form 3*x^2 + 2*x*y + 8*y^2.

The programs for A309139, there is no canonical definition to state claims against.
-/

/-! ## A309139.P11242383360377999740

`A106866(n+2)`
-/

namespace A309139.P11242383360377999740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106866 (n + 2)

end

end A309139.P11242383360377999740

/-! ## A309139.P6598564838284918082

`p?[∑[A084558(A186128(n+1))]]`
-/

namespace A309139.P6598564838284918082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A186128 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309139.P6598564838284918082

/-!
# A309141: Nonunitary highly composite numbers: numbers with a record number of nonunitary divisors.

The programs for A309141, there is no canonical definition to state claims against.
-/

/-! ## A309141.P4544140325789784873

`A309181(record[A000005(n+1)-2^A001221(n+1)])`
-/

namespace A309141.P4544140325789784873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309181 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A309141.P4544140325789784873

/-! ## A309141.P1095246857886660051

`A309181(record[A048105(n+1)])`
-/

namespace A309141.P1095246857886660051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309141.P1095246857886660051

/-! ## A309141.P7219271728885014610

`A309181(record[A000005(n+1)-A034444(n+1)])`
-/

namespace A309141.P7219271728885014610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309141.P7219271728885014610

/-! ## A309141.P8797697324803272318

`A309181(record[A034444(n+1)-A048106(n+1)])`
-/

namespace A309141.P8797697324803272318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A048106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309141.P8797697324803272318

/-! ## A309141.P2334897327565049318

`A309181(record[A032741(n+1)-A309307(n+1)])`
-/

namespace A309141.P2334897327565049318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A309307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309141.P2334897327565049318

/-!
# A309142: Rank of elliptic curve y^2 = x^3 + (n^2 - 6*n -3)*x^2 + 16*n*x.

The programs for A309142, there is no canonical definition to state claims against.
-/

/-! ## A309142.P2820302365313673458

`A329710(A014132(n+1))%A083952(n)`
-/

namespace A309142.P2820302365313673458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329710 (A014132 (n + 1)).toNat) (A083952 n)

end

end A309142.P2820302365313673458

/-! ## A309142.P5440110555039342370

`A341346(A147845(n+1)+A076617(n+1))`
-/

namespace A309142.P5440110555039342370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341346 (A147845 (n + 1) + A076617 (n + 1)).toNat

end

end A309142.P5440110555039342370

/-! ## A309142.P17739951676769539027

`A283318(A034583(n)+A029707(n+1))`
-/

namespace A309142.P17739951676769539027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283318 (A034583 n + A029707 (n + 1)).toNat

end

end A309142.P17739951676769539027

/-! ## A309142.P5206201368779427142

`A174889(or(9, A057921(n)))`
-/

namespace A309142.P5206201368779427142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174889 (Int.lor 9 (A057921 n)).toNat

end

end A309142.P5206201368779427142

/-! ## A309142.P4768191684677955003

`A359590(lcm(A071148(n+1), A197080(3*(n+1))))`
-/

namespace A309142.P4768191684677955003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (Int.lcm (A071148 (n + 1)) (A197080 (3 * (n + 1))))

end

end A309142.P4768191684677955003

/-!
# A309143: Numbers k for which rank of the elliptic curve y^2=x^3+(k^2-6*k-3)*x^2+16*k*x is 2.

The programs for A309143, there is no canonical definition to state claims against.
-/

/-! ## A309143.P17915681724568631933

`eq[2, A309142(n)]+10`
-/

namespace A309143.P17915681724568631933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10

end

end A309143.P17915681724568631933

/-!
# A309144: Rank of elliptic curve y^2 = x^3 + (n^2 + 6*n -3)*x^2 - 16*n*x.

The programs for A309144, there is no canonical definition to state claims against.
-/

/-! ## A309144.P16882887377274738072

`4%A175062(A014193(n+1))`
-/

namespace A309144.P16882887377274738072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A175062 (A014193 (n + 1)).toNat)

end

end A309144.P16882887377274738072

/-! ## A309144.P2686555921220992691

`A284508(or(A002411(n), A244477(n+1)))`
-/

namespace A309144.P2686555921220992691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (Int.lor (A002411 n) (A244477 (n + 1))).toNat

end

end A309144.P2686555921220992691

/-! ## A309144.P9355205295873414041

`A010051(A152607(n+4)-A007416(n+1))`
-/

namespace A309144.P9355205295873414041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A152607 (n + 4) - A007416 (n + 1)).toNat

end

end A309144.P9355205295873414041

/-! ## A309144.P12757527261642131386

`A210455(A346697(3*n+2)+A006141(n+1))`
-/

namespace A309144.P12757527261642131386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (A346697 (3 * n + 2) + A006141 (n + 1)).toNat

end

end A309144.P12757527261642131386

/-!
# A309145: Numbers k for which rank of the elliptic curve y^2=x^3+(k^2+6*k-3)*x^2-16*k*x is 2.

The programs for A309145, there is no canonical definition to state claims against.
-/

/-! ## A309145.P15951279191869099596

`eq[2, A309144(n+1)]+1`
-/

namespace A309145.P15951279191869099596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309145.P15951279191869099596

/-! ## A309145.P8794135625703555076

`eq[2, A309144(A028310(n))]`
-/

namespace A309145.P8794135625703555076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309145.P8794135625703555076

/-! ## A309145.P3409662138541841225

`A153152(eq[2, A309144(n+1)])`
-/

namespace A309145.P3409662138541841225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309145.P3409662138541841225

/-! ## A309145.P2771674286802728642

`eq[2, A309144(A233583(n+1))]`
-/

namespace A309145.P2771674286802728642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309145.P2771674286802728642

/-! ## A309145.P1025297351323900333

`eq[2, A309144(A065033(2*n))]`
-/

namespace A309145.P1025297351323900333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309145.P1025297351323900333

/-!
# A309148: A(n,k) is (1/k) times the number of n-member subsets of [k*n] whose elements sum to a multiple of n; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A309148, there is no canonical definition to state claims against.
-/

/-! ## A309148.P12193291042724290485

`A305401(n)-A162782(A134001(n+2))`
-/

namespace A309148.P12193291042724290485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 n - A162782 (A134001 (n + 2)).toNat

end

end A309148.P12193291042724290485

/-! ## A309148.P9929614277735869034

`A305401(n)+A162782(A173105(n+1))`
-/

namespace A309148.P9929614277735869034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 n + A162782 (A173105 (n + 1)).toNat

end

end A309148.P9929614277735869034

/-!
# A309149: Number of solutions of the Diophantine equation 1/n + 1/x = 1/y + 1/z, where n >= 1, x >= n, y > n and z >= y.

The programs for A309149, there is no canonical definition to state claims against.
-/

/-! ## A309149.P1388120924900463598

`A309150(n+1)+A108920(n+1)`
-/

namespace A309149.P1388120924900463598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309150 (n + 1) + A108920 (n + 1)

end

end A309149.P1388120924900463598

/-! ## A309149.P10956421182208623697

`A309150(n+1)+A334461(2*(n+1)²)-1`
-/

namespace A309149.P10956421182208623697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309150 (n + 1) + (A334461 (2 * (n + 1) ^ 2) - 1)

end

end A309149.P10956421182208623697

/-! ## A309149.P9983376635011244955

`A309150(n+1)+A078644(n+1)-(A270417(n+1)+1)`
-/

namespace A309149.P9983376635011244955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309150 (n + 1) + (A078644 (n + 1) - (A270417 (n + 1) + 1))

end

end A309149.P9983376635011244955

/-! ## A309149.P10896095143336654266

`A004273(A078644(n+1))+A309150(n+1)-A055081(n+1)`
-/

namespace A309149.P10896095143336654266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A078644 (n + 1)).toNat + (A309150 (n + 1) - A055081 (n + 1))

end

end A309149.P10896095143336654266

/-! ## A309149.P6705322321368279850

`A055081(n+1)+A309150(n+1)-A005408(A270417(n+1))`
-/

namespace A309149.P6705322321368279850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1) + (A309150 (n + 1) - A005408 (A270417 (n + 1)).toNat)

end

end A309149.P6705322321368279850

/-!
# A309150: Number of solutions of the Diophantine equation 1/n + 1/x = 1/y + 1/z, where n >= 1, x > n, y > n and z > y.

The programs for A309150, there is no canonical definition to state claims against.
-/

/-! ## A309150.P17508558844640914821

`A309149(n+1)-A108920(n+1)`
-/

namespace A309150.P17508558844640914821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309149 (n + 1) - A108920 (n + 1)

end

end A309150.P17508558844640914821

/-! ## A309150.P6894528306279996776

`A309149(n+1)-(A334461(∑[a(n-1)+4])-1)` with `a(0)=2`
-/

namespace A309150.P6894528306279996776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309149 (n + 1) - (A334461 (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A309150.P6894528306279996776

/-! ## A309150.P3639152781838716938

`A309149(n+1)-A334461(∑[A016825(n)])+1`
-/

namespace A309150.P3639152781838716938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309149 (n + 1) - A334461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A309150.P3639152781838716938

/-! ## A309150.P10859982745437276021

`A309149(n+1)-A334461(Δ[A006331(n)])+1`
-/

namespace A309150.P10859982745437276021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309149 (n + 1) - A334461 (f1 (n + 1) - f1 n).toNat + 1

end

end A309150.P10859982745437276021

/-! ## A309150.P4660340263311893125

`A309149(n+1)-(A078644(n+1)-(A270417(n+1)+1))`
-/

namespace A309150.P4660340263311893125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309149 (n + 1) - (A078644 (n + 1) - (A270417 (n + 1) + 1))

end

end A309150.P4660340263311893125

/-! ## A309150.P14861807584589869515

`A055081(n+1)+A309149(n+1)-A004273(A078644(n+1))`
-/

namespace A309150.P14861807584589869515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1) + (A309149 (n + 1) - A004273 (A078644 (n + 1)).toNat)

end

end A309150.P14861807584589869515

/-! ## A309150.P4304413992335200085

`A005408(A270417(n+1))+A309149(n+1)-A055081(n+1)`
-/

namespace A309150.P4304413992335200085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A270417 (n + 1)).toNat + (A309149 (n + 1) - A055081 (n + 1))

end

end A309150.P4304413992335200085

/-!
# A309151: Lexicographically earliest infinite sequence of distinct terms starting with a(1) = 1 such that, for n>1, a(n) doesn't share any digit with the cumulative sum a(1) + a(2) + a(3) + ... + a(n-1) + a(n).

The programs for A309151, there is no canonical definition to state claims against.
-/

/-! ## A309151.P17186311247306279942

`Δ[A324773(A028310(n))%(n+1)²]`
-/

namespace A309151.P17186311247306279942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324773 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309151.P17186311247306279942

/-! ## A309151.P18418684457343907345

`A000007(n)+Δ[A324773(A028310(n))]`
-/

namespace A309151.P18418684457343907345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A309151.P18418684457343907345

/-! ## A309151.P7832825784189446956

`Δ[A324773(A028310(n))+A057427(n)]`
-/

namespace A309151.P7832825784189446956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309151.P7832825784189446956

/-! ## A309151.P5626135117443810768

`A151933(n)+Δ[A324773(A028310(n))]`
-/

namespace A309151.P5626135117443810768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (f1 (n + 1) - f1 n)

end

end A309151.P5626135117443810768

/-! ## A309151.P1628039841725219369

`Δ[A324773(A028310(n))+A178334(n)]`
-/

namespace A309151.P1628039841725219369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat + A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309151.P1628039841725219369

/-! ## A309151.P1807607554093018765

`Δ[A324773(A028310(n))-A054977(n)]`
-/

namespace A309151.P1807607554093018765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309151.P1807607554093018765

/-! ## A309151.P4495454018983918073

`Δ[A324773(A028310(n))-A057428(n)]`
-/

namespace A309151.P4495454018983918073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309151.P4495454018983918073

/-! ## A309151.P3649576085602405522

`Δ[A324773(A028310(n))+A000040(n+1)%2]`
-/

namespace A309151.P3649576085602405522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309151.P3649576085602405522

/-! ## A309151.P17170809756047959726

`A014963((n+2)²+n)-(1-Δ[A324773(A028310(n))])`
-/

namespace A309151.P17170809756047959726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324773 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 2) ^ 2 + n) - (1 - (f1 (n + 1) - f1 n))

end

end A309151.P17170809756047959726

/-!
# A309152: Numbers that can be written as the sum of two primes whose difference is also prime.

The programs for A309152, the canonical program `A309152.P14975925339169188126` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309152 has offset 1).

The definition of A309152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309152.P14975925339169188126

`∪[2*A040040(n+1)+3, A054735(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A309152

/-- `∪[2*A040040(n+1)+3, A054735(n+1)]` -/
def P14975925339169188126.Spec : Prop :=
  ∀ n, (P14975925339169188126.a n : ℤ) = A309152 (n + 1)

theorem P14975925339169188126.correct : P14975925339169188126.Spec := by
  intro n
  simp only [A309152, Nat.add_sub_cancel]

end A309152

/-! ## A309152.P17825941946054585535

`∪[A054735(n+1), A053319(n)+a(n-1)]` with `a(0)=7`
-/

namespace A309152.P17825941946054585535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A053319 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309152.P17825941946054585535

namespace A309152

/-- `∪[A054735(n+1), A053319(n)+a(n-1)]` -/
def P17825941946054585535.Spec : Prop :=
  ∀ n, (P17825941946054585535.a n : ℤ) = A309152 (n + 1)

end A309152

/-! ## A309152.P452943760616617602

`∪[A054735(n+1), A176915(n+1)+A078571(n+1)+3]`
-/

namespace A309152.P452943760616617602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176915 (n + 1) + A078571 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309152.P452943760616617602

namespace A309152

/-- `∪[A054735(n+1), A176915(n+1)+A078571(n+1)+3]` -/
def P452943760616617602.Spec : Prop :=
  ∀ n, (P452943760616617602.a n : ℤ) = A309152 (n + 1)

end A309152

/-! ## A309152.P3148553485120910710

`∪[A054735(n+1), A164274(n+1)-A007510(n+1)+3]`
-/

namespace A309152.P3148553485120910710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A007510 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309152.P3148553485120910710

namespace A309152

/-- `∪[A054735(n+1), A164274(n+1)-A007510(n+1)+3]` -/
def P3148553485120910710.Spec : Prop :=
  ∀ n, (P3148553485120910710.a n : ℤ) = A309152 (n + 1)

end A309152

/-! ## A309152.P3497263767160975779

`∪[2*A014574(n+1), A172057(n+1)-A053319(n+1)+2]`
-/

namespace A309152.P3497263767160975779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) - A053319 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309152.P3497263767160975779

namespace A309152

/-- `∪[2*A014574(n+1), A172057(n+1)-A053319(n+1)+2]` -/
def P3497263767160975779.Spec : Prop :=
  ∀ n, (P3497263767160975779.a n : ℤ) = A309152 (n + 1)

end A309152

/-!
# A309153: a(n) = A000203(n)*A001227(n).

The programs for A309153, the canonical program `A309153.P7700007454880818440` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309153 has offset 1).

The definition of A309153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309153.P7700007454880818440

`A000203(n+1)*A001227(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309153

/-- `A000203(n+1)*A001227(n+1)` -/
def P7700007454880818440.Spec : Prop :=
  ∀ n, P7700007454880818440.a n = A309153 (n + 1)

theorem P7700007454880818440.correct : P7700007454880818440.Spec := by
  intro n
  simp only [A309153, Nat.add_sub_cancel]

end A309153

/-! ## A309153.P13129025702051684971

`∑{d}[n+1, #%2]*∑{d}[n+1, #]`
-/

namespace A309153.P13129025702051684971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d % 2) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A309153.P13129025702051684971

namespace A309153

/-- `∑{d}[n+1, #%2]*∑{d}[n+1, #]` -/
def P13129025702051684971.Spec : Prop :=
  ∀ n, (P13129025702051684971.a n : ℤ) = A309153 (n + 1)

end A309153

/-! ## A309153.P13619303013432194704

`∑{d}[n+1, and(1, #)]*∑{d}[n+1, #]`
-/

namespace A309153.P13619303013432194704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A309153.P13619303013432194704

namespace A309153

/-- `∑{d}[n+1, and(1, #)]*∑{d}[n+1, #]` -/
def P13619303013432194704.Spec : Prop :=
  ∀ n, (P13619303013432194704.a n : ℤ) = A309153 (n + 1)

end A309153

/-! ## A309153.P16662590355753426868

`Δ[A160664(n)]*A001227(n+1)`
-/

namespace A309153.P16662590355753426868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001227 (n + 1)

end

end A309153.P16662590355753426868

namespace A309153

/-- `Δ[A160664(n)]*A001227(n+1)` -/
def P16662590355753426868.Spec : Prop :=
  ∀ n, P16662590355753426868.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P14748068886048144686

`A000593(n+1)*A174238(n+1)`
-/

namespace A309153.P14748068886048144686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A174238 (n + 1)

end

end A309153.P14748068886048144686

namespace A309153

/-- `A000593(n+1)*A174238(n+1)` -/
def P14748068886048144686.Spec : Prop :=
  ∀ n, P14748068886048144686.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P3152646719993298291

`A064840(n+1)/A001511(n+1)`
-/

namespace A309153.P3152646719993298291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A309153.P3152646719993298291

namespace A309153

/-- `A064840(n+1)/A001511(n+1)` -/
def P3152646719993298291.Spec : Prop :=
  ∀ n, P3152646719993298291.a n = (A309153 (n + 1) : ℚ)

end A309153

/-! ## A309153.P6802056197144687915

`A001227(n+1)*A245092(2*n+1)`
-/

namespace A309153.P6802056197144687915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A245092 (2 * n + 1)

end

end A309153.P6802056197144687915

namespace A309153

/-- `A001227(n+1)*A245092(2*n+1)` -/
def P6802056197144687915.Spec : Prop :=
  ∀ n, P6802056197144687915.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P3196739263190991603

`A001227(n+1)/2*A074400(n+1)`
-/

namespace A309153.P3196739263190991603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A309153.P3196739263190991603

namespace A309153

/-- `A001227(n+1)/2*A074400(n+1)` -/
def P3196739263190991603.Spec : Prop :=
  ∀ n, P3196739263190991603.a n = (A309153 (n + 1) : ℚ)

end A309153

/-! ## A309153.P4477305125253152194

`A079247(n+1)²-A086670(n+1)²`
-/

namespace A309153.P4477305125253152194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) ^ 2 - A086670 (n + 1) ^ 2

end

end A309153.P4477305125253152194

namespace A309153

/-- `A079247(n+1)²-A086670(n+1)²` -/
def P4477305125253152194.Spec : Prop :=
  ∀ n, P4477305125253152194.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P15539290222751420543

`∑{d}[n+1, A002131(#)*A192066((n+1)/#)]`
-/

namespace A309153.P15539290222751420543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A192066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309153.P15539290222751420543

namespace A309153

/-- `∑{d}[n+1, A002131(#)*A192066((n+1)/#)]` -/
def P15539290222751420543.Spec : Prop :=
  ∀ n, P15539290222751420543.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P3955880138916890025

`A000005(A000265(n+1))*A000203(n+1)`
-/

namespace A309153.P3955880138916890025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat * A000203 (n + 1)

end

end A309153.P3955880138916890025

namespace A309153

/-- `A000005(A000265(n+1))*A000203(n+1)` -/
def P3955880138916890025.Spec : Prop :=
  ∀ n, P3955880138916890025.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P12747342979177779049

`A000005(A000265(n+1))/2*A074400(n+1)`
-/

namespace A309153.P12747342979177779049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A000265 (n + 1)).toNat : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A309153.P12747342979177779049

namespace A309153

/-- `A000005(A000265(n+1))/2*A074400(n+1)` -/
def P12747342979177779049.Spec : Prop :=
  ∀ n, P12747342979177779049.a n = (A309153 (n + 1) : ℚ)

end A309153

/-! ## A309153.P6503074799018649080

`A000203(n+1)*∑{d}[A000265(n+1), A006519(#)]`
-/

namespace A309153.P6503074799018649080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ d ∈ Nat.divisors (f1 n).natAbs, A006519 d)

end

end A309153.P6503074799018649080

namespace A309153

/-- `A000203(n+1)*∑{d}[A000265(n+1), A006519(#)]` -/
def P6503074799018649080.Spec : Prop :=
  ∀ n, P6503074799018649080.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P17364436131260293155

`(A146076(n+1)+A000593(n+1))*A001227(n+1)`
-/

namespace A309153.P17364436131260293155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1)) * A001227 (n + 1)

end

end A309153.P17364436131260293155

namespace A309153

/-- `(A146076(n+1)+A000593(n+1))*A001227(n+1)` -/
def P17364436131260293155.Spec : Prop :=
  ∀ n, P17364436131260293155.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P5438358038351715097

`(A086670(n+1)+A079247(n+1))*A001227(n+1)`
-/

namespace A309153.P5438358038351715097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086670 (n + 1) + A079247 (n + 1)) * A001227 (n + 1)

end

end A309153.P5438358038351715097

namespace A309153

/-- `(A086670(n+1)+A079247(n+1))*A001227(n+1)` -/
def P5438358038351715097.Spec : Prop :=
  ∀ n, P5438358038351715097.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P2668544683929786366

`(A099777(n+1)-A000005(n+1))*A000203(n+1)`
-/

namespace A309153.P2668544683929786366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099777 (n + 1) - A000005 (n + 1)) * A000203 (n + 1)

end

end A309153.P2668544683929786366

namespace A309153

/-- `(A099777(n+1)-A000005(n+1))*A000203(n+1)` -/
def P2668544683929786366.Spec : Prop :=
  ∀ n, P2668544683929786366.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P13865898898818524155

`(A079247(n+1)-A086670(n+1))*A000203(n+1)`
-/

namespace A309153.P13865898898818524155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079247 (n + 1) - A086670 (n + 1)) * A000203 (n + 1)

end

end A309153.P13865898898818524155

namespace A309153

/-- `(A079247(n+1)-A086670(n+1))*A000203(n+1)` -/
def P13865898898818524155.Spec : Prop :=
  ∀ n, P13865898898818524155.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P2244078832687077853

`(A000005(n+1)-A183063(n+1))*A000203(n+1)`
-/

namespace A309153.P2244078832687077853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A183063 (n + 1)) * A000203 (n + 1)

end

end A309153.P2244078832687077853

namespace A309153

/-- `(A000005(n+1)-A183063(n+1))*A000203(n+1)` -/
def P2244078832687077853.Spec : Prop :=
  ∀ n, P2244078832687077853.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P11365371634646847530

`(A350159(n+1)-A099777(n+1))*A001227(n+1)`
-/

namespace A309153.P11365371634646847530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A350159 (n + 1) - A099777 (n + 1)) * A001227 (n + 1)

end

end A309153.P11365371634646847530

namespace A309153

/-- `(A350159(n+1)-A099777(n+1))*A001227(n+1)` -/
def P11365371634646847530.Spec : Prop :=
  ∀ n, P11365371634646847530.a n = A309153 (n + 1)

end A309153

/-! ## A309153.P8866594161284926514

`A000593(n+1)*A001227(n+1)*A038712(n+1)`
-/

namespace A309153.P8866594161284926514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A001227 (n + 1) * A038712 (n + 1)

end

end A309153.P8866594161284926514

namespace A309153

/-- `A000593(n+1)*A001227(n+1)*A038712(n+1)` -/
def P8866594161284926514.Spec : Prop :=
  ∀ n, P8866594161284926514.a n = A309153 (n + 1)

end A309153

/-!
# A309155: For integer n with prime factors p_i (1 <= i <= r), with repetition, (Omega(n) = r); a(n) = Sum_{i=1..r} k_i, where k_i is the least positive integer such that p_i - k_i | n - k_i.

The programs for A309155, there is no canonical definition to state claims against.
-/

/-! ## A309155.P5306374480747397603

`A068063(A014673(n+1)*A246277(n+1))`
-/

namespace A309155.P5306374480747397603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A014673 (n + 1) * A246277 (n + 1)).toNat

end

end A309155.P5306374480747397603

/-! ## A309155.P11297483020595476421

`A056239(A318885(n+1))%A275489(n+1)`
-/

namespace A309155.P11297483020595476421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A318885 (n + 1)).toNat) (A275489 (n + 1))

end

end A309155.P11297483020595476421

/-! ## A309155.P3242582833134433981

`A049087(A053167(n+1))+A001222(n+1)`
-/

namespace A309155.P3242582833134433981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A053167 (n + 1)).toNat + A001222 (n + 1)

end

end A309155.P3242582833134433981

/-!
# A309158: The smallest prime, a(n), larger than prime(n) for which every even difference from 2 to prime(n) - 1 occurs at least once for some pair of primes from prime(n) to a(n) inclusive.

The programs for A309158, there is no canonical definition to state claims against.
-/

/-! ## A309158.P13419086982452483340

`A123318(or(3, ∑[n+3]-2))`
-/

namespace A309158.P13419086982452483340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (Int.lor 3 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)).toNat

end

end A309158.P13419086982452483340

/-!
# A309159: Number of generalized polyforms on the snub square tiling with n cells.

The programs for A309159, there is no canonical definition to state claims against.
-/

/-! ## A309159.P13611814958903983026

`ceil(sqrt(∑[A008578(n!)]))`
-/

namespace A309159.P13611814958903983026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A309159.P13611814958903983026

/-! ## A309159.P17144666961128992288

`ceil(sqrt(∑[A158611(n!+1)]))`
-/

namespace A309159.P17144666961128992288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (Nat.factorial n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A309159.P17144666961128992288

/-! ## A309159.P18058425515507615260

`round(sqrt(∑[A006093(n!)]+1))`
-/

namespace A309159.P18058425515507615260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℝ))

end

end A309159.P18058425515507615260

/-! ## A309159.P15489025612638892771

`A157003(n)+A014306(A125859(n))`
-/

namespace A309159.P15489025612638892771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 n + A014306 (A125859 n).toNat

end

end A309159.P15489025612638892771

/-!
# A309161: a(n) = (x(n)^2 + 1)/m(n), with m(n) = A002559(n) (Markoff numbers) and x(n)= A324601(n), for n >= 3. The Markoff uniqueness conjecture is assumed to be true.

The programs for A309161, there is no canonical definition to state claims against.
-/

/-! ## A309161.P8911691789576335071

`(A324601(n+3)²+1)/A002559(n+3)`
-/

namespace A309161.P8911691789576335071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324601 (n + 3) ^ 2 + 1 : ℚ) / (A002559 (n + 3) : ℚ)

end

end A309161.P8911691789576335071

/-! ## A309161.P10801586002751915719

`A076948(A002559(n+3))`
-/

namespace A309161.P10801586002751915719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A002559 (n + 3)).toNat

end

end A309161.P10801586002751915719

/-! ## A309161.P1982477342821068728

`A076948(A086326(n+3)/3)`
-/

namespace A309161.P1982477342821068728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (SequenceMachineLib.roundAway ((A086326 (n + 3) : ℚ) / 3)).toNat

end

end A309161.P1982477342821068728

/-!
# A309162: Rank of elliptic curve y^2 = x * (x+1) * (x+n).

The programs for A309162, there is no canonical definition to state claims against.
-/

/-! ## A309162.P504597249518530867

`A003849(A057163(n)*A186498(n+2))`
-/

namespace A309162.P504597249518530867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A057163 n * A186498 (n + 2)).toNat

end

end A309162.P504597249518530867

/-! ## A309162.P9021686480344571369

`A101637(A212264(n+1)*A328928(3*(n+1)))`
-/

namespace A309162.P9021686480344571369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A212264 (n + 1) * A328928 (3 * (n + 1))).toNat

end

end A309162.P9021686480344571369

/-! ## A309162.P16430096877119034292

`A226080(n+5)%A001030(A195991(2*(n+1)))`
-/

namespace A309162.P16430096877119034292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226080 (n + 5)) (A001030 (A195991 (2 * (n + 1))).toNat)

end

end A309162.P16430096877119034292

/-! ## A309162.P4522200388915359073

`A188079(A332010(n+3))`
-/

namespace A309162.P4522200388915359073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A332010 (n + 3)).toNat

end

end A309162.P4522200388915359073

/-! ## A309162.P11025866857096693194

`A294937(A030284(n+2)+A008472(n+2))`
-/

namespace A309162.P11025866857096693194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A030284 (n + 2) + A008472 (n + 2)).toNat

end

end A309162.P11025866857096693194

/-!
# A309163: Rank of elliptic curve y^2 = x * (x+1) * (x-n).

The programs for A309163, there is no canonical definition to state claims against.
-/

/-! ## A309163.P15144821353301407216

`A010060(A090495(2*(n+2))+17)`
-/

namespace A309163.P15144821353301407216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A090495 (2 * (n + 2)) + 17).toNat

end

end A309163.P15144821353301407216

/-! ## A309163.P11725871038398055177

`A287931(A195871(n+3))`
-/

namespace A309163.P11725871038398055177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (A195871 (n + 3)).toNat

end

end A309163.P11725871038398055177

/-! ## A309163.P10259648296245627241

`A342023(A342023(n+1)+A279445(n+1))`
-/

namespace A309163.P10259648296245627241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A342023 (n + 1) + A279445 (n + 1)).toNat

end

end A309163.P10259648296245627241

/-! ## A309163.P1494962044770041932

`A277007(A284249(n)+A145877(n+1))`
-/

namespace A309163.P1494962044770041932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A284249 n + A145877 (n + 1)).toNat

end

end A309163.P1494962044770041932

/-! ## A309163.P16619397580034476922

`A156731(A362415(3*n+5)+A324695(n+5))`
-/

namespace A309163.P16619397580034476922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156731 (A362415 (3 * n + 5) + A324695 (n + 5)).toNat

end

end A309163.P16619397580034476922

/-!
# A309164: Least k such that the rank of the elliptic curve y^2 = x * (x+1) * (x+k) is n.

The programs for A309164, there is no canonical definition to state claims against.
-/

/-! ## A309164.P169860225037725159

`A276390(A309136(n+1))+A120604(n)`
-/

namespace A309164.P169860225037725159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (A309136 (n + 1)).toNat + A120604 n

end

end A309164.P169860225037725159

/-!
# A309167: a(n)^2 is the least possible value at the root of a binary tree of height n where all nodes hold positive squares and all interior nodes also equal the sum of their two children.

The programs for A309167, there is no canonical definition to state claims against.
-/

/-! ## A309167.P5138143334698721409

`record[gcd(A101181(n), A198436(n+1))]`
-/

namespace A309167.P5138143334698721409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101181 n) (A198436 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309167.P5138143334698721409

/-! ## A309167.P2442854356055931398

`A062675(A000400(n))%A144335(n+2)`
-/

namespace A309167.P2442854356055931398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062675 (A000400 n).toNat) (A144335 (n + 2))

end

end A309167.P2442854356055931398

/-!
# A309168: Rank of elliptic curve y^2 = x^3 + (4*n^2 + 12*n -3)*x^2 + 32*(n+3)*x.

The programs for A309168, there is no canonical definition to state claims against.
-/

/-! ## A309168.P12723061652360647683

`A309142(2*(n-2%(n+1)))`
-/

namespace A309168.P12723061652360647683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 ((2 * ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ))).toNat + 10)

end

end A309168.P12723061652360647683

/-! ## A309168.P14993804669274314326

`A309142(2*(3*n)%(n+1))`
-/

namespace A309168.P14993804669274314326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 (2 * (3 * n % (n + 1)) + 10)

end

end A309168.P14993804669274314326

/-! ## A309168.P8947882349658921020

`A309142(2*A289207(n))`
-/

namespace A309168.P8947882349658921020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 ((2 * A289207 n).toNat + 10)

end

end A309168.P8947882349658921020

/-! ## A309168.P18264453399673813854

`and(char[A309177(n+1)], A309179(n+1))`
-/

namespace A309168.P18264453399673813854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A309179 (n + 1))

end

end A309168.P18264453399673813854

/-! ## A309168.P15696704897434188434

`and(char[A309177(n+1)], A309167(n+1))`
-/

namespace A309168.P15696704897434188434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A309167 (n + 1))

end

end A309168.P15696704897434188434

/-!
# A309172: Expansion of Product_{k>=1} 1/(1 - (1 + x + x^2) * x^k).

The programs for A309172, there is no canonical definition to state claims against.
-/

/-! ## A309172.P11474830900562967952

`2^n-A228085(∑[n*2^n]+1)`
-/

namespace A309172.P11474830900562967952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A228085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309172.P11474830900562967952

/-! ## A309172.P11405412277041980311

`A121854(A149913(n))-(n+2)`
-/

namespace A309172.P11405412277041980311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (A149913 n).toNat - (n + 2 : ℤ)

end

end A309172.P11405412277041980311

/-! ## A309172.P8594249131667759548

`2^n-A307597(A068376(n+1))`
-/

namespace A309172.P8594249131667759548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A307597 (A068376 (n + 1)).toNat

end

end A309172.P8594249131667759548

/-! ## A309172.P9907959421528730158

`2^n-A185205(A185315(2*n))`
-/

namespace A309172.P9907959421528730158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A185205 (A185315 (2 * n)).toNat

end

end A309172.P9907959421528730158

/-! ## A309172.P15909871617837583486

`A000079(n)-A037816(A212292(n+5))`
-/

namespace A309172.P15909871617837583486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A037816 (A212292 (n + 5)).toNat

end

end A309172.P15909871617837583486

/-!
# A309173: Expansion of Product_{k>=1} (1 + (1 + x + x^2) * x^k).

The programs for A309173, there is no canonical definition to state claims against.
-/

/-! ## A309173.P16963326260889619985

`A132212(n)-A010054(A075675(n+1))`
-/

namespace A309173.P16963326260889619985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132212 n - A010054 (A075675 (n + 1)).toNat

end

end A309173.P16963326260889619985

/-! ## A309173.P16956567071749249539

`A135304(A264392(n+1)+1)`
-/

namespace A309173.P16956567071749249539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A264392 (n + 1) + 1).toNat

end

end A309173.P16956567071749249539

/-! ## A309173.P11872038893281146504

`ceil(∑[A077462(A133494(n))/2])`
-/

namespace A309173.P11872038893281146504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077462 (A133494 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A309173.P11872038893281146504

/-! ## A309173.P17831215085673824459

`A232746(A179865(n+1)*A290689(n+1))`
-/

namespace A309173.P17831215085673824459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A179865 (n + 1) * A290689 (n + 1)).toNat

end

end A309173.P17831215085673824459

/-! ## A309173.P2262814479958124174

`A339846(2^n*A086786(n+1))+A111133(A096765(n))`
-/

namespace A309173.P2262814479958124174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 ((2 ^ n : ℤ) * A086786 (n + 1)).toNat + A111133 (A096765 n).toNat

end

end A309173.P2262814479958124174

/-!
# A309174: E.g.f. A(x) satisfies: A(x) = (1/(1 - x)) * Product_{k>=2} A(x^k)^(1/k).

The programs for A309174, there is no canonical definition to state claims against.
-/

/-! ## A309174.P5902923364979488876

`A283550(A001003(n))`
-/

namespace A309174.P5902923364979488876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (A001003 n).toNat

end

end A309174.P5902923364979488876

/-! ## A309174.P11163595586809947423

`A277193(A128326(n))`
-/

namespace A309174.P11163595586809947423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A128326 n).toNat

end

end A309174.P11163595586809947423

/-!
# A309175: E.g.f. A(x) satisfies: A(x) = (1 + x) * Product_{k>=2} A(x^k)^(1/k).

The programs for A309175, there is no canonical definition to state claims against.
-/

/-! ## A309175.P8163456592413631421

`A130497(A245502(n))`
-/

namespace A309175.P8163456592413631421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A245502 n).toNat

end

end A309175.P8163456592413631421

/-! ## A309175.P14456366934413554866

`A096397(A337038(n+1))+1`
-/

namespace A309175.P14456366934413554866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 (A337038 (n + 1)).toNat + 1

end

end A309175.P14456366934413554866

/-! ## A309175.P3044888249127484153

`A069902(A370703(2*n+1)+A070030(n+1))`
-/

namespace A309175.P3044888249127484153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (A370703 (2 * n + 1) + A070030 (n + 1)).toNat

end

end A309175.P3044888249127484153

/-!
# A309176: a(n) = n^2 * (n + 1)/2 - Sum_{k=1..n} sigma_2(k).

The programs for A309176, the canonical program `A309176.P1940731175005839416` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309176 has offset 1).

The definition of A309176 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309176.P1940731175005839416

`A002411(n+1)-A064602(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309176

/-- `A002411(n+1)-A064602(n+1)` -/
def P1940731175005839416.Spec : Prop :=
  ∀ n, P1940731175005839416.a n = A309176 (n + 1)

theorem P1940731175005839416.correct : P1940731175005839416.Spec := by
  intro n
  simp only [A309176, Nat.add_sub_cancel]

end A309176

/-! ## A309176.P10139351439017888752

`∑[∑[n]-(∑{d}[n+1, #²]-(n+1)²)]`
-/

namespace A309176.P10139351439017888752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (((∑ d ∈ Nat.divisors (f3 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309176.P10139351439017888752

namespace A309176

/-- `∑[∑[n]-(∑{d}[n+1, #²]-(n+1)²)]` -/
def P10139351439017888752.Spec : Prop :=
  ∀ n, P10139351439017888752.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P15833075346403240638

`∑[∑[n]-A067558(n+1)]`
-/

namespace A309176.P15833075346403240638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A067558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309176.P15833075346403240638

namespace A309176

/-- `∑[∑[n]-A067558(n+1)]` -/
def P15833075346403240638.Spec : Prop :=
  ∀ n, P15833075346403240638.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P4912551786479562302

`∑[∑[n]]-A279847(n+1)`
-/

namespace A309176.P4912551786479562302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A279847 (n + 1)

end

end A309176.P4912551786479562302

namespace A309176

/-- `∑[∑[n]]-A279847(n+1)` -/
def P4912551786479562302.Spec : Prop :=
  ∀ n, P4912551786479562302.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P12610791185243895967

`∑[A000326(n+1)-∑{d}[n+1, #²]]`
-/

namespace A309176.P12610791185243895967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309176.P12610791185243895967

namespace A309176

/-- `∑[A000326(n+1)-∑{d}[n+1, #²]]` -/
def P12610791185243895967.Spec : Prop :=
  ∀ n, P12610791185243895967.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P5487804776859625743

`(n+1)*∑[n+1]-∑[A001157(n+1)]`
-/

namespace A309176.P5487804776859625743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A309176.P5487804776859625743

namespace A309176

/-- `(n+1)*∑[n+1]-∑[A001157(n+1)]` -/
def P5487804776859625743.Spec : Prop :=
  ∀ n, P5487804776859625743.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P1078764197761787519

`∑[A000217(n)-∑{d}[n+1, (#%(n+1))²]]`
-/

namespace A309176.P1078764197761787519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ((∑ d ∈ Nat.divisors (f2 n), (d % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309176.P1078764197761787519

namespace A309176

/-- `∑[A000217(n)-∑{d}[n+1, (#%(n+1))²]]` -/
def P1078764197761787519.Spec : Prop :=
  ∀ n, P1078764197761787519.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P12544740016157175776

`((n+1)*A000217(n+1))%∑[A001157(n+1)]`
-/

namespace A309176.P12544740016157175776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000217 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309176.P12544740016157175776

namespace A309176

/-- `((n+1)*A000217(n+1))%∑[A001157(n+1)]` -/
def P12544740016157175776.Spec : Prop :=
  ∀ n, P12544740016157175776.a n = A309176 (n + 1)

end A309176

/-! ## A309176.P13515570212654925684

`A066809(n+1)-∑[n+1]`
-/

namespace A309176.P13515570212654925684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066809 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309176.P13515570212654925684

namespace A309176

/-- `A066809(n+1)-∑[n+1]` -/
def P13515570212654925684.Spec : Prop :=
  ∀ n, P13515570212654925684.a n = A309176 (n + 1)

end A309176

/-!
# A309177: Numbers k such that A309168(k) > 0.

The programs for A309177, there is no canonical definition to state claims against.
-/

/-! ## A309177.P3713666500205703585

`lt[0, A309168(n)]`
-/

namespace A309177.P3713666500205703585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309177.P3713666500205703585

/-! ## A309177.P5612157125981747382

`lt[0, A309142(2*(n-2%(n+1)))]`
-/

namespace A309177.P5612157125981747382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 ((2 * ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ))).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309177.P5612157125981747382

/-! ## A309177.P3432693589744287010

`lt[0, A309142(2*(3*n)%(n+1))]`
-/

namespace A309177.P3432693589744287010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 (2 * (3 * n % (n + 1)) + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309177.P3432693589744287010

/-! ## A309177.P14983560849164955337

`eq[0, A001222(a(A309168(n)))]` with `a(0)=2`
-/

namespace A309177.P14983560849164955337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (f2 (A309168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309177.P14983560849164955337

/-! ## A309177.P11054717570203932487

`eq[2, A004277(a(A309168(n)))]` with `a(0)=0`
-/

namespace A309177.P11054717570203932487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A004277 (f2 (A309168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309177.P11054717570203932487

/-! ## A309177.P5720445340351688385

`eq[2, A150150(a(A309168(n)))]` with `a(0)=0`
-/

namespace A309177.P5720445340351688385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A150150 (f2 (A309168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309177.P5720445340351688385

/-! ## A309177.P14117711486802473295

`eq[2, A150481(a(A309168(n)))]` with `a(0)=0`
-/

namespace A309177.P14117711486802473295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A150481 (f2 (A309168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309177.P14117711486802473295

/-! ## A309177.P9605896389578153817

`eq[1, A155797(a(A309168(n)))]` with `a(0)=2`
-/

namespace A309177.P9605896389578153817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A155797 (f2 (A309168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309177.P9605896389578153817

/-! ## A309177.P4081019754580145493

`eq[3, A000040(a(A309168(n)))]` with `a(0)=1`
-/

namespace A309177.P4081019754580145493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A309168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309177.P4081019754580145493

/-!
# A309178: Least nonnegative integer k such that the rank of the elliptic curve y^2 = x^3 + (4*k^2 - 12*k - 3)*x^2 + 32*(-k+3)*x is n.

The programs for A309178, there is no canonical definition to state claims against.
-/

/-! ## A309178.P12799070064424742297

`∑[a(n-1)²-n]-n` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A309178.P12799070064424742297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  f1 (n - 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A309178.P12799070064424742297

/-!
# A309179: Primes to which a record size square needs to be added to reach another prime.

The programs for A309179, there is no canonical definition to state claims against.
-/

/-! ## A309179.P5598779350220985339

`A000040(A129315(n+1))`
-/

namespace A309179.P5598779350220985339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A129315 (n + 1)).toNat

end

end A309179.P5598779350220985339

/-! ## A309179.P13743249589291992798

`A008578(A129315(n+1)+1)`
-/

namespace A309179.P13743249589291992798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A129315 (n + 1) + 1).toNat

end

end A309179.P13743249589291992798

/-! ## A309179.P17406290414964819468

`A182986(A129315(n+1)+1)`
-/

namespace A309179.P17406290414964819468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A129315 (n + 1) + 1).toNat

end

end A309179.P17406290414964819468

/-! ## A309179.P8294245556748057274

`∑{d}[A129315(n+1), A007444(#)]`
-/

namespace A309179.P8294245556748057274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A309179.P8294245556748057274

/-! ## A309179.P1244712940012815436

`A008864(A129315(n+1))-A007318(C(3, n))`
-/

namespace A309179.P1244712940012815436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A129315 (n + 1)).toNat - A007318 (Nat.choose 3 n)

end

end A309179.P1244712940012815436

/-!
# A309180: Unsuspected numbers to check in the Collatz conjecture.

The programs for A309180, there is no canonical definition to state claims against.
-/

/-! ## A309180.P4369899486990738379

`∩[A134191(n+1), A375852(n+1)]`
-/

namespace A309180.P4369899486990738379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309180.P4369899486990738379

/-!
# A309181: Least number with exactly n nonunitary divisors.

The programs for A309181, there is no canonical definition to state claims against.
-/

/-! ## A309181.P5833794085847564430

`A064558(A149104(n+1))`
-/

namespace A309181.P5833794085847564430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A149104 (n + 1)).toNat

end

end A309181.P5833794085847564430

/-! ## A309181.P10848475122206109987

`A339462(A140464(n+1))`
-/

namespace A309181.P10848475122206109987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339462 (A140464 (n + 1)).toNat

end

end A309181.P10848475122206109987

/-! ## A309181.P17833812687029204727

`record[gcd(A090404(n+1), A272998(n))]`
-/

namespace A309181.P17833812687029204727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090404 (n + 1)) (A272998 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309181.P17833812687029204727

/-! ## A309181.P3356251397815501287

`record[and(A088448(n+1), A321316(n+1))]`
-/

namespace A309181.P3356251397815501287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088448 (n + 1)) (A321316 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309181.P3356251397815501287

/-!
# A309182: (1/3) times the number of n-member subsets of [3n] whose elements sum to a multiple of n.

The programs for A309182, there is no canonical definition to state claims against.
-/

/-! ## A309182.P5697943994212306869

`∑{d}[A026741(n+1), A346577((n+1)/#)]`
-/

namespace A309182.P5697943994212306869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309182.P5697943994212306869

/-! ## A309182.P3150403769780488699

`A318431(n+1)/3`
-/

namespace A309182.P3150403769780488699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318431 (n + 1) : ℚ) / 3

end

end A309182.P3150403769780488699

/-! ## A309182.P3606943523299988676

`A309148(∑[n+3]+1)`
-/

namespace A309182.P3606943523299988676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309182.P3606943523299988676

/-! ## A309182.P4610838316113173184

`A267632(A022266(n+1))`
-/

namespace A309182.P4610838316113173184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267632 (A022266 (n + 1)).toNat

end

end A309182.P4610838316113173184

/-! ## A309182.P14448025680368709798

`A267632(A081270(n)+1)`
-/

namespace A309182.P14448025680368709798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267632 (A081270 n + 1).toNat

end

end A309182.P14448025680368709798

/-!
# A309183: (1/4) times the number of n-member subsets of [4n] whose elements sum to a multiple of n.

The programs for A309183, there is no canonical definition to state claims against.
-/

/-! ## A309183.P6174798304890166955

`A318432(n+1)/4`
-/

namespace A309183.P6174798304890166955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318432 (n + 1) : ℚ) / 4

end

end A309183.P6174798304890166955

/-! ## A309183.P18236533342828713256

`A309148(A055998(n+2))`
-/

namespace A309183.P18236533342828713256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055998 (n + 2)).toNat

end

end A309183.P18236533342828713256

/-! ## A309183.P1675999692644539502

`A309148(A155212(n)+5)`
-/

namespace A309183.P1675999692644539502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A155212 n + 5).toNat

end

end A309183.P1675999692644539502

/-! ## A309183.P9923113043258089373

`A309148(eq[3, A193592(n)])`
-/

namespace A309183.P9923113043258089373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309183.P9923113043258089373

/-! ## A309183.P15006580124984230156

`A309148(A052905(n+1)+2)`
-/

namespace A309183.P15006580124984230156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A052905 (n + 1) + 2).toNat

end

end A309183.P15006580124984230156

/-! ## A309183.P1025418191457112854

`A309148(eq[2, A185782(n+1)-2])`
-/

namespace A309183.P1025418191457112854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309183.P1025418191457112854

/-! ## A309183.P14682917379441664704

`A309148(eq[2, A185782(n+1)/2])`
-/

namespace A309183.P14682917379441664704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A309183.P14682917379441664704

/-! ## A309183.P2647303822411814951

`record[A309148(A061579(A133263(n)))]`
-/

namespace A309183.P2647303822411814951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A061579 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309183.P2647303822411814951

/-! ## A309183.P13409350701271225637

`A309148(A167499(n)+A016777(n))`
-/

namespace A309183.P13409350701271225637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A167499 n + A016777 n).toNat

end

end A309183.P13409350701271225637

/-!
# A309184: (1/5) times the number of n-member subsets of [5n] whose elements sum to a multiple of n.

The programs for A309184, there is no canonical definition to state claims against.
-/

/-! ## A309184.P18219818880745213832

`A318433(n+1)/5`
-/

namespace A309184.P18219818880745213832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318433 (n + 1) : ℚ) / 5

end

end A309184.P18219818880745213832

/-! ## A309184.P13649538164788980950

`A309148(A046691(n+3))`
-/

namespace A309184.P13649538164788980950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A046691 (n + 3)).toNat

end

end A309184.P13649538164788980950

/-! ## A309184.P7469716617023205373

`A309148(eq[4, A193592(n)])`
-/

namespace A309184.P7469716617023205373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309184.P7469716617023205373

/-! ## A309184.P9385437179705856278

`A309148(Δ[A023545(n+1)])`
-/

namespace A309184.P9385437179705856278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (f1 (n + 1) - f1 n).toNat

end

end A309184.P9385437179705856278

/-! ## A309184.P14228878138409753518

`A309148(A052905(n+2)+1)`
-/

namespace A309184.P14228878138409753518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A052905 (n + 2) + 1).toNat

end

end A309184.P14228878138409753518

/-! ## A309184.P7112302253278339355

`A309148(A055998(n+2)+n+4)`
-/

namespace A309184.P7112302253278339355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055998 (n + 2) + (n + 4 : ℤ)).toNat

end

end A309184.P7112302253278339355

/-! ## A309184.P3955172849115227583

`record[A309148(A038722(A167499(n)))]`
-/

namespace A309184.P3955172849115227583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309184.P3955172849115227583

/-!
# A309185: (1/6) times the number of n-member subsets of [6n] whose elements sum to a multiple of n.

The programs for A309185, there is no canonical definition to state claims against.
-/

/-! ## A309185.P11737712686481582873

`record[A309148(A052905(n))]`
-/

namespace A309185.P11737712686481582873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309185.P11737712686481582873

/-! ## A309185.P16847437820147384146

`A309148(A052905(n+3))`
-/

namespace A309185.P16847437820147384146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A052905 (n + 3)).toNat

end

end A309185.P16847437820147384146

/-! ## A309185.P11831431503687220574

`A309148(eq[3, A219347(n)])`
-/

namespace A309185.P11831431503687220574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309185.P11831431503687220574

/-! ## A309185.P6364800267843207645

`A309148(A000217(n+6)-5)`
-/

namespace A309185.P6364800267843207645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000217 (n + 6) - 5).toNat

end

end A309185.P6364800267843207645

/-! ## A309185.P11143759434583766687

`A309148(A000124(n+6)-6)`
-/

namespace A309185.P11143759434583766687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000124 (n + 6) - 6).toNat

end

end A309185.P11143759434583766687

/-! ## A309185.P14562052985928795217

`A309148(Δ[A023545(n+2)]-1)`
-/

namespace A309185.P14562052985928795217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (f1 (n + 1) - f1 n - 1).toNat

end

end A309185.P14562052985928795217

/-! ## A309185.P2835651447861284208

`A309148(A055998(n+3)+n+4)`
-/

namespace A309185.P2835651447861284208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055998 (n + 3) + (n + 4 : ℤ)).toNat

end

end A309185.P2835651447861284208

/-!
# A309186: (1/7) times the number of n-member subsets of [7n] whose elements sum to a multiple of n.

The programs for A309186, there is no canonical definition to state claims against.
-/

/-! ## A309186.P16071629245241039571

`A309148(A055999(n+4))`
-/

namespace A309186.P16071629245241039571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055999 (n + 4)).toNat

end

end A309186.P16071629245241039571

/-! ## A309186.P8911343905267327836

`A309148(eq[4, A219347(n)])`
-/

namespace A309186.P8911343905267327836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309186.P8911343905267327836

/-! ## A309186.P17148958457914949320

`A309148(A052905(n+4)-1)`
-/

namespace A309186.P17148958457914949320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A052905 (n + 4) - 1).toNat

end

end A309186.P17148958457914949320

/-! ## A309186.P11328697590774724887

`A309148(A055998(n+5)-3)`
-/

namespace A309186.P11328697590774724887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055998 (n + 5) - 3).toNat

end

end A309186.P11328697590774724887

/-! ## A309186.P7746638945192594968

`A309148(A000217(n+7)-6)`
-/

namespace A309186.P7746638945192594968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000217 (n + 7) - 6).toNat

end

end A309186.P7746638945192594968

/-! ## A309186.P15193500991185218725

`A309148(A000124(n+7)-7)`
-/

namespace A309186.P15193500991185218725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000124 (n + 7) - 7).toNat

end

end A309186.P15193500991185218725

/-!
# A309187: (1/8) times the number of n-member subsets of [8n] whose elements sum to a multiple of n.

The programs for A309187, there is no canonical definition to state claims against.
-/

/-! ## A309187.P9148235536922565085

`A309148(eq[5, A219347(n)])`
-/

namespace A309187.P9148235536922565085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309187.P9148235536922565085

/-! ## A309187.P4885446714834078780

`A309148(eq[7, A193592(n)])`
-/

namespace A309187.P4885446714834078780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309187.P4885446714834078780

/-! ## A309187.P8275916220822008264

`A309148(A155212(n+4)+1)`
-/

namespace A309187.P8275916220822008264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A155212 (n + 4) + 1).toNat

end

end A309187.P8275916220822008264

/-! ## A309187.P18236657560579195389

`A309148(A000124(n+8)-8)`
-/

namespace A309187.P18236657560579195389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000124 (n + 8) - 8).toNat

end

end A309187.P18236657560579195389

/-! ## A309187.P13883536576908985483

`A309148(eq[12, A185782(n+1)])`
-/

namespace A309187.P13883536576908985483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309187.P13883536576908985483

/-!
# A309188: (1/9) times the number of n-member subsets of [9n] whose elements sum to a multiple of n.

The programs for A309188, there is no canonical definition to state claims against.
-/

/-! ## A309188.P7223736346074133350

`A309148(A155212(n+5))`
-/

namespace A309188.P7223736346074133350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A155212 (n + 5)).toNat

end

end A309188.P7223736346074133350

/-! ## A309188.P1676751060046815784

`A309148(eq[6, A219347(n)])`
-/

namespace A309188.P1676751060046815784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309188.P1676751060046815784

/-! ## A309188.P12348418606700604676

`A309148(eq[8, A193592(n)])`
-/

namespace A309188.P12348418606700604676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309188.P12348418606700604676

/-! ## A309188.P2677353241351510390

`A309148(A055999(n+6)-2)`
-/

namespace A309188.P2677353241351510390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055999 (n + 6) - 2).toNat

end

end A309188.P2677353241351510390

/-! ## A309188.P2546101133554865866

`A309148(A000124(n+9)-9)`
-/

namespace A309188.P2546101133554865866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000124 (n + 9) - 9).toNat

end

end A309188.P2546101133554865866

/-! ## A309188.P13767451837570609091

`A309148(A000217(n+8)+n+1)`
-/

namespace A309188.P13767451837570609091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A309188.P13767451837570609091

/-!
# A309189: (1/10) times the number of n-member subsets of [10n] whose elements sum to a multiple of n.

The programs for A309189, there is no canonical definition to state claims against.
-/

/-! ## A309189.P7331851700355232010

`A309148(eq[8, A219347(n)])`
-/

namespace A309189.P7331851700355232010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309189.P7331851700355232010

/-! ## A309189.P7087970408844026038

`A309148(eq[9, A193592(n)])`
-/

namespace A309189.P7087970408844026038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309189.P7087970408844026038

/-! ## A309189.P13662389755080030165

`A309148(eq[16, A185782(n+1)])`
-/

namespace A309189.P13662389755080030165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309189.P13662389755080030165

/-! ## A309189.P17461407461008173977

`A309148(A055999(n+6)+n+7)`
-/

namespace A309189.P17461407461008173977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (A055999 (n + 6) + (n + 7 : ℤ)).toNat

end

end A309189.P17461407461008173977

/-! ## A309189.P7383531721662668313

`A267632(2*∑[50*n+23])`
-/

namespace A309189.P7383531721662668313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267632 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A309189.P7383531721662668313

/-!
# A309192: a(n) = Sum_{k=1..n} mu(k)^2 * k * floor(n/k).

The programs for A309192, the canonical program `A309192.P6207429415239251656` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309192 has offset 1).

The definition of A309192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309192.P6207429415239251656

`∑[∏{p}[n+1, #+1]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309192

/-- `∑[∏{p}[n+1, #+1]]` -/
def P6207429415239251656.Spec : Prop :=
  ∀ n, (P6207429415239251656.a n : ℤ) = A309192 (n + 1)

theorem P6207429415239251656.correct : P6207429415239251656.Spec := by
  intro n
  simp only [A309192, Nat.add_sub_cancel]

end A309192

/-! ## A309192.P1414938337172887452

`∏{p}[n+1, #+1]+a(n-1)` with `a(0)=1`
-/

namespace A309192.P1414938337172887452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1) + a (n - 1)

end

end A309192.P1414938337172887452

namespace A309192

/-- `∏{p}[n+1, #+1]+a(n-1)` -/
def P1414938337172887452.Spec : Prop :=
  ∀ n, (P1414938337172887452.a n : ℤ) = A309192 (n + 1)

end A309192

/-! ## A309192.P18301921152613650515

`∑[A048250(n+1)]`
-/

namespace A309192.P18301921152613650515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P18301921152613650515

namespace A309192

/-- `∑[A048250(n+1)]` -/
def P18301921152613650515.Spec : Prop :=
  ∀ n, P18301921152613650515.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P8172818589993811519

`∑[abs(A323363(n+1))]`
-/

namespace A309192.P8172818589993811519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323363 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P8172818589993811519

namespace A309192

/-- `∑[abs(A323363(n+1))]` -/
def P8172818589993811519.Spec : Prop :=
  ∀ n, P8172818589993811519.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P11205130070253057368

`∑[∑{d}[A007947(n+1), #]]`
-/

namespace A309192.P11205130070253057368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P11205130070253057368

namespace A309192

/-- `∑[∑{d}[A007947(n+1), #]]` -/
def P11205130070253057368.Spec : Prop :=
  ∀ n, (P11205130070253057368.a n : ℤ) = A309192 (n + 1)

end A309192

/-! ## A309192.P11774863434978449685

`∑[∑{d}[A062953(n+1), #]]`
-/

namespace A309192.P11774863434978449685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P11774863434978449685

namespace A309192

/-- `∑[∑{d}[A062953(n+1), #]]` -/
def P11774863434978449685.Spec : Prop :=
  ∀ n, (P11774863434978449685.a n : ℤ) = A309192 (n + 1)

end A309192

/-! ## A309192.P3356646568471622573

`∑[A325313(n+1)+1+n]`
-/

namespace A309192.P3356646568471622573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P3356646568471622573

namespace A309192

/-- `∑[A325313(n+1)+1+n]` -/
def P3356646568471622573.Spec : Prop :=
  ∀ n, P3356646568471622573.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P6059034888963945578

`∑[A181797(n+1)/(n+1)]`
-/

namespace A309192.P6059034888963945578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P6059034888963945578

namespace A309192

/-- `∑[A181797(n+1)/(n+1)]` -/
def P6059034888963945578.Spec : Prop :=
  ∀ n, P6059034888963945578.a n = (A309192 (n + 1) : ℚ)

end A309192

/-! ## A309192.P5253747179497423198

`∑[∑{d}[n+1, #*A008683(#)²]]`
-/

namespace A309192.P5253747179497423198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A008683 d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P5253747179497423198

namespace A309192

/-- `∑[∑{d}[n+1, #*A008683(#)²]]` -/
def P5253747179497423198.Spec : Prop :=
  ∀ n, P5253747179497423198.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P11191493445792395120

`∑[A000203(A007947(n+1))]`
-/

namespace A309192.P11191493445792395120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P11191493445792395120

namespace A309192

/-- `∑[A000203(A007947(n+1))]` -/
def P11191493445792395120.Spec : Prop :=
  ∀ n, P11191493445792395120.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P5125458366013935163

`∑[A318675(n+1)+A318674(n+1)]`
-/

namespace A309192.P5125458366013935163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (n + 1) + A318674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P5125458366013935163

namespace A309192

/-- `∑[A318675(n+1)+A318674(n+1)]` -/
def P5125458366013935163.Spec : Prop :=
  ∀ n, P5125458366013935163.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P15925521753140235962

`∑[A000203(A015052(A015052(n+1)))]`
-/

namespace A309192.P15925521753140235962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A015052 (A015052 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P15925521753140235962

namespace A309192

/-- `∑[A000203(A015052(A015052(n+1)))]` -/
def P15925521753140235962.Spec : Prop :=
  ∀ n, P15925521753140235962.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P12896304955393999170

`∑[A000203(A015053(A015053(n+1)))]`
-/

namespace A309192.P12896304955393999170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A015053 (A015053 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P12896304955393999170

namespace A309192

/-- `∑[A000203(A015053(A015053(n+1)))]` -/
def P12896304955393999170.Spec : Prop :=
  ∀ n, P12896304955393999170.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P16519295329144754823

`∑[A351569(A007913(A350390(n+1)))]`
-/

namespace A309192.P16519295329144754823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A007913 (A350390 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P16519295329144754823

namespace A309192

/-- `∑[A351569(A007913(A350390(n+1)))]` -/
def P16519295329144754823.Spec : Prop :=
  ∀ n, P16519295329144754823.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P639799183764955044

`∑[A156061(A328915(A064988(n+1)))]`
-/

namespace A309192.P639799183764955044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A328915 (A064988 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P639799183764955044

namespace A309192

/-- `∑[A156061(A328915(A064988(n+1)))]` -/
def P639799183764955044.Spec : Prop :=
  ∀ n, P639799183764955044.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P3035881037789302859

`∑[A073183(A007947(∑[2*n+1]))]`
-/

namespace A309192.P3035881037789302859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073183 (A007947 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P3035881037789302859

namespace A309192

/-- `∑[A073183(A007947(∑[2*n+1]))]` -/
def P3035881037789302859.Spec : Prop :=
  ∀ n, P3035881037789302859.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P3430703302598924043

`∑[A295295((n+1)²)]`
-/

namespace A309192.P3430703302598924043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P3430703302598924043

namespace A309192

/-- `∑[A295295((n+1)²)]` -/
def P3430703302598924043.Spec : Prop :=
  ∀ n, P3430703302598924043.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P14298302965157015668

`∑[A323363((n+1)²)]`
-/

namespace A309192.P14298302965157015668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P14298302965157015668

namespace A309192

/-- `∑[A323363((n+1)²)]` -/
def P14298302965157015668.Spec : Prop :=
  ∀ n, P14298302965157015668.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P5425723325765366311

`∑[A293228((n+1)²)]+1`
-/

namespace A309192.P5425723325765366311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293228 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A309192.P5425723325765366311

namespace A309192

/-- `∑[A293228((n+1)²)]+1` -/
def P5425723325765366311.Spec : Prop :=
  ∀ n, P5425723325765366311.a n = A309192 (n + 1)

end A309192

/-! ## A309192.P2039744756671372218

`∑[A333752((n+1)²)]`
-/

namespace A309192.P2039744756671372218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333752 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309192.P2039744756671372218

namespace A309192

/-- `∑[A333752((n+1)²)]` -/
def P2039744756671372218.Spec : Prop :=
  ∀ n, P2039744756671372218.a n = A309192 (n + 1)

end A309192

/-!
# A309194: Number of partitions of n avoiding the partition (4,3,2).

The programs for A309194, there is no canonical definition to state claims against.
-/

/-! ## A309194.P5286262287596102343

`A330640(n)-A179801(A008629(n))`
-/

namespace A309194.P5286262287596102343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A179801 (A008629 n).toNat

end

end A309194.P5286262287596102343

/-! ## A309194.P9368632082034532189

`A330640(n)-A324870(A011782(n))`
-/

namespace A309194.P9368632082034532189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A324870 (A011782 n).toNat

end

end A309194.P9368632082034532189

/-! ## A309194.P2906819835638007694

`A330640(n)-A082784(A285894(n))`
-/

namespace A309194.P2906819835638007694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A082784 (A285894 n).toNat

end

end A309194.P2906819835638007694

/-! ## A309194.P16100534864516265624

`A330640(n)-A186744(A186754(n))`
-/

namespace A309194.P16100534864516265624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A186744 (A186754 n).toNat

end

end A309194.P16100534864516265624

/-! ## A309194.P2023464973321140554

`A330640(n)-A347706(A309099(n))`
-/

namespace A309194.P2023464973321140554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A347706 (A309099 n).toNat

end

end A309194.P2023464973321140554

/-!
# A309195: a(n) = smallest number missing from A111273 after A111273(n) has been found.

The programs for A309195, there is no canonical definition to state claims against.
-/

/-! ## A309195.P4969358665757150467

`2*A309196(n+1)`
-/

namespace A309195.P4969358665757150467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309196 (n + 1)

end

end A309195.P4969358665757150467

/-! ## A309195.P8309207530689095684

`A004277(A309196(n+1))`
-/

namespace A309195.P8309207530689095684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A309196 (n + 1)).toNat

end

end A309195.P8309207530689095684

/-! ## A309195.P15951588181243835476

`A004275(A309196(n+1)+1)`
-/

namespace A309195.P15951588181243835476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A309196 (n + 1) + 1).toNat

end

end A309195.P15951588181243835476

/-! ## A309195.P11271043418966498031

`A005843(A309196(n+1)%(n+8))`
-/

namespace A309195.P11271043418966498031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A309196 (n + 1)) (n + 8 : ℤ)).toNat

end

end A309195.P11271043418966498031

/-! ## A309195.P17802467762370279258

`A309196(char[2]+1+n)+A309196(n+1)`
-/

namespace A309195.P17802467762370279258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309196 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A309196 (n + 1)

end

end A309195.P17802467762370279258

/-! ## A309195.P12031416751856489523

`A005843(A309196(n+1))%A004771(n)`
-/

namespace A309195.P12031416751856489523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A309196 (n + 1)).toNat) (A004771 n)

end

end A309195.P12031416751856489523

/-!
# A309196: a(n) = A309195(n)/2.

The programs for A309196, there is no canonical definition to state claims against.
-/

/-! ## A309196.P14104735702172110779

`A309195(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309196.P14104735702172110779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309195 (n + 1) : ℚ) / 2

end

end A309196.P14104735702172110779

/-! ## A309196.P3881061764305050052

`A001281(A309195(n+1))`
-/

namespace A309196.P3881061764305050052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A309195 (n + 1)).toNat

end

end A309196.P3881061764305050052

/-! ## A309196.P17912561719037768010

`A004526(A309195(n+1)+1)`
-/

namespace A309196.P17912561719037768010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A309195 (n + 1) + 1).toNat

end

end A309196.P17912561719037768010

/-! ## A309196.P14860494895603040930

`A001057(A309195(n+1)-1)`
-/

namespace A309196.P14860494895603040930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A309195 (n + 1) - 1).toNat

end

end A309196.P14860494895603040930

/-! ## A309196.P10239465500454673831

`A060681(A309195(n+1)%(50*n+25))`
-/

namespace A309196.P10239465500454673831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (Int.tmod (A309195 (n + 1)) (50 * n + 25 : ℤ)).toNat

end

end A309196.P10239465500454673831

/-! ## A309196.P1527024669270033610

`A289440(A309195(n+1))%A016825(n)`
-/

namespace A309196.P1527024669270033610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289440 (A309195 (n + 1)).toNat) (A016825 n)

end

end A309196.P1527024669270033610

/-! ## A309196.P5024128044197078411

`A289440(A309195(n+1)%A154609(n))`
-/

namespace A309196.P5024128044197078411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (Int.tmod (A309195 (n + 1)) (A154609 n)).toNat

end

end A309196.P5024128044197078411

/-! ## A309196.P12679116871328411491

`A000217(A309195(n+1)-1)%A309195(n+1)`
-/

namespace A309196.P12679116871328411491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A309195 (n + 1) - 1).toNat) (A309195 (n + 1))

end

end A309196.P12679116871328411491

/-! ## A309196.P12175599543146410419

`A000217(3*A309195(n+1))%A309195(n+1)`
-/

namespace A309196.P12175599543146410419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (3 * A309195 (n + 1)).toNat) (A309195 (n + 1))

end

end A309196.P12175599543146410419

/-! ## A309196.P427528807811732071

`A000217(lcm(2, A309195(n+1)))%A309195(n+1)`
-/

namespace A309196.P427528807811732071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (Int.lcm 2 (A309195 (n + 1)))) (A309195 (n + 1))

end

end A309196.P427528807811732071

/-!
# A309197: List of numbers k such that A111273(k) reaches the smallest missing number.

The programs for A309197, there is no canonical definition to state claims against.
-/

/-! ## A309197.P1324802619178378738

`record[A113658(n+1)]`
-/

namespace A309197.P1324802619178378738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309197.P1324802619178378738

/-! ## A309197.P10338008368840223

`record[(-1)^n*A113658(A028310(n))]`
-/

namespace A309197.P10338008368840223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113658 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309197.P10338008368840223

/-! ## A309197.P14223739840457691967

`record[A113658(A028310(n))-A000035(n)]`
-/

namespace A309197.P14223739840457691967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A028310 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309197.P14223739840457691967

/-! ## A309197.P4388423565020409328

`record[A113658(A028310(n))%A017101(n)]`
-/

namespace A309197.P4388423565020409328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113658 (A028310 n).toNat) (A017101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309197.P4388423565020409328

/-! ## A309197.P3151128325083751640

`A113658(A309195(a(n-1)))` with `a(0)=1`
-/

namespace A309197.P3151128325083751640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113658 (A309195 (a (n - 1)).toNat).toNat

end

end A309197.P3151128325083751640

/-! ## A309197.P16382121484466555954

`record[A113658(A028310(n))]%(2*A267604(n))`
-/

namespace A309197.P16382121484466555954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (2 * A267604 n)

end

end A309197.P16382121484466555954

/-! ## A309197.P5928481624346729702

`record[A113658(A028310(n))]%A005015(n)`
-/

namespace A309197.P5928481624346729702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005015 n)

end

end A309197.P5928481624346729702

/-!
# A309198: Fixed point of the morphism 1 -> 12, 2 -> 3, 3 -> 4, 4 -> 123.

The programs for A309198, there is no canonical definition to state claims against.
-/

/-! ## A309198.P4388376969417433389

`A308898(n)+1`
-/

namespace A309198.P4388376969417433389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308898 n + 1

end

end A309198.P4388376969417433389

/-! ## A309198.P4112821910555446593

`A000005(p?[A014588(n)]^A308898(n))`
-/

namespace A309198.P4112821910555446593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308898 n : ℤ))).toNat

end

end A309198.P4112821910555446593

/-! ## A309198.P3303771633358756660

`A000005(p?[A014589(n)]^A308898(n))`
-/

namespace A309198.P3303771633358756660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308898 n : ℤ))).toNat

end

end A309198.P3303771633358756660

/-! ## A309198.P679450611705817657

`A000005(p?[A014586(n)]^A308898(n))`
-/

namespace A309198.P679450611705817657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308898 n : ℤ))).toNat

end

end A309198.P679450611705817657

/-! ## A309198.P11058155433878363268

`lt[and(n, 2*n), 5]%4+1`
-/

namespace A309198.P11058155433878363268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 4 + 1

end

end A309198.P11058155433878363268

/-! ## A309198.P3630673008399879492

`A276757(A187945(n+1))`
-/

namespace A309198.P3630673008399879492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276757 (A187945 (n + 1)).toNat

end

end A309198.P3630673008399879492

/-! ## A309198.P13288775612098017417

`A276757(lt[A014677(n), A270788(n+1)])`
-/

namespace A309198.P13288775612098017417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276757 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309198.P13288775612098017417

/-! ## A309198.P10354562381994980396

`A138967(A187945(n+2)-1)`
-/

namespace A309198.P10354562381994980396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138967 (A187945 (n + 2) - 1).toNat

end

end A309198.P10354562381994980396

/-! ## A309198.P7040848547151143390

`A138967(A287777(n+2)-(n+3))`
-/

namespace A309198.P7040848547151143390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138967 (A287777 (n + 2) - (n + 3 : ℤ)).toNat

end

end A309198.P7040848547151143390

/-! ## A309198.P952661045130796314

`A276757(lt[A014677(n), A138967(n+1)])`
-/

namespace A309198.P952661045130796314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276757 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309198.P952661045130796314

/-!
# A309199: Index of n^2 in A111273.

The programs for A309199, there is no canonical definition to state claims against.
-/

/-! ## A309199.P2331343817122668745

`A113658((n+1)²)`
-/

namespace A309199.P2331343817122668745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 ((n + 1) ^ 2)

end

end A309199.P2331343817122668745

/-! ## A309199.P14808478846687057905

`or(char[1], A113658((n+1)^2))`
-/

namespace A309199.P14808478846687057905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A113658 ((n + 1) ^ 2))

end

end A309199.P14808478846687057905

/-! ## A309199.P4905243338213881654

`A000027(A113658(xor(n, -1)²))`
-/

namespace A309199.P4905243338213881654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A113658 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A309199.P4905243338213881654

/-! ## A309199.P601329601671514251

`A000027(A113658((n+1)^2))`
-/

namespace A309199.P601329601671514251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A113658 ((n + 1) ^ 2)).toNat

end

end A309199.P601329601671514251

/-! ## A309199.P219955267639675599

`∑{d}[A113658((n+1)^2), A000010(#)]`
-/

namespace A309199.P219955267639675599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A309199.P219955267639675599

/-! ## A309199.P12585227049777894611

`A007318(C(2, n))*A113658((n+1)^2)`
-/

namespace A309199.P12585227049777894611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A113658 ((n + 1) ^ 2)

end

end A309199.P12585227049777894611

/-! ## A309199.P16229034591068347087

`A113658((n+1)^2)%A000040(∑[n+2])`
-/

namespace A309199.P16229034591068347087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113658 ((n + 1) ^ 2)) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A309199.P16229034591068347087

/-! ## A309199.P15203631086229979344

`A014963(6*(n+1))*A113658((n+1)^2)`
-/

namespace A309199.P15203631086229979344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A113658 ((n + 1) ^ 2)

end

end A309199.P15203631086229979344

/-! ## A309199.P6012906987354523308

`A113658((n+1)^2)+A008683(8*(n+8))`
-/

namespace A309199.P6012906987354523308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 ((n + 1) ^ 2) + A008683 (8 * (n + 8))

end

end A309199.P6012906987354523308

