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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A201908: Irregular triangle of 2^k mod (2n-1).

The programs for A201908, there is no canonical definition to state claims against.
-/

/-! ## A201908.P12901360177776575043

`A308978(n)+A201912(A187829(n+1))`
-/

namespace A201908.P12901360177776575043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A201912 (A187829 (n + 1)).toNat

end

end A201908.P12901360177776575043

/-! ## A201908.P1582994233507916665

`A201912(n+1)+A051584(A172982(n+1))`
-/

namespace A201908.P1582994233507916665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201912 (n + 1) + A051584 (A172982 (n + 1)).toNat

end

end A201908.P1582994233507916665

/-! ## A201908.P1361273961938843973

`A201912(A187829(n+1)*A340365(n+1))`
-/

namespace A201908.P1361273961938843973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201912 (A187829 (n + 1) * A340365 (n + 1)).toNat

end

end A201908.P1361273961938843973

/-! ## A201908.P2927234001674066871

`A091204(A201912(n+1)^A008835(n+1))`
-/

namespace A201908.P2927234001674066871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (SequenceMachineLib.roundAway ((A201912 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A201908.P2927234001674066871

/-! ## A201908.P13531344850309075893

`A222246(A201912(n+1)^A008835(n+1))`
-/

namespace A201908.P13531344850309075893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.roundAway ((A201912 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A201908.P13531344850309075893

/-!
# A201909: Irregular triangle of 3^k mod prime(n).

The programs for A201909, there is no canonical definition to state claims against.
-/

/-! ## A201909.P3455893431322086369

`A337936(n+3)%A000040(A000079(n))`
-/

namespace A201909.P3455893431322086369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337936 (n + 3)) (A000040 (A000079 n).toNat)

end

end A201909.P3455893431322086369

/-!
# A201912: Irregular triangle of 2^k mod prime(n).

The programs for A201912, there is no canonical definition to state claims against.
-/

/-! ## A201912.P9061650477231225237

`A201908(A187829(n+1))-A308978(n)`
-/

namespace A201912.P9061650477231225237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201908 (A187829 (n + 1)).toNat - A308978 n

end

end A201912.P9061650477231225237

/-! ## A201912.P7163031379310515781

`A201908(A187829(n+1))-A308980(n)`
-/

namespace A201912.P7163031379310515781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201908 (A187829 (n + 1)).toNat - A308980 n

end

end A201912.P7163031379310515781

/-! ## A201912.P12463003006502229084

`and(A133960(A166285(n)), A201908(n+1))`
-/

namespace A201912.P12463003006502229084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133960 (A166285 n).toNat) (A201908 (n + 1))

end

end A201912.P12463003006502229084

/-! ## A201912.P9792245621939520472

`A201908(n+1)-A051584(A172982(n+1))`
-/

namespace A201912.P9792245621939520472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201908 (n + 1) - A051584 (A172982 (n + 1)).toNat

end

end A201912.P9792245621939520472

/-!
# A201913: Irregular triangle of possible factorizations of the trinomial x^n + A*x^m + B, where A and B are rational with A*B nonzero and n > m.

The programs for A201913, there is no canonical definition to state claims against.
-/

/-! ## A201913.P3478143219553853937

`A079229(A200928(n+1))^A079229(A023422(n))`
-/

namespace A201913.P3478143219553853937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079229 (A200928 (n + 1)).toNat : ℚ) ^ (A079229 (A023422 n).toNat : ℤ)

end

end A201913.P3478143219553853937

/-!
# A201914: Least prime p such that p+1 is divisible by 2^n and not by 2^(n+1).

The programs for A201914, there is no canonical definition to state claims against.
-/

/-! ## A201914.P8298718903555582922

`2^n*A126717(n)-1`
-/

namespace A201914.P8298718903555582922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A126717 n - 1

end

end A201914.P8298718903555582922

/-! ## A201914.P4562936000412031145

`lcm(A000079(n), A126717(n))-1`
-/

namespace A201914.P4562936000412031145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A126717 n) : ℤ) - 1

end

end A201914.P4562936000412031145

/-! ## A201914.P4416856151340948694

`A081729(A125169(n))+2^n*A126717(n)`
-/

namespace A201914.P4416856151340948694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A125169 n).toNat + (2 ^ n : ℤ) * A126717 n

end

end A201914.P4416856151340948694

/-! ## A201914.P6503181971598661348

`A081729(A079780(n+3))+2^n*A126717(n)`
-/

namespace A201914.P6503181971598661348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A079780 (n + 3)).toNat + (2 ^ n : ℤ) * A126717 n

end

end A201914.P6503181971598661348

/-! ## A201914.P17581778676089068457

`A081729(A002383(n+2))+2^n*A126717(n)`
-/

namespace A201914.P17581778676089068457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A002383 (n + 2)).toNat + (2 ^ n : ℤ) * A126717 n

end

end A201914.P17581778676089068457

/-! ## A201914.P14295302079858243017

`A081729(A086519(n))+2^n*A126717(n)`
-/

namespace A201914.P14295302079858243017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A086519 n).toNat + (2 ^ n : ℤ) * A126717 n

end

end A201914.P14295302079858243017

/-!
# A201918: Automorphic numbers: n^2 ends with n in base 12 (written in base 10).

The programs for A201918, there is no canonical definition to state claims against.
-/

/-! ## A201918.P9642598450632616729

`sqrt(A308249(n+1))`
-/

namespace A201918.P9642598450632616729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A308249 (n + 1) : ℝ)

end

end A201918.P9642598450632616729

/-! ## A201918.P10977434090658907736

`A308249(n+1)^(A008574(n)/A022144(n))`
-/

namespace A201918.P10977434090658907736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308249 (n + 1) : ℝ) ^ ((A008574 n : ℚ) / (A022144 n : ℚ) : ℝ)

end

end A201918.P10977434090658907736

/-! ## A201918.P12953415280631981275

`A182665(lcm(A011782(n), A038754(n)))`
-/

namespace A201918.P12953415280631981275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (Int.lcm (A011782 n) (A038754 n))

end

end A201918.P12953415280631981275

/-!
# A201919: Automorphic numbers n^2 ends with n in base 14 (written in base 10).

The programs for A201919, there is no canonical definition to state claims against.
-/

/-! ## A201919.P3559919103188582644

`sqrt(A308250(n+1))`
-/

namespace A201919.P3559919103188582644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A308250 (n + 1) : ℝ)

end

end A201919.P3559919103188582644

/-! ## A201919.P12924375653010804649

`A308250(n+1)^(A008574(n)/A022144(n))`
-/

namespace A201919.P12924375653010804649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308250 (n + 1) : ℝ) ^ ((A008574 n : ℚ) / (A022144 n : ℚ) : ℝ)

end

end A201919.P12924375653010804649

/-!
# A201920: a(n) = 2^n mod 125.

