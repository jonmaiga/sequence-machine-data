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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A250400: Numerator of the harmonic mean of the first n octagonal numbers.

The programs for A250400, there is no canonical definition to state claims against.
-/

/-! ## A250400.P10506577517507601973

`(1+n)*A294512(n)`
-/

namespace A250400.P10506577517507601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A294512 n

end

end A250400.P10506577517507601973

/-! ## A250400.P305178452235473763

`A294512(n)*A332893(A103517(n))`
-/

namespace A250400.P305178452235473763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294512 n * A332893 (A103517 n).toNat

end

end A250400.P305178452235473763

/-! ## A250400.P2427610861091724324

`A294512(n)*A307011(A003215(n))`
-/

namespace A250400.P2427610861091724324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294512 n * A307011 (A003215 n).toNat

end

end A250400.P2427610861091724324

/-! ## A250400.P48129898553915623

`A294512(n)*A294519(A000096(n))`
-/

namespace A250400.P48129898553915623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294512 n * A294519 (A000096 n).toNat

end

end A250400.P48129898553915623

/-!
# A250402: Indices of zeros in A247149.

The programs for A250402, there is no canonical definition to state claims against.
-/

/-! ## A250402.P15901427122651054367

`eq[0, A247149(n)]`
-/

namespace A250402.P15901427122651054367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250402.P15901427122651054367

/-! ## A250402.P6868292636258656141

`lt[A247149(n), A054977(n)]`
-/

namespace A250402.P6868292636258656141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P6868292636258656141

/-! ## A250402.P7007757325640152105

`lt[A247149(n), acot(A195176(n))]`
-/

namespace A250402.P7007757325640152105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A195176 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A250402.P7007757325640152105

/-! ## A250402.P9216700879198606433

`lt[A247149(n), acot(A263267(n))]`
-/

namespace A250402.P9216700879198606433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A263267 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A250402.P9216700879198606433

/-! ## A250402.P1081756684368854891

`lt[A247149(n), A000041(C(2, n+2))]`
-/

namespace A250402.P1081756684368854891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P1081756684368854891

/-! ## A250402.P7113974545305952667

`lt[A247149(n), A007318(C(2, n+2))]`
-/

namespace A250402.P7113974545305952667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P7113974545305952667

/-! ## A250402.P11884679902022503277

`record[n-A247149(n)*A250403(n+1)]`
-/

namespace A250402.P11884679902022503277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A247149 n * A250403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250402.P11884679902022503277

/-! ## A250402.P8526016855261439305

`lt[A247149(n), A057427(A008619(n))]`
-/

namespace A250402.P8526016855261439305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P8526016855261439305

/-! ## A250402.P12606873662697262412

`lt[A247149(n), A057427(A028310(n))]`
-/

namespace A250402.P12606873662697262412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P12606873662697262412

/-! ## A250402.P1086231109295953340

`lt[A247149(n), A057427(A065033(n))]`
-/

namespace A250402.P1086231109295953340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P1086231109295953340

/-! ## A250402.P8692538548557137576

`lt[A247149(n), A057427(A065475(n+1))]`
-/

namespace A250402.P8692538548557137576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A065475 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P8692538548557137576

/-! ## A250402.P13771915001680927136

`lt[A247149(n), A057427((n+1)/A033677(n+1))]`
-/

namespace A250402.P13771915001680927136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A033677 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P13771915001680927136

/-! ## A250402.P5077752033951556420

`lt[A247149(n), A057427(A038722(n+1))]`
-/

namespace A250402.P5077752033951556420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A038722 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P5077752033951556420

/-! ## A250402.P13145810889343445444

`lt[A247149(n), 1/A000041(n)]`
-/

namespace A250402.P13145810889343445444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000041 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A250402.P13145810889343445444

/-! ## A250402.P8340302028464353551

`lt[A247149(n), A057427(A210959(n+1))]`
-/

namespace A250402.P8340302028464353551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A210959 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P8340302028464353551

/-! ## A250402.P9986380495674779482

`lt[A247149(n), A000035(A004280(n+1))]`
-/

namespace A250402.P9986380495674779482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P9986380495674779482

/-! ## A250402.P17194178411529570277

`lt[A247149(n), A019425(A008458(n))]`
-/

namespace A250402.P17194178411529570277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P17194178411529570277

/-! ## A250402.P1915222781206054465

`lt[A247149(n), A057427(A008486(n))]`
-/

namespace A250402.P1915222781206054465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P1915222781206054465

/-! ## A250402.P12504865161091916427

`lt[A247149(n), A167866(A175787(n+1))]`
-/

namespace A250402.P12504865161091916427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A175787 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250402.P12504865161091916427

/-!
# A250403: Indices of ones in A247149.

The programs for A250403, there is no canonical definition to state claims against.
-/

/-! ## A250403.P1247331091765747452

`eq[1, A247149(n)]`
-/

namespace A250403.P1247331091765747452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250403.P1247331091765747452

/-! ## A250403.P16018417058061081095

`lt[(A054977(n)-A247149(n))², 1]`
-/

namespace A250403.P16018417058061081095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n - A247149 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A250403.P16018417058061081095

/-! ## A250403.P13814119986169242055

`lt[(1-A247149(n))², A057427(n)]`
-/

namespace A250403.P13814119986169242055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A247149 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250403.P13814119986169242055

/-! ## A250403.P8525528224459870657

`lt[(1-A247149(n))², n/A016921(n)]`
-/

namespace A250403.P8525528224459870657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A247149 n) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A016921 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A250403.P8525528224459870657

/-! ## A250403.P6183089306370718518

`lt[(1-A247149(n))²*A080754(n+1), n]`
-/

namespace A250403.P6183089306370718518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A247149 n) ^ 2 * A080754 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A250403.P6183089306370718518

/-! ## A250403.P591876211007152640

`lt[(1-A247149(n))², n/A107152(n+1)]`
-/

namespace A250403.P591876211007152640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A247149 n) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A107152 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A250403.P591876211007152640

/-! ## A250403.P4636235932188868130

`lt[(1-A247149(n))², A005361(n+1)/(n+1)]`
-/

namespace A250403.P4636235932188868130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A247149 n) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A250403.P4636235932188868130

/-!
# A250404: Numbers k such that the set of all distinct values of phi of all divisors of k equals the set of all proper divisors of k+1 where phi is the Euler totient function (A000010).

The programs for A250404, there is no canonical definition to state claims against.
-/

/-! ## A250404.P11097373999468958417

`record[a(n-1)²]-1` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A250404.P11097373999468958417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A250404.P11097373999468958417

/-! ## A250404.P5725285652174666253

`(a(n-1)+1)²-1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A250404.P5725285652174666253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (a (n - 1) + 1) ^ 2 - 1

end

end A250404.P5725285652174666253

/-! ## A250404.P10540094423450154594

`(a(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A250404.P10540094423450154594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (a (n - 1) + 2) * a (n - 1)

end

end A250404.P10540094423450154594

/-!
# A250405: Numbers k such that all values of Euler phi (A000010) of all divisors of k are pairwise distinct and represent all proper divisors of k+1.

The programs for A250405, there is no canonical definition to state claims against.
-/

/-! ## A250405.P14188224847367608958

`A000051(A145112(n))-2`
-/

namespace A250405.P14188224847367608958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A145112 n).toNat - 2

end

end A250405.P14188224847367608958

/-!
# A250406: Values of B such that p = prime(n) satisfies (p-1)! == -1-B*p (mod p^2), i.e., p is a near-Wilson prime.

The programs for A250406, the canonical program `A250406.P11635683072405501755` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250406 has offset 1).

The definition of A250406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250406.P11635683072405501755

`A112660(n+1)%A008864(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A250406

/-- `A112660(n+1)%A008864(n+1)` -/
def P11635683072405501755.Spec : Prop :=
  ∀ n, P11635683072405501755.a n = A250406 (n + 1)

theorem P11635683072405501755.correct : P11635683072405501755.Spec := by
  intro n
  simp only [A250406, Nat.add_sub_cancel]

end A250406

/-! ## A250406.P5356810782225954551

`A112660(A008611(3*n))%A028815(n+1)`
-/

namespace A250406.P5356810782225954551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (A008611 (3 * n)).toNat) (A028815 (n + 1))

end

end A250406.P5356810782225954551

namespace A250406

/-- `A112660(A008611(3*n))%A028815(n+1)` -/
def P5356810782225954551.Spec : Prop :=
  ∀ n, P5356810782225954551.a n = A250406 (n + 1)

end A250406

/-! ## A250406.P17810544234875962093

`(A000040(n+1)-A002068(n+1))%A000040(n+1)`
-/

namespace A250406.P17810544234875962093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) - A002068 (n + 1)) (A000040 (n + 1))

end

end A250406.P17810544234875962093

namespace A250406

/-- `(A000040(n+1)-A002068(n+1))%A000040(n+1)` -/
def P17810544234875962093.Spec : Prop :=
  ∀ n, P17810544234875962093.a n = A250406 (n + 1)

end A250406

/-! ## A250406.P7033899342497125593

`(A161847(n+1)-A002068(n+1))%A161847(n+1)`
-/

namespace A250406.P7033899342497125593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1) - A002068 (n + 1)) (A161847 (n + 1))

end

end A250406.P7033899342497125593

namespace A250406

/-- `(A161847(n+1)-A002068(n+1))%A161847(n+1)` -/
def P7033899342497125593.Spec : Prop :=
  ∀ n, P7033899342497125593.a n = A250406 (n + 1)

end A250406

/-! ## A250406.P15453565808496585040

`(A330526(n+1)%A001248(n+1))%A008864(n+1)`
-/

namespace A250406.P15453565808496585040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A330526 (n + 1)) (A001248 (n + 1))) (A008864 (n + 1))

end

end A250406.P15453565808496585040

namespace A250406

/-- `(A330526(n+1)%A001248(n+1))%A008864(n+1)` -/
def P15453565808496585040.Spec : Prop :=
  ∀ n, P15453565808496585040.a n = A250406 (n + 1)

end A250406

/-!
# A250409: Palindromic in bases 10 and 24.

The programs for A250409, there is no canonical definition to state claims against.
-/

/-! ## A250409.P6351258159522138547

`A004273(A324091(n+1))+n`
-/

namespace A250409.P6351258159522138547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A324091 (n + 1)).toNat + (n : ℤ)

end

end A250409.P6351258159522138547

/-!
# A250410: Numbers palindromic in bases 10 and 25.

The programs for A250410, there is no canonical definition to state claims against.
-/

/-! ## A250410.P16564822191232661507

`A097855(n+1)%A039696(A072337(n))`
-/

namespace A250410.P16564822191232661507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097855 (n + 1)) (A039696 (A072337 n).toNat)

end

end A250410.P16564822191232661507

/-!
# A250411: Palindromic in bases 10 and 27.

The programs for A250411, there is no canonical definition to state claims against.
-/

/-! ## A250411.P16669159295458126585

`A370052(A151766(n+1))`
-/

namespace A250411.P16669159295458126585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370052 (A151766 (n + 1)).toNat

end

end A250411.P16669159295458126585

/-!
# A250412: Palindromic in bases 10 and 36.

The programs for A250412, there is no canonical definition to state claims against.
-/

/-! ## A250412.P13620071862247640235

`∩[A023755(n+1), A201061(n+1)]`
-/

namespace A250412.P13620071862247640235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250412.P13620071862247640235

/-! ## A250412.P3337482728299788974

`A201064(n+1)%A278590(A070941(n)-A010059(n))`
-/

namespace A250412.P3337482728299788974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201064 (n + 1)) (A278590 (A070941 n - A010059 n).toNat)

end

end A250412.P3337482728299788974

/-! ## A250412.P13795324154581104887

`A201060(A043320(n+1))`
-/

namespace A250412.P13795324154581104887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201060 (A043320 (n + 1)).toNat

end

end A250412.P13795324154581104887

/-! ## A250412.P2939498993829091923

`A201060(A044917(n+1))`
-/

namespace A250412.P2939498993829091923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201060 (A044917 (n + 1)).toNat

end

end A250412.P2939498993829091923

/-! ## A250412.P4354577284367667176

`A201060(A055645(n+1))`
-/

namespace A250412.P4354577284367667176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201060 (A055645 (n + 1)).toNat

end

end A250412.P4354577284367667176

/-!
# A250413: Number of length n+1 0..2 arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250413, there is no canonical definition to state claims against.
-/

/-! ## A250413.P11287325350381999702

`A250419(∑[n+2])`
-/

namespace A250413.P11287325350381999702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250413.P11287325350381999702

/-! ## A250413.P6510294925547721925

`record[A250419(A000096(A116549(n)))]`
-/

namespace A250413.P6510294925547721925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000096 (A116549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250413.P6510294925547721925

/-! ## A250413.P11929558875677511946

`record[A250419(A000096(A133310(n)))]`
-/

namespace A250413.P11929558875677511946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250413.P11929558875677511946

/-! ## A250413.P1398394065948469332

`record[A250419(A000096(A002260(n+1)))]`
-/

namespace A250413.P1398394065948469332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250413.P1398394065948469332

/-! ## A250413.P9697737556664366528

`A250419(A000096(n+1))%A250414(n+1)`
-/

namespace A250413.P9697737556664366528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250419 (A000096 (n + 1)).toNat) (A250414 (n + 1))

end

end A250413.P9697737556664366528

/-!
# A250414: Number of length n+1 0..3 arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250414, there is no canonical definition to state claims against.
-/

/-! ## A250414.P7995244433165861057

`A250419(∑[n+3]+1)`
-/

namespace A250414.P7995244433165861057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250414.P7995244433165861057

/-!
# A250415: Number of length n+1 0..4 arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250415, there is no canonical definition to state claims against.
-/

/-! ## A250415.P16535500636386915055

`A250419(A141214(n+1))`
-/

namespace A250415.P16535500636386915055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A141214 (n + 1)).toNat

end

end A250415.P16535500636386915055

/-! ## A250415.P12975611399055072374

`A250419(A027379(n+2))`
-/

namespace A250415.P12975611399055072374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A027379 (n + 2)).toNat

end

end A250415.P12975611399055072374

/-! ## A250415.P6452731004771803645

`A250419(A055998(n+2))`
-/

namespace A250415.P6452731004771803645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A055998 (n + 2)).toNat

end

end A250415.P6452731004771803645

/-! ## A250415.P16930733079779149535

`A250419(A155212(n)+5)`
-/

namespace A250415.P16930733079779149535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A155212 n + 5).toNat

end

end A250415.P16930733079779149535

/-! ## A250415.P11148426553953171101

`A250419(A056000(n)+7)`
-/

namespace A250415.P11148426553953171101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A056000 n + 7).toNat

end

end A250415.P11148426553953171101

/-!
# A250416: Number of length n+1 0..5 arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250416, there is no canonical definition to state claims against.
-/

/-! ## A250416.P2705571225453550915

`A250419(A046691(n+3))`
-/

namespace A250416.P2705571225453550915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A046691 (n + 3)).toNat

end

end A250416.P2705571225453550915

/-! ## A250416.P12776333893179656635

`A250419(eq[2, A092921(n)])`
-/

namespace A250416.P12776333893179656635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250416.P12776333893179656635

/-! ## A250416.P4481853648907075687

`A250419(Δ[A023545(n+1)])`
-/

namespace A250416.P4481853648907075687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (f1 (n + 1) - f1 n).toNat

end

end A250416.P4481853648907075687

/-! ## A250416.P2903659424520531369

`A250419(A056000(n+1)+6)`
-/

namespace A250416.P2903659424520531369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A056000 (n + 1) + 6).toNat

end

end A250416.P2903659424520531369

/-! ## A250416.P14047677338316072002

`A250419(Δ[A055831(n+4)]+1)`
-/

namespace A250416.P14047677338316072002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (f1 (n + 1) - f1 n + 1).toNat

end

end A250416.P14047677338316072002

/-!
# A250417: Number of length n+1 0..6 arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250417, there is no canonical definition to state claims against.
-/

/-! ## A250417.P10642002150150083792

`A250419(A052905(n+3))`
-/

namespace A250417.P10642002150150083792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A052905 (n + 3)).toNat

end

end A250417.P10642002150150083792

/-! ## A250417.P14301049295389579688

`A250419(Δ[A055831(n+5)])`
-/

namespace A250417.P14301049295389579688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (f1 (n + 1) - f1 n).toNat

end

end A250417.P14301049295389579688

/-! ## A250417.P15291984230984813999

`A250419(A155212(n+2)+3)`
-/

namespace A250417.P15291984230984813999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A155212 (n + 2) + 3).toNat

end

end A250417.P15291984230984813999

/-! ## A250417.P2501876176680842125

`A250419(A046691(n+4)-1)`
-/

namespace A250417.P2501876176680842125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A046691 (n + 4) - 1).toNat

end

end A250417.P2501876176680842125

/-! ## A250417.P2746825360281693295

`A250419(A027379(n+4)-2)`
-/

namespace A250417.P2746825360281693295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A027379 (n + 4) - 2).toNat

end

end A250417.P2746825360281693295

/-!
# A250418: Number of length n+1 0..7 arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250418, there is no canonical definition to state claims against.
-/

/-! ## A250418.P7545145936093848350

`A250419(A055999(n+4))`
-/

namespace A250418.P7545145936093848350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A055999 (n + 4)).toNat

end

end A250418.P7545145936093848350

/-! ## A250418.P3477764507950138038

`A250419(A052905(n+4)-1)`
-/

namespace A250418.P3477764507950138038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A052905 (n + 4) - 1).toNat

end

end A250418.P3477764507950138038

/-! ## A250418.P13321184882676132042

`A250419(A056000(n+3)+4)`
-/

namespace A250418.P13321184882676132042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A056000 (n + 3) + 4).toNat

end

end A250418.P13321184882676132042

/-! ## A250418.P13882649971533889322

`A250419(A000096(n+6)-5)`
-/

namespace A250418.P13882649971533889322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000096 (n + 6) - 5).toNat

end

end A250418.P13882649971533889322

/-! ## A250418.P327536811517558583

`A250419(A000217(n+7)-6)`
-/

namespace A250418.P327536811517558583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000217 (n + 7) - 6).toNat

end

end A250418.P327536811517558583

/-!
# A250420: Number of length 3+1 0..n arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250420, the canonical program `A250420.P16656147152026187402` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250420 has offset 1).

The definition of A250420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250420.P12497105568080659436

`ogf((10+8x+5x^2+4x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A250420.P12497105568080659436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 8, 5, 4, -1] [1, -3, 2, 2, -3, 1] n

end

end A250420.P12497105568080659436

namespace A250420

/-- `ogf((10+8x+5x^2+4x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P12497105568080659436.Spec : Prop :=
  ∀ n, P12497105568080659436.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P16656147152026187402

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=10, a(1)=38, a(2)=99, a(3)=205, a(4)=370`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A250420

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P16656147152026187402.Spec : Prop :=
  ∀ n, P16656147152026187402.a n = A250420 (n + 1)

theorem P16656147152026187402.correct : P16656147152026187402.Spec := by
  intro n
  simp only [A250420, Nat.add_sub_cancel]

end A250420

/-! ## A250420.P3224781759670689057

`∑[A108100(n+1)-A032528(n+1)]+1`
-/

namespace A250420.P3224781759670689057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108100 (n + 1) - A032528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A250420.P3224781759670689057

namespace A250420

/-- `∑[A108100(n+1)-A032528(n+1)]+1` -/
def P3224781759670689057.Spec : Prop :=
  ∀ n, P3224781759670689057.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P2940356665107716037

`A299290(n+1)+∑[log2(gcd(2, n))]`
-/

namespace A250420.P2940356665107716037
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A299290 (n + 1) : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250420.P2940356665107716037

namespace A250420

/-- `A299290(n+1)+∑[log2(gcd(2, n))]` -/
def P2940356665107716037.Spec : Prop :=
  ∀ n, P2940356665107716037.a n = (A250420 (n + 1) : ℝ)

end A250420

/-! ## A250420.P5666132439812853807

`A005898(n+1)+∑[∑[or(1, n)]]`
-/

namespace A250420.P5666132439812853807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A250420.P5666132439812853807

namespace A250420

/-- `A005898(n+1)+∑[∑[or(1, n)]]` -/
def P5666132439812853807.Spec : Prop :=
  ∀ n, P5666132439812853807.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P3805523516733683321

`∑[A054275(n+1)+(n+1)²]+1`
-/

namespace A250420.P3805523516733683321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A250420.P3805523516733683321

namespace A250420

/-- `∑[A054275(n+1)+(n+1)²]+1` -/
def P3805523516733683321.Spec : Prop :=
  ∀ n, P3805523516733683321.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P7991551544720950508

`A096000(n+1)+A011934(n)`
-/

namespace A250420.P7991551544720950508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 (n + 1) + A011934 n

end

end A250420.P7991551544720950508

namespace A250420

/-- `A096000(n+1)+A011934(n)` -/
def P7991551544720950508.Spec : Prop :=
  ∀ n, P7991551544720950508.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P8152782052691545648

`A299290(n+1)+A008619(n)`
-/

namespace A250420.P8152782052691545648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299290 (n + 1) + A008619 n

end

end A250420.P8152782052691545648

namespace A250420

/-- `A299290(n+1)+A008619(n)` -/
def P8152782052691545648.Spec : Prop :=
  ∀ n, P8152782052691545648.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P10467665520165349422

`A096000(n+1)+∑[A032528(n)]`
-/

namespace A250420.P10467665520165349422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250420.P10467665520165349422

namespace A250420

/-- `A096000(n+1)+∑[A032528(n)]` -/
def P10467665520165349422.Spec : Prop :=
  ∀ n, P10467665520165349422.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P10805620680634301408

`A011934(n)+Δ[A117066(n+1)]`
-/

namespace A250420.P10805620680634301408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n + (f1 (n + 1) - f1 n)

end

end A250420.P10805620680634301408

namespace A250420

/-- `A011934(n)+Δ[A117066(n+1)]` -/
def P10805620680634301408.Spec : Prop :=
  ∀ n, P10805620680634301408.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P12284047722521476011

`Δ[A117066(n+1)]+∑[A032528(n)]`
-/

namespace A250420.P12284047722521476011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A250420.P12284047722521476011

namespace A250420

/-- `Δ[A117066(n+1)]+∑[A032528(n)]` -/
def P12284047722521476011.Spec : Prop :=
  ∀ n, P12284047722521476011.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P7896763916518423518

`A063490(n+2)-∑[A007590(n+1)]`
-/

namespace A250420.P7896763916518423518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250420.P7896763916518423518

namespace A250420

/-- `A063490(n+2)-∑[A007590(n+1)]` -/
def P7896763916518423518.Spec : Prop :=
  ∀ n, P7896763916518423518.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P4310827038959673411

`2*A299288(n+1)-A063491(n+2)`
-/

namespace A250420.P4310827038959673411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299288 (n + 1) - A063491 (n + 2)

end

end A250420.P4310827038959673411

namespace A250420

/-- `2*A299288(n+1)-A063491(n+2)` -/
def P4310827038959673411.Spec : Prop :=
  ∀ n, P4310827038959673411.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P12156558910148336865

`A063491(n+2)-2*A212980(n+2)`
-/

namespace A250420.P12156558910148336865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 2) - 2 * A212980 (n + 2)