The programs for A201920, the canonical program `A201920.P5634543967712063877` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201920 has offset 0).

The definition of A201920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%125` (program `A201920.P5634543967712063877`, by `A201920.P5634543967712063877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201920.P5634543967712063877

`(2^n)%125`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201920

/-- `(2^n)%125` -/
def P5634543967712063877.Spec : Prop :=
  ∀ n, (P5634543967712063877.a n : ℤ) = A201920 n

theorem P5634543967712063877.correct : P5634543967712063877.Spec := by
  intro n
  simp only [A201920]

end A201920

/-!
# A201921: Automorphic numbers: n^2 ends with n in base 15 (written in base 10).

The programs for A201921, there is no canonical definition to state claims against.
-/

/-! ## A201921.P3104271057667009903

`A071653(n)*A321176(2*n)`
-/

namespace A201921.P3104271057667009903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 n * A321176 (2 * n)

end

end A201921.P3104271057667009903

/-! ## A201921.P6232495125106557881

`∪[10^n, A085859(A000244(3*n+2))]`
-/

namespace A201921.P6232495125106557881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A000244 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A201921.P6232495125106557881

/-!
# A201922: Triangle read by rows: T(n,m) = number of unlabeled graphs on n nodes with m connected components, m = 1,2,...,n.

The programs for A201922, there is no canonical definition to state claims against.
-/

/-! ## A201922.P12304820049710663484

`A111470(A144351(n+1))`
-/

namespace A201922.P12304820049710663484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (A144351 (n + 1)).toNat

end

end A201922.P12304820049710663484

/-! ## A201922.P6721451306673486835

`A164341(A156869(n+1))`
-/

namespace A201922.P6721451306673486835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164341 (A156869 (n + 1)).toNat

end

end A201922.P6721451306673486835

/-! ## A201922.P1404025909686831956

`A038372(A350772(n+1))`
-/

namespace A201922.P1404025909686831956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038372 (A350772 (n + 1)).toNat

end

end A201922.P1404025909686831956

/-! ## A201922.P3298638929327424963

`A121701(A350783(n+1))`
-/

namespace A201922.P3298638929327424963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (A350783 (n + 1)).toNat

end

end A201922.P3298638929327424963

/-! ## A201922.P13975428980603163875

`gcd(A113345(3*n)+1, A001857(2*(n+1)))`
-/

namespace A201922.P13975428980603163875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113345 (3 * n) + 1) (A001857 (2 * (n + 1)))

end

end A201922.P13975428980603163875

/-!
# A201923: E.g.f. satisfies: A(x) = 1/(cos(x*A(x)) - sin(x*A(x))).

The programs for A201923, there is no canonical definition to state claims against.
-/

/-! ## A201923.P9007242235118850716

`A215368(n+1)/(n+1)`
-/

namespace A201923.P9007242235118850716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215368 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A201923.P9007242235118850716

/-!
# A201947: Triangle T(n,k), read by rows, given by (1,1,-1,0,0,0,0,0,0,0,...) DELTA (1,-1,1,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A201947, there is no canonical definition to state claims against.
-/

/-! ## A201947.P3415822835215494529

`A123585(∑[char[∑[n]]]²-(n+1))`
-/

namespace A201947.P3415822835215494529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123585 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A201947.P3415822835215494529

/-! ## A201947.P2048932822944460097

`A020985(n)²*A123585(A061579(n))`
-/

namespace A201947.P2048932822944460097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A123585 (A061579 n).toNat

end

end A201947.P2048932822944460097

/-! ## A201947.P17513030406224354262

`A123585(A061579(n))*A158388(n+1)`
-/

namespace A201947.P17513030406224354262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123585 (A061579 n).toNat * A158388 (n + 1)

end

end A201947.P17513030406224354262

/-! ## A201947.P3973502924188271255

`A007318(C(2, n))*A123585(A061579(n))`
-/

namespace A201947.P3973502924188271255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A123585 (A061579 n).toNat

end

end A201947.P3973502924188271255

/-! ## A201947.P4388512863627826961

`A123585(A061579(n))^A000041(C(2, n))`
-/

namespace A201947.P4388512863627826961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123585 (A061579 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A201947.P4388512863627826961

/-! ## A201947.P17227498700438248288

`A009001(2*n)²*A123585(A061579(n))`
-/

namespace A201947.P17227498700438248288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A123585 (A061579 n).toNat

end

end A201947.P17227498700438248288

/-! ## A201947.P7293043858831869512

`A123585(A061579(n))+A008683(8*n+4)`
-/

namespace A201947.P7293043858831869512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123585 (A061579 n).toNat + A008683 (8 * n + 4)

end

end A201947.P7293043858831869512

/-! ## A201947.P4425847858206997452

`A123585(A061579(n))/Δ[A123737(n+1)]²`
-/

namespace A201947.P4425847858206997452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123585 (A061579 n).toNat : ℚ) / ((f1 (n + 1) - f1 n) ^ 2 : ℚ)

end

end A201947.P4425847858206997452

/-! ## A201947.P12386222438534720851

`A123585(A061579(n))%A000041(n+2)`
-/

namespace A201947.P12386222438534720851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123585 (A061579 n).toNat) (A000041 (n + 2))

end

end A201947.P12386222438534720851

/-! ## A201947.P16000251775769010287

`A000034(2*n)*A123585(A061579(n))`
-/

namespace A201947.P16000251775769010287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A123585 (A061579 n).toNat

end

end A201947.P16000251775769010287

/-! ## A201947.P3681629663535305271

`A001065(A000040(n+3))*A123585(A061579(n))`
-/

namespace A201947.P3681629663535305271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 3)).toNat * A123585 (A061579 n).toNat

end

end A201947.P3681629663535305271

/-! ## A201947.P15333126658921415469

`A123585(A061579(n))^A014963(∑[n+1])`
-/

namespace A201947.P15333126658921415469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123585 (A061579 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A201947.P15333126658921415469

/-!
# A201948: Automorphic numbers: n^2 ends with n in base 18 (written in base 10).

The programs for A201948, there is no canonical definition to state claims against.
-/

/-! ## A201948.P14031778413513541599

`A184985(A085069(n+1))`
-/

namespace A201948.P14031778413513541599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A085069 (n + 1)).toNat

end

end A201948.P14031778413513541599

/-! ## A201948.P16538583083911223428

`A326178(A085069(n+1)-1)`
-/

namespace A201948.P16538583083911223428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A085069 (n + 1) - 1).toNat

end

end A201948.P16538583083911223428

/-!
# A201949: Triangle, read by rows, where the g.f. of row n equals Product_{k=0..n-1} (1 + k*y + y^2) for n>0 with a single '1' in row 0.

The programs for A201949, there is no canonical definition to state claims against.
-/

/-! ## A201949.P3516861752381143874

`or(A026584(n+1), A332006(A296804(n+1)))`
-/