end

end A250420.P12156558910148336865

namespace A250420

/-- `A063491(n+2)-2*A212980(n+2)` -/
def P12156558910148336865.Spec : Prop :=
  ∀ n, P12156558910148336865.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P6748965719500354310

`round(A005898(n+1)+A001845(n+1)/8)`
-/

namespace A250420.P6748965719500354310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005898 (n + 1) : ℚ) + (A001845 (n + 1) : ℚ) / 8)

end

end A250420.P6748965719500354310

namespace A250420

/-- `round(A005898(n+1)+A001845(n+1)/8)` -/
def P6748965719500354310.Spec : Prop :=
  ∀ n, P6748965719500354310.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P7850139964019049859

`A212960(n+1)+A212968(n+1)+A212968(n)`
-/

namespace A250420.P7850139964019049859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 (n + 1) + (A212968 (n + 1) + A212968 n)

end

end A250420.P7850139964019049859

namespace A250420

/-- `A212960(n+1)+A212968(n+1)+A212968(n)` -/
def P7850139964019049859.Spec : Prop :=
  ∀ n, P7850139964019049859.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P15968570417650397018

`Δ[A071270(n+1)-A105636(n)]`
-/

namespace A250420.P15968570417650397018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1) - A105636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250420.P15968570417650397018

namespace A250420

/-- `Δ[A071270(n+1)-A105636(n)]` -/
def P15968570417650397018.Spec : Prop :=
  ∀ n, P15968570417650397018.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P4448908433527936086

`A131941(n+1)+Δ[A037270(n+1)]`
-/

namespace A250420.P4448908433527936086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (n + 1) + (f1 (n + 1) - f1 n)

end

end A250420.P4448908433527936086

namespace A250420

/-- `A131941(n+1)+Δ[A037270(n+1)]` -/
def P4448908433527936086.Spec : Prop :=
  ∀ n, P4448908433527936086.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P6552028632902501068

`A096000(n+1)+∑[A033436(2*n)]`
-/

namespace A250420.P6552028632902501068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250420.P6552028632902501068

namespace A250420

/-- `A096000(n+1)+∑[A033436(2*n)]` -/
def P6552028632902501068.Spec : Prop :=
  ∀ n, P6552028632902501068.a n = A250420 (n + 1)

end A250420

/-! ## A250420.P11063546335825677168

`A131941(n+1)+Δ[A000217((n+1)²)]`
-/

namespace A250420.P11063546335825677168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (n + 1) + (f1 (n + 1) - f1 n)

end

end A250420.P11063546335825677168

namespace A250420

/-- `A131941(n+1)+Δ[A000217((n+1)²)]` -/
def P11063546335825677168.Spec : Prop :=
  ∀ n, P11063546335825677168.a n = A250420 (n + 1)

end A250420

/-!
# A250421: Number of length 4+1 0..n arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250421, the canonical program `A250421.P3657257461155305244` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250421 has offset 1).

The definition of A250421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250421.P3657257461155305244

`ogf((20+45x+96x^2+77x^3+36x^4-48x^5-44x^6-37x^7-x^9)/(1-4x+6x^2-6x^3+9x^4-12x^5+9x^6-6x^7+6x^8-4x^9+x^10))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A250421

/-- `ogf((20+45x+96x^2+77x^3+36x^4-48x^5-44x^6-37x^7-x^9)/(1-4x+6x^2-6x^3+9x^4-12x^5+9x^6-6x^7+6x^8-4x^9+x^10))` -/
def P3657257461155305244.Spec : Prop :=
  ∀ n, P3657257461155305244.a n = A250421 (n + 1)

theorem P3657257461155305244.correct : P3657257461155305244.Spec := by
  intro n
  simp only [A250421, Nat.add_sub_cancel]

end A250421

/-! ## A250421.P4364940557432196990

`A250419(A141214(n)+7)`
-/

namespace A250421.P4364940557432196990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A141214 n + 7).toNat

end

end A250421.P4364940557432196990

namespace A250421

/-- `A250419(A141214(n)+7)` -/
def P4364940557432196990.Spec : Prop :=
  ∀ n, P4364940557432196990.a n = A250421 (n + 1)

end A250421

/-! ## A250421.P7324221330908808805

`A250419(A052905(n)+9)`
-/

namespace A250421.P7324221330908808805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A052905 n + 9).toNat

end

end A250421.P7324221330908808805

namespace A250421

/-- `A250419(A052905(n)+9)` -/
def P7324221330908808805.Spec : Prop :=
  ∀ n, P7324221330908808805.a n = A250421 (n + 1)

end A250421

/-! ## A250421.P14757436715093917238

`A250419(A055999(n)+10)`
-/

namespace A250421.P14757436715093917238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A055999 n + 10).toNat

end

end A250421.P14757436715093917238

namespace A250421

/-- `A250419(A055999(n)+10)` -/
def P14757436715093917238.Spec : Prop :=
  ∀ n, P14757436715093917238.a n = A250421 (n + 1)

end A250421

/-! ## A250421.P11754639715597440048

`A250419(Δ[A005586(n)]+5)`
-/

namespace A250421.P11754639715597440048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (f1 (n + 1) - f1 n + 5).toNat

end

end A250421.P11754639715597440048

namespace A250421

/-- `A250419(Δ[A005586(n)]+5)` -/
def P11754639715597440048.Spec : Prop :=
  ∀ n, P11754639715597440048.a n = A250421 (n + 1)

end A250421

/-!
# A250422: Number of length 5+1 0..n arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250422, there is no canonical definition to state claims against.
-/

/-! ## A250422.P12850447826361979117

`A250419(A167499(n+3))`
-/

namespace A250422.P12850447826361979117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167499 (n + 3)).toNat

end

end A250422.P12850447826361979117

/-! ## A250422.P11747648224383319884

`A250419(A167614(n+3)+2)`
-/

namespace A250422.P11747648224383319884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167614 (n + 3) + 2).toNat

end

end A250422.P11747648224383319884

/-! ## A250422.P7592849543803034154

`record[A250419(A167499(A008611(n)))]`
-/

namespace A250422.P7592849543803034154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167499 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250422.P7592849543803034154

/-! ## A250422.P8690983099667167861

`record[A250419(A167499(A008619(n)))]`
-/

namespace A250422.P8690983099667167861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167499 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250422.P8690983099667167861

/-! ## A250422.P15778425116026034355

`record[A250419(A167499(A008621(n)))]`
-/

namespace A250422.P15778425116026034355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167499 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250422.P15778425116026034355

/-!
# A250423: Number of length 6+1 0..n arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250423, there is no canonical definition to state claims against.
-/

/-! ## A250423.P11723400729154438369

`A250419(A167499(n+4)+1)`
-/

namespace A250423.P11723400729154438369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167499 (n + 4) + 1).toNat

end

end A250423.P11723400729154438369

/-! ## A250423.P9172563253677464083

`A250419(A000124(n+5)+5)`
-/

namespace A250423.P9172563253677464083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000124 (n + 5) + 5).toNat

end

end A250423.P9172563253677464083

/-! ## A250423.P1504056663165525881

`A250419(A000096(n+4)+7)`
-/

namespace A250423.P1504056663165525881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000096 (n + 4) + 7).toNat

end

end A250423.P1504056663165525881

/-! ## A250423.P11730537790688376448

`A250419(A000217(n+5)+6)`
-/

namespace A250423.P11730537790688376448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000217 (n + 5) + 6).toNat

end

end A250423.P11730537790688376448

/-! ## A250423.P9524561634272845419

`A250419(A046691(n+3)+10)`
-/

namespace A250423.P9524561634272845419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A046691 (n + 3) + 10).toNat

end

end A250423.P9524561634272845419

/-!
# A250424: Number of length 7+1 0..n arrays with the sum of the minimum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250424, there is no canonical definition to state claims against.
-/

/-! ## A250424.P7026843192856875868

`A250419(A167487(n+5))`
-/

namespace A250424.P7026843192856875868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A167487 (n + 5)).toNat

end

end A250424.P7026843192856875868

/-! ## A250424.P11628697993585723338

`A250419(A000217(n+6)+7)`
-/

namespace A250424.P11628697993585723338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000217 (n + 6) + 7).toNat

end

end A250424.P11628697993585723338

/-! ## A250424.P13939533857364719998

`A250419(A046691(n+4)+11)`
-/

namespace A250424.P13939533857364719998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A046691 (n + 4) + 11).toNat

end

end A250424.P13939533857364719998

/-! ## A250424.P13348821845251649105

`A250419(A052905(n+3)+12)`
-/

namespace A250424.P13348821845251649105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A052905 (n + 3) + 12).toNat

end

end A250424.P13348821845251649105

/-! ## A250424.P1008141492638621892

`A250419(A000124(n+7)-(n+1))`
-/

namespace A250424.P1008141492638621892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250419 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A250424.P1008141492638621892

/-!
# A250425: Number of (n+1) X (n+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250425, there is no canonical definition to state claims against.
-/

/-! ## A250425.P8708689220556882075

`A250432((n+1)²+n²)`
-/

namespace A250425.P8708689220556882075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 ((n + 1) ^ 2 + n ^ 2)

end

end A250425.P8708689220556882075

/-! ## A250425.P223452437890542934

`lcm(2, A250432(A001844(n)))`
-/

namespace A250425.P223452437890542934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250432 (A001844 n).toNat)

end

end A250425.P223452437890542934

/-! ## A250425.P3353183364990392380

`A018224(n+2)*A241530(n+2)`
-/

namespace A250425.P3353183364990392380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018224 (n + 2) * A241530 (n + 2)

end

end A250425.P3353183364990392380

/-! ## A250425.P13040650666356831046

`and(-A002024(n+1), A250432(A001844(n)))`
-/

namespace A250425.P13040650666356831046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A002024 (n + 1)) (A250432 (A001844 n).toNat)

end

end A250425.P13040650666356831046

/-! ## A250425.P3025486393560704231

`A250432(A001844(n))+char[A202092(n+1)]`
-/

namespace A250425.P3025486393560704231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202092 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A250425.P3025486393560704231

/-!
# A250426: Number of (n+1)X(2+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250426, the canonical program `A250426.P3029081105641093597` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250426 has offset 1).

The definition of A250426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250426.P3029081105641093597

`A008805(n+2)*A008805(n+3)*A002620(n+4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A250426

/-- `A008805(n+2)*A008805(n+3)*A002620(n+4)` -/
def P3029081105641093597.Spec : Prop :=
  ∀ n, P3029081105641093597.a n = A250426 (n + 1)

theorem P3029081105641093597.correct : P3029081105641093597.Spec := by
  intro n
  simp only [A250426, Nat.add_sub_cancel]

end A250426

/-! ## A250426.P9526386726325867632

`(A008805(n+1)+A008805(n+2))*A008805(n+2)*A008805(n+3)`
-/

namespace A250426.P9526386726325867632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 (n + 1) + A008805 (n + 2)) * (A008805 (n + 2) * A008805 (n + 3))

end

end A250426.P9526386726325867632

namespace A250426

/-- `(A008805(n+1)+A008805(n+2))*A008805(n+2)*A008805(n+3)` -/
def P9526386726325867632.Spec : Prop :=
  ∀ n, P9526386726325867632.a n = A250426 (n + 1)

end A250426

/-! ## A250426.P12953854585039574627

`A008642(2*(n+2))*A008805(n+2)*A008805(n+3)`
-/

namespace A250426.P12953854585039574627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (2 * (n + 2)) * A008805 (n + 2) * A008805 (n + 3)

end

end A250426.P12953854585039574627

namespace A250426

/-- `A008642(2*(n+2))*A008805(n+2)*A008805(n+3)` -/
def P12953854585039574627.Spec : Prop :=
  ∀ n, P12953854585039574627.a n = A250426 (n + 1)

end A250426

/-! ## A250426.P16081730644940223472

`A208142(A167614(n+2))`
-/

namespace A250426.P16081730644940223472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A167614 (n + 2)).toNat

end

end A250426.P16081730644940223472

namespace A250426

/-- `A208142(A167614(n+2))` -/
def P16081730644940223472.Spec : Prop :=
  ∀ n, P16081730644940223472.a n = A250426 (n + 1)

end A250426

/-! ## A250426.P10896186130256263947

`A208142(eq[3, A002262(n)])`
-/

namespace A250426.P10896186130256263947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250426.P10896186130256263947

namespace A250426

/-- `A208142(eq[3, A002262(n)])` -/
def P10896186130256263947.Spec : Prop :=
  ∀ n, P10896186130256263947.a n = A250426 (n + 1)

end A250426

/-! ## A250426.P17798220152577181213

`A208142(A340266(n+2)+1)`
-/

namespace A250426.P17798220152577181213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A340266 (n + 2) + 1).toNat

end

end A250426.P17798220152577181213

namespace A250426

/-- `A208142(A340266(n+2)+1)` -/
def P17798220152577181213.Spec : Prop :=
  ∀ n, P17798220152577181213.a n = A250426 (n + 1)

end A250426

/-! ## A250426.P12401530749517372888

`A208142(A000217(n+3)+3)`
-/

namespace A250426.P12401530749517372888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A000217 (n + 3) + 3).toNat

end

end A250426.P12401530749517372888

namespace A250426

/-- `A208142(A000217(n+3)+3)` -/
def P12401530749517372888.Spec : Prop :=
  ∀ n, P12401530749517372888.a n = A250426 (n + 1)

end A250426

/-! ## A250426.P9413283321067206531

`A208142(A167499(n)+A005408(n+1))`
-/

namespace A250426.P9413283321067206531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A167499 n + A005408 (n + 1)).toNat

end

end A250426.P9413283321067206531

namespace A250426

/-- `A208142(A167499(n)+A005408(n+1))` -/
def P9413283321067206531.Spec : Prop :=
  ∀ n, P9413283321067206531.a n = A250426 (n + 1)

end A250426

/-!
# A250427: Number of (n+1)X(3+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250427, the canonical program `A250427.P17058954788119591334` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250427 has offset 1).

The definition of A250427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250427.P9543788776501998660

`A250428(n+1)²/A250429(n+1)`
-/

namespace A250427.P9543788776501998660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) ^ 2 : ℚ) / (A250429 (n + 1) : ℚ)

end

end A250427.P9543788776501998660

namespace A250427

/-- `A250428(n+1)²/A250429(n+1)` -/
def P9543788776501998660.Spec : Prop :=
  ∀ n, P9543788776501998660.a n = (A250427 (n + 1) : ℚ)

end A250427

/-! ## A250427.P9674875661582106850

`A250437(n+1)²/A250438(n+1)`
-/

namespace A250427.P9674875661582106850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250437 (n + 1) ^ 2 : ℚ) / (A250438 (n + 1) : ℚ)

end

end A250427.P9674875661582106850

namespace A250427

/-- `A250437(n+1)²/A250438(n+1)` -/
def P9674875661582106850.Spec : Prop :=
  ∀ n, P9674875661582106850.a n = (A250427 (n + 1) : ℚ)

end A250427

/-! ## A250427.P17975206897720812757

`A250426(n+1)/A250428(n+1)*A250437(n+1)`
-/

namespace A250427.P17975206897720812757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ) * (A250437 (n + 1) : ℚ)

end

end A250427.P17975206897720812757

namespace A250427

/-- `A250426(n+1)/A250428(n+1)*A250437(n+1)` -/
def P17975206897720812757.Spec : Prop :=
  ∀ n, P17975206897720812757.a n = (A250427 (n + 1) : ℚ)

end A250427

/-! ## A250427.P6410463854053506876

`A250430(n+1)*A250437(n+1)/A251969(n+1)`
-/

namespace A250427.P6410463854053506876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) * A250437 (n + 1) : ℚ) / (A251969 (n + 1) : ℚ)

end

end A250427.P6410463854053506876

namespace A250427

/-- `A250430(n+1)*A250437(n+1)/A251969(n+1)` -/
def P6410463854053506876.Spec : Prop :=
  ∀ n, P6410463854053506876.a n = (A250427 (n + 1) : ℚ)

end A250427

/-! ## A250427.P17058954788119591334

`(A005994(n+2)-A096338(n))²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A250427

/-- `(A005994(n+2)-A096338(n))²` -/
def P17058954788119591334.Spec : Prop :=
  ∀ n, P17058954788119591334.a n = A250427 (n + 1)

theorem P17058954788119591334.correct : P17058954788119591334.Spec := by
  intro n
  simp only [A250427, Nat.add_sub_cancel]

end A250427

/-! ## A250427.P2582288230768542503

`(A008805(n+2)*A008805(n+3))²`
-/

namespace A250427.P2582288230768542503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 (n + 2) * A008805 (n + 3)) ^ 2

end

end A250427.P2582288230768542503

namespace A250427

/-- `(A008805(n+2)*A008805(n+3))²` -/
def P2582288230768542503.Spec : Prop :=
  ∀ n, P2582288230768542503.a n = A250427 (n + 1)

end A250427

/-! ## A250427.P3515265909506696116

`(A302647(n+5)/2)²`
-/

namespace A250427.P3515265909506696116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A302647 (n + 5) : ℚ) / 2) ^ 2

end

end A250427.P3515265909506696116

namespace A250427

/-- `(A302647(n+5)/2)²` -/
def P3515265909506696116.Spec : Prop :=
  ∀ n, P3515265909506696116.a n = (A250427 (n + 1) : ℚ)

end A250427

/-! ## A250427.P1321400380940213243

`record[A096948(n+3)²]`
-/

namespace A250427.P1321400380940213243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096948 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250427.P1321400380940213243

namespace A250427

/-- `record[A096948(n+3)²]` -/
def P1321400380940213243.Spec : Prop :=
  ∀ n, P1321400380940213243.a n = A250427 (n + 1)

end A250427

/-!
# A250428: Number of (n+1)X(4+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250428, the canonical program `A250428.P396647338487410522` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250428 has offset 1).

The definition of A250428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250428.P396647338487410522

`sqrt(A250427(n+1)*A250429(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A250428

/-- `sqrt(A250427(n+1)*A250429(n+1))` -/
def P396647338487410522.Spec : Prop :=
  ∀ n, P396647338487410522.a n = (A250428 (n + 1) : ℝ)

end A250428

/-! ## A250428.P1727105814231835597

`A250426(n+1)/A250427(n+1)*A250437(n+1)`
-/

namespace A250428.P1727105814231835597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) * (A250437 (n + 1) : ℚ)

end

end A250428.P1727105814231835597

namespace A250428

/-- `A250426(n+1)/A250427(n+1)*A250437(n+1)` -/
def P1727105814231835597.Spec : Prop :=
  ∀ n, P1727105814231835597.a n = (A250428 (n + 1) : ℚ)

end A250428

/-! ## A250428.P10598799894163839600

`sqrt((A058187(n+2)*A058187(n+3))²*A250427(n+1))`
-/

namespace A250428.P10598799894163839600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A058187 (n + 2) * A058187 (n + 3)) ^ 2 * A250427 (n + 1) : ℝ)

end

end A250428.P10598799894163839600

namespace A250428

/-- `sqrt((A058187(n+2)*A058187(n+3))²*A250427(n+1))` -/
def P10598799894163839600.Spec : Prop :=
  ∀ n, P10598799894163839600.a n = (A250428 (n + 1) : ℝ)

end A250428

/-! ## A250428.P3783504478315331076

`A250432(A374004(n+1))`
-/

namespace A250428.P3783504478315331076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A374004 (n + 1)).toNat

end

end A250428.P3783504478315331076

namespace A250428

/-- `A250432(A374004(n+1))` -/
def P3783504478315331076.Spec : Prop :=
  ∀ n, P3783504478315331076.a n = A250428 (n + 1)

end A250428

/-! ## A250428.P17663022586493817129

`A250432(A167614(n+2)+1)`
-/

namespace A250428.P17663022586493817129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A167614 (n + 2) + 1).toNat

end

end A250428.P17663022586493817129

namespace A250428

/-- `A250432(A167614(n+2)+1)` -/
def P17663022586493817129.Spec : Prop :=
  ∀ n, P17663022586493817129.a n = A250428 (n + 1)

end A250428

/-!
# A250429: Number of (n+1)X(5+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250429, the canonical program `A250429.P13624110313230034880` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250429 has offset 1).

The definition of A250429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250429.P12345423651373380077

`A250428(n+1)²/A250427(n+1)`
-/

namespace A250429.P12345423651373380077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) ^ 2 : ℚ) / (A250427 (n + 1) : ℚ)

end

end A250429.P12345423651373380077

namespace A250429

/-- `A250428(n+1)²/A250427(n+1)` -/
def P12345423651373380077.Spec : Prop :=
  ∀ n, P12345423651373380077.a n = (A250429 (n + 1) : ℚ)

end A250429

/-! ## A250429.P3320477467657854992

`A250430(n+1)²/A250431(n+1)`
-/

namespace A250429.P3320477467657854992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) ^ 2 : ℚ) / (A250431 (n + 1) : ℚ)

end

end A250429.P3320477467657854992

namespace A250429

/-- `A250430(n+1)²/A250431(n+1)` -/
def P3320477467657854992.Spec : Prop :=
  ∀ n, P3320477467657854992.a n = (A250429 (n + 1) : ℚ)

end A250429

/-! ## A250429.P13624110313230034880

`A001249(A008619(n+1))*A001249(A008619(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A250429

/-- `A001249(A008619(n+1))*A001249(A008619(n))` -/
def P13624110313230034880.Spec : Prop :=
  ∀ n, P13624110313230034880.a n = A250429 (n + 1)

theorem P13624110313230034880.correct : P13624110313230034880.Spec := by
  intro n
  simp only [A250429, Nat.add_sub_cancel]

end A250429

/-! ## A250429.P4418969486733851663

`(A058187(n+2)*A058187(n+3))²`
-/

namespace A250429.P4418969486733851663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058187 (n + 2) * A058187 (n + 3)) ^ 2

end

end A250429.P4418969486733851663

namespace A250429

/-- `(A058187(n+2)*A058187(n+3))²` -/
def P4418969486733851663.Spec : Prop :=
  ∀ n, P4418969486733851663.a n = A250429 (n + 1)

end A250429

/-! ## A250429.P18188357672056873117

`A251969(n+1)²/A250440(n+1)`
-/

namespace A250429.P18188357672056873117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251969 (n + 1) ^ 2 : ℚ) / (A250440 (n + 1) : ℚ)

end

end A250429.P18188357672056873117

namespace A250429

/-- `A251969(n+1)²/A250440(n+1)` -/
def P18188357672056873117.Spec : Prop :=
  ∀ n, P18188357672056873117.a n = (A250429 (n + 1) : ℚ)

end A250429

/-!
# A250430: Number of (n+1)X(6+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250430, the canonical program `A250430.P15424429207822931623` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250430 has offset 1).

The definition of A250430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250430.P15424429207822931623

`sqrt(A250429(n+1)*A250431(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A250430

/-- `sqrt(A250429(n+1)*A250431(n+1))` -/
def P15424429207822931623.Spec : Prop :=
  ∀ n, P15424429207822931623.a n = (A250430 (n + 1) : ℝ)

end A250430

/-! ## A250430.P1472441422408969380

`A250428(n+1)/A250438(n+1)*A250439(n+1)`
-/

namespace A250430.P1472441422408969380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) : ℚ) / (A250438 (n + 1) : ℚ) * (A250439 (n + 1) : ℚ)

end

end A250430.P1472441422408969380

namespace A250430

/-- `A250428(n+1)/A250438(n+1)*A250439(n+1)` -/
def P1472441422408969380.Spec : Prop :=
  ∀ n, P1472441422408969380.a n = (A250430 (n + 1) : ℚ)

end A250430

/-! ## A250430.P17866311390255917129

`sqrt(A250431(n+1)/A250427(n+1))*A250428(n+1)`
-/

namespace A250430.P17866311390255917129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A250431 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) : ℝ) * (A250428 (n + 1) : ℝ)

end

end A250430.P17866311390255917129

namespace A250430

/-- `sqrt(A250431(n+1)/A250427(n+1))*A250428(n+1)` -/
def P17866311390255917129.Spec : Prop :=
  ∀ n, P17866311390255917129.a n = (A250430 (n + 1) : ℝ)

end A250430

/-! ## A250430.P14279828175049191276

`sqrt((A058187(n+2)*A058187(n+3))²*A250431(n+1))`
-/

namespace A250430.P14279828175049191276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A058187 (n + 2) * A058187 (n + 3)) ^ 2 * A250431 (n + 1) : ℝ)

end

end A250430.P14279828175049191276

namespace A250430

/-- `sqrt((A058187(n+2)*A058187(n+3))²*A250431(n+1))` -/
def P14279828175049191276.Spec : Prop :=
  ∀ n, P14279828175049191276.a n = (A250430 (n + 1) : ℝ)

end A250430

/-! ## A250430.P13188000693143001163

`A250432(A374007(n+1))`
-/

namespace A250430.P13188000693143001163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250432 (A374007 (n + 1)).toNat

end

end A250430.P13188000693143001163

namespace A250430

/-- `A250432(A374007(n+1))` -/
def P13188000693143001163.Spec : Prop :=
  ∀ n, P13188000693143001163.a n = A250430 (n + 1)

end A250430

/-!
# A250431: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250431, the canonical program `A250431.P15289641073879805333` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250431 has offset 1).

The definition of A250431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250431.P17679746199480312702

`A250430(n+1)²/A250429(n+1)`
-/

namespace A250431.P17679746199480312702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) ^ 2 : ℚ) / (A250429 (n + 1) : ℚ)

end

end A250431.P17679746199480312702

namespace A250431

/-- `A250430(n+1)²/A250429(n+1)` -/
def P17679746199480312702.Spec : Prop :=
  ∀ n, P17679746199480312702.a n = (A250431 (n + 1) : ℚ)

end A250431

/-! ## A250431.P4003654747192830290

`A250427(n+1)/A250438(n+1)*A250440(n+1)`
-/

namespace A250431.P4003654747192830290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250427 (n + 1) : ℚ) / (A250438 (n + 1) : ℚ) * (A250440 (n + 1) : ℚ)

end

end A250431.P4003654747192830290

namespace A250431

/-- `A250427(n+1)/A250438(n+1)*A250440(n+1)` -/
def P4003654747192830290.Spec : Prop :=
  ∀ n, P4003654747192830290.a n = (A250431 (n + 1) : ℚ)

end A250431

/-! ## A250431.P15289641073879805333

`(A189976(n+10)*A189976(n+11))²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A250431

/-- `(A189976(n+10)*A189976(n+11))²` -/
def P15289641073879805333.Spec : Prop :=
  ∀ n, P15289641073879805333.a n = A250431 (n + 1)

theorem P15289641073879805333.correct : P15289641073879805333.Spec := by
  intro n
  simp only [A250431, Nat.add_sub_cancel]

end A250431

/-! ## A250431.P6824074949575980768

`A331575(n+10)²`
-/

namespace A250431.P6824074949575980768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (n + 10) ^ 2

end

end A250431.P6824074949575980768

namespace A250431

/-- `A331575(n+10)²` -/
def P6824074949575980768.Spec : Prop :=
  ∀ n, P6824074949575980768.a n = A250431 (n + 1)

end A250431

/-! ## A250431.P5102703835952829096

`A331575(n+10)^A343371(A008578(n+2))`
-/

namespace A250431.P5102703835952829096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331575 (n + 10) : ℚ) ^ (A343371 (A008578 (n + 2)).toNat : ℤ)

end

end A250431.P5102703835952829096

namespace A250431

/-- `A331575(n+10)^A343371(A008578(n+2))` -/
def P5102703835952829096.Spec : Prop :=
  ∀ n, P5102703835952829096.a n = (A250431 (n + 1) : ℚ)

end A250431

/-! ## A250431.P7449315511370517540

`A331575(n+10)^A001222(A242218(n+1))`
-/

namespace A250431.P7449315511370517540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331575 (n + 10) : ℚ) ^ (A001222 (A242218 (n + 1)).toNat : ℤ)

end

end A250431.P7449315511370517540

namespace A250431

/-- `A331575(n+10)^A001222(A242218(n+1))` -/
def P7449315511370517540.Spec : Prop :=
  ∀ n, P7449315511370517540.a n = (A250431 (n + 1) : ℚ)

end A250431

/-!
# A250432: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250432, there is no canonical definition to state claims against.
-/

/-! ## A250432.P18231495908811701849

`A320922(A239412(n+1)-A320916(n))`
-/

namespace A250432.P18231495908811701849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (A239412 (n + 1) - A320916 n).toNat

end

end A250432.P18231495908811701849

/-!
# A250436: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250436, there is no canonical definition to state claims against.
-/

/-! ## A250436.P16508717656758923872

`A250443(∑[4*n]+1)`
-/

namespace A250436.P16508717656758923872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250436.P16508717656758923872

/-! ## A250436.P16499375327660184063

`record[gcd(A003987(n), A250443(n+1))]`
-/

namespace A250436.P16499375327660184063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A250443 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250436.P16499375327660184063

/-! ## A250436.P5043949064010174267

`A250443(A001844(n))+A067157(n)`
-/

namespace A250436.P5043949064010174267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (A001844 n).toNat + A067157 (n + 10)

end

end A250436.P5043949064010174267

/-! ## A250436.P413807575022897302

`A250443(A001844(n))+A185245(n)`
-/

namespace A250436.P413807575022897302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (A001844 n).toNat + A185245 n

end

end A250436.P413807575022897302

/-! ## A250436.P2745683320435211001

`or(A097479(n), A250443(A001844(n)))`
-/

namespace A250436.P2745683320435211001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097479 n) (A250443 (A001844 n).toNat)

end

end A250436.P2745683320435211001

/-!
# A250437: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250437, the canonical program `A250437.P375934551708024128` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250437 has offset 1).

The definition of A250437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250437.P11363856648840088400

`sqrt(A250427(n+1)*A250438(n+1))`
-/

namespace A250437.P11363856648840088400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250427 (n + 1) * A250438 (n + 1) : ℝ)

end

end A250437.P11363856648840088400

namespace A250437

/-- `sqrt(A250427(n+1)*A250438(n+1))` -/
def P11363856648840088400.Spec : Prop :=
  ∀ n, P11363856648840088400.a n = (A250437 (n + 1) : ℝ)

end A250437

/-! ## A250437.P375934551708024128

`A250427(n+1)/A250426(n+1)*A250428(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A250437

/-- `A250427(n+1)/A250426(n+1)*A250428(n+1)` -/
def P375934551708024128.Spec : Prop :=
  ∀ n, P375934551708024128.a n = (A250437 (n + 1) : ℚ)

end A250437

/-! ## A250437.P2349265210627932001

`A250426(n+1)/A250428(n+1)*A250438(n+1)`
-/

namespace A250437.P2349265210627932001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ) * (A250438 (n + 1) : ℚ)

end

end A250437.P2349265210627932001

namespace A250437

/-- `A250426(n+1)/A250428(n+1)*A250438(n+1)` -/
def P2349265210627932001.Spec : Prop :=
  ∀ n, P2349265210627932001.a n = (A250437 (n + 1) : ℚ)

end A250437

/-! ## A250437.P4665949256584823535

`A250426(n+1)/A250430(n+1)*A250439(n+1)`
-/

namespace A250437.P4665949256584823535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 1) : ℚ) / (A250430 (n + 1) : ℚ) * (A250439 (n + 1) : ℚ)

end

end A250437.P4665949256584823535

namespace A250437

/-- `A250426(n+1)/A250430(n+1)*A250439(n+1)` -/
def P4665949256584823535.Spec : Prop :=
  ∀ n, P4665949256584823535.a n = (A250437 (n + 1) : ℚ)

end A250437

/-! ## A250437.P9127139393314147038

`A250427(n+1)/A250430(n+1)*A251969(n+1)`
-/

namespace A250437.P9127139393314147038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250427 (n + 1) : ℚ) / (A250430 (n + 1) : ℚ) * (A251969 (n + 1) : ℚ)

end

end A250437.P9127139393314147038

namespace A250437

/-- `A250427(n+1)/A250430(n+1)*A251969(n+1)` -/
def P9127139393314147038.Spec : Prop :=
  ∀ n, P9127139393314147038.a n = (A250437 (n + 1) : ℚ)

end A250437

/-!
# A250438: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250438, the canonical program `A250438.P5885803713848844498` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250438 has offset 1).

The definition of A250438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250438.P5885803713848844498

`A250437(n+1)²/A250427(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A250438

/-- `A250437(n+1)²/A250427(n+1)` -/
def P5885803713848844498.Spec : Prop :=
  ∀ n, P5885803713848844498.a n = (A250438 (n + 1) : ℚ)

end A250438

/-! ## A250438.P11891556972455959274

`A250428(n+1)/A250426(n+1)*A250437(n+1)`
-/

namespace A250438.P11891556972455959274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250428 (n + 1) : ℚ) / (A250426 (n + 1) : ℚ) * (A250437 (n + 1) : ℚ)

end

end A250438.P11891556972455959274

namespace A250438

/-- `A250428(n+1)/A250426(n+1)*A250437(n+1)` -/
def P11891556972455959274.Spec : Prop :=
  ∀ n, P11891556972455959274.a n = (A250438 (n + 1) : ℚ)

end A250438

/-! ## A250438.P17101466522476343926

`A250437(n+1)/A250430(n+1)*A251969(n+1)`
-/

namespace A250438.P17101466522476343926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250437 (n + 1) : ℚ) / (A250430 (n + 1) : ℚ) * (A251969 (n + 1) : ℚ)

end

end A250438.P17101466522476343926

namespace A250438

/-- `A250437(n+1)/A250430(n+1)*A251969(n+1)` -/
def P17101466522476343926.Spec : Prop :=
  ∀ n, P17101466522476343926.a n = (A250438 (n + 1) : ℚ)

end A250438

/-! ## A250438.P16796760844426063870

`(A250428(n+1)/A250426(n+1))²*A250427(n+1)`
-/

namespace A250438.P16796760844426063870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250428 (n + 1) : ℚ) / (A250426 (n + 1) : ℚ)) ^ 2 * (A250427 (n + 1) : ℚ)

end

end A250438.P16796760844426063870

namespace A250438

/-- `(A250428(n+1)/A250426(n+1))²*A250427(n+1)` -/
def P16796760844426063870.Spec : Prop :=
  ∀ n, P16796760844426063870.a n = (A250438 (n + 1) : ℚ)

end A250438

/-! ## A250438.P10329977064601676873

`(A251969(n+1)/A250430(n+1))²*A250427(n+1)`
-/

namespace A250438.P10329977064601676873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A251969 (n + 1) : ℚ) / (A250430 (n + 1) : ℚ)) ^ 2 * (A250427 (n + 1) : ℚ)

end

end A250438.P10329977064601676873

namespace A250438

/-- `(A251969(n+1)/A250430(n+1))²*A250427(n+1)` -/
def P10329977064601676873.Spec : Prop :=
  ∀ n, P10329977064601676873.a n = (A250438 (n + 1) : ℚ)

end A250438

/-! ## A250438.P12973520994580942279

`(A250428(n+1)/Δ[A002623(n+1)])²`
-/

namespace A250438.P12973520994580942279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250428 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)) ^ 2

end

end A250438.P12973520994580942279

namespace A250438

/-- `(A250428(n+1)/Δ[A002623(n+1)])²` -/
def P12973520994580942279.Spec : Prop :=
  ∀ n, P12973520994580942279.a n = (A250438 (n + 1) : ℚ)

end A250438

/-! ## A250438.P1455615404014409714

`A250439(n+1)²/A250440(n+1)`
-/

namespace A250438.P1455615404014409714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250439 (n + 1) ^ 2 : ℚ) / (A250440 (n + 1) : ℚ)

end

end A250438.P1455615404014409714

namespace A250438

/-- `A250439(n+1)²/A250440(n+1)` -/
def P1455615404014409714.Spec : Prop :=
  ∀ n, P1455615404014409714.a n = (A250438 (n + 1) : ℚ)

end A250438

/-!
# A250439: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250439, the canonical program `A250439.P10183614491863266248` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250439 has offset 1).

The definition of A250439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250439.P10183614491863266248

`A250430(n+1)/A250426(n+1)*A250437(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A250439

/-- `A250430(n+1)/A250426(n+1)*A250437(n+1)` -/
def P10183614491863266248.Spec : Prop :=
  ∀ n, P10183614491863266248.a n = (A250439 (n + 1) : ℚ)

end A250439

/-! ## A250439.P13486471328149945078

`A250430(n+1)/A250428(n+1)*A250438(n+1)`
-/

namespace A250439.P13486471328149945078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250430 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ) * (A250438 (n + 1) : ℚ)

end

end A250439.P13486471328149945078

namespace A250439

/-- `A250430(n+1)/A250428(n+1)*A250438(n+1)` -/
def P13486471328149945078.Spec : Prop :=
  ∀ n, P13486471328149945078.a n = (A250439 (n + 1) : ℚ)

end A250439

/-! ## A250439.P4232844873904131826

`A250437(n+1)/A250428(n+1)*A251969(n+1)`
-/

namespace A250439.P4232844873904131826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250437 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ) * (A251969 (n + 1) : ℚ)

end

end A250439.P4232844873904131826

namespace A250439

/-- `A250437(n+1)/A250428(n+1)*A251969(n+1)` -/
def P4232844873904131826.Spec : Prop :=
  ∀ n, P4232844873904131826.a n = (A250439 (n + 1) : ℚ)

end A250439

/-! ## A250439.P4139453269571976444