namespace A201949.P3516861752381143874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026584 (n + 1)) (A332006 (A296804 (n + 1)).toNat)

end

end A201949.P3516861752381143874

/-! ## A201949.P9255909626712008548

`or(A025177(n), A033665(A109543(n)))`
-/

namespace A201949.P9255909626712008548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025177 n) (A033665 (A109543 n).toNat)

end

end A201949.P9255909626712008548

/-!
# A201950: Central coefficients in Product_{k=0..n-1} (1 + k*x + x^2).

The programs for A201950, there is no canonical definition to state claims against.
-/

/-! ## A201950.P5500833112085443630

`(n-1)*a(n-1)+2*A201952(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A201950.P5500833112085443630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + 2 * A201952 (n - 1)

end

end A201950.P5500833112085443630

/-! ## A201950.P17064290900452295704

`A201949(∑[2*n])`
-/

namespace A201950.P17064290900452295704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201950.P17064290900452295704

/-! ## A201950.P17754078906452550290

`xor(1, xor(1, A201949(A002378(n))))`
-/

namespace A201950.P17754078906452550290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A201949 (A002378 n).toNat))

end

end A201950.P17754078906452550290

/-! ## A201950.P13294583687581094423

`or(A151935(n), A201949(n²+n))`
-/

namespace A201950.P13294583687581094423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151935 n) (A201949 (n ^ 2 + n))

end

end A201950.P13294583687581094423

/-!
# A201951: G.f.: Sum_{n>=0} x^n * Product_{k=0..n-1} (1 + k*x + x^2).

The programs for A201951, there is no canonical definition to state claims against.
-/

/-! ## A201951.P1356801090943098086

`A014419(A308030(n+2))`
-/

namespace A201951.P1356801090943098086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A308030 (n + 2)).toNat

end

end A201951.P1356801090943098086

/-! ## A201951.P1272255140037011047

`A004396(A134955(n*A110656(n)))`
-/

namespace A201951.P1272255140037011047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A134955 ((n : ℤ) * A110656 n).toNat).toNat

end

end A201951.P1272255140037011047

/-! ## A201951.P11869427968752832116

`A004396(A134955(n*A190311(n)))`
-/

namespace A201951.P11869427968752832116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A134955 ((n : ℤ) * A190311 n).toNat).toNat

end

end A201951.P11869427968752832116

/-! ## A201951.P7291641435546578648

`A004396(A134955(n)^A110656(n))`
-/

namespace A201951.P7291641435546578648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A134955 n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A201951.P7291641435546578648

/-! ## A201951.P17171421653846804312

`A004396(A134955(n)^A190311(n))`
-/

namespace A201951.P17171421653846804312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A134955 n : ℚ) ^ (A190311 n : ℤ))).toNat

end

end A201951.P17171421653846804312

/-!
# A201952: A diagonal of irregular triangle A201949.

The programs for A201952, there is no canonical definition to state claims against.
-/

/-! ## A201952.P3930748508303130531

`n*a(n-1)+A201950(n)+A201953(n)` with `a(0)=1, a(1)=1`
-/

namespace A201952.P3930748508303130531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 1) + A201950 n + A201953 n

end

end A201952.P3930748508303130531

/-! ## A201952.P7070383914256023235

`A201949((n+1)²+n)`
-/

namespace A201952.P7070383914256023235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201949 ((n + 1) ^ 2 + n)

end

end A201952.P7070383914256023235

/-! ## A201952.P9692465168006863855

`2*A201826(n)-A317169(n)`
-/

namespace A201952.P9692465168006863855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201826 n - A317169 n

end

end A201952.P9692465168006863855

/-! ## A201952.P16164888436135922530

`A201949(A028387(n))+A025439(n)`
-/

namespace A201952.P16164888436135922530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201949 (A028387 n).toNat + A025439 n

end

end A201952.P16164888436135922530

/-! ## A201952.P16724240205223471830

`gcd(A000038(n), A201949(A028387(n)))`
-/

namespace A201952.P16724240205223471830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A201949 (A028387 n).toNat)

end

end A201952.P16724240205223471830

/-!
# A201953: A diagonal of irregular triangle A201949.

The programs for A201953, there is no canonical definition to state claims against.
-/

/-! ## A201953.P17164465037020448691

`A201949(∑[2*(n+2)])`
-/

namespace A201953.P17164465037020448691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201953.P17164465037020448691

/-! ## A201953.P18092887727450964340

`record[A201949(n*A141213(n))]`
-/

namespace A201953.P18092887727450964340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201949 ((n : ℤ) * A141213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201953.P18092887727450964340

/-! ## A201953.P6274159302757660667

`record[A201949(2*n)/A054335(n)]`
-/

namespace A201953.P6274159302757660667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201949 (2 * n) : ℚ) / (A054335 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201953.P6274159302757660667

/-! ## A201953.P14405088100263222273

`record[A201949(2*n)/A201552(n+2)]`
-/

namespace A201953.P14405088100263222273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201949 (2 * n) : ℚ) / (A201552 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201953.P14405088100263222273

/-! ## A201953.P5098224818104144377

`record[A201949(2*(n+2))/A051151(n+1)]`
-/

namespace A201953.P5098224818104144377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201949 (2 * (n + 2)) : ℚ) / (A051151 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201953.P5098224818104144377

/-!
# A201954: E.g.f. satisfies: A(sinh(x)) = x*cosh(A(x)).

The programs for A201954, there is no canonical definition to state claims against.
-/

/-! ## A201954.P7578688263382594973

`C(A189570(n), A019427(n)²)`
-/

namespace A201954.P7578688263382594973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189570 n).toNat (A019427 n ^ 2).toNat

end

end A201954.P7578688263382594973

/-! ## A201954.P133092940248753798

`abs(Δ[A244233(A186434(n+1))])`
-/

namespace A201954.P133092940248753798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 (A186434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A201954.P133092940248753798

/-! ## A201954.P9370161476501947750

`C(A189570(n), A046802(2*(n+1))²)`
-/

namespace A201954.P9370161476501947750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189570 n).toNat (A046802 (2 * (n + 1)) ^ 2).toNat

end

end A201954.P9370161476501947750

/-!
# A201955: Number of zero-sum n X 2 -3..3 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201955, there is no canonical definition to state claims against.
-/

/-! ## A201955.P5709025902339668019

`A201958(∑[n+1]+2)`
-/

namespace A201955.P5709025902339668019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201958 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201955.P5709025902339668019

/-! ## A201955.P7517714346096492143

`record[gcd(A002262(n), A201958(n+2))]`
-/

namespace A201955.P7517714346096492143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A201958 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201955.P7517714346096492143

/-! ## A201955.P16618914057212578255

`record[A201958(n+2)/A202006(n+1)]`
-/

namespace A201955.P16618914057212578255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201958 (n + 2) : ℚ) / (A202006 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201955.P16618914057212578255

/-!
# A201956: Number of zero-sum nX3 -3..3 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201956, there is no canonical definition to state claims against.
-/

/-! ## A201956.P13016294228154987418

`A201958(∑[n+2]+4)`
-/

namespace A201956.P13016294228154987418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201958 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201956.P13016294228154987418

/-! ## A201956.P8574297469846541326

`or(1, A201958(A167614(n+1)))`
-/

namespace A201956.P8574297469846541326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201958 (A167614 (n + 1)).toNat)

end

end A201956.P8574297469846541326

/-! ## A201956.P8515540235705258501

`A316868(n)+A201958(A167614(n+1))`
-/

namespace A201956.P8515540235705258501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A201958 (A167614 (n + 1)).toNat

end

end A201956.P8515540235705258501

/-!
# A201957: Number of zero-sum nX4 -3..3 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201957, there is no canonical definition to state claims against.
-/

/-! ## A201957.P16009697234245511787

`A201958(A020752(n+1))`
-/

namespace A201957.P16009697234245511787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201958 (A020752 (n + 1)).toNat

end

end A201957.P16009697234245511787

/-! ## A201957.P11185394623394535774

`A201958(A374004(n+1))`
-/

namespace A201957.P11185394623394535774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201958 (A374004 (n + 1)).toNat

end

end A201957.P11185394623394535774

/-!
# A201958: T(n,k)=Number of zero-sum nXk -3..3 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201958, there is no canonical definition to state claims against.
-/

/-! ## A201958.P7729082265713281817

`A087011(8^A051597(n))`
-/

namespace A201958.P7729082265713281817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A051597 n : ℤ))).toNat

end

end A201958.P7729082265713281817

/-! ## A201958.P1631539179912298361

`A087011(8^A131923(n))`
-/

namespace A201958.P1631539179912298361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A131923 n : ℤ))).toNat

end

end A201958.P1631539179912298361

/-! ## A201958.P7881678487014596340

`A099802(9^A059036(n))`
-/

namespace A201958.P7881678487014596340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A059036 n : ℤ))).toNat

end

end A201958.P7881678487014596340

/-!
# A201959: E.g.f. satisfies: A(x*cosh(x)) = x*exp(A(x)).

The programs for A201959, there is no canonical definition to state claims against.
-/

/-! ## A201959.P6661109512315127941

`A161226(ceil(∑[3^(n-2)]))+n`
-/

namespace A201959.P6661109512315127941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161226 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat + (n : ℤ)

end

end A201959.P6661109512315127941

/-! ## A201959.P5383738607887185969

`A028310(ceil(∑[3^(n-2)])²+n)`
-/

namespace A201959.P5383738607887185969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 + (n : ℤ)).toNat

end

end A201959.P5383738607887185969

/-!
# A201960: Primes of the form 9n^2 - 5.

The programs for A201960, there is no canonical definition to state claims against.
-/

/-! ## A201960.P11814024934405210956

`A028877(record[(n+1)/A028877(n+2)%6]+1)`
-/

namespace A201960.P11814024934405210956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A028877 (n + 2)) 6 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028877 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A201960.P11814024934405210956

/-! ## A201960.P5567676488178470991

`record[A363347(3*n+5)]`
-/

namespace A201960.P5567676488178470991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363347 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201960.P5567676488178470991

/-! ## A201960.P5234907131619098165

`∩[A142110(n+1), A028875(n)]`
-/

namespace A201960.P5234907131619098165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201960.P5234907131619098165

/-! ## A201960.P4900694151900522650

`∩[A028877(n+1), A142110(n+1)]`
-/

namespace A201960.P4900694151900522650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201960.P4900694151900522650

/-! ## A201960.P3897933191855224992

`p?[(3*n)²-5]`
-/

namespace A201960.P3897933191855224992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201960.P3897933191855224992

/-! ## A201960.P16586886733445303125

`or(1, p?[A028875(3*n)])`
-/

namespace A201960.P16586886733445303125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201960.P16586886733445303125

/-! ## A201960.P8200494787600078342

`∩[A107168(n+1), A028875(n)]`
-/

namespace A201960.P8200494787600078342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201960.P8200494787600078342

/-! ## A201960.P5362534658446915065

`∩[A028877(n+1), A107168(n+1)]`
-/

namespace A201960.P5362534658446915065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201960.P5362534658446915065

/-!
# A201961: Primes of the form 9n^2 - 8.

The programs for A201961, there is no canonical definition to state claims against.
-/

/-! ## A201961.P17412440357003204054

`∩[A166147(3*n+4), A028886(n+1)]`
-/

namespace A201961.P17412440357003204054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P17412440357003204054

/-! ## A201961.P16143079511190915360

`∩[A166147(3*n+4), A028885(n+1)²-8]`
-/

namespace A201961.P16143079511190915360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1) ^ 2 - 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P16143079511190915360

/-! ## A201961.P6420079366434993857

`∩[A166147(3*n+4), A028884(A028885(n+1)-3)]`
-/

namespace A201961.P6420079366434993857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (A028885 (n + 1) - 3).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P6420079366434993857

/-! ## A201961.P18245163488283242626

`∩[A093838(n+1), A028884(n)]`
-/

namespace A201961.P18245163488283242626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P18245163488283242626

/-! ## A201961.P3259788533275558908

`∩[A028886(n+1), A093838(n+1)]`
-/

namespace A201961.P3259788533275558908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P3259788533275558908

/-! ## A201961.P1679850717698537064

`∩[A093838(n+1), A166147(n+1)]`
-/

namespace A201961.P1679850717698537064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P1679850717698537064

/-! ## A201961.P8663427677330694534

`∩[A093838(n+1), A036573(n+3)]`
-/

namespace A201961.P8663427677330694534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036573 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P8663427677330694534

/-! ## A201961.P6695485127777394042

`∩[A107008(n+1), A028884(n)]`
-/

namespace A201961.P6695485127777394042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P6695485127777394042

/-! ## A201961.P9984292192291768796

`∩[A028886(n+1), A107008(n+1)]`
-/

namespace A201961.P9984292192291768796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P9984292192291768796

/-! ## A201961.P1845516831313692868

`∩[A107008(n+1), A166147(n+1)]`
-/

namespace A201961.P1845516831313692868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201961.P1845516831313692868

/-!
# A201962: Primes of the form 10n^2 - 3.

The programs for A201962, there is no canonical definition to state claims against.
-/

/-! ## A201962.P3550272082135895278

`p?[10*n²-3]`
-/

namespace A201962.P3550272082135895278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201962.P3550272082135895278

/-! ## A201962.P4339676338970248817

`or(1, p?[A005901(n)-5])`
-/

namespace A201962.P4339676338970248817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201962.P4339676338970248817

/-! ## A201962.P17657473757301975342

`or(1, p?[A033583(n+1)-3])`
-/

namespace A201962.P17657473757301975342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201962.P17657473757301975342

/-! ## A201962.P7490310471383886387

`xor(1, p?[A005901(n+1)-5])+1`
-/

namespace A201962.P7490310471383886387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A201962.P7490310471383886387

/-! ## A201962.P4941929285094133023

`A007318(∑[n])*p?[A033583(n)-3]`
-/

namespace A201962.P4941929285094133023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201962.P4941929285094133023

/-! ## A201962.P12210493277341683727

`A007318(∑[n])*p?[A005901(n)-5]`
-/

namespace A201962.P12210493277341683727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201962.P12210493277341683727

/-! ## A201962.P5737949040505430028

`p?[A033583(n+1)-3]/A007318(C(2, n))`
-/

namespace A201962.P5737949040505430028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (n + 1) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201962.P5737949040505430028

/-! ## A201962.P10271875014688005500

`A000010(C(2, n)!)*p?[A033583(n+1)-3]`
-/

namespace A201962.P10271875014688005500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201962.P10271875014688005500

/-!
# A201963: Primes of the form 10n^2 - 7.

The programs for A201963, there is no canonical definition to state claims against.
-/

/-! ## A201963.P12271914209587761572

`p?[10*n²-7]`
-/

namespace A201963.P12271914209587761572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201963.P12271914209587761572

/-! ## A201963.P102811863175630690

`or(1, p?[n*10*n-7])`
-/

namespace A201963.P102811863175630690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (10 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201963.P102811863175630690

/-! ## A201963.P16480558855991941808

`abs(1-p?[(n-1)*10*(n+1)+3])+1`
-/

namespace A201963.P16480558855991941808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (10 * (n + 1) : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A201963.P16480558855991941808

/-!
# A201964: Primes of the form 10n^2 - 9.

The programs for A201964, there is no canonical definition to state claims against.
-/

/-! ## A201964.P16201379000693634568

`p?[10*n²-9]`
-/

namespace A201964.P16201379000693634568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201964.P16201379000693634568

/-! ## A201964.P619212645505587345

`or(1, p?[(n+2)*10*n+1])`
-/

namespace A201964.P619212645505587345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (10 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201964.P619212645505587345

/-! ## A201964.P17972690450975213098

`A007318(C(2, n))*p?[A033583(n)-9]`
-/

namespace A201964.P17972690450975213098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201964.P17972690450975213098

/-! ## A201964.P9551948288681551878

`A007318(and(3, -n))*p?[A033583(n)-9]`
-/

namespace A201964.P9551948288681551878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201964.P9551948288681551878

/-! ## A201964.P4182218894323824209

`ceil(1/A000041(n))*p?[A033583(n)-9]`
-/

namespace A201964.P4182218894323824209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201964.P4182218894323824209

/-! ## A201964.P16104536192063161006

`A000041(C(2, n+2))*p?[A033583(n)-9]`
-/

namespace A201964.P16104536192063161006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201964.P16104536192063161006

/-! ## A201964.P9601054000800947932

`A000108(C(2, n+2))*p?[A033583(n)-9]`
-/

namespace A201964.P9601054000800947932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201964.P9601054000800947932

/-!
# A201965: Primes of the form identical digits preceded by a 10.

The programs for A201965, there is no canonical definition to state claims against.
-/

/-! ## A201965.P17731411259778888423

`A365994(A031161(n+1))`
-/

namespace A201965.P17731411259778888423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365994 (A031161 (n + 1)).toNat

end

end A201965.P17731411259778888423

/-!
# A201967: Expansion of 1/(1-2*x-3*x^2+x^4) in powers of x.

The programs for A201967, the canonical program `A201967.P1570897232147631291` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201967 has offset 0).

The definition of A201967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^2+x^4))` (program `A201967.P1570897232147631291`, by `A201967.P1570897232147631291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201967.P1570897232147631291

`ogf(1/(1-2x-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201967

/-- `ogf(1/(1-2x-3x^2+x^4))` -/
def P1570897232147631291.Spec : Prop :=
  ∀ n, P1570897232147631291.a n = A201967 n

theorem P1570897232147631291.correct : P1570897232147631291.Spec := by
  intro n
  simp only [A201967]

end A201967

/-! ## A201967.P17956333231765660444

`2*a(n-1)+3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=20`
-/

namespace A201967.P17956333231765660444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 20] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - a (n - 4)

end

end A201967.P17956333231765660444

namespace A201967

/-- `2*a(n-1)+3*a(n-2)-a(n-4)` -/
def P17956333231765660444.Spec : Prop :=
  ∀ n, P17956333231765660444.a n = A201967 n

end A201967

/-! ## A201967.P12129998749616561330

`Δ[A060143(A027914(n))]`
-/

namespace A201967.P12129998749616561330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A027914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201967.P12129998749616561330

namespace A201967

/-- `Δ[A060143(A027914(n))]` -/
def P12129998749616561330.Spec : Prop :=
  ∀ n, P12129998749616561330.a n = A201967 n

end A201967

/-!
# A201968: Limiting number of graphs with m+n nodes and m connected components as m tends to infinity.

The programs for A201968, there is no canonical definition to state claims against.
-/

/-! ## A201968.P4978158639971185194

`A201922(A004277(n²))`
-/

namespace A201968.P4978158639971185194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A004277 (n ^ 2)).toNat

end

end A201968.P4978158639971185194

/-! ## A201968.P778646789729625243

`A201922(A028310(2*n²))`
-/

namespace A201968.P778646789729625243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A028310 (2 * n ^ 2)).toNat