`sqrt(A250438(n+1)*A250440(n+1))`
-/

namespace A250439.P4139453269571976444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250438 (n + 1) * A250440 (n + 1) : ℝ)

end

end A250439.P4139453269571976444

namespace A250439

/-- `sqrt(A250438(n+1)*A250440(n+1))` -/
def P4139453269571976444.Spec : Prop :=
  ∀ n, P4139453269571976444.a n = (A250439 (n + 1) : ℝ)

end A250439

/-! ## A250439.P8460514811429569507

`A250443(A374004(n+1))`
-/

namespace A250439.P8460514811429569507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (A374004 (n + 1)).toNat

end

end A250439.P8460514811429569507

namespace A250439

/-- `A250443(A374004(n+1))` -/
def P8460514811429569507.Spec : Prop :=
  ∀ n, P8460514811429569507.a n = A250439 (n + 1)

end A250439

/-!
# A250440: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250440, the canonical program `A250440.P12929212090251733005` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250440 has offset 1).

The definition of A250440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250440.P10098955190346608517

`A251969(n+1)/A250429(n+1)*A251969(n+1)`
-/

namespace A250440.P10098955190346608517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251969 (n + 1) : ℚ) / (A250429 (n + 1) : ℚ) * (A251969 (n + 1) : ℚ)

end

end A250440.P10098955190346608517

namespace A250440

/-- `A251969(n+1)/A250429(n+1)*A251969(n+1)` -/
def P10098955190346608517.Spec : Prop :=
  ∀ n, P10098955190346608517.a n = (A250440 (n + 1) : ℚ)

end A250440

/-! ## A250440.P12929212090251733005

`(A250430(n+1)/A250428(n+1))²*A250438(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A250440

/-- `(A250430(n+1)/A250428(n+1))²*A250438(n+1)` -/
def P12929212090251733005.Spec : Prop :=
  ∀ n, P12929212090251733005.a n = (A250440 (n + 1) : ℚ)

end A250440

/-! ## A250440.P18133168223429358647

`A250441(n+1)/A250442(n+1)*A250441(n+1)`
-/

namespace A250440.P18133168223429358647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250441 (n + 1) : ℚ) / (A250442 (n + 1) : ℚ) * (A250441 (n + 1) : ℚ)

end

end A250440.P18133168223429358647

namespace A250440

/-- `A250441(n+1)/A250442(n+1)*A250441(n+1)` -/
def P18133168223429358647.Spec : Prop :=
  ∀ n, P18133168223429358647.a n = (A250440 (n + 1) : ℚ)

end A250440

/-! ## A250440.P18061259763504037879

`A251969(n+1)²/A250429(n+1)`
-/

namespace A250440.P18061259763504037879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251969 (n + 1) ^ 2 : ℚ) / (A250429 (n + 1) : ℚ)

end

end A250440.P18061259763504037879

namespace A250440

/-- `A251969(n+1)²/A250429(n+1)` -/
def P18061259763504037879.Spec : Prop :=
  ∀ n, P18061259763504037879.a n = (A250440 (n + 1) : ℚ)

end A250440

/-! ## A250440.P88730694769034325

`A250439(n+1)²/A250438(n+1)`
-/

namespace A250440.P88730694769034325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250439 (n + 1) ^ 2 : ℚ) / (A250438 (n + 1) : ℚ)

end

end A250440.P88730694769034325

namespace A250440

/-- `A250439(n+1)²/A250438(n+1)` -/
def P88730694769034325.Spec : Prop :=
  ∀ n, P88730694769034325.a n = (A250440 (n + 1) : ℚ)

end A250440

/-! ## A250440.P15425382637225076432

`A250441(n+1)²/A250442(n+1)`
-/

namespace A250440.P15425382637225076432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250441 (n + 1) ^ 2 : ℚ) / (A250442 (n + 1) : ℚ)

end

end A250440.P15425382637225076432

namespace A250440

/-- `A250441(n+1)²/A250442(n+1)` -/
def P15425382637225076432.Spec : Prop :=
  ∀ n, P15425382637225076432.a n = (A250440 (n + 1) : ℚ)

end A250440

/-!
# A250441: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250441, there is no canonical definition to state claims against.
-/

/-! ## A250441.P15709645449955502986

`sqrt(A250440(n+1))*sqrt(A250442(n+1))`
-/

namespace A250441.P15709645449955502986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250440 (n + 1) : ℝ) * Real.sqrt (A250442 (n + 1) : ℝ)

end

end A250441.P15709645449955502986

/-! ## A250441.P4630647292277145178

`A250443(A374007(n+1))`
-/

namespace A250441.P4630647292277145178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (A374007 (n + 1)).toNat

end

end A250441.P4630647292277145178

/-! ## A250441.P13795840318293740028

`A250443(A056115(n)+21)`
-/

namespace A250441.P13795840318293740028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (A056115 n + 21).toNat

end

end A250441.P13795840318293740028

/-! ## A250441.P7200201268331443496

`A250443(eq[5, A193592(n)])`
-/

namespace A250441.P7200201268331443496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250441.P7200201268331443496

/-! ## A250441.P17470129874173125778

`A250443(eq[6, A200370(n+1)])`
-/

namespace A250441.P17470129874173125778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250441.P17470129874173125778

/-!
# A250442: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

The programs for A250442, there is no canonical definition to state claims against.
-/

/-! ## A250442.P13527899779297221305

`A250441(n+1)/A250440(n+1)*A250441(n+1)`
-/

namespace A250442.P13527899779297221305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250441 (n + 1) : ℚ) / (A250440 (n + 1) : ℚ) * (A250441 (n + 1) : ℚ)

end

end A250442.P13527899779297221305

/-! ## A250442.P188213526685450046

`A250441(n+1)²/A250440(n+1)`
-/

namespace A250442.P188213526685450046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250441 (n + 1) ^ 2 : ℚ) / (A250440 (n + 1) : ℚ)

end

end A250442.P188213526685450046

/-! ## A250442.P2768764041394461818

`A250427(n+1)/A250429(n+1)*A251971(n+1)`
-/

namespace A250442.P2768764041394461818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250427 (n + 1) : ℚ) / (A250429 (n + 1) : ℚ) * (A251971 (n + 1) : ℚ)

end

end A250442.P2768764041394461818

/-! ## A250442.P9709151663650014516

`A250443(A374008(n+1))`
-/

namespace A250442.P9709151663650014516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (A374008 (n + 1)).toNat

end

end A250442.P9709151663650014516

/-! ## A250442.P208944367906060962

`A250443(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A250442.P208944367906060962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250443 (f1 (n + 1) - f1 n + 12).toNat

end

end A250442.P208944367906060962

/-!
# A250445: a(n) = gcd(n!, Fibonacci(n)) as n runs through A250444.

The programs for A250445, there is no canonical definition to state claims against.
-/

/-! ## A250445.P14574961175361677188

`A060383(A250444(n+1))`
-/

namespace A250445.P14574961175361677188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (A250444 (n + 1)).toNat

end

end A250445.P14574961175361677188

/-! ## A250445.P8172795117079824251

`A247193(A250444(n+1))%A027692(n)`
-/

namespace A250445.P8172795117079824251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247193 (A250444 (n + 1)).toNat) (A027692 n)

end

end A250445.P8172795117079824251

/-! ## A250445.P7961854774177692213

`A247193(2*A250444(n+1)-A250444(n+1))`
-/

namespace A250445.P7961854774177692213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247193 (2 * A250444 (n + 1) - A250444 (n + 1)).toNat

end

end A250445.P7961854774177692213

/-! ## A250445.P640975760845548010

`A247193(A069180(n+1))*A247193(A250444(n+1))`
-/

namespace A250445.P640975760845548010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247193 (A069180 (n + 1)).toNat * A247193 (A250444 (n + 1)).toNat

end

end A250445.P640975760845548010

/-! ## A250445.P6144570394220657134

`A001222(A014673(n+1))!*A247193(A250444(n+1))`
-/

namespace A250445.P6144570394220657134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A014673 (n + 1)).toNat).toNat : ℤ) * A247193 (A250444 (n + 1)).toNat

end

end A250445.P6144570394220657134

/-! ## A250445.P15590702755237835957

`p?[A247193(n+1)%A077591(n)]`
-/

namespace A250445.P15590702755237835957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247193 (n + 1)) (A077591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250445.P15590702755237835957

/-!
# A250446: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250446, there is no canonical definition to state claims against.
-/

/-! ## A250446.P16834268663552238779

`A250454((n+1)²+n²)`
-/

namespace A250446.P16834268663552238779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 ((n + 1) ^ 2 + n ^ 2)

end

end A250446.P16834268663552238779

/-!
# A250447: Number of (n+1)X(1+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250447, there is no canonical definition to state claims against.
-/

/-! ## A250447.P11818854495245051003

`A250454(∑[n]+1)`
-/

namespace A250447.P11818854495245051003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250447.P11818854495245051003

/-! ## A250447.P11502756215951948634

`record[A250454(A114091(n+1))]`
-/

namespace A250447.P11502756215951948634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250447.P11502756215951948634

/-! ## A250447.P17428739557338410126

`record[root(A250454(n+1), A193592(n))]`
-/

namespace A250447.P17428739557338410126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250454 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250447.P17428739557338410126

/-! ## A250447.P4793554513038845731

`record[root(A250454(n+1), A208101(n))]`
-/

namespace A250447.P4793554513038845731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250454 (n + 1) : ℝ) ^ (1 / (A208101 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250447.P4793554513038845731

/-! ## A250447.P4182771735289649414

`record[root(A250454(n+1), A213743(n))]`
-/

namespace A250447.P4182771735289649414
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250454 (n + 1) : ℝ) ^ (1 / (A213743 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250447.P4182771735289649414

/-!
# A250448: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250448, there is no canonical definition to state claims against.
-/

/-! ## A250448.P8692305123105851846

`A250454(∑[n+1]+2)`
-/

namespace A250448.P8692305123105851846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250448.P8692305123105851846

/-! ## A250448.P11186415910946624799

`record[A250454(A114091(n+1)+1)]`
-/

namespace A250448.P11186415910946624799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250448.P11186415910946624799

/-! ## A250448.P16647765674067556771

`record[root(A250454(n+3), A054456(n))]`
-/

namespace A250448.P16647765674067556771
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250454 (n + 3) : ℝ) ^ (1 / (A054456 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250448.P16647765674067556771

/-! ## A250448.P5901169174692936137

`record[root(A250454(n+3), A132964(n))]`
-/

namespace A250448.P5901169174692936137
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250454 (n + 3) : ℝ) ^ (1 / (A132964 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250448.P5901169174692936137

/-! ## A250448.P15934343283593806568

`record[gcd(A244130(n), A250454(n+2))]`
-/

namespace A250448.P15934343283593806568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244130 n) (A250454 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250448.P15934343283593806568

/-!
# A250449: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250449, there is no canonical definition to state claims against.
-/

/-! ## A250449.P4378031671765419921

`A250454(∑[n+2]+4)`
-/

namespace A250449.P4378031671765419921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250449.P4378031671765419921

/-! ## A250449.P8898411892626954135

`A250454(A167614(n+1))+A025466(n)`
-/

namespace A250449.P8898411892626954135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A167614 (n + 1)).toNat + A025466 n

end

end A250449.P8898411892626954135

/-! ## A250449.P12748546449548204188

`A250454(A167614(n+1))+A185284(n)`
-/

namespace A250449.P12748546449548204188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A167614 (n + 1)).toNat + A185284 n

end

end A250449.P12748546449548204188

/-! ## A250449.P6850951295975393896

`lcm(A033999(n), A250454(A167614(n+1)))`
-/

namespace A250449.P6850951295975393896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250454 (A167614 (n + 1)).toNat)

end

end A250449.P6850951295975393896

/-! ## A250449.P14925903745099157420

`A349797(n+1)+A250454(A167614(n+1))`
-/

namespace A250449.P14925903745099157420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (n + 1) + A250454 (A167614 (n + 1)).toNat

end

end A250449.P14925903745099157420

/-!
# A250450: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250450, there is no canonical definition to state claims against.
-/

/-! ## A250450.P11071776531624866296

`A250454(A141214(n)+7)`
-/

namespace A250450.P11071776531624866296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A141214 n + 7).toNat

end

end A250450.P11071776531624866296

/-! ## A250450.P10877465154931455545

`A250454(Δ[A005586(n)]+5)`
-/

namespace A250450.P10877465154931455545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (f1 (n + 1) - f1 n + 5).toNat

end

end A250450.P10877465154931455545

/-! ## A250450.P10536248049513910169

`A250454(A167614(n+2)+1)`
-/

namespace A250450.P10536248049513910169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A167614 (n + 2) + 1).toNat

end

end A250450.P10536248049513910169

/-! ## A250450.P7997808315274519406

`A250454(Δ[A264443(n)-n²])`
-/

namespace A250450.P7997808315274519406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (f1 (n + 1) - f1 n).toNat

end

end A250450.P7997808315274519406

/-! ## A250450.P17697054431834391362

`A250454(A141214(n+1))`
-/

namespace A250450.P17697054431834391362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A141214 (n + 1)).toNat

end

end A250450.P17697054431834391362

/-!
# A250451: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250451, there is no canonical definition to state claims against.
-/

/-! ## A250451.P3707973618915240543

`A250454(A167499(n+3))`
-/

namespace A250451.P3707973618915240543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A167499 (n + 3)).toNat

end

end A250451.P3707973618915240543

/-! ## A250451.P17580454140744270249

`A250454(A167614(n+3)+2)`
-/

namespace A250451.P17580454140744270249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A167614 (n + 3) + 2).toNat

end

end A250451.P17580454140744270249

/-! ## A250451.P11643615032063429883

`A250454(eq[6, A131818(n+1)])`
-/

namespace A250451.P11643615032063429883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250451.P11643615032063429883

/-! ## A250451.P9837229321379134542

`A250454(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A250451.P9837229321379134542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A250451.P9837229321379134542

/-! ## A250451.P5691557345898425942

`A250454(Δ[A264443(n)])`
-/

namespace A250451.P5691557345898425942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (f1 (n + 1) - f1 n).toNat

end

end A250451.P5691557345898425942

/-!
# A250452: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250452, there is no canonical definition to state claims against.
-/

/-! ## A250452.P16553176401933485850

`A250454(A374007(n+1))`
-/

namespace A250452.P16553176401933485850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A374007 (n + 1)).toNat

end

end A250452.P16553176401933485850

/-! ## A250452.P5228640642272995761

`A250454(eq[5, A193592(n)])`
-/

namespace A250452.P5228640642272995761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250452.P5228640642272995761

/-! ## A250452.P10328974043642007813

`A250454(Δ[Δ[A006504(n+1)]])`
-/

namespace A250452.P10328974043642007813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (f1 (n + 1) - f1 n).toNat

end

end A250452.P10328974043642007813

/-!
# A250453: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250453, there is no canonical definition to state claims against.
-/

/-! ## A250453.P10088370255901599151

`A250454(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A250453.P10088370255901599151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (f1 (n + 1) - f1 n + 12).toNat

end

end A250453.P10088370255901599151

/-! ## A250453.P8153119833086749015

`A250454(A374008(n+1))`
-/

namespace A250453.P8153119833086749015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (A374008 (n + 1)).toNat

end

end A250453.P8153119833086749015

/-! ## A250453.P15554750783063231129

`A250454(eq[6, A193592(n)])`
-/

namespace A250453.P15554750783063231129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250453.P15554750783063231129

/-!
# A250455: Number of (n+2) X (1+2) 0..2 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250455, there is no canonical definition to state claims against.
-/

/-! ## A250455.P13347127664612817702

`A250459(∑[n]+1)`
-/

namespace A250455.P13347127664612817702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250459 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250455.P13347127664612817702

/-! ## A250455.P5071103499921605409

`record[root(A250459(n+1), A074909(n))]`
-/

namespace A250455.P5071103499921605409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250459 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250455.P5071103499921605409

/-! ## A250455.P9276490928759887072

`record[root(A250459(n+1), A128227(n))]`
-/

namespace A250455.P9276490928759887072
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250459 (n + 1) : ℝ) ^ (1 / (A128227 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250455.P9276490928759887072

/-! ## A250455.P9325101875868812780

`record[gcd(A004197(n), A250459(n+1))]`
-/

namespace A250455.P9325101875868812780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A250459 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250455.P9325101875868812780

/-! ## A250455.P9561625638090708802

`or(A000007(n), A250459(A000124(n)))`
-/

namespace A250455.P9561625638090708802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250459 (A000124 n).toNat)

end

end A250455.P9561625638090708802

/-!
# A250456: Number of (n+2)X(2+2) 0..2 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250456, there is no canonical definition to state claims against.
-/

/-! ## A250456.P16983943732955983017

`A250459(∑[n+1]+2)`
-/

namespace A250456.P16983943732955983017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250459 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250456.P16983943732955983017

/-! ## A250456.P14327159368831793184

`record[root(A250459(n+2), A074909(n))]`
-/

namespace A250456.P14327159368831793184
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250459 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250456.P14327159368831793184

/-! ## A250456.P15649002108617740708

`record[root(A250459(n+3), A301906(n+2))]`
-/

namespace A250456.P15649002108617740708
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250459 (n + 3) : ℝ) ^ (1 / (A301906 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250456.P15649002108617740708

/-! ## A250456.P6331637569647448057

`A250459(A000096(n)+3)+A034462(n+1)`
-/

namespace A250456.P6331637569647448057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250459 (A000096 n + 3).toNat + A034462 (n + 1)

end

end A250456.P6331637569647448057

/-! ## A250456.P9990149525017861527

`record[A250459(A101881(n)+1)]`
-/

namespace A250456.P9990149525017861527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250459 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250456.P9990149525017861527

/-!
# A250457: Number of (n+2)X(3+2) 0..2 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250457, there is no canonical definition to state claims against.
-/

/-! ## A250457.P12991820966235894506

`A250459(∑[n+3]+1)`
-/

namespace A250457.P12991820966235894506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250459 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250457.P12991820966235894506

/-!
# A250460: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250460, there is no canonical definition to state claims against.
-/

/-! ## A250460.P7996753350271544040

`A250468(∑[4*n]+1)`
-/

namespace A250460.P7996753350271544040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250460.P7996753350271544040

/-! ## A250460.P11989249234058045210

`record[A003982(n)*A250468(n+1)]`
-/

namespace A250460.P11989249234058045210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250460.P11989249234058045210

/-! ## A250460.P13971227281942157782

`record[gcd(A008482(n), A250468(n+1))]`
-/

namespace A250460.P13971227281942157782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A250468 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250460.P13971227281942157782

/-! ## A250460.P183546253442783783

`A250468(A001844(n))+A025444(n)`
-/

namespace A250460.P183546253442783783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A001844 n).toNat + A025444 n

end

end A250460.P183546253442783783

/-! ## A250460.P16325220806196493936

`A007318(∑[n])*A250468(A001844(n))`
-/

namespace A250460.P16325220806196493936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A250468 (A001844 n).toNat

end

end A250460.P16325220806196493936

/-!
# A250461: Number of (n+1)X(1+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250461, the canonical program `A250461.P8863746095122298097` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250461 has offset 1).

The definition of A250461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250461.P18123584756415566517

`ogf((11-2x-8x^2)/(1-3x+2x^3))`
-/

namespace A250461.P18123584756415566517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -2, -8] [1, -3, 0, 2] n

end

end A250461.P18123584756415566517

namespace A250461

/-- `ogf((11-2x-8x^2)/(1-3x+2x^3))` -/
def P18123584756415566517.Spec : Prop :=
  ∀ n, P18123584756415566517.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P11555820461267399424

`floor((sqrt(3)+1)*a(n-1))+1` with `a(0)=11`
-/

namespace A250461.P11555820461267399424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ + 1

end

end A250461.P11555820461267399424

namespace A250461

/-- `floor((sqrt(3)+1)*a(n-1))+1` -/
def P11555820461267399424.Spec : Prop :=
  ∀ n, P11555820461267399424.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P11847785409765986892

`or(1, round((sqrt(3)+1)*a(n-1)))` with `a(0)=11`
-/

namespace A250461.P11847785409765986892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)))

end

end A250461.P11847785409765986892

namespace A250461

/-- `or(1, round((sqrt(3)+1)*a(n-1)))` -/
def P11847785409765986892.Spec : Prop :=
  ∀ n, P11847785409765986892.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P8863746095122298097

`3*a(n-1)-2*a(n-3)` with `a(0)=11, a(1)=31, a(2)=85`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A250461

/-- `3*a(n-1)-2*a(n-3)` -/
def P8863746095122298097.Spec : Prop :=
  ∀ n, P8863746095122298097.a n = A250461 (n + 1)

theorem P8863746095122298097.correct : P8863746095122298097.Spec := by
  intro n
  simp only [A250461, Nat.add_sub_cancel]

end A250461

/-! ## A250461.P11578802834301296571

`A077846(n)+A026150(n+3)`
-/

namespace A250461.P11578802834301296571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 n + A026150 (n + 3)

end

end A250461.P11578802834301296571

namespace A250461

/-- `A077846(n)+A026150(n+3)` -/
def P11578802834301296571.Spec : Prop :=
  ∀ n, P11578802834301296571.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P6904279846160284019

`3*A021006(n)-A057960(n)`
-/

namespace A250461.P6904279846160284019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A021006 n - A057960 n

end

end A250461.P6904279846160284019

namespace A250461

/-- `3*A021006(n)-A057960(n)` -/
def P6904279846160284019.Spec : Prop :=
  ∀ n, P6904279846160284019.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P12551932039750475368

`A077846(n+2)+Δ[A077846(n)]`
-/

namespace A250461.P12551932039750475368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 (n + 2) + (f1 (n + 1) - f1 n)

end

end A250461.P12551932039750475368

namespace A250461

/-- `A077846(n+2)+Δ[A077846(n)]` -/
def P12551932039750475368.Spec : Prop :=
  ∀ n, P12551932039750475368.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P16049042620883242732

`A077846(n+1)+A028859(n+2)`
-/

namespace A250461.P16049042620883242732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 (n + 1) + A028859 (n + 2)

end

end A250461.P16049042620883242732

namespace A250461

/-- `A077846(n+1)+A028859(n+2)` -/
def P16049042620883242732.Spec : Prop :=
  ∀ n, P16049042620883242732.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P8365159933689823299

`A077846(n+2)+A002605(n+2)`
-/

namespace A250461.P8365159933689823299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 (n + 2) + A002605 (n + 2)

end

end A250461.P8365159933689823299

namespace A250461

/-- `A077846(n+2)+A002605(n+2)` -/
def P8365159933689823299.Spec : Prop :=
  ∀ n, P8365159933689823299.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P13385349098959876931

`A052945(n+3)-A052948(n+2)`
-/

namespace A250461.P13385349098959876931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (n + 3) - A052948 (n + 2)

end

end A250461.P13385349098959876931

namespace A250461

/-- `A052945(n+3)-A052948(n+2)` -/
def P13385349098959876931.Spec : Prop :=
  ∀ n, P13385349098959876931.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P9401240161073869599

`4*A028859(n+1)-A052948(n)`
-/

namespace A250461.P9401240161073869599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028859 (n + 1) - A052948 n

end

end A250461.P9401240161073869599

namespace A250461

/-- `4*A028859(n+1)-A052948(n)` -/
def P9401240161073869599.Spec : Prop :=
  ∀ n, P9401240161073869599.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P14398530084571632196

`2*A028859(n+2)-A057960(n+2)`
-/

namespace A250461.P14398530084571632196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028859 (n + 2) - A057960 (n + 2)

end

end A250461.P14398530084571632196

namespace A250461

/-- `2*A028859(n+2)-A057960(n+2)` -/
def P14398530084571632196.Spec : Prop :=
  ∀ n, P14398530084571632196.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P12882815953876807877

`A077846(n+3)-A052945(n+3)`
-/

namespace A250461.P12882815953876807877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 (n + 3) - A052945 (n + 3)

end

end A250461.P12882815953876807877

namespace A250461

/-- `A077846(n+3)-A052945(n+3)` -/
def P12882815953876807877.Spec : Prop :=
  ∀ n, P12882815953876807877.a n = A250461 (n + 1)

end A250461

/-! ## A250461.P11785575469064866226

`floor(A162562(n+3)/6)`
-/

namespace A250461.P11785575469064866226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162562 (n + 3) : ℚ) / 6⌋

end

end A250461.P11785575469064866226

namespace A250461

/-- `floor(A162562(n+3)/6)` -/
def P11785575469064866226.Spec : Prop :=
  ∀ n, P11785575469064866226.a n = A250461 (n + 1)

end A250461

/-!
# A250462: Number of (n+1)X(2+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250462, the canonical program `A250462.P8816187305269579793` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250462 has offset 1).

The definition of A250462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250462.P8816187305269579793

`ogf((31+10x-72x^2+2x^3+32x^4)/(1-4x-3x^2+10x^3-4x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A250462

/-- `ogf((31+10x-72x^2+2x^3+32x^4)/(1-4x-3x^2+10x^3-4x^5))` -/
def P8816187305269579793.Spec : Prop :=
  ∀ n, P8816187305269579793.a n = A250462 (n + 1)

theorem P8816187305269579793.correct : P8816187305269579793.Spec := by
  intro n
  simp only [A250462, Nat.add_sub_cancel]

end A250462

/-! ## A250462.P12681795196013257689

`A250468(∑[n+1]+2)`
-/

namespace A250462.P12681795196013257689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250462.P12681795196013257689

namespace A250462

/-- `A250468(∑[n+1]+2)` -/
def P12681795196013257689.Spec : Prop :=
  ∀ n, P12681795196013257689.a n = A250462 (n + 1)

end A250462

/-! ## A250462.P15586352455007543690

`record[A250468(A133263(abs(1-n)))]`
-/

namespace A250462.P15586352455007543690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250462.P15586352455007543690

namespace A250462

/-- `record[A250468(A133263(abs(1-n)))]` -/
def P15586352455007543690.Spec : Prop :=
  ∀ n, P15586352455007543690.a n = A250462 (n + 1)

end A250462

/-! ## A250462.P15336589534523880072

`record[A250468(A130270(n+1)+2)]`
-/

namespace A250462.P15336589534523880072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250462.P15336589534523880072

namespace A250462

/-- `record[A250468(A130270(n+1)+2)]` -/
def P15336589534523880072.Spec : Prop :=
  ∀ n, P15336589534523880072.a n = A250462 (n + 1)

end A250462

/-! ## A250462.P18050408303746061403

`record[A010054(n)*A250468(n+2)]`
-/

namespace A250462.P18050408303746061403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250462.P18050408303746061403

namespace A250462

/-- `record[A010054(n)*A250468(n+2)]` -/
def P18050408303746061403.Spec : Prop :=
  ∀ n, P18050408303746061403.a n = A250462 (n + 1)

end A250462

/-!
# A250463: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250463, there is no canonical definition to state claims against.
-/

/-! ## A250463.P10185805577132125181

`A250468(∑[n+2]+4)`
-/

namespace A250463.P10185805577132125181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250463.P10185805577132125181

/-! ## A250463.P15649879361513520883

`lcm(A114523(n), A250468(A167614(n+1)))`
-/

namespace A250463.P15649879361513520883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114523 n) (A250468 (A167614 (n + 1)).toNat)

end

end A250463.P15649879361513520883

/-! ## A250463.P16004122929913746928

`or(A000007(n), A250468(A167614(n+1)))`
-/

namespace A250463.P16004122929913746928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250468 (A167614 (n + 1)).toNat)

end

end A250463.P16004122929913746928

/-! ## A250463.P5292768421859575504

`or(A003982(n), A250468(A167614(n+1)))`
-/

namespace A250463.P5292768421859575504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A250468 (A167614 (n + 1)).toNat)

end

end A250463.P5292768421859575504

/-! ## A250463.P1901724131110987337

`A250468(A167614(n+1))%A250464(n+1)`
-/

namespace A250463.P1901724131110987337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250468 (A167614 (n + 1)).toNat) (A250464 (n + 1))

end

end A250463.P1901724131110987337

/-!
# A250464: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250464, there is no canonical definition to state claims against.
-/

/-! ## A250464.P8119274540668049777

`A250468(A374004(n+1))`
-/

namespace A250464.P8119274540668049777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A374004 (n + 1)).toNat

end

end A250464.P8119274540668049777

/-! ## A250464.P15174612659452277202

`A250468(A052905(n)+9)`
-/

namespace A250464.P15174612659452277202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A052905 n + 9).toNat

end

end A250464.P15174612659452277202

/-! ## A250464.P10112885149324467630

`A250468(A055999(n)+10)`
-/

namespace A250464.P10112885149324467630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A055999 n + 10).toNat

end

end A250464.P10112885149324467630

/-! ## A250464.P11395220235512022219

`A250468(A167614(n+2)+1)`
-/

namespace A250464.P11395220235512022219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A167614 (n + 2) + 1).toNat

end

end A250464.P11395220235512022219

/-! ## A250464.P18142895781612027459

`A250468(A166136(n+2)-2)`
-/

namespace A250464.P18142895781612027459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A166136 (n + 2) - 2).toNat

end

end A250464.P18142895781612027459

/-!
# A250465: Number of (n+1)X(5+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250465, there is no canonical definition to state claims against.
-/

/-! ## A250465.P9378758710309982017

`A250468(A374005(n+1))`
-/

namespace A250465.P9378758710309982017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A374005 (n + 1)).toNat

end

end A250465.P9378758710309982017

/-! ## A250465.P18107845766905107461

`A250468(A167499(n+3))`
-/

namespace A250465.P18107845766905107461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A167499 (n + 3)).toNat

end

end A250465.P18107845766905107461

/-! ## A250465.P17676972317802295018

`A250468(A175631(n+7)-(n-1))`
-/

namespace A250465.P17676972317802295018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A175631 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A250465.P17676972317802295018

/-! ## A250465.P18010591619524326355

`A250468(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A250465.P18010591619524326355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A250465.P18010591619524326355

/-! ## A250465.P15236816250230965832

`A250468(Δ[A264443(n)])`
-/

namespace A250465.P15236816250230965832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (f1 (n + 1) - f1 n).toNat

end

end A250465.P15236816250230965832

/-!
# A250466: Number of (n+1)X(6+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250466, there is no canonical definition to state claims against.
-/

/-! ## A250466.P10816187530392607061

`A250468(A374007(n+1))`
-/

namespace A250466.P10816187530392607061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A374007 (n + 1)).toNat

end

end A250466.P10816187530392607061

/-! ## A250466.P7370847266984176508

`A250468(A166136(n+4))`
-/

namespace A250466.P7370847266984176508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A166136 (n + 4)).toNat

end

end A250466.P7370847266984176508

/-! ## A250466.P112963496309312090

`A250468(A175631(n+7)+7)`
-/

namespace A250466.P112963496309312090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A175631 (n + 7) + 7).toNat

end

end A250466.P112963496309312090

/-! ## A250466.P6649950635360889246

`A250468(A052905(n+3))`
-/

namespace A250466.P6649950635360889246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A052905 (n + 3)).toNat

end

end A250466.P6649950635360889246

/-! ## A250466.P3503056548851241367

`A250468(Δ[Δ[A006504(n+1)]])`
-/

namespace A250466.P3503056548851241367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (f1 (n + 1) - f1 n).toNat

end

end A250466.P3503056548851241367

/-!
# A250467: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250467, there is no canonical definition to state claims against.
-/

/-! ## A250467.P18299128637209045106

`A250468(A374008(n+1))`
-/

namespace A250467.P18299128637209045106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A374008 (n + 1)).toNat

end

end A250467.P18299128637209045106

/-! ## A250467.P1912798983984219580

`A250468(A166136(n+5)+1)`
-/

namespace A250467.P1912798983984219580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A166136 (n + 5) + 1).toNat

end

end A250467.P1912798983984219580

/-! ## A250467.P15829483268569827369

`A250468(A000217(n+6)+7)`
-/

namespace A250467.P15829483268569827369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (A000217 (n + 6) + 7).toNat

end

end A250467.P15829483268569827369

/-! ## A250467.P5035661320874372332

`A250468(eq[8, A131818(n+1)])`
-/

namespace A250467.P5035661320874372332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250467.P5035661320874372332

/-! ## A250467.P826383937684161202

`A250468(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A250467.P826383937684161202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250468 (f1 (n + 1) - f1 n + 12).toNat

end

end A250467.P826383937684161202

/-!
# A250468: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250468, there is no canonical definition to state claims against.
-/

/-! ## A250468.P8654292476503053825

`xor(A259515(n+1), A329585(A030019(n)))`
-/

namespace A250468.P8654292476503053825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A259515 (n + 1)) (A329585 (A030019 n).toNat)

end

end A250468.P8654292476503053825

/-!
# A250469: a(1) = 1; and for n > 1, a(n) = A078898(n)-th number k for which A055396(k) = A055396(n)+1, where A055396(n) is the index of smallest prime dividing n.

The programs for A250469, there is no canonical definition to state claims against.
-/

/-! ## A250469.P1167674045616136588

`A249817(A003961(A249818(n+1)))`
-/

namespace A250469.P1167674045616136588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A003961 (A249818 (n + 1)).toNat).toNat

end

end A250469.P1167674045616136588

/-! ## A250469.P8793420667412357157

`A269360(n+1)-1`
-/

namespace A250469.P8793420667412357157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) - 1

end

end A250469.P8793420667412357157

/-! ## A250469.P1270761700081087572

`A302042(6*n+3)`
-/

namespace A250469.P1270761700081087572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (6 * n + 3)

end

end A250469.P1270761700081087572

/-! ## A250469.P5263960661401768388

`∑{d}[n+1, A347376(#)]`
-/

namespace A250469.P5263960661401768388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347376 d

end

end A250469.P5263960661401768388

/-! ## A250469.P10743383589452992990

`2*A250471(n+1)-1`
-/

namespace A250469.P10743383589452992990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250471 (n + 1) - 1

end

end A250469.P10743383589452992990

/-! ## A250469.P6750758608912033857

`A347378(n+1)+1+n`
-/

namespace A250469.P6750758608912033857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (n + 1) + 1 + (n : ℤ)

end

end A250469.P6750758608912033857

/-! ## A250469.P5150226012977594022

`2*(n+1)-A346476(n+1)`
-/

namespace A250469.P5150226012977594022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A346476 (n + 1)

end

end A250469.P5150226012977594022

/-! ## A250469.P4451237371042938865

`A004273(A250471(n+1))`
-/

namespace A250469.P4451237371042938865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A250471 (n + 1)).toNat

end

end A250469.P4451237371042938865

/-! ## A250469.P6681430213171078404

`A003961(A266645(n+1))`
-/

namespace A250469.P6681430213171078404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A266645 (n + 1)).toNat

end

end A250469.P6681430213171078404

/-! ## A250469.P17680854879194202329

`A269379(A269355(n+1))`
-/

namespace A250469.P17680854879194202329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269355 (n + 1)).toNat

end

end A250469.P17680854879194202329

/-! ## A250469.P5429197836992253898

`A005843(A250471(n+1)-1)+1`
-/

namespace A250469.P5429197836992253898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250471 (n + 1) - 1).toNat + 1

end

end A250469.P5429197836992253898

/-! ## A250469.P6830216928485723029

`A253885(A266645(n+1)-1)+1`
-/

namespace A250469.P6830216928485723029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A266645 (n + 1) - 1).toNat + 1

end

end A250469.P6830216928485723029

/-! ## A250469.P13435743904586179641

`A346473(n+1)+A000203(n+1)`
-/

namespace A250469.P13435743904586179641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346473 (n + 1) + A000203 (n + 1)

end

end A250469.P13435743904586179641

/-! ## A250469.P11021860048385017629

`A003961(n+1)-A280692(n+1)`
-/

namespace A250469.P11021860048385017629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A280692 (n + 1)

end

end A250469.P11021860048385017629

/-! ## A250469.P11620205583584764059

`A253885(n)+1-A280692(n+1)`
-/

namespace A250469.P11620205583584764059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (1 - A280692 (n + 1))

end

end A250469.P11620205583584764059

/-! ## A250469.P2699836777385404189

`A346480(n+1)-A346479(n+1)`
-/

namespace A250469.P2699836777385404189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (n + 1) - A346479 (n + 1)

end

end A250469.P2699836777385404189

/-! ## A250469.P8308797075589909037

`A280702(n+1)*A280704(n+1)`
-/

namespace A250469.P8308797075589909037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280702 (n + 1) * A280704 (n + 1)

end

end A250469.P8308797075589909037

/-! ## A250469.P11104965232713332755

`A088580(n+1)+A346473(n+1)-1`
-/

namespace A250469.P11104965232713332755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (A346473 (n + 1) - 1)

end

end A250469.P11104965232713332755

/-! ## A250469.P7127331386724361681

`A144396(n+1)-(A346476(n+1)+1)`
-/

namespace A250469.P7127331386724361681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - (A346476 (n + 1) + 1)

end

end A250469.P7127331386724361681

/-! ## A250469.P9425782751957763688

`A243501(n+1)-(A280692(n+1)+1)`
-/

namespace A250469.P9425782751957763688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - (A280692 (n + 1) + 1)

end

end A250469.P9425782751957763688

/-!
# A250470: a(n) = A249817(A064989(A249818(n))).

The programs for A250470, there is no canonical definition to state claims against.
-/

/-! ## A250470.P14103742614346788848

`A249817(A064989(A249818(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250470.P14103742614346788848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A064989 (A249818 (n + 1)).toNat).toNat

end

end A250470.P14103742614346788848

/-! ## A250470.P884081187460542050

`A250479(A249818(n+1))`
-/

namespace A250470.P884081187460542050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A249818 (n + 1)).toNat

end

end A250470.P884081187460542050

/-! ## A250470.P16839531669975147922

`A250479(A074828(n+1)*A280498(n+1))`
-/

namespace A250470.P16839531669975147922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A074828 (n + 1) * A280498 (n + 1)).toNat

end

end A250470.P16839531669975147922

/-! ## A250470.P4430614176141084599

`A250479(32*A250248(n+1))`
-/

namespace A250470.P4430614176141084599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (32 * A250248 (n + 1)).toNat

end

end A250470.P4430614176141084599

/-! ## A250470.P10497541677721711672

`A064989(A000188(A249818(n+1)²))`
-/

namespace A250470.P10497541677721711672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000188 (A249818 (n + 1) ^ 2).toNat).toNat

end

end A250470.P10497541677721711672

/-! ## A250470.P12121253697324968181

`A064989(A000196(A249818(n+1)²))`
-/

namespace A250470.P12121253697324968181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000196 (A249818 (n + 1) ^ 2).toNat).toNat

end

end A250470.P12121253697324968181

/-! ## A250470.P17810146778748295376

`A064989(A249818(n+1)%A088046(n+1))`
-/

namespace A250470.P17810146778748295376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.tmod (A249818 (n + 1)) (A088046 (n + 1))).toNat

end

end A250470.P17810146778748295376

/-! ## A250470.P2139531538385666047

`A064989(A250248(n+1)%A109226(n+1))`
-/

namespace A250470.P2139531538385666047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.tmod (A250248 (n + 1)) (A109226 (n + 1))).toNat

end

end A250470.P2139531538385666047

/-!
# A250471: Permutation of natural numbers: a(n) = (A250469(n) + 1) / 2.

The programs for A250471, there is no canonical definition to state claims against.
-/

/-! ## A250471.P3585572213619683373

`(A250469(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250471.P3585572213619683373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250469 (n + 1) + 1 : ℚ) / 2

end

end A250471.P3585572213619683373

/-! ## A250471.P13964612831427453682

`A269360(n+1)/2`
-/

namespace A250471.P13964612831427453682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269360 (n + 1) : ℚ) / 2

end

end A250471.P13964612831427453682

/-! ## A250471.P3121122550903764644

`ceil(A250469(1+n)/2)`
-/

namespace A250471.P3121122550903764644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A250469 (1 + n) : ℚ) / 2⌉

end

end A250471.P3121122550903764644

/-! ## A250471.P4318216257900252980

`(A347378(n+1)+n+2)/2`
-/

namespace A250471.P4318216257900252980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347378 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A250471.P4318216257900252980

/-! ## A250471.P3827904523220268847

`A048673(A266645(n+1))`
-/

namespace A250471.P3827904523220268847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A266645 (n + 1)).toNat

end

end A250471.P3827904523220268847