end

end A201968.P778646789729625243

/-! ## A201968.P16515244814541702897

`A201922(n²+A028310(n²))`
-/

namespace A201968.P16515244814541702897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A201968.P16515244814541702897

/-! ## A201968.P9696198259723954917

`A201922(A004277(n)*A028310(n))`
-/

namespace A201968.P9696198259723954917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A004277 n * A028310 n).toNat

end

end A201968.P9696198259723954917

/-! ## A201968.P1420716703301069697

`A201922(A028310(2*n)*A028310(n))`
-/

namespace A201968.P1420716703301069697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A028310 (2 * n) * A028310 n).toNat

end

end A201968.P1420716703301069697

/-!
# A201969: G.f. satisfies: A(x) = 1 + x*A(x)^2 + x^2/A(x).

The programs for A201969, there is no canonical definition to state claims against.
-/

/-! ## A201969.P7571773840104783660

`A271608(5*ceil(∑[3^(n-1)/2]))`
-/

namespace A201969.P7571773840104783660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (5 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉).toNat

end

end A201969.P7571773840104783660

/-! ## A201969.P15505317386955766895

`A356940(A018168(n))`
-/

namespace A201969.P15505317386955766895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356940 (A018168 n).toNat

end

end A201969.P15505317386955766895

/-! ## A201969.P4463277845985887250