/-! ## A250471.P9825505244106304445

`A014682(A250469(n+1)+1)`
-/

namespace A250471.P9825505244106304445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A250469 (n + 1) + 1).toNat

end

end A250471.P9825505244106304445

/-! ## A250471.P3200996388028068689

`A302032(A250469(n+1)+1)`
-/

namespace A250471.P3200996388028068689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A250469 (n + 1) + 1).toNat

end

end A250471.P3200996388028068689

/-! ## A250471.P9814979409731467996

`A302042(A250469(n+1)+1)`
-/

namespace A250471.P9814979409731467996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A250469 (n + 1) + 1).toNat

end

end A250471.P9814979409731467996

/-! ## A250471.P12298076218559545532

`A302043(A250469(n+1)+1)`
-/

namespace A250471.P12298076218559545532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A250469 (n + 1) + 1).toNat

end

end A250471.P12298076218559545532

/-! ## A250471.P2433861429310083756

`A318516(A250469(n+1)+1)`
-/

namespace A250471.P2433861429310083756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A250469 (n + 1) + 1).toNat

end

end A250471.P2433861429310083756

/-! ## A250471.P14234147413865927494

`A326139(A250469(n+1)+1)`
-/

namespace A250471.P14234147413865927494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A250469 (n + 1) + 1).toNat

end

end A250471.P14234147413865927494

/-! ## A250471.P12434193779371370959

`A330755(2*A250469(n+1))`
-/

namespace A250471.P12434193779371370959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330755 (2 * A250469 (n + 1)).toNat

end

end A250471.P12434193779371370959

/-! ## A250471.P14159984337221786546

`(A302042(A016945(n))+1)/2`
-/

namespace A250471.P14159984337221786546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302042 (A016945 n).toNat + 1 : ℚ) / 2

end

end A250471.P14159984337221786546

/-! ## A250471.P1436853795112831121

`(A269379(A269355(n+1))+1)/2`
-/

namespace A250471.P1436853795112831121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269379 (A269355 (n + 1)).toNat + 1 : ℚ) / 2

end

end A250471.P1436853795112831121

/-! ## A250471.P16233895654760565931

`(A346473(n+1)+A088580(n+1))/2`
-/

namespace A250471.P16233895654760565931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346473 (n + 1) + A088580 (n + 1) : ℚ) / 2

end

end A250471.P16233895654760565931

/-! ## A250471.P356236616774494818

`A048673(n+1)-A280692(n+1)/2`
-/

namespace A250471.P356236616774494818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 (n + 1) : ℚ) - (A280692 (n + 1) : ℚ) / 2

end

end A250471.P356236616774494818

/-! ## A250471.P3242351333575370796

`(A144396(n+1)-A346476(n+1))/2`
-/

namespace A250471.P3242351333575370796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144396 (n + 1) - A346476 (n + 1) : ℚ) / 2

end

end A250471.P3242351333575370796

/-! ## A250471.P3305753665313554021

`(A243501(n+1)-A280692(n+1))/2`
-/

namespace A250471.P3305753665313554021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - A280692 (n + 1) : ℚ) / 2

end

end A250471.P3305753665313554021

/-! ## A250471.P3301470144383592326

`(A003961(n+1)-A280692(n+1)+1)/2`
-/

namespace A250471.P3301470144383592326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A280692 (n + 1) + 1 : ℚ) / 2

end

end A250471.P3301470144383592326

/-! ## A250471.P14577102016569170665

`A253886(n)/2+1`
-/

namespace A250471.P14577102016569170665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253886 n : ℚ) / 2 + 1

end

end A250471.P14577102016569170665

/-!
# A250472: Permutation of natural numbers: a(n) = A250470(2*n - 1).

The programs for A250472, there is no canonical definition to state claims against.
-/

/-! ## A250472.P3082857152112660430

`A250470(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250472.P3082857152112660430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * n + 1)

end

end A250472.P3082857152112660430

/-! ## A250472.P18420722299086549196

`A250470(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250472.P18420722299086549196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * (n + 1) - 1)

end

end A250472.P18420722299086549196

/-! ## A250472.P6779801213990038488

`A253554(Δ[n²])`
-/

namespace A250472.P6779801213990038488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A250472.P6779801213990038488

/-! ## A250472.P11609101354428575240

`A268674(Δ[n²])`
-/

namespace A250472.P11609101354428575240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A250472.P11609101354428575240

/-! ## A250472.P9208938935366853962

`xor(n, xor(n, A253554(2*n+1)))`
-/

namespace A250472.P9208938935366853962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A253554 (2 * n + 1)))

end

end A250472.P9208938935366853962

/-! ## A250472.P5438079295584557679

`A269356(A269380(2*n+1))`
-/

namespace A250472.P5438079295584557679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269356 (A269380 (2 * n + 1)).toNat

end

end A250472.P5438079295584557679

/-! ## A250472.P16118862703625830168

`(A253554(2*(n+1))-n)*A253554(2*n+1)`
-/

namespace A250472.P16118862703625830168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253554 (2 * (n + 1)) - (n : ℤ)) * A253554 (2 * n + 1)

end

end A250472.P16118862703625830168

/-! ## A250472.P9043535392314305926

`A093178(2*n)*A268674(A141310(2*n))`
-/

namespace A250472.P9043535392314305926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A268674 (A141310 (2 * n)).toNat

end

end A250472.P9043535392314305926

/-! ## A250472.P12918003409647297928

`A152271(2*n)*A250470(A141310(2*n))`
-/

namespace A250472.P12918003409647297928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A250470 (A141310 (2 * n)).toNat

end

end A250472.P12918003409647297928

/-! ## A250472.P736521875876122494

`A032742(2*A268674(2*n+1))`
-/

namespace A250472.P736521875876122494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A268674 (2 * n + 1)).toNat

end

end A250472.P736521875876122494

/-! ## A250472.P15995973786043596970

`A078898(2*A253554(2*n+1))`
-/

namespace A250472.P15995973786043596970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A253554 (2 * n + 1)).toNat

end

end A250472.P15995973786043596970

/-! ## A250472.P9091983269579870691

`A078898(2*A268674(2*n+1))`
-/

namespace A250472.P9091983269579870691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A268674 (2 * n + 1)).toNat

end

end A250472.P9091983269579870691

/-! ## A250472.P14975873600597846148

`A252463(2*A253554(2*n+1))`
-/

namespace A250472.P14975873600597846148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * A253554 (2 * n + 1)).toNat

end

end A250472.P14975873600597846148

/-! ## A250472.P11553446689751681460

`A269172(A269380(A269171(2*n+1)))`
-/

namespace A250472.P11553446689751681460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269380 (A269171 (2 * n + 1)).toNat).toNat

end

end A250472.P11553446689751681460

/-! ## A250472.P13347517757102916896

`A266646(A064216(n+1))`
-/

namespace A250472.P13347517757102916896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A064216 (n + 1)).toNat

end

end A250472.P13347517757102916896

/-! ## A250472.P7108117646469695259

`A266646(A064989(2*n+1))`
-/

namespace A250472.P7108117646469695259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A064989 (2 * n + 1)).toNat

end

end A250472.P7108117646469695259

/-! ## A250472.P5236294366121689178

`A266646(A283463(2*(n+1)))`
-/

namespace A250472.P5236294366121689178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A283463 (2 * (n + 1))).toNat

end

end A250472.P5236294366121689178

/-! ## A250472.P12128410455450711527

`A266415(A266407(n+1))`
-/

namespace A250472.P12128410455450711527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A266407 (n + 1)).toNat

end

end A250472.P12128410455450711527

/-! ## A250472.P3801180792289860272

`A252756(A252755(A253554(2*n+1)))`
-/

namespace A250472.P3801180792289860272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A252755 (A253554 (2 * n + 1)).toNat).toNat

end

end A250472.P3801180792289860272

/-! ## A250472.P1823362072187285005

`A252756(A252755(A268674(2*n+1)))`
-/

namespace A250472.P1823362072187285005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A252755 (A268674 (2 * n + 1)).toNat).toNat

end

end A250472.P1823362072187285005

/-!
# A250473: Length of the maximal prefix of noncomposite numbers on row n of A249821.

The programs for A250473, the canonical program `A250473.P15728952414264512561` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250473 has offset 1).

The definition of A250473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250473.P11125388860388757715

`A054272(n+1)+1`
-/

namespace A250473.P11125388860388757715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + 1

end

end A250473.P11125388860388757715

namespace A250473

/-- `A054272(n+1)+1` -/
def P11125388860388757715.Spec : Prop :=
  ∀ n, P11125388860388757715.a n = A250473 (n + 1)

theorem P11125388860388757715.correct : P11125388860388757715.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P11125388860388757715.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P4719050598232524288

`A250474(n+1)-1`
-/

namespace A250473.P4719050598232524288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 1

end

end A250473.P4719050598232524288

namespace A250473

/-- `A250474(n+1)-1` -/
def P4719050598232524288.Spec : Prop :=
  ∀ n, P4719050598232524288.a n = A250473 (n + 1)

theorem P4719050598232524288.correct : P4719050598232524288.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P4719050598232524288.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P15728952414264512561

`2+A000879(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A250473

/-- `2+A000879(n+1)-(n+1)` -/
def P15728952414264512561.Spec : Prop :=
  ∀ n, P15728952414264512561.a n = A250473 (n + 1)

theorem P15728952414264512561.correct : P15728952414264512561.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel]

end A250473

/-! ## A250473.P17556114602894581767

`1+A054272(n+1)`
-/

namespace A250473.P17556114602894581767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A054272 (n + 1)

end

end A250473.P17556114602894581767

namespace A250473

/-- `1+A054272(n+1)` -/
def P17556114602894581767.Spec : Prop :=
  ∀ n, P17556114602894581767.a n = A250473 (n + 1)

theorem P17556114602894581767.correct : P17556114602894581767.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P17556114602894581767.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P12096628154002970896

`∑[A050216(n)-1]+2`
-/

namespace A250473.P12096628154002970896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A250473.P12096628154002970896

namespace A250473

/-- `∑[A050216(n)-1]+2` -/
def P12096628154002970896.Spec : Prop :=
  ∀ n, P12096628154002970896.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P15342553351118569018

`1-n+A000879(n+1)`
-/

namespace A250473.P15342553351118569018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + A000879 (n + 1)

end

end A250473.P15342553351118569018

namespace A250473

/-- `1-n+A000879(n+1)` -/
def P15342553351118569018.Spec : Prop :=
  ∀ n, P15342553351118569018.a n = A250473 (n + 1)

theorem P15342553351118569018.correct : P15342553351118569018.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P15342553351118569018.a, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A250473

/-! ## A250473.P18424737651262095797

`A251723(n)+a(n-1)` with `a(0)=3`
-/

namespace A250473.P18424737651262095797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A251723 n + a (n - 1)

end

end A250473.P18424737651262095797

namespace A250473

/-- `A251723(n)+a(n-1)` -/
def P18424737651262095797.Spec : Prop :=
  ∀ n, P18424737651262095797.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P11705425836222447433

`A000879(-xor(n, -1))-(n-1)`
-/

namespace A250473.P11705425836222447433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (-Int.xor (n : ℤ) (-1)).toNat - ((n : ℤ) - 1)

end

end A250473.P11705425836222447433

namespace A250473

/-- `A000879(-xor(n, -1))-(n-1)` -/
def P11705425836222447433.Spec : Prop :=
  ∀ n, P11705425836222447433.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P16932426887407776958

`A000879(Δ[n²]-n)-(n-1)`
-/

namespace A250473.P16932426887407776958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - ((n : ℤ) - 1)

end

end A250473.P16932426887407776958

namespace A250473

/-- `A000879(Δ[n²]-n)-(n-1)` -/
def P16932426887407776958.Spec : Prop :=
  ∀ n, P16932426887407776958.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P14183648683422531441

`A001489(n)+A000879(n+1)+1`
-/

namespace A250473.P14183648683422531441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A000879 (n + 1) + 1)

end

end A250473.P14183648683422531441

namespace A250473

/-- `A001489(n)+A000879(n+1)+1` -/
def P14183648683422531441.Spec : Prop :=
  ∀ n, P14183648683422531441.a n = A250473 (n + 1)

theorem P14183648683422531441.correct : P14183648683422531441.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P14183648683422531441.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A001489, A001489.P15233530513763566776.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P7070017122467591995

`A001478(n+1)+A000879(n+1)+2`
-/

namespace A250473.P7070017122467591995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A000879 (n + 1) + 2)

end

end A250473.P7070017122467591995

namespace A250473

/-- `A001478(n+1)+A000879(n+1)+2` -/
def P7070017122467591995.Spec : Prop :=
  ∀ n, P7070017122467591995.a n = A250473 (n + 1)

theorem P7070017122467591995.correct : P7070017122467591995.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P7070017122467591995.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A001478, A001478.P11279598861711037921.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P1009455875918919564

`A001248(n+1)-(A120389(n+1)+n)`
-/

namespace A250473.P1009455875918919564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A120389 (n + 1) + (n : ℤ))

end

end A250473.P1009455875918919564

namespace A250473

/-- `A001248(n+1)-(A120389(n+1)+n)` -/
def P1009455875918919564.Spec : Prop :=
  ∀ n, P1009455875918919564.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P5325537526586525020

`A000040(n+1)²-(A120389(n+1)+n)`
-/

namespace A250473.P5325537526586525020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A120389 (n + 1) + (n : ℤ))

end

end A250473.P5325537526586525020

namespace A250473

/-- `A000040(n+1)²-(A120389(n+1)+n)` -/
def P5325537526586525020.Spec : Prop :=
  ∀ n, P5325537526586525020.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P5998027225366399157

`A066883(n+1)+A008864(n+1)`
-/

namespace A250473.P5998027225366399157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A008864 (n + 1)

end

end A250473.P5998027225366399157

namespace A250473

/-- `A066883(n+1)+A008864(n+1)` -/
def P5998027225366399157.Spec : Prop :=
  ∀ n, P5998027225366399157.a n = A250473 (n + 1)

theorem P5998027225366399157.correct : P5998027225366399157.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P5998027225366399157.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A008864, A008864.P9177617808325052279.a, A066883, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P3833396917840710973

`A000040(n+1)+A066883(n+1)+1`
-/

namespace A250473.P3833396917840710973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A066883 (n + 1) + 1)

end

end A250473.P3833396917840710973

namespace A250473

/-- `A000040(n+1)+A066883(n+1)+1` -/
def P3833396917840710973.Spec : Prop :=
  ∀ n, P3833396917840710973.a n = A250473 (n + 1)

theorem P3833396917840710973.correct : P3833396917840710973.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P3833396917840710973.a, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A066883, A066883.P6672544760734734469.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P4061495562211746756

`A006093(n+1)+A066883(n+1)+2`
-/

namespace A250473.P4061495562211746756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A066883 (n + 1) + 2)

end

end A250473.P4061495562211746756

namespace A250473

/-- `A006093(n+1)+A066883(n+1)+2` -/
def P4061495562211746756.Spec : Prop :=
  ∀ n, P4061495562211746756.a n = A250473 (n + 1)

theorem P4061495562211746756.correct : P4061495562211746756.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P4061495562211746756.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A006093, A006093.P2906174024863549003.a, A066883, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P13585220261379855036

`A052147(n+1)+A066883(n+1)-1`
-/

namespace A250473.P13585220261379855036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (A066883 (n + 1) - 1)

end

end A250473.P13585220261379855036

namespace A250473

/-- `A052147(n+1)+A066883(n+1)-1` -/
def P13585220261379855036.Spec : Prop :=
  ∀ n, P13585220261379855036.a n = A250473 (n + 1)

theorem P13585220261379855036.correct : P13585220261379855036.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P13585220261379855036.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A052147, A052147.P15217781913070555828.a, A066883, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-! ## A250473.P17881924522734950062

`A014688(n+1)+A066883(n+1)-n`
-/

namespace A250473.P17881924522734950062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + (A066883 (n + 1) - (n : ℤ))

end

end A250473.P17881924522734950062

namespace A250473

/-- `A014688(n+1)+A066883(n+1)-n` -/
def P17881924522734950062.Spec : Prop :=
  ∀ n, P17881924522734950062.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P3150374285048323178

`A066883(n+1)+A000203(A000040(n+1))`
-/

namespace A250473.P3150374285048323178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A000203 (A000040 (n + 1)).toNat

end

end A250473.P3150374285048323178

namespace A250473

/-- `A066883(n+1)+A000203(A000040(n+1))` -/
def P3150374285048323178.Spec : Prop :=
  ∀ n, P3150374285048323178.a n = A250473 (n + 1)

end A250473

/-! ## A250473.P4398675352364108468

`A101301(n+1)+A276824(n+1)+2`
-/

namespace A250473.P4398675352364108468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) + (A276824 (n + 1) + 2)

end

end A250473.P4398675352364108468

namespace A250473

/-- `A101301(n+1)+A276824(n+1)+2` -/
def P4398675352364108468.Spec : Prop :=
  ∀ n, P4398675352364108468.a n = A250473 (n + 1)

theorem P4398675352364108468.correct : P4398675352364108468.Spec := by
  intro n
  simp only [A250473, Nat.add_sub_cancel, A250473.P4398675352364108468.a, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A101301, A101301.P12618163721935666644.a, A276824, A276824.P1865868106888623118.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A007504, A007504.P14310834286015847203.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250473

/-!
# A250474: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^3: a(n) = A078898(A030078(n)).

The programs for A250474, the canonical program `A250474.P15580657759443600580` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250474 has offset 1).

The definition of A250474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250474.P4658702868108655592

`3+A000879(n+1)-(n+1)`
-/

namespace A250474.P4658702868108655592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A000879 (n + 1) - (n + 1 : ℤ)

end

end A250474.P4658702868108655592

namespace A250474

/-- `3+A000879(n+1)-(n+1)` -/
def P4658702868108655592.Spec : Prop :=
  ∀ n, P4658702868108655592.a n = A250474 (n + 1)

theorem P4658702868108655592.correct : P4658702868108655592.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P4658702868108655592.a, A250474.P15580657759443600580.a, A000879, A000879.P11642258310759995278.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P16756851202637876980

`A054272(n+1)+2`
-/

namespace A250474.P16756851202637876980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + 2

end

end A250474.P16756851202637876980

namespace A250474

/-- `A054272(n+1)+2` -/
def P16756851202637876980.Spec : Prop :=
  ∀ n, P16756851202637876980.a n = A250474 (n + 1)

theorem P16756851202637876980.correct : P16756851202637876980.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P16756851202637876980.a, A250474.P15580657759443600580.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P15580657759443600580

`A250473(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A250474

/-- `A250473(n+1)+1` -/
def P15580657759443600580.Spec : Prop :=
  ∀ n, P15580657759443600580.a n = A250474 (n + 1)

theorem P15580657759443600580.correct : P15580657759443600580.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel]

end A250474

/-! ## A250474.P410628639912438778

`3+A000720(A000040(n+1)²)-(n+1)`
-/

namespace A250474.P410628639912438778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A000720 (A000040 (n + 1) ^ 2).toNat - (n + 1 : ℤ)

end

end A250474.P410628639912438778

namespace A250474

/-- `3+A000720(A000040(n+1)²)-(n+1)` -/
def P410628639912438778.Spec : Prop :=
  ∀ n, P410628639912438778.a n = A250474 (n + 1)

theorem P410628639912438778.correct : P410628639912438778.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P410628639912438778.a, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P7598689152304812772

`∑[A050216(n)-1]+3`
-/

namespace A250474.P7598689152304812772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A250474.P7598689152304812772

namespace A250474

/-- `∑[A050216(n)-1]+3` -/
def P7598689152304812772.Spec : Prop :=
  ∀ n, P7598689152304812772.a n = A250474 (n + 1)

end A250474

/-! ## A250474.P4460978769210392434

`A000879(n+1)+2-n`
-/

namespace A250474.P4460978769210392434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + (2 - (n : ℤ))

end

end A250474.P4460978769210392434

namespace A250474

/-- `A000879(n+1)+2-n` -/
def P4460978769210392434.Spec : Prop :=
  ∀ n, P4460978769210392434.a n = A250474 (n + 1)

theorem P4460978769210392434.correct : P4460978769210392434.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P4460978769210392434.a, A250474.P15580657759443600580.a, A000879, A000879.P11642258310759995278.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P6218637541738274060