`A139457(A000085(n))+A003430(n)`
-/

namespace A201969.P4463277845985887250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (A000085 n).toNat + A003430 n

end

end A201969.P4463277845985887250

/-!
# A201970: G.f. satisfies: A(x) = 1 + x*A(x)^2 + x^2/A(x)^3.

The programs for A201970, there is no canonical definition to state claims against.
-/

/-! ## A201970.P10969467948078828874

`A247832(A085386(n+1))`
-/

namespace A201970.P10969467948078828874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A085386 (n + 1)).toNat

end

end A201970.P10969467948078828874

/-! ## A201970.P18216050614681052159

`A247832(record[A085386(n)%A085281(n)])`
-/

namespace A201970.P18216050614681052159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085386 n) (A085281 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A201970.P18216050614681052159

/-! ## A201970.P4048831318704736101

`A056239(A059015(n)+A007840(n))`
-/

namespace A201970.P4048831318704736101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A059015 n + A007840 n).toNat

end

end A201970.P4048831318704736101

/-!
# A201974: Number of n X n 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201974, there is no canonical definition to state claims against.
-/

/-! ## A201974.P8184088998992276777

`A201981((n+1)²+n²)`
-/

namespace A201974.P8184088998992276777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 ((n + 1) ^ 2 + n ^ 2)

end

end A201974.P8184088998992276777

/-!
# A201975: Number of n X 2 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201975, the canonical program `A201975.P8699609633938881539` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201975 has offset 1).

The definition of A201975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201975.P8699609633938881539

`∑[a(n-1)+14+n]` with `a(0)=4, a(1)=26`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201975

/-- `∑[a(n-1)+14+n]` -/
def P8699609633938881539.Spec : Prop :=
  ∀ n, (P8699609633938881539.a n : ℤ) = A201975 (n + 1)

theorem P8699609633938881539.correct : P8699609633938881539.Spec := by
  intro n
  simp only [A201975, Nat.add_sub_cancel]

end A201975

/-! ## A201975.P12298884709983348584

`C(n, 3)+2*(n+2)*(4*n+1)`
-/

namespace A201975.P12298884709983348584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 2 * (n + 2) * (4 * n + 1)

end

end A201975.P12298884709983348584

namespace A201975

/-- `C(n, 3)+2*(n+2)*(4*n+1)` -/
def P12298884709983348584.Spec : Prop :=
  ∀ n, (P12298884709983348584.a n : ℤ) = A201975 (n + 1)

end A201975

/-! ## A201975.P16047533973490916015

`∑[∑[n+6]-3]+(2*n+3)²-8`
-/

namespace A201975.P16047533973490916015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((2 * n + 3) ^ 2 : ℤ) - 8)

end

end A201975.P16047533973490916015

namespace A201975

/-- `∑[∑[n+6]-3]+(2*n+3)²-8` -/
def P16047533973490916015.Spec : Prop :=
  ∀ n, P16047533973490916015.a n = A201975 (n + 1)

end A201975

/-! ## A201975.P8595841901659848371

`∑[(A132757(n)+10)%A198957(n+3)+1]`
-/

namespace A201975.P8595841901659848371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132757 n + 10) (A198957 (n + 3)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201975.P8595841901659848371

namespace A201975

/-- `∑[(A132757(n)+10)%A198957(n+3)+1]` -/
def P8595841901659848371.Spec : Prop :=
  ∀ n, P8595841901659848371.a n = A201975 (n + 1)

end A201975

/-! ## A201975.P6810036828698581875

`A000027(A264443(n)+A134538(n+1))`
-/

namespace A201975.P6810036828698581875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A264443 n + A134538 (n + 1)).toNat

end

end A201975.P6810036828698581875

namespace A201975

/-- `A000027(A264443(n)+A134538(n+1))` -/
def P6810036828698581875.Spec : Prop :=
  ∀ n, P6810036828698581875.a n = A201975 (n + 1)

end A201975

/-!
# A201976: Number of n X 3 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201976, there is no canonical definition to state claims against.
-/

/-! ## A201976.P17650196979932118104

`A201981(∑[n+2]+4)`
-/

namespace A201976.P17650196979932118104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201976.P17650196979932118104

/-! ## A201976.P7743471282242272695

`lcm(2, A201981(A167614(n+1)))`
-/

namespace A201976.P7743471282242272695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A201981 (A167614 (n + 1)).toNat)

end

end A201976.P7743471282242272695

/-! ## A201976.P6412624386065457425

`A201981(A167614(n+1))+A011731(n)`
-/

namespace A201976.P6412624386065457425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A167614 (n + 1)).toNat + A011731 n

end

end A201976.P6412624386065457425

/-! ## A201976.P1262998908721858490

`A201981(A167614(n+1))%A017116(n)`
-/

namespace A201976.P1262998908721858490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201981 (A167614 (n + 1)).toNat) (A017116 n)

end

end A201976.P1262998908721858490

/-! ## A201976.P12498744091889329961

`record[A201981(A237519(n+1))]`
-/

namespace A201976.P12498744091889329961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201976.P12498744091889329961

/-!
# A201977: Number of nX4 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201977, there is no canonical definition to state claims against.
-/

/-! ## A201977.P10996040550200617476

`A201981(A141214(n)+7)`
-/

namespace A201977.P10996040550200617476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A141214 n + 7).toNat

end

end A201977.P10996040550200617476

/-! ## A201977.P17698499406937745380

`A201981(A052905(n)+9)`
-/

namespace A201977.P17698499406937745380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A052905 n + 9).toNat

end

end A201977.P17698499406937745380

/-! ## A201977.P8746883302114763809

`A201981(A055999(n)+10)`
-/

namespace A201977.P8746883302114763809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A055999 n + 10).toNat

end

end A201977.P8746883302114763809

/-! ## A201977.P16030834205998886337

`A201981(A167614(n+2)+1)`
-/

namespace A201977.P16030834205998886337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A167614 (n + 2) + 1).toNat

end

end A201977.P16030834205998886337

/-! ## A201977.P14440145674232625699

`A201981(A374004(n+1))`
-/

namespace A201977.P14440145674232625699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A374004 (n + 1)).toNat

end

end A201977.P14440145674232625699

/-!
# A201978: Number of n X 5 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201978, there is no canonical definition to state claims against.
-/

/-! ## A201978.P8568300405026312102

`A201981(A167499(n+3))`
-/

namespace A201978.P8568300405026312102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A167499 (n + 3)).toNat

end

end A201978.P8568300405026312102

/-! ## A201978.P14563012574166979821

`A201981(A155212(n)+13)`
-/

namespace A201978.P14563012574166979821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A155212 n + 13).toNat

end

end A201978.P14563012574166979821

/-! ## A201978.P295436356483636841

`A201981(A056000(n)+15)`
-/

namespace A201978.P295436356483636841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A056000 n + 15).toNat

end

end A201978.P295436356483636841

/-! ## A201978.P7383434155027554088

`A201981(eq[7, A066657(n)])`
-/