`A251723(n)+a(n-1)` with `a(0)=4`
-/

namespace A250474.P6218637541738274060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A251723 n + a (n - 1)

end

end A250474.P6218637541738274060

namespace A250474

/-- `A251723(n)+a(n-1)` -/
def P6218637541738274060.Spec : Prop :=
  ∀ n, P6218637541738274060.a n = A250474 (n + 1)

end A250474

/-! ## A250474.P17671353574399207305

`∑[A050216(n)]-A023444(n)`
-/

namespace A250474.P17671353574399207305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023444 n

end

end A250474.P17671353574399207305

namespace A250474

/-- `∑[A050216(n)]-A023444(n)` -/
def P17671353574399207305.Spec : Prop :=
  ∀ n, P17671353574399207305.a n = A250474 (n + 1)

end A250474

/-! ## A250474.P3172295396652123638

`A022958(n)+A000879(n+1)`
-/

namespace A250474.P3172295396652123638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n + A000879 (n + 1)

end

end A250474.P3172295396652123638

namespace A250474

/-- `A022958(n)+A000879(n+1)` -/
def P3172295396652123638.Spec : Prop :=
  ∀ n, P3172295396652123638.a n = A250474 (n + 1)

theorem P3172295396652123638.correct : P3172295396652123638.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P3172295396652123638.a, A250474.P15580657759443600580.a, A000879, A000879.P11642258310759995278.a, A022958, A022958.P1044776346471009207.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P1300060309894332660

`1-n+A001248(n+1)-A120389(n+1)`
-/

namespace A250474.P1300060309894332660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A001248 (n + 1) - A120389 (n + 1))

end

end A250474.P1300060309894332660

namespace A250474

/-- `1-n+A001248(n+1)-A120389(n+1)` -/
def P1300060309894332660.Spec : Prop :=
  ∀ n, P1300060309894332660.a n = A250474 (n + 1)

end A250474

/-! ## A250474.P8209297793694256970

`2+A054272(n+1)`
-/

namespace A250474.P8209297793694256970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A054272 (n + 1)

end

end A250474.P8209297793694256970

namespace A250474

/-- `2+A054272(n+1)` -/
def P8209297793694256970.Spec : Prop :=
  ∀ n, P8209297793694256970.a n = A250474 (n + 1)

theorem P8209297793694256970.correct : P8209297793694256970.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P8209297793694256970.a, A250474.P15580657759443600580.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P17003919799193725881

`A066883(n+1)+A052147(n+1)`
-/

namespace A250474.P17003919799193725881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A052147 (n + 1)

end

end A250474.P17003919799193725881

namespace A250474

/-- `A066883(n+1)+A052147(n+1)` -/
def P17003919799193725881.Spec : Prop :=
  ∀ n, P17003919799193725881.a n = A250474 (n + 1)

theorem P17003919799193725881.correct : P17003919799193725881.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P17003919799193725881.a, A250474.P15580657759443600580.a, A052147, A052147.P15217781913070555828.a, A066883, A066883.P6672544760734734469.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P8432907567715844686

`A008864(n+1)+A066883(n+1)+1`
-/

namespace A250474.P8432907567715844686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A066883 (n + 1) + 1)

end

end A250474.P8432907567715844686

namespace A250474

/-- `A008864(n+1)+A066883(n+1)+1` -/
def P8432907567715844686.Spec : Prop :=
  ∀ n, P8432907567715844686.a n = A250474 (n + 1)

theorem P8432907567715844686.correct : P8432907567715844686.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P8432907567715844686.a, A250474.P15580657759443600580.a, A008864, A008864.P9177617808325052279.a, A066883, A066883.P6672544760734734469.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P5752158509168272966

`A000040(n+1)+A066883(n+1)+2`
-/

namespace A250474.P5752158509168272966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A066883 (n + 1) + 2)

end

end A250474.P5752158509168272966

namespace A250474

/-- `A000040(n+1)+A066883(n+1)+2` -/
def P5752158509168272966.Spec : Prop :=
  ∀ n, P5752158509168272966.a n = A250474 (n + 1)

theorem P5752158509168272966.correct : P5752158509168272966.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P5752158509168272966.a, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066883, A066883.P6672544760734734469.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P12611222087507929284

`A062773(n+1)+1-n`
-/

namespace A250474.P12611222087507929284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + (1 - (n : ℤ))

end

end A250474.P12611222087507929284

namespace A250474

/-- `A062773(n+1)+1-n` -/
def P12611222087507929284.Spec : Prop :=
  ∀ n, P12611222087507929284.a n = A250474 (n + 1)

end A250474

/-! ## A250474.P7044942827403081704

`A181962(n+1)+A165747(n)`
-/

namespace A250474.P7044942827403081704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) + A165747 n

end

end A250474.P7044942827403081704

namespace A250474

/-- `A181962(n+1)+A165747(n)` -/
def P7044942827403081704.Spec : Prop :=
  ∀ n, P7044942827403081704.a n = A250474 (n + 1)

theorem P7044942827403081704.correct : P7044942827403081704.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P7044942827403081704.a, A250474.P15580657759443600580.a, A165747, A165747.P841094423596546419.a, A181962, A181962.P15147201020200271264.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P13665679326214866947

`A181962(n+1)-A060747(n)`
-/

namespace A250474.P13665679326214866947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - A060747 n

end

end A250474.P13665679326214866947

namespace A250474

/-- `A181962(n+1)-A060747(n)` -/
def P13665679326214866947.Spec : Prop :=
  ∀ n, P13665679326214866947.a n = A250474 (n + 1)

theorem P13665679326214866947.correct : P13665679326214866947.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P13665679326214866947.a, A250474.P15580657759443600580.a, A060747, A060747.P16920431360270313306.a, A181962, A181962.P15147201020200271264.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P5769769278447764910

`A250477(n+1)-A256447(n+1)`
-/

namespace A250474.P5769769278447764910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - A256447 (n + 1)

end

end A250474.P5769769278447764910

namespace A250474

/-- `A250477(n+1)-A256447(n+1)` -/
def P5769769278447764910.Spec : Prop :=
  ∀ n, P5769769278447764910.a n = A250474 (n + 1)

theorem P5769769278447764910.correct : P5769769278447764910.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P5769769278447764910.a, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P10380713244521369131

`A250477(n+1)-(A256468(n+1)+1)`
-/

namespace A250474.P10380713244521369131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A256468 (n + 1) + 1)

end

end A250474.P10380713244521369131

namespace A250474

/-- `A250477(n+1)-(A256468(n+1)+1)` -/
def P10380713244521369131.Spec : Prop :=
  ∀ n, P10380713244521369131.a n = A250474 (n + 1)

theorem P10380713244521369131.correct : P10380713244521369131.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P10380713244521369131.a, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-! ## A250474.P17492031804733617959

`A250477(n+1)+A256448(n+1)-A251723(n+1)`
-/

namespace A250474.P17492031804733617959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) + (A256448 (n + 1) - A251723 (n + 1))

end

end A250474.P17492031804733617959

namespace A250474

/-- `A250477(n+1)+A256448(n+1)-A251723(n+1)` -/
def P17492031804733617959.Spec : Prop :=
  ∀ n, P17492031804733617959.a n = A250474 (n + 1)

theorem P17492031804733617959.correct : P17492031804733617959.Spec := by
  intro n
  simp only [A250474, Nat.add_sub_cancel, A250474.P17492031804733617959.a, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256448, A256448.P8888948745584736931.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250474

/-!
# A250475: Permutation of natural numbers: a(n) = A249824(A249825(n)).

The programs for A250475, the canonical program `A250475.P6400634971991796312` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250475 has offset 1).

The definition of A250475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250475.P1711955414110411510

`A249824(A249825(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250475.P1711955414110411510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (A249825 (n + 1)).toNat

end

end A250475.P1711955414110411510

namespace A250475

/-- `A249824(A249825(n+1))` -/
def P1711955414110411510.Spec : Prop :=
  ∀ n, P1711955414110411510.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P6400634971991796312

`A008620(A064989(A007775(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A250475

/-- `A008620(A064989(A007775(n+1)))` -/
def P6400634971991796312.Spec : Prop :=
  ∀ n, P6400634971991796312.a n = A250475 (n + 1)

theorem P6400634971991796312.correct : P6400634971991796312.Spec := by
  intro n
  simp only [A250475, Nat.add_sub_cancel]

end A250475

/-! ## A250475.P9995616505202101408

`A008620(A283463(5*or(1, 3*n+1)))`
-/

namespace A250475.P9995616505202101408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A283463 (5 * Nat.lor 1 (3 * n + 1))).toNat

end

end A250475.P9995616505202101408

namespace A250475

/-- `A008620(A283463(5*or(1, 3*n+1)))` -/
def P9995616505202101408.Spec : Prop :=
  ∀ n, P9995616505202101408.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P453592559426471689

`A008620(A283463(5*(∑[3^(n%2)]+n)))`
-/

namespace A250475.P453592559426471689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A283463 (5 * (∑ j ∈ Finset.range (n + 1), f1 j + n))).toNat

end

end A250475.P453592559426471689

namespace A250475

/-- `A008620(A283463(5*(∑[3^(n%2)]+n)))` -/
def P453592559426471689.Spec : Prop :=
  ∀ n, P453592559426471689.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P6469229328641539064

`A078898(A266645(5*or(1, 3*n+1)))`
-/

namespace A250475.P6469229328641539064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A266645 (5 * Nat.lor 1 (3 * n + 1))).toNat

end

end A250475.P6469229328641539064

namespace A250475

/-- `A078898(A266645(5*or(1, 3*n+1)))` -/
def P6469229328641539064.Spec : Prop :=
  ∀ n, P6469229328641539064.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P14932902291422558592

`A078898(A064989(A084968(n+1)))`
-/

namespace A250475.P14932902291422558592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064989 (A084968 (n + 1)).toNat).toNat

end

end A250475.P14932902291422558592

namespace A250475

/-- `A078898(A064989(A084968(n+1)))` -/
def P14932902291422558592.Spec : Prop :=
  ∀ n, P14932902291422558592.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P350645174648927514

`A078898(A064989(A250469(A250469(A016945(n)))))`
-/

namespace A250475.P350645174648927514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064989 (A250469 (A250469 (A016945 n).toNat).toNat).toNat).toNat

end

end A250475.P350645174648927514

namespace A250475

/-- `A078898(A064989(A250469(A250469(A016945(n)))))` -/
def P350645174648927514.Spec : Prop :=
  ∀ n, P350645174648927514.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P1400247464210662066

`A078898(A246277(3*A084968(n+1)))`
-/

namespace A250475.P1400247464210662066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A246277 (3 * A084968 (n + 1)).toNat).toNat

end

end A250475.P1400247464210662066

namespace A250475

/-- `A078898(A246277(3*A084968(n+1)))` -/
def P1400247464210662066.Spec : Prop :=
  ∀ n, P1400247464210662066.a n = A250475 (n + 1)

end A250475

/-! ## A250475.P6603576012062730969

`A249824(A246277(or(1, A084968(n+1))))`
-/

namespace A250475.P6603576012062730969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (A246277 (Int.lor 1 (A084968 (n + 1))).toNat).toNat

end

end A250475.P6603576012062730969

namespace A250475

/-- `A249824(A246277(or(1, A084968(n+1))))` -/
def P6603576012062730969.Spec : Prop :=
  ∀ n, P6603576012062730969.a n = A250475 (n + 1)

end A250475

/-!
# A250476: Permutation of natural numbers: a(n) = A249826(A249823(n)).

The programs for A250476, there is no canonical definition to state claims against.
-/

/-! ## A250476.P10920156409698862467

`A249826(A249823(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250476.P10920156409698862467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249826 (A249823 (n + 1)).toNat

end

end A250476.P10920156409698862467

/-! ## A250476.P5963625046223237924

`A249810(5*or(1, 3*n+1))`
-/

namespace A250476.P5963625046223237924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (5 * Nat.lor 1 (3 * n + 1))

end

end A250476.P5963625046223237924

/-! ## A250476.P15641242431351235803

`A249810(10/gcd(2, n)+15*n)`
-/

namespace A250476.P15641242431351235803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (SequenceMachineLib.roundAway (10 / (Nat.gcd 2 n : ℚ) + (15 * n : ℚ))).toNat

end

end A250476.P15641242431351235803

/-! ## A250476.P13677068400649965000

`A249810(5*lt[3*n, lcm(6, n)])`
-/

namespace A250476.P13677068400649965000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (5 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A250476.P13677068400649965000

/-! ## A250476.P17069512483708293396

`A249810(5*(2-or(1, -(3*n))))`
-/

namespace A250476.P17069512483708293396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (5 * (2 - Int.lor 1 (-(3 * n : ℤ)))).toNat

end

end A250476.P17069512483708293396

/-! ## A250476.P18363338229774491511

`A249810(5*record[lcm(3, or(1, n))]/3)`
-/

namespace A250476.P18363338229774491511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (SequenceMachineLib.roundAway (5 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3))).toNat

end

end A250476.P18363338229774491511

/-! ## A250476.P4528741922252328938

`A249810(5*(∑[3^(n%2)]+n))`
-/

namespace A250476.P4528741922252328938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (5 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A250476.P4528741922252328938

/-! ## A250476.P12377573199894502905

`A249810(5*Δ[floor(3/2*n²)])`
-/

namespace A250476.P12377573199894502905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (5 * (f1 (n + 1) - f1 n)).toNat

end

end A250476.P12377573199894502905

/-! ## A250476.P3352960517235201152

`A078898(A003961(A084967(n+1)))`
-/

namespace A250476.P3352960517235201152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A084967 (n + 1)).toNat).toNat

end

end A250476.P3352960517235201152

/-! ## A250476.P3561304933631042721

`A078898(A003961(5*A007310(n+1)))`
-/

namespace A250476.P3561304933631042721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (5 * A007310 (n + 1)).toNat).toNat

end

end A250476.P3561304933631042721

/-! ## A250476.P9205740059438641831

`A078898(A003961(A253886(6*n+2)+1))`
-/

namespace A250476.P9205740059438641831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A253886 (6 * n + 2) + 1).toNat).toNat

end

end A250476.P9205740059438641831

/-! ## A250476.P15386207153869282944

`A078898(A003961(A250469(A016945(n))))`
-/

namespace A250476.P15386207153869282944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A250469 (A016945 n).toNat).toNat).toNat

end

end A250476.P15386207153869282944

/-! ## A250476.P14874767102319634798

`A078898(A003961(A007310(A273669(n+1))))`
-/

namespace A250476.P14874767102319634798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A007310 (A273669 (n + 1)).toNat).toNat).toNat

end

end A250476.P14874767102319634798

/-!
# A250477: Number of times prime(n) (the n-th prime) occurs as the least prime factor among numbers 1 .. (prime(n)^2 * prime(n+1)): a(n) = A078898(A251720(n)).

The programs for A250477, the canonical program `A250477.P16411795154775873264` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250477 has offset 1).

The definition of A250477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250477.P8034250429275495181

`A250474(n+1)+A256447(n+1)`
-/

namespace A250477.P8034250429275495181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + A256447 (n + 1)

end

end A250477.P8034250429275495181

namespace A250477

/-- `A250474(n+1)+A256447(n+1)` -/
def P8034250429275495181.Spec : Prop :=
  ∀ n, P8034250429275495181.a n = A250477 (n + 1)

theorem P8034250429275495181.correct : P8034250429275495181.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P8034250429275495181.a, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P16411795154775873264

`A120941(n+1)+3`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A250477

/-- `A120941(n+1)+3` -/
def P16411795154775873264.Spec : Prop :=
  ∀ n, P16411795154775873264.a n = A250477 (n + 1)

theorem P16411795154775873264.correct : P16411795154775873264.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel]

end A250477

/-! ## A250477.P3266238978877945331

`A250474(n+2)-A256448(n+1)`
-/

namespace A250477.P3266238978877945331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 2) - A256448 (n + 1)

end

end A250477.P3266238978877945331

namespace A250477

/-- `A250474(n+2)-A256448(n+1)` -/
def P3266238978877945331.Spec : Prop :=
  ∀ n, P3266238978877945331.a n = A250477 (n + 1)

theorem P3266238978877945331.correct : P3266238978877945331.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P3266238978877945331.a, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P447729303137967761

`A250473(n+1)+A256447(n+1)+1`
-/

namespace A250477.P447729303137967761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + (A256447 (n + 1) + 1)

end

end A250477.P447729303137967761

namespace A250477

/-- `A250473(n+1)+A256447(n+1)+1` -/
def P447729303137967761.Spec : Prop :=
  ∀ n, P447729303137967761.a n = A250477 (n + 1)

theorem P447729303137967761.correct : P447729303137967761.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P447729303137967761.a, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P12655745381734304913

`A250474(n+1)+A256468(n+1)+1`
-/

namespace A250477.P12655745381734304913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + (A256468 (n + 1) + 1)

end

end A250477.P12655745381734304913

namespace A250477

/-- `A250474(n+1)+A256468(n+1)+1` -/
def P12655745381734304913.Spec : Prop :=
  ∀ n, P12655745381734304913.a n = A250477 (n + 1)

theorem P12655745381734304913.correct : P12655745381734304913.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P12655745381734304913.a, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256468, A256468.P15833489412511418299.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P3447646173802374050

`A054272(n+1)+A256447(n+1)+2`
-/

namespace A250477.P3447646173802374050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + (A256447 (n + 1) + 2)

end

end A250477.P3447646173802374050

namespace A250477

/-- `A054272(n+1)+A256447(n+1)+2` -/
def P3447646173802374050.Spec : Prop :=
  ∀ n, P3447646173802374050.a n = A250477 (n + 1)

theorem P3447646173802374050.correct : P3447646173802374050.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P3447646173802374050.a, A250477.P16411795154775873264.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P16188229878040564530

`A256468(n+1)+A054272(n+1)+3`
-/

namespace A250477.P16188229878040564530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + A054272 (n + 1) + 3

end

end A250477.P16188229878040564530

namespace A250477

/-- `A256468(n+1)+A054272(n+1)+3` -/
def P16188229878040564530.Spec : Prop :=
  ∀ n, P16188229878040564530.a n = A250477 (n + 1)

theorem P16188229878040564530.correct : P16188229878040564530.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P16188229878040564530.a, A250477.P16411795154775873264.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A256468, A256468.P15833489412511418299.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P11658932377914930254

`A250474(n+1)+A256449(n+1)+A256448(n+1)`
-/

namespace A250477.P11658932377914930254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + (A256449 (n + 1) + A256448 (n + 1))

end

end A250477.P11658932377914930254

namespace A250477

/-- `A250474(n+1)+A256449(n+1)+A256448(n+1)` -/
def P11658932377914930254.Spec : Prop :=
  ∀ n, P11658932377914930254.a n = A250477 (n + 1)

theorem P11658932377914930254.correct : P11658932377914930254.Spec := by
  intro n
  simp only [A250477, Nat.add_sub_cancel, A250477.P11658932377914930254.a, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A250477

/-! ## A250477.P3292708760025258519

`A050216(n+1)+A250473(n+1)-A256448(n+1)`
-/

namespace A250477.P3292708760025258519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) + (A250473 (n + 1) - A256448 (n + 1))

end

end A250477.P3292708760025258519

namespace A250477

/-- `A050216(n+1)+A250473(n+1)-A256448(n+1)` -/
def P3292708760025258519.Spec : Prop :=
  ∀ n, P3292708760025258519.a n = A250477 (n + 1)

end A250477

/-! ## A250477.P7854929654177641780

`A256447(n+1)+A079047(n+1)+3`
-/

namespace A250477.P7854929654177641780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + A079047 (n + 1) + 3

end

end A250477.P7854929654177641780

namespace A250477

/-- `A256447(n+1)+A079047(n+1)+3` -/
def P7854929654177641780.Spec : Prop :=
  ∀ n, P7854929654177641780.a n = A250477 (n + 1)

end A250477

/-!
# A250478: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^4: a(n) = A078898(A030514(n)).

The programs for A250478, the canonical program `A250478.P6482971320127735987` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250478 has offset 1).

The definition of A250478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A250478.P6482971320127735987

`∑{d}[A002110(n), A008683(#)*floor(A000040(n+1)^3/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A250478

/-- `∑{d}[A002110(n), A008683(#)*floor(A000040(n+1)^3/#)]` -/
def P6482971320127735987.Spec : Prop :=
  ∀ n, P6482971320127735987.a n = A250478 (n + 1)

theorem P6482971320127735987.correct : P6482971320127735987.Spec := by
  intro n
  simp only [A250478, Nat.add_sub_cancel]

end A250478

/-! ## A250478.P15666809496794913941

`A249822(eq[5, A219347(n)])`
-/

namespace A250478.P15666809496794913941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250478.P15666809496794913941

namespace A250478

/-- `A249822(eq[5, A219347(n)])` -/
def P15666809496794913941.Spec : Prop :=
  ∀ n, P15666809496794913941.a n = A250478 (n + 1)

end A250478

/-! ## A250478.P1271518213562348953

`A249822(eq[7, A193592(n)])`
-/

namespace A250478.P1271518213562348953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250478.P1271518213562348953

namespace A250478

/-- `A249822(eq[7, A193592(n)])` -/
def P1271518213562348953.Spec : Prop :=
  ∀ n, P1271518213562348953.a n = A250478 (n + 1)

end A250478

/-! ## A250478.P10720641840041387761

`A249822(A155212(n+4)+1)`
-/

namespace A250478.P10720641840041387761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (A155212 (n + 4) + 1).toNat

end

end A250478.P10720641840041387761

namespace A250478

/-- `A249822(A155212(n+4)+1)` -/
def P10720641840041387761.Spec : Prop :=
  ∀ n, P10720641840041387761.a n = A250478 (n + 1)

end A250478

/-!
# A250479: Even bisection of A250470: a(n) = A250470(2n).

The programs for A250479, there is no canonical definition to state claims against.
-/

/-! ## A250479.P10249831842085072227

`A250470(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250479.P10249831842085072227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * (n + 1))

end

end A250479.P10249831842085072227

/-! ## A250479.P11034402520496483641

`A249817(A064989(n+1))`
-/

namespace A250479.P11034402520496483641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A064989 (n + 1)).toNat

end

end A250479.P11034402520496483641

/-! ## A250479.P6318291115535732823

`A249817(abs(A290099(n+1)))`
-/

namespace A250479.P6318291115535732823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 |A290099 (n + 1)|.toNat

end

end A250479.P6318291115535732823

/-! ## A250479.P8653166960829392355

`A000027(A250470(n+2+n))`
-/

namespace A250479.P8653166960829392355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A250470 (n + 2 + n)).toNat

end

end A250479.P8653166960829392355

/-! ## A250479.P14042350916372158883

`A249817(∑{d}[n+1, A349127(#)])`
-/

namespace A250479.P14042350916372158883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (∑ d ∈ Nat.divisors (f1 n), A349127 d).toNat

end

end A250479.P14042350916372158883

/-! ## A250479.P15156288836591364970

`A250470(n+2+n)%A017041(n)`
-/

namespace A250479.P15156288836591364970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250470 (n + 2 + n)) (A017041 n)

end

end A250479.P15156288836591364970

/-! ## A250479.P3495901717587400500

`lcm(A020985(n), A250470(n+2+n))`
-/

namespace A250479.P3495901717587400500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A250470 (n + 2 + n))

end

end A250479.P3495901717587400500

/-! ## A250479.P7146495940487356091

`lcm(A008836(n+1), A250470(A103517(n)))`
-/

namespace A250479.P7146495940487356091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A250470 (A103517 n).toNat)

end

end A250479.P7146495940487356091

/-! ## A250479.P144023358950139994

`A250470(A051755(n+2))-val(A000040(n+1), 2)`
-/

namespace A250479.P144023358950139994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A051755 (n + 2)).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A250479.P144023358950139994

/-! ## A250479.P7069281556254688803

`gcd(A000038(n), A250470(A249817(n+1)))`
-/

namespace A250479.P7069281556254688803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A250470 (A249817 (n + 1)).toNat)