namespace A201978.P7383434155027554088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201978.P7383434155027554088

/-! ## A201978.P7894388877828184487

`A201981(eq[6, A131818(n+1)])`
-/

namespace A201978.P7894388877828184487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201978.P7894388877828184487

/-!
# A201979: Number of nX6 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201979, there is no canonical definition to state claims against.
-/

/-! ## A201979.P8923496561629749051

`A201981(A167614(n+4)+3)`
-/

namespace A201979.P8923496561629749051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A167614 (n + 4) + 3).toNat

end

end A201979.P8923496561629749051

/-! ## A201979.P6039653923132921846

`A201981(A000124(n+5)+5)`
-/

namespace A201979.P6039653923132921846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A000124 (n + 5) + 5).toNat

end

end A201979.P6039653923132921846

/-! ## A201979.P14211315957811498257

`A201981(A246172(n+1)+20)`
-/

namespace A201979.P14211315957811498257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A246172 (n + 1) + 20).toNat

end

end A201979.P14211315957811498257

/-! ## A201979.P12228834165447034004

`A201981(eq[7, A131818(n+1)])`
-/

namespace A201979.P12228834165447034004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201979.P12228834165447034004

/-! ## A201979.P7758715450397443328

`A319652(A066568(n))+A201981(A000096(n+4)+7)`
-/

namespace A201979.P7758715450397443328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A066568 n).toNat + A201981 (A000096 (n + 4) + 7).toNat

end

end A201979.P7758715450397443328

/-!
# A201980: Number of n X 7 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201980, there is no canonical definition to state claims against.
-/

/-! ## A201980.P11143923112385342640

`A201981(A374008(n+1))`
-/

namespace A201980.P11143923112385342640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A374008 (n + 1)).toNat

end

end A201980.P11143923112385342640

/-! ## A201980.P4654256054667169371

`A201981(A055999(n+4))`
-/

namespace A201980.P4654256054667169371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (A055999 (n + 4)).toNat

end

end A201980.P4654256054667169371

/-! ## A201980.P104102613236198449

`A201981(eq[6, A193592(n)])`
-/

namespace A201980.P104102613236198449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201980.P104102613236198449

/-!
# A201981: T(n,k)=Number of nXk 0..3 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201981, there is no canonical definition to state claims against.
-/

/-! ## A201981.P5769716665908243782

`A201975(A077028(n)%A202009(3*(n+1)))`
-/

namespace A201981.P5769716665908243782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201975 (Int.tmod (A077028 n) (A202009 (3 * (n + 1)))).toNat

end

end A201981.P5769716665908243782

/-! ## A201981.P514745585063534609

`A182933(∑[n])*A310380(A154980(n))`
-/

namespace A201981.P514745585063534609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182933 (∑ j ∈ Finset.range (n + 1), f1 j) * A310380 (A154980 n).toNat

end

end A201981.P514745585063534609

/-! ## A201981.P949696961404325703

`A310380(A154980(n)/A182933(∑[n]))`
-/

namespace A201981.P949696961404325703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 (SequenceMachineLib.roundAway ((A154980 n : ℚ) / (A182933 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A201981.P949696961404325703

/-! ## A201981.P9770424181434504855

`A014574(A054110(n)%A003684(n+1))`
-/

namespace A201981.P9770424181434504855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (Int.tmod (A054110 n) (A003684 (n + 1))).toNat

end

end A201981.P9770424181434504855

/-!
# A201982: Consider the numbers 0 <= n <= 999 whose decimal digits are represented by (a,b,c). Look at the cross product of the vectors (u,v,w) = (a,b,c)^(c,b,a) in 3-dimensional Euclidean space. Sequence gives numbers n such that the components u, v, w are > = 0.

The programs for A201982, there is no canonical definition to state claims against.
-/

/-! ## A201982.P6929971921705448676

`∩[A032945(n+1), A355301(n+1)]`
-/

namespace A201982.P6929971921705448676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201982.P6929971921705448676

/-! ## A201982.P8059167991599008959

`eq[A055641(n), A055641(A055649(n))]`
-/

namespace A201982.P8059167991599008959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A055649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201982.P8059167991599008959

/-! ## A201982.P5903739766523201653

`eq[A257297(n), A257297(A347689(n))]`
-/

namespace A201982.P5903739766523201653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201982.P5903739766523201653

/-! ## A201982.P6587353440696401549

`eq[A053392(n), A347689(n)]`
-/

namespace A201982.P6587353440696401549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201982.P6587353440696401549

/-!
# A201983: 

The programs for A201983, there is no canonical definition to state claims against.
-/

/-! ## A201983.P14393561042267025857

`A201989((n+1)²+n²)`
-/

namespace A201983.P14393561042267025857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 ((n + 1) ^ 2 + n ^ 2)

end

end A201983.P14393561042267025857

/-!
# A201984: Number of nX2 zero-sum -3..3 arrays with rows and columns lexicographically nondecreasing.

The programs for A201984, there is no canonical definition to state claims against.
-/

/-! ## A201984.P5577489206013299989

`A201989(∑[n+1]+2)`
-/

namespace A201984.P5577489206013299989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201984.P5577489206013299989

/-! ## A201984.P3784450707490110844

`record[A201989(A220691(n+1)+2)]`
-/

namespace A201984.P3784450707490110844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (A220691 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201984.P3784450707490110844

/-! ## A201984.P63693928464638000

`record[root(A201989(n+2), A202006(n+1))]`
-/

namespace A201984.P63693928464638000
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201989 (n + 2) : ℝ) ^ (1 / (A202006 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201984.P63693928464638000

/-! ## A201984.P13614936069010074443

`A201989(A133263(n+1))%A196910(n+1)`
-/

namespace A201984.P13614936069010074443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201989 (A133263 (n + 1)).toNat) (A196910 (n + 1))

end

end A201984.P13614936069010074443

/-! ## A201984.P13879142266552955772

`record[A201989(A117142(n+2))]`
-/

namespace A201984.P13879142266552955772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201984.P13879142266552955772

/-!
# A201985: Number of nX3 zero-sum -3..3 arrays with rows and columns lexicographically nondecreasing.

The programs for A201985, there is no canonical definition to state claims against.
-/

/-! ## A201985.P5877775507165355584

`A201989(∑[n+2]+4)`
-/

namespace A201985.P5877775507165355584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201985.P5877775507165355584

/-! ## A201985.P16140046759953089567

`A201989(A167614(n+1))+A025466(n)`
-/

namespace A201985.P16140046759953089567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (A167614 (n + 1)).toNat + A025466 n

end

end A201985.P16140046759953089567

/-! ## A201985.P6235478376212918299

`A321537(n)+A201989(A167614(n+1))`
-/

namespace A201985.P6235478376212918299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A201989 (A167614 (n + 1)).toNat

end

end A201985.P6235478376212918299

/-! ## A201985.P3558064624861716363

`A055642(n)*A201989(A167614(n+1))`
-/

namespace A201985.P3558064624861716363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A201989 (A167614 (n + 1)).toNat

end

end A201985.P3558064624861716363

/-! ## A201985.P12837353284949942251

`A201989(A167614(n+1))%A201986(n+1)`
-/

namespace A201985.P12837353284949942251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201989 (A167614 (n + 1)).toNat) (A201986 (n + 1))

end

end A201985.P12837353284949942251

/-!
# A201986: Number of nX4 zero-sum -3..3 arrays with rows and columns lexicographically nondecreasing.

The programs for A201986, there is no canonical definition to state claims against.
-/

/-! ## A201986.P13895089377059578862

`A201989(A141214(n)+7)`
-/

namespace A201986.P13895089377059578862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (A141214 n + 7).toNat

end

end A201986.P13895089377059578862

/-! ## A201986.P16583625537260930428

`A201989(A167614(n+2)+1)`
-/

namespace A201986.P16583625537260930428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (A167614 (n + 2) + 1).toNat

end

end A201986.P16583625537260930428

/-! ## A201986.P6653364641427832137

`A201989(eq[3, A025581(n)]+1)`
-/

namespace A201986.P6653364641427832137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A201986.P6653364641427832137

/-!
# A201987: 

The programs for A201987, there is no canonical definition to state claims against.
-/

/-! ## A201987.P10946938454822024951

`A201989(A167499(n+3))`
-/

namespace A201987.P10946938454822024951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (A167499 (n + 3)).toNat

end

end A201987.P10946938454822024951

/-!
# A201988: 

The programs for A201988, there is no canonical definition to state claims against.
-/

/-! ## A201988.P12770321954138969980

`A201989(eq[5, A025581(n)]+1)`
-/

namespace A201988.P12770321954138969980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A201988.P12770321954138969980

/-!
# A201990: E.g.f. satisfies: A(x) = 1/(cos(x*A(x)^2) - sin(x*A(x)^2)).

The programs for A201990, there is no canonical definition to state claims against.
-/

/-! ## A201990.P1022751649363239249

`A305468(A293020(n))`
-/

namespace A201990.P1022751649363239249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305468 (A293020 n).toNat

end

end A201990.P1022751649363239249

/-!
# A201992: Numbers whose binary representations are found in the Thue-Morse sequence.

The programs for A201992, there is no canonical definition to state claims against.
-/

/-! ## A201992.P5728208344448399875

`A330029(record[A056555(A056555(n+1))])`
-/

namespace A201992.P5728208344448399875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A056555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330029 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A201992.P5728208344448399875

/-! ## A201992.P17212528162051917596

`∩[A135383(n+1), A368841(n+1)]`
-/

namespace A201992.P17212528162051917596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201992.P17212528162051917596

/-!
# A201993: Conjectured lower bound for the number of circles of radius 1 that can be packed into a circle of radius n.

The programs for A201993, there is no canonical definition to state claims against.
-/

/-! ## A201993.P1915554790636196975

`A003056(A162493(n)-floor(π*sqrt(n)))`
-/

namespace A201993.P1915554790636196975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A162493 n - ⌊Real.pi * Real.sqrt (n : ℝ)⌋).toNat

end

end A201993.P1915554790636196975

/-! ## A201993.P4679608883850812807

`A003056(xor(A105760(n+1), A162493(n)))`
-/

namespace A201993.P4679608883850812807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A105760 (n + 1)) (A162493 n)).toNat

end

end A201993.P4679608883850812807

/-! ## A201993.P9274551234398522860

`A003056(A162493(n)-n-A003056(n))`
-/

namespace A201993.P9274551234398522860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A162493 n - (n : ℤ) - A003056 n).toNat

end

end A201993.P9274551234398522860

/-! ## A201993.P13006479597432805359

`A000196(A061990(n+4)-A000027(3*n+1))`
-/

namespace A201993.P13006479597432805359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A061990 (n + 4) - A000027 (3 * n + 1)).toNat

end

end A201993.P13006479597432805359

/-! ## A201993.P2464521676868038798

`(n+1)²-A196162(a(n-1))` with `a(0)=1`
-/

namespace A201993.P2464521676868038798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) - A196162 (a (n - 1)).toNat

end

end A201993.P2464521676868038798

/-!
# A201996: The number of endofunctions on n points such that all recurrent elements have at most 3 preimages and all nonrecurrent elements have at most 2 preimages.

The programs for A201996, there is no canonical definition to state claims against.
-/

/-! ## A201996.P9331426858969583646

`A244042(A239368(n))`
-/

namespace A201996.P9331426858969583646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A239368 n).toNat

end

end A201996.P9331426858969583646

/-! ## A201996.P14479434369274217631

`A343027(A136221(n))-1`
-/

namespace A201996.P14479434369274217631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (A136221 n).toNat - 1

end

end A201996.P14479434369274217631

/-!
# A201997: a(n) is the decimal value of the binary vector used to select terms of A075058 whose sum is n.

The programs for A201997, there is no canonical definition to state claims against.
-/

/-! ## A201997.P13756786083608546343

`lt[A084938(A001358(n+5)), A256323(n+1)]`
-/

namespace A201997.P13756786083608546343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A001358 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201997.P13756786083608546343

/-! ## A201997.P10159172167570045402

`lt[A293606(A262956(n+1)), A162797(n+5)]`
-/

namespace A201997.P10159172167570045402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 (A262956 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162797 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201997.P10159172167570045402

/-! ## A201997.P8148685928714889643

`eq[1, A172090(A355302(3*n+1))]`
-/

namespace A201997.P8148685928714889643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 (A355302 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201997.P8148685928714889643

/-!
# A201999: Number of -1..1 circular arrays x(0..n+1) of n+2 elements with zero sums of x(i) and x(i)*x((i+1) mod (n+2)).

The programs for A201999, there is no canonical definition to state claims against.
-/

/-! ## A201999.P18389654787608813645

`A202006(∑[n+1])`
-/

namespace A201999.P18389654787608813645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201999.P18389654787608813645

/-! ## A201999.P14489184079071447591

`record[A202006(∑[A057979(n)])]`
-/

namespace A201999.P14489184079071447591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201999.P14489184079071447591

/-! ## A201999.P4803262347339280357

`record[A202006(A286157(n+1))]`
-/

namespace A201999.P4803262347339280357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201999.P4803262347339280357

/-! ## A201999.P17873644364088474957

`record[A202006(n+1)/A130850(n)]`
-/

namespace A201999.P17873644364088474957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202006 (n + 1) : ℚ) / (A130850 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201999.P17873644364088474957

/-! ## A201999.P17409750932429258393

`record[A202006(n+1)/A176151(n)]`
-/

namespace A201999.P17409750932429258393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202006 (n + 1) : ℚ) / (A176151 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201999.P17409750932429258393