end

end A250479.P7069281556254688803

/-! ## A250479.P3703570799647813231

`lcm(A033999(n), A250470(A249817(n+1)))`
-/

namespace A250479.P3703570799647813231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250470 (A249817 (n + 1)).toNat)

end

end A250479.P3703570799647813231

/-! ## A250479.P12295983913305993533

`A250245(A064989((n+1)*2^∑{e}[n+1, #]))`
-/

namespace A250479.P12295983913305993533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A064989 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))).toNat

end

end A250479.P12295983913305993533

/-! ## A250479.P14974737267699210616

`A268674(A250245((n+1)*2^∑{e}[n+1, #]))`
-/

namespace A250479.P14974737267699210616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A250245 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))).toNat

end

end A250479.P14974737267699210616

/-!
# A250480: a(1) = 0, and for n > 1: if n is a prime, a(n) = n, otherwise a(n) = A020639(n) - 1, where A020639(n) gives the least prime dividing n.

The programs for A250480, there is no canonical definition to state claims against.
-/

/-! ## A250480.P1879170642547134630

`A020639(n+1)-A005171(n+1)`
-/

namespace A250480.P1879170642547134630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A005171 (n + 1)

end

end A250480.P1879170642547134630

/-! ## A250480.P8535040946538173875

`A074828(n+1)-A089026(n+1)`
-/

namespace A250480.P8535040946538173875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1) - A089026 (n + 1)

end

end A250480.P8535040946538173875

/-! ## A250480.P10500671854556439423

`A061228(n+1)-A113636(n+1)`
-/

namespace A250480.P10500671854556439423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A113636 (n + 1)

end

end A250480.P10500671854556439423

/-! ## A250480.P11628255608116025262

`A113637(n+1)%A074828(n+1)`
-/

namespace A250480.P11628255608116025262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113637 (n + 1)) (A074828 (n + 1))

end

end A250480.P11628255608116025262

/-! ## A250480.P15017382250112268051

`A010051(n+1)+A020639(n+1)-1`
-/

namespace A250480.P15017382250112268051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A020639 (n + 1) - 1)

end

end A250480.P15017382250112268051

/-! ## A250480.P15272533369380070174

`A061228(n+1)-(A014684(n+1)+1)`
-/

namespace A250480.P15272533369380070174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (A014684 (n + 1) + 1)

end

end A250480.P15272533369380070174

/-! ## A250480.P9755196938586258844

`A020639(n+1)-C(n, A061397(n+1))`
-/

namespace A250480.P9755196938586258844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (Nat.choose n (A061397 (n + 1)).toNat : ℤ)

end

end A250480.P9755196938586258844

/-! ## A250480.P9224583064970796663

`A020639(n+1)-char[comp[A006093(n+1)]]`
-/

namespace A250480.P9224583064970796663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250480.P9224583064970796663

/-! ## A250480.P18261466737308514056

`A020639(n+1)-(1-A061007(n+1))²`
-/

namespace A250480.P18261466737308514056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (1 - A061007 (n + 1)) ^ 2

end

end A250480.P18261466737308514056

/-! ## A250480.P17559125013347793897

`A020639(n+1)-char[A018252(n+1)-1]`
-/

namespace A250480.P17559125013347793897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A250480.P17559125013347793897

/-! ## A250480.P9208789770784060234

`A300721(A020639(n+1))+A010051(n+1)`
-/

namespace A250480.P9208789770784060234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (A020639 (n + 1)).toNat + A010051 (n + 1)

end

end A250480.P9208789770784060234

/-! ## A250480.P17930040495177084091

`A010051(n+1)+A014963(A028233(n+1))-1`
-/

namespace A250480.P17930040495177084091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A014963 (A028233 (n + 1)).toNat - 1)

end

end A250480.P17930040495177084091

/-! ## A250480.P18444331093685659515

`A020639(n+1)+A000005(A089026(n+1))-2`
-/

namespace A250480.P18444331093685659515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A000005 (A089026 (n + 1)).toNat - 2)

end

end A250480.P18444331093685659515

/-! ## A250480.P12763508521969589847

`A010051(n+1)+A060681(n+1)/A032742(n+1)`
-/

namespace A250480.P12763508521969589847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) + (A060681 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A250480.P12763508521969589847

/-! ## A250480.P7363920489157874348

`A020639(n+1)-A063918(n+1)/A020639(n+1)`
-/

namespace A250480.P7363920489157874348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) - (A063918 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A250480.P7363920489157874348

/-! ## A250480.P2270872269187960368

`A020639(n+1)+A000720(n+1)-A000720(A151800(n))`
-/

namespace A250480.P2270872269187960368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A000720 (n + 1) - A000720 (A151800 n).toNat)

end

end A250480.P2270872269187960368

/-! ## A250480.P5374303389922115546

`(A065475(n+1)-A065475(A032742(n+1)))/A032742(n+1)`
-/

namespace A250480.P5374303389922115546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) - A065475 (A032742 (n + 1)).toNat : ℚ) / (A032742 (n + 1) : ℚ)

end

end A250480.P5374303389922115546

/-! ## A250480.P16485396405801508672

`(A087156(n+1)-A087156(A032742(n+1)))/A032742(n+1)`
-/

namespace A250480.P16485396405801508672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) - A087156 (A032742 (n + 1)).toNat : ℚ) / (A032742 (n + 1) : ℚ)

end

end A250480.P16485396405801508672

/-! ## A250480.P7530693564161540814

`A029578(A074828(n+1))`
-/

namespace A250480.P7530693564161540814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A074828 (n + 1)).toNat

end

end A250480.P7530693564161540814

/-!
# A250481: Primes of the form 2^x + y^2 with x, y > 0.

The programs for A250481, there is no canonical definition to state claims against.
-/

/-! ## A250481.P7280746452532437353

`record[p?[A134483(A193513(n))]]`
-/

namespace A250481.P7280746452532437353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (A193513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250481.P7280746452532437353

/-! ## A250481.P10057974115373379739

`p?[A267305(A020661(n+4))]`
-/

namespace A250481.P10057974115373379739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267305 (A020661 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250481.P10057974115373379739

/-! ## A250481.P8918823438577919422

`p?[record[A223490(A033570(n))]]`
-/

namespace A250481.P8918823438577919422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A033570 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250481.P8918823438577919422

/-! ## A250481.P13019654950971356686

`record[p?[A175966(A329854(n))]]`
-/

namespace A250481.P13019654950971356686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175966 (A329854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250481.P13019654950971356686

/-!
# A250482: Numbers of the form 2^x + y^2, with x and y >=0.

The programs for A250482, there is no canonical definition to state claims against.
-/

/-! ## A250482.P7898947891358275004

`lt[A355745(A000961(n+1)), A244540(n)]`
-/

namespace A250482.P7898947891358275004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (A000961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250482.P7898947891358275004

/-! ## A250482.P4021620076042849860

`lt[A296772(A248782(n+1)), A244540(n)]`
-/

namespace A250482.P4021620076042849860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (A248782 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250482.P4021620076042849860

/-!
# A250484: Square array: number of [0-r]-covering hierarchies with thickness <= e.

The programs for A250484, there is no canonical definition to state claims against.
-/

/-! ## A250484.P12461976437895978645

`A127321(A247506(n)^5)`
-/

namespace A250484.P12461976437895978645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A247506 n ^ 5).toNat

end

end A250484.P12461976437895978645

/-! ## A250484.P13463050040651839524

`A344511(A182172(n)^5)`
-/

namespace A250484.P13463050040651839524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A182172 n ^ 5).toNat

end

end A250484.P13463050040651839524

/-! ## A250484.P129134623994616261

`A344511(A247506(n)^5)`
-/

namespace A250484.P129134623994616261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A247506 n ^ 5).toNat

end

end A250484.P129134623994616261

/-! ## A250484.P17281370136760065426

`A344511((2*A182172(n)²)²)`
-/

namespace A250484.P17281370136760065426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 ((2 * A182172 n ^ 2) ^ 2).toNat

end

end A250484.P17281370136760065426

/-! ## A250484.P13518488373449269425

`A127321(A267479(n)*A293960(n))`
-/

namespace A250484.P13518488373449269425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A267479 n * A293960 n).toNat

end

end A250484.P13518488373449269425

/-!
# A250485: Regular triangle array: number of [0-r]-covering hierarchies with thickness = e.

The programs for A250485, there is no canonical definition to state claims against.
-/

/-! ## A250485.P13470764232565291818

`A334164(A227450(n+1)/2)`
-/

namespace A250485.P13470764232565291818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334164 (SequenceMachineLib.roundAway ((A227450 (n + 1) : ℚ) / 2)).toNat

end

end A250485.P13470764232565291818

/-! ## A250485.P9130860835699924590

`A089868(A059328(n)*A141539(n))`
-/

namespace A250485.P9130860835699924590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A059328 n * A141539 n).toNat

end

end A250485.P9130860835699924590

/-! ## A250485.P15461095887444799369

`A089869(A059328(n)*A141539(n))`
-/

namespace A250485.P15461095887444799369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A059328 n * A141539 n).toNat

end

end A250485.P15461095887444799369

/-! ## A250485.P14413860295696287219

`A334164(A059268(n)*A059328(n))`
-/

namespace A250485.P14413860295696287219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334164 (A059268 n * A059328 n).toNat

end

end A250485.P14413860295696287219

/-!
# A250486: A(n,k) is the n^k-th Fibonacci number; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A250486, there is no canonical definition to state claims against.
-/

/-! ## A250486.P8491250897763946647

`A000045(col(n)^(row(n)-col(n)))`
-/

namespace A250486.P8491250897763946647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat

end

end A250486.P8491250897763946647

/-! ## A250486.P3666050572745927755

`A000045(A004248(n))`
-/

namespace A250486.P3666050572745927755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004248 n).toNat

end

end A250486.P3666050572745927755

/-! ## A250486.P7793516465777883183

`A212804(A004248(n)+1)`
-/

namespace A250486.P7793516465777883183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A004248 n + 1).toNat

end

end A250486.P7793516465777883183

/-! ## A250486.P4621255882236694470

`A053602(2*A004248(n))`
-/

namespace A250486.P4621255882236694470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A004248 n).toNat

end

end A250486.P4621255882236694470

/-! ## A250486.P5363999167205266318

`A103609(2*A004248(n))`
-/

namespace A250486.P5363999167205266318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A004248 n).toNat

end

end A250486.P5363999167205266318

/-!
# A250490: (n^4)-th Fibonacci number.

The programs for A250490, there is no canonical definition to state claims against.
-/

/-! ## A250490.P17531493562799106414

`A000045(n^4)`
-/

namespace A250490.P17531493562799106414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 4)

end

end A250490.P17531493562799106414

/-!
# A250495: The n^n-th Fibonacci number.

The programs for A250495, there is no canonical definition to state claims against.
-/

/-! ## A250495.P13942188513677075974

`A000045(n^n)`
-/

namespace A250495.P13942188513677075974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ n)

end

end A250495.P13942188513677075974

/-!
# A250496: Number of (n+2)X(n+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250496, there is no canonical definition to state claims against.
-/

/-! ## A250496.P1431531162635343004

`A250504((n+1)²+n²)`
-/

namespace A250496.P1431531162635343004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 ((n + 1) ^ 2 + n ^ 2)

end

end A250496.P1431531162635343004

/-! ## A250496.P12486445088441972479

`lcm(2, A250504(A001844(n)))`
-/

namespace A250496.P12486445088441972479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250504 (A001844 n).toNat)

end

end A250496.P12486445088441972479

/-! ## A250496.P12161644493482296375

`A250504(A001844(n))*A254609(n)`
-/

namespace A250496.P12161644493482296375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A001844 n).toNat * A254609 n

end

end A250496.P12161644493482296375

/-!
# A250497: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250497, the canonical program `A250497.P5629535852931321434` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250497 has offset 1).

The definition of A250497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250497.P5629535852931321434

`A164406(n+3)^3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A250497

/-- `A164406(n+3)^3` -/
def P5629535852931321434.Spec : Prop :=
  ∀ n, P5629535852931321434.a n = A250497 (n + 1)

theorem P5629535852931321434.correct : P5629535852931321434.Spec := by
  intro n
  simp only [A250497, Nat.add_sub_cancel]

end A250497

/-! ## A250497.P3571977494007782531

`A250140(∑[1+n])^3`
-/

namespace A250497.P3571977494007782531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A250497.P3571977494007782531

namespace A250497

/-- `A250140(∑[1+n])^3` -/
def P3571977494007782531.Spec : Prop :=
  ∀ n, P3571977494007782531.a n = A250497 (n + 1)

end A250497

/-! ## A250497.P14922819523438270890

`A250140(A000217(n+1))^3*A000041(gcd(n, n+1))`
-/

namespace A250497.P14922819523438270890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 1)).toNat ^ 3 * A000041 (Nat.gcd n (n + 1))

end

end A250497.P14922819523438270890

namespace A250497

/-- `A250140(A000217(n+1))^3*A000041(gcd(n, n+1))` -/
def P14922819523438270890.Spec : Prop :=
  ∀ n, P14922819523438270890.a n = A250497 (n + 1)

end A250497

/-! ## A250497.P13256106764961066346

`(A250140(A000217(n+1))-val(A000040(2*(n+1)+1), 2))^3`
-/

namespace A250497.P13256106764961066346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A250140 (A000217 (n + 1)).toNat - (SequenceMachineLib.valuation (A000040 (2 * (n + 1) + 1)).toNat 2 : ℤ)) ^ 3

end

end A250497.P13256106764961066346

namespace A250497

/-- `(A250140(A000217(n+1))-val(A000040(2*(n+1)+1), 2))^3` -/
def P13256106764961066346.Spec : Prop :=
  ∀ n, P13256106764961066346.a n = A250497 (n + 1)

end A250497

/-! ## A250497.P8339881730058104322

`A250140(A000217(n+1))²*A250140(A000217(n+1))`
-/

namespace A250497.P8339881730058104322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (A000217 (n + 1)).toNat ^ 2 * A250140 (A000217 (n + 1)).toNat

end

end A250497.P8339881730058104322

namespace A250497

/-- `A250140(A000217(n+1))²*A250140(A000217(n+1))` -/
def P8339881730058104322.Spec : Prop :=
  ∀ n, P8339881730058104322.a n = A250497 (n + 1)

end A250497

/-!
# A250498: Number of (n+2)X(2+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250498, there is no canonical definition to state claims against.
-/

/-! ## A250498.P16128788349693723787

`A250504(∑[n+1]+2)`
-/

namespace A250498.P16128788349693723787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250498.P16128788349693723787

/-! ## A250498.P916285811946011971

`record[A250504(A257504(n+1)+1)]`
-/

namespace A250498.P916285811946011971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250498.P916285811946011971

/-! ## A250498.P13692796487227630587

`record[gcd(A002262(n), A250504(n+2))]`
-/

namespace A250498.P13692796487227630587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250504 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250498.P13692796487227630587

/-! ## A250498.P6014167630570513287

`record[A250504(Δ[A003453(n+5)])]`
-/

namespace A250498.P6014167630570513287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250498.P6014167630570513287

/-! ## A250498.P6707860028777378606

`record[gcd(A122283(n), A250504(n+3))]`
-/

namespace A250498.P6707860028777378606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122283 n) (A250504 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250498.P6707860028777378606

/-!
# A250499: Number of (n+2)X(3+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250499, there is no canonical definition to state claims against.
-/

/-! ## A250499.P12225747347443850457

`A250504(∑[n+2]+4)`
-/

namespace A250499.P12225747347443850457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250499.P12225747347443850457

/-! ## A250499.P12791360872618528066

`A250504(A167614(n+1))+A185264(n)`
-/

namespace A250499.P12791360872618528066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A167614 (n + 1)).toNat + A185264 n

end

end A250499.P12791360872618528066

/-! ## A250499.P13419240105981164856

`A250504(A167614(n+1))+A185284(n)`
-/

namespace A250499.P13419240105981164856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A167614 (n + 1)).toNat + A185284 n

end

end A250499.P13419240105981164856

/-! ## A250499.P5137159053079588213

`A250504(A167614(n+1))*A294775(n)`
-/

namespace A250499.P5137159053079588213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A167614 (n + 1)).toNat * A294775 n

end

end A250499.P5137159053079588213

/-! ## A250499.P4956243960960637866

`lcm(A034947(n+1), A250504(A167614(n+1)))`
-/

namespace A250499.P4956243960960637866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A250504 (A167614 (n + 1)).toNat)

end

end A250499.P4956243960960637866

