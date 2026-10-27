import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A265900: Main diagonal of arrays A265901 and A265903.

The programs for A265900, there is no canonical definition to state claims against.
-/

/-! ## A265900.P5717527375773132339

`A265901(∑[4*n]+1)`
-/

namespace A265900.P5717527375773132339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265900.P5717527375773132339

/-! ## A265900.P1246588721429607917

`A265903(∑[4*n]+1)`
-/

namespace A265900.P1246588721429607917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265903 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265900.P1246588721429607917

/-! ## A265900.P17209135060248563706

`and(-1, A265903(A001844(n)))`
-/

namespace A265900.P17209135060248563706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265903 (A001844 n).toNat)

end

end A265900.P17209135060248563706

/-! ## A265900.P1609014342698592267

`record[A265901(A272267(n+1))]`
-/

namespace A265900.P1609014342698592267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265900.P1609014342698592267

/-! ## A265900.P4164244969443634381

`record[A265903(Δ[A014112(n+1)])]`
-/

namespace A265900.P4164244969443634381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265903 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265900.P4164244969443634381

/-!
# A265901: Square array read by descending antidiagonals: A(n,1) = A188163(n), and for k > 1, A(n,k) = A087686(1+A(n,k-1)).

The programs for A265901, there is no canonical definition to state claims against.
-/

/-! ## A265901.P17316151349876525944

`A265903(∑[char[∑[n]]]²-n)`
-/

namespace A265901.P17316151349876525944
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265903 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A265901.P17316151349876525944

/-! ## A265901.P13550481277646250588

`and(-1, A265903(A038722(n+1)))`
-/

namespace A265901.P13550481277646250588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265903 (A038722 (n + 1)).toNat)

end

end A265901.P13550481277646250588

/-! ## A265901.P3081261891905241167

`and(-1, A265903(A061579(n)+1))`
-/

namespace A265901.P3081261891905241167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265903 (A061579 n + 1).toNat)

end

end A265901.P3081261891905241167

/-! ## A265901.P7657451874415609430

`A265903(A038722(n+1))%A063262(n)`
-/

namespace A265901.P7657451874415609430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265903 (A038722 (n + 1)).toNat) (A063262 n)

end

end A265901.P7657451874415609430

/-! ## A265901.P4922084371754296548

`gcd(A000038(n), A265903(A038722(n+1)))`
-/

namespace A265901.P4922084371754296548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265903 (A038722 (n + 1)).toNat)

end

end A265901.P4922084371754296548

/-! ## A265901.P5591056909876797320

`lcm(A020985(n), A265903(A038722(n+1)))`
-/

namespace A265901.P5591056909876797320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A265903 (A038722 (n + 1)).toNat)

end

end A265901.P5591056909876797320

/-! ## A265901.P5293286662483011230

`A265903(A038722(n+1))+A000007(n+1)`
-/

namespace A265901.P5293286662483011230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265903 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A265901.P5293286662483011230

/-! ## A265901.P7055660665731315628

`A007318(C(2, n))*A265903(A038722(n+1))`
-/

namespace A265901.P7055660665731315628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265903 (A038722 (n + 1)).toNat

end

end A265901.P7055660665731315628

/-! ## A265901.P13717058155166674476

`A265903(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A265901.P13717058155166674476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265903 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A265901.P13717058155166674476

/-! ## A265901.P16818748694661992031

`A014963(6*(n+1))*A265903(A038722(n+1))`
-/

namespace A265901.P16818748694661992031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A265903 (A038722 (n + 1)).toNat

end

end A265901.P16818748694661992031

/-! ## A265901.P15548939859317767746

`A007318(C(3, n))+A265903(A038722(n+1))-1`
-/

namespace A265901.P15548939859317767746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A265903 (A038722 (n + 1)).toNat - 1)

end

end A265901.P15548939859317767746

/-! ## A265901.P6675802508121112143

`A000041(C(2, n+2))*A265903(A038722(n+1))`
-/

namespace A265901.P6675802508121112143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A265903 (A038722 (n + 1)).toNat

end

end A265901.P6675802508121112143

/-! ## A265901.P9199205291092815375

`A000045(gcd(n, n+1))*A265903(A038722(n+1))`
-/

namespace A265901.P9199205291092815375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A265903 (A038722 (n + 1)).toNat

end

end A265901.P9199205291092815375

/-! ## A265901.P9694953515093184846

`ceil(1/A020639(n+1))*A265903(A038722(n+1))`
-/

namespace A265901.P9694953515093184846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A020639 (n + 1) : ℚ)⌉ * A265903 (A038722 (n + 1)).toNat

end

end A265901.P9694953515093184846

/-!
# A265902: Self-inverse permutation of nonnegative integers: a(n) = A263273(A263272(A263273(n))).

The programs for A265902, there is no canonical definition to state claims against.
-/

/-! ## A265902.P9815634058586243207

`A265352(A263273(n))`
-/

namespace A265902.P9815634058586243207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A263273 n).toNat

end

end A265902.P9815634058586243207

/-! ## A265902.P17284552663067665497

`A263273(A265351(n))`
-/

namespace A265902.P17284552663067665497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265351 n).toNat

end

end A265902.P17284552663067665497

/-! ## A265902.P2925931696327568085

`A263273(A263272(A263273(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265902.P2925931696327568085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A263273 n).toNat).toNat

end

end A265902.P2925931696327568085

/-! ## A265902.P10556423546166632675

`A265339(2*A263273(n))`
-/

namespace A265902.P10556423546166632675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (2 * A263273 n).toNat

end

end A265902.P10556423546166632675

/-! ## A265902.P4345396688736308454

`A263273(A265342(n)/2)`
-/

namespace A265902.P4345396688736308454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A265342 n : ℚ) / 2)).toNat

end

end A265902.P4345396688736308454

/-! ## A265902.P17917483719444919741

`A263273(A265355(A265353(n)))`
-/

namespace A265902.P17917483719444919741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265355 (A265353 n).toNat).toNat

end

end A265902.P17917483719444919741

/-! ## A265902.P4095375278291631746

`A263273(A266641(A264966(n)))`
-/

namespace A265902.P4095375278291631746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266641 (A264966 n).toNat).toNat

end

end A265902.P4095375278291631746

/-! ## A265902.P5663512722513280661

`A265352(A265366(A264978(n)))`
-/

namespace A265902.P5663512722513280661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265366 (A264978 n).toNat).toNat

end

end A265902.P5663512722513280661

/-! ## A265902.P15544701461762604943

`A265352(A265354(A264985(n)))`
-/

namespace A265902.P15544701461762604943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265354 (A264985 n).toNat).toNat

end

end A265902.P15544701461762604943

/-! ## A265902.P10401576896618468748

`A265339(A263273(n)+A263273(n))`
-/

namespace A265902.P10401576896618468748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (A263273 n + A263273 n).toNat

end

end A265902.P10401576896618468748

/-! ## A265902.P11833405883700406895

`A263273(A266641(A265369(A057889(n))))`
-/

namespace A265902.P11833405883700406895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266641 (A265369 (A057889 n).toNat).toNat).toNat

end

end A265902.P11833405883700406895

/-! ## A265902.P10873345198812154216

`A266643(A264968(A266643(A246200(n))))`
-/

namespace A265902.P10873345198812154216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A264968 (A266643 (A246200 n).toNat).toNat).toNat

end

end A265902.P10873345198812154216

/-! ## A265902.P15085756153437928400

`A265352(A265366(A263272(A265344(n))))`
-/

namespace A265902.P15085756153437928400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265366 (A263272 (A265344 n).toNat).toNat).toNat

end

end A265902.P15085756153437928400

/-! ## A265902.P16031771979259177854

`A265352(A265354(A263272(A265355(n))))`
-/

namespace A265902.P16031771979259177854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265354 (A263272 (A265355 n).toNat).toNat).toNat

end

end A265902.P16031771979259177854

/-! ## A265902.P16812265871264636493

`A263273(A265344(A265365(n)))`
-/

namespace A265902.P16812265871264636493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265344 (A265365 n).toNat).toNat

end

end A265902.P16812265871264636493

/-! ## A265902.P15268198766578724754

`A266643(A264968(A266643(A263272(A264967(n)))))`
-/

namespace A265902.P15268198766578724754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A264968 (A266643 (A263272 (A264967 n).toNat).toNat).toNat).toNat

end

end A265902.P15268198766578724754

/-! ## A265902.P5296671119191511539

`A265352(A265364(A264974(n)))`
-/

namespace A265902.P5296671119191511539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265364 (A264974 n).toNat).toNat

end

end A265902.P5296671119191511539

/-! ## A265902.P6435160378051540468

`A265368(A265363(n))`
-/

namespace A265902.P6435160378051540468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265368 (A265363 n).toNat

end

end A265902.P6435160378051540468

/-! ## A265902.P9941185253250990351

`A265352(A265353(A266189(n)))`
-/

namespace A265902.P9941185253250990351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265353 (A266189 n).toNat).toNat

end

end A265902.P9941185253250990351

/-! ## A265902.P17790250636762506729

`A265352(A265368(A264975(n)))`
-/

namespace A265902.P17790250636762506729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265368 (A264975 n).toNat).toNat

end

end A265902.P17790250636762506729

/-!
# A265903: Square array read by descending antidiagonals: A(1,k) = A188163(k), and for n > 1, A(n,k) = A087686(1+A(n-1,k)).

The programs for A265903, there is no canonical definition to state claims against.
-/

/-! ## A265903.P12789993571606038326

`A265901(∑[char[∑[n]]]²-n)`
-/

namespace A265903.P12789993571606038326
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A265903.P12789993571606038326

/-! ## A265903.P18270522570401925228

`and(-1, A265901(A038722(n+1)))`
-/

namespace A265903.P18270522570401925228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265901 (A038722 (n + 1)).toNat)

end

end A265903.P18270522570401925228

/-! ## A265903.P13325253014399301130

`A265901(A038722(n+1))%A063262(n)`
-/

namespace A265903.P13325253014399301130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265901 (A038722 (n + 1)).toNat) (A063262 n)

end

end A265903.P13325253014399301130

/-! ## A265903.P5724873593742939098

`gcd(A000038(n), A265901(A038722(n+1)))`
-/

namespace A265903.P5724873593742939098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265901 (A038722 (n + 1)).toNat)

end

end A265903.P5724873593742939098

/-! ## A265903.P10915715304342409974

`lcm(A020985(n), A265901(A038722(n+1)))`
-/

namespace A265903.P10915715304342409974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A265901 (A038722 (n + 1)).toNat)

end

end A265903.P10915715304342409974

/-! ## A265903.P17974841462931449214

`A265901(A038722(n+1))+A000035(2*n)`
-/

namespace A265903.P17974841462931449214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 (A038722 (n + 1)).toNat + A000035 (2 * n)

end

end A265903.P17974841462931449214

/-! ## A265903.P17428616193073241924

`A007318(C(2, n))*A265901(A038722(n+1))`
-/

namespace A265903.P17428616193073241924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265901 (A038722 (n + 1)).toNat

end

end A265903.P17428616193073241924

/-! ## A265903.P2691925901323607184

`A000108(n*char[1])*A265901(A038722(n+1))`
-/

namespace A265903.P2691925901323607184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A265901 (A038722 (n + 1)).toNat

end

end A265903.P2691925901323607184

/-! ## A265903.P13077535556894609237

`A265901(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A265903.P13077535556894609237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A265903.P13077535556894609237

/-! ## A265903.P3080266041878127978

`A265901(A038722(n+1))^A014963(4*n+2)`
-/

namespace A265903.P3080266041878127978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265901 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A265903.P3080266041878127978

/-! ## A265903.P4489634026710201696

`A000040(n+2)%2*A265901(A038722(n+1))`
-/

namespace A265903.P4489634026710201696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A265901 (A038722 (n + 1)).toNat

end

end A265903.P4489634026710201696

/-! ## A265903.P15139527378824856764

`A000041(C(2, n+2))*A265901(A038722(n+1))`
-/

namespace A265903.P15139527378824856764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A265901 (A038722 (n + 1)).toNat

end

end A265903.P15139527378824856764

/-! ## A265903.P6427644060844419177

`A265901(A038722(n+1))^A007318(C(n, n²)!)`
-/

namespace A265903.P6427644060844419177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265901 (A038722 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.factorial (Nat.choose n (n ^ 2))) : ℤ)

end

end A265903.P6427644060844419177

/-! ## A265903.P9000180806880840016

`A265901(A038722(n+1))/A007318(2-C(2, n+2))`
-/

namespace A265903.P9000180806880840016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265901 (A038722 (n + 1)).toNat : ℚ) / (A007318 (2 - Nat.choose 2 (n + 2)) : ℚ)

end

end A265903.P9000180806880840016

/-!
# A265904: Self-inverse permutation of nonnegative integers: a(n) = A263272(A263273(A263272(n))).

The programs for A265904, there is no canonical definition to state claims against.
-/

/-! ## A265904.P4839978729742363413

`A265351(A263272(n))`
-/

namespace A265904.P4839978729742363413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A263272 n).toNat

end

end A265904.P4839978729742363413

/-! ## A265904.P13200839430654136532

`A263272(A265352(n))`
-/

namespace A265904.P13200839430654136532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265352 n).toNat

end

end A265904.P13200839430654136532

/-! ## A265904.P9790680060013133462

`A263272(A263273(A263272(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265904.P9790680060013133462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A263273 (A263272 n).toNat).toNat

end

end A265904.P9790680060013133462

/-! ## A265904.P15401294640045993179

`A265351(A264984(n)/2)`
-/

namespace A265904.P15401294640045993179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A265904.P15401294640045993179

/-! ## A265904.P15270809349997864574

`A265351(A265355(A264985(n)))`
-/

namespace A265904.P15270809349997864574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265355 (A264985 n).toNat).toNat

end

end A265904.P15270809349997864574

/-! ## A265904.P11768728160985514853

`A265351(A264985(A265356(n)))`
-/

namespace A265904.P11768728160985514853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264985 (A265356 n).toNat).toNat

end

end A265904.P11768728160985514853

/-! ## A265904.P5968777496281972589

`A265351(A265351(A263273(n)))`
-/

namespace A265904.P5968777496281972589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265351 (A263273 n).toNat).toNat

end

end A265904.P5968777496281972589

/-! ## A265904.P16454589287115421896

`A265351(A265351(A264985(A265353(n))))`
-/

namespace A265904.P16454589287115421896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265351 (A264985 (A265353 n).toNat).toNat).toNat

end

end A265904.P16454589287115421896

/-! ## A265904.P12893000277325272199

`A265351(A265358(A264989(n)))`
-/

namespace A265904.P12893000277325272199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265358 (A264989 n).toNat).toNat

end

end A265904.P12893000277325272199

/-! ## A265904.P13546552973614907419

`A265351(A265351(A264974(A265363(n))))`
-/

namespace A265904.P13546552973614907419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265351 (A264974 (A265363 n).toNat).toNat).toNat

end

end A265904.P13546552973614907419

/-! ## A265904.P6246189817052389683

`A265351(A264974(A264975(n)))`
-/

namespace A265904.P6246189817052389683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264974 (A264975 n).toNat).toNat

end

end A265904.P6246189817052389683

/-! ## A265904.P9308264536665197045

`A265351(A264989(A265357(n)))`
-/

namespace A265904.P9308264536665197045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A264989 (A265357 n).toNat).toNat

end

end A265904.P9308264536665197045

/-! ## A265904.P13571366398818118534

`A264984(A265339(2*n))/2`
-/

namespace A265904.P13571366398818118534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264984 (A265339 (2 * n)).toNat : ℚ) / 2

end

end A265904.P13571366398818118534

/-! ## A265904.P8495513159386905240

`A263272(A265368(A264974(n)))`
-/

namespace A265904.P8495513159386905240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265368 (A264974 n).toNat).toNat

end

end A265904.P8495513159386905240

/-! ## A265904.P13301966357168762453

`A263272(A265366(A265343(n)))`
-/

namespace A265904.P13301966357168762453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265366 (A265343 n).toNat).toNat

end

end A265904.P13301966357168762453

/-! ## A265904.P7889192636347387910

`A263272(A266643(A264968(n)))`
-/

namespace A265904.P7889192636347387910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266643 (A264968 n).toNat).toNat

end

end A265904.P7889192636347387910

/-! ## A265904.P11528151356455656154

`A263272(A264965(A266642(n)))`
-/

namespace A265904.P11528151356455656154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264965 (A266642 n).toNat).toNat

end

end A265904.P11528151356455656154

/-! ## A265904.P2835184375043480702

`A265355(A264985(A265352(2*n-n)))`
-/

namespace A265904.P2835184375043480702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264985 (A265352 (2 * n - n)).toNat).toNat

end

end A265904.P2835184375043480702

/-! ## A265904.P9691885882433500071

`A266641(A264966(A266641(A057889(n))))`
-/

namespace A265904.P9691885882433500071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A264966 (A266641 (A057889 n).toNat).toNat).toNat

end

end A265904.P9691885882433500071

/-! ## A265904.P3334742720067460325

`A266641(A264966(A264967(A246200(n))))`
-/

namespace A265904.P3334742720067460325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A264966 (A264967 (A246200 n).toNat).toNat).toNat

end

end A265904.P3334742720067460325

/-!
# A265905: a(1) = 1; for n > 1, a(n) = a(n-1) + A153880(a(n-1)).

The programs for A265905, the canonical program `A265905.P17623149438114299411` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265905 has offset 1).

The definition of A265905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265905.P17623149438114299411

`a(n-1)+A153880(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265905

/-- `a(n-1)+A153880(a(n-1))` -/
def P17623149438114299411.Spec : Prop :=
  ∀ n, P17623149438114299411.a n = A265905 (n + 1)

theorem P17623149438114299411.correct : P17623149438114299411.Spec := by
  intro n
  simp only [A265905, Nat.add_sub_cancel]

end A265905

/-! ## A265905.P2473697084441917597

`A265906(n)+a(n-1)` with `a(0)=1`
-/

namespace A265905.P2473697084441917597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265906 n + a (n - 1)

end

end A265905.P2473697084441917597

namespace A265905

/-- `A265906(n)+a(n-1)` -/
def P2473697084441917597.Spec : Prop :=
  ∀ n, P2473697084441917597.a n = A265905 (n + 1)

end A265905

/-! ## A265905.P8900834389297212224

`A275951(∑[n+1])`
-/

namespace A265905.P8900834389297212224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265905.P8900834389297212224

namespace A265905

/-- `A275951(∑[n+1])` -/
def P8900834389297212224.Spec : Prop :=
  ∀ n, P8900834389297212224.a n = A265905 (n + 1)

end A265905

/-! ## A265905.P1584026457991051115

`A275950(∑[n]+1)`
-/

namespace A265905.P1584026457991051115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265905.P1584026457991051115

namespace A265905

/-- `A275950(∑[n]+1)` -/
def P1584026457991051115.Spec : Prop :=
  ∀ n, P1584026457991051115.a n = A265905 (n + 1)

end A265905

/-! ## A265905.P9620439750297964942

`record[A275950(n+1)]`
-/

namespace A265905.P9620439750297964942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265905.P9620439750297964942

namespace A265905

/-- `record[A275950(n+1)]` -/
def P9620439750297964942.Spec : Prop :=
  ∀ n, P9620439750297964942.a n = A265905 (n + 1)

end A265905

/-!
# A265906: a(n) = A153880(A265905(n)); also the first differences of A265905.

The programs for A265906, the canonical program `A265906.P889638552289074279` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265906 has offset 1).

The definition of A265906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A265905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265906.P6365274158046169038

`A265905(n+2)-A265905(n+1)`
-/

namespace A265906.P6365274158046169038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265905 (n + 2) - A265905 (n + 1)

end

end A265906.P6365274158046169038

namespace A265906

/-- `A265905(n+2)-A265905(n+1)` -/
def P6365274158046169038.Spec : Prop :=
  ∀ n, P6365274158046169038.a n = A265906 (n + 1)

end A265906

/-! ## A265906.P889638552289074279

`A153880(A265905(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265906

/-- `A153880(A265905(n+1))` -/
def P889638552289074279.Spec : Prop :=
  ∀ n, P889638552289074279.a n = A265906 (n + 1)

theorem P889638552289074279.correct : P889638552289074279.Spec := by
  intro n
  simp only [A265906, Nat.add_sub_cancel]

end A265906

/-! ## A265906.P15196119540048634212

`A275953(n)+a(n-1)` with `a(0)=2`
-/

namespace A265906.P15196119540048634212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A275953 n + a (n - 1)

end

end A265906.P15196119540048634212

namespace A265906

/-- `A275953(n)+a(n-1)` -/
def P15196119540048634212.Spec : Prop :=
  ∀ n, P15196119540048634212.a n = A265906 (n + 1)

end A265906

/-! ## A265906.P564126547131081690

`A275951(∑[n+2])`
-/

namespace A265906.P564126547131081690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265906.P564126547131081690

namespace A265906

/-- `A275951(∑[n+2])` -/
def P564126547131081690.Spec : Prop :=
  ∀ n, P564126547131081690.a n = A265906 (n + 1)

end A265906

/-! ## A265906.P17075723983010226496

`Δ[record[A275950(n+1)]]`
-/

namespace A265906.P17075723983010226496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265906.P17075723983010226496

namespace A265906

/-- `Δ[record[A275950(n+1)]]` -/
def P17075723983010226496.Spec : Prop :=
  ∀ n, P17075723983010226496.a n = A265906 (n + 1)

end A265906

/-!
# A265907: a(1) = 1; for n > 1, a(n) = a(n-1) + A255411(a(n-1)).

The programs for A265907, there is no canonical definition to state claims against.
-/

/-! ## A265907.P14718476175126347301

`a(n-1)+A255411(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265907.P14718476175126347301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A255411 (a (n - 1)).toNat

end

end A265907.P14718476175126347301

/-! ## A265907.P17601440593703551014

`A265908(n)+a(n-1)` with `a(0)=1`
-/

namespace A265907.P17601440593703551014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265908 n + a (n - 1)

end

end A265907.P17601440593703551014

/-! ## A265907.P3541121001377715713

`A275961(∑[n+1])`
-/

namespace A265907.P3541121001377715713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265907.P3541121001377715713

/-! ## A265907.P1268605178676110708

`record[A103452(n)*A275961(n+1)]`
-/

namespace A265907.P1268605178676110708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A275961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265907.P1268605178676110708

/-! ## A265907.P7826637987659230152

`A275960(∑[n]+1)`
-/

namespace A265907.P7826637987659230152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265907.P7826637987659230152

/-!
# A265908: a(n) = A255411(A265907(n)); also the first differences of A265907.

The programs for A265908, there is no canonical definition to state claims against.
-/

/-! ## A265908.P2334392034339208504

`A265907(n+2)-A265907(n+1)`
-/

namespace A265908.P2334392034339208504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265907 (n + 2) - A265907 (n + 1)

end

end A265908.P2334392034339208504

/-! ## A265908.P17417953763752773244

`A255411(A265907(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265908.P17417953763752773244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A265907 (n + 1)).toNat

end

end A265908.P17417953763752773244

/-! ## A265908.P9930515416374745291

`A275963(n)+a(n-1)` with `a(0)=4`
-/

namespace A265908.P9930515416374745291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A275963 n + a (n - 1)

end

end A265908.P9930515416374745291

/-! ## A265908.P5399037757267508954

`A275961(∑[n+2])`
-/

namespace A265908.P5399037757267508954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265908.P5399037757267508954

/-! ## A265908.P16740982483310091293

`Δ[record[A275960(n+1)]]`
-/

namespace A265908.P16740982483310091293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265908.P16740982483310091293

/-!
# A265909: Submain diagonal of array A265903: a(n) = A265903(n+1, n).

The programs for A265909, there is no canonical definition to state claims against.
-/

/-! ## A265909.P1608645798602371936

`A265901(2*(n+1)²)`
-/

namespace A265909.P1608645798602371936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 (2 * (n + 1) ^ 2)

end

end A265909.P1608645798602371936

/-! ## A265909.P15130000897372541076

`A265903(2*(n+1)²+1)`
-/

namespace A265909.P15130000897372541076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265903 (2 * (n + 1) ^ 2 + 1)

end

end A265909.P15130000897372541076

/-! ## A265909.P18028287811368516311

`A000027(A265901(∑[a(n-1)+4]))` with `a(0)=2`
-/

namespace A265909.P18028287811368516311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A265901 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A265909.P18028287811368516311

/-! ## A265909.P16178534438915560345

`record[gcd(A003285(n+1), A265903(2*n+3))]`
-/

namespace A265909.P16178534438915560345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003285 (n + 1)) (A265903 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265909.P16178534438915560345

/-! ## A265909.P5824509948387253534

`A265901((n+1)*2*(n+1))/A246465(n)`
-/

namespace A265909.P5824509948387253534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265901 ((n + 1) * (2 * (n + 1))) : ℚ) / (A246465 n : ℚ)

end

end A265909.P5824509948387253534

/-!
# A265910: Zero-based column index to array A265345.

The programs for A265910, there is no canonical definition to state claims against.
-/

/-! ## A265910.P6177452879411802930

`A265911(n+1)-1`
-/

namespace A265910.P6177452879411802930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265911 (n + 1) - 1

end

end A265910.P6177452879411802930

/-! ## A265910.P16785291421825466242

`A023443(A265911(n+1))`
-/

namespace A265910.P16785291421825466242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A265911 (n + 1)).toNat

end

end A265910.P16785291421825466242

/-! ## A265910.P10749725904742227595

`A023452(A265911(n+1)+9)`
-/

namespace A265910.P10749725904742227595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A265911 (n + 1) + 9).toNat

end

end A265910.P10749725904742227595

/-! ## A265910.P12654942665253954695

`A332814(A332812(n+1))+A265911(n+1)`
-/

namespace A265910.P12654942665253954695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (A332812 (n + 1)).toNat + A265911 (n + 1)

end

end A265910.P12654942665253954695

/-! ## A265910.P3684606440272419829

`A265330(n+1)+A265348(n+1)-A265346(n+1)`
-/

namespace A265910.P3684606440272419829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265330 (n + 1) + (A265348 (n + 1) - A265346 (n + 1))

end

end A265910.P3684606440272419829

/-! ## A265910.P871309923537787231

`A028310(A265911(n+1))+A008683(A244572(n+2))`
-/

namespace A265910.P871309923537787231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A265911 (n + 1)).toNat + A008683 (A244572 (n + 2)).toNat

end

end A265910.P871309923537787231

/-! ## A265910.P2819107605921093430

`A342926(A002260(∑[n]+2))+A265911(n+1)`
-/

namespace A265910.P2819107605921093430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat + A265911 (n + 1)

end

end A265910.P2819107605921093430

/-! ## A265910.P8955239658109738763

`A002262(A265348(n+1)-1)`
-/

namespace A265910.P8955239658109738763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A265348 (n + 1) - 1).toNat

end

end A265910.P8955239658109738763

/-! ## A265910.P1184602301840008044

`A004736(A265346(n+1))-1`
-/

namespace A265910.P1184602301840008044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A265346 (n + 1)).toNat - 1

end

end A265910.P1184602301840008044

/-! ## A265910.P10616304630585743101

`A025581(A265346(n+1)-1)`
-/

namespace A265910.P10616304630585743101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A265346 (n + 1) - 1).toNat

end

end A265910.P10616304630585743101

/-!
# A265911: One-based column index to array A265345.

The programs for A265911, there is no canonical definition to state claims against.
-/

/-! ## A265911.P412154728265321797

`1+A265910(n+1)`
-/

namespace A265911.P412154728265321797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A265910 (n + 1)

end

end A265911.P412154728265321797

/-! ## A265911.P17953643847427628277

`A265331(n+1)+A265348(n+1)-A265346(n+1)`
-/

namespace A265911.P17953643847427628277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (n + 1) + (A265348 (n + 1) - A265346 (n + 1))

end

end A265911.P17953643847427628277

/-! ## A265911.P8361155867977773112

`A265330(n+1)+A265348(n+1)-A265346(n+1)+1`
-/

namespace A265911.P8361155867977773112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265330 (n + 1) + (A265348 (n + 1) - A265346 (n + 1)) + 1

end

end A265911.P8361155867977773112

/-! ## A265911.P13165359347300035655

`A265910(n-log2(1/2))-log2(1/2)`
-/

namespace A265911.P13165359347300035655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265910 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A265911.P13165359347300035655

/-! ## A265911.P4803513383906557350

`A002260(A265348(n+1))`
-/

namespace A265911.P4803513383906557350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A265348 (n + 1)).toNat

end

end A265911.P4803513383906557350

/-! ## A265911.P18282300853999018181

`A004736(A265346(n+1))`
-/

namespace A265911.P18282300853999018181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A265346 (n + 1)).toNat

end

end A265911.P18282300853999018181

/-! ## A265911.P2201271470331366949

`A002262(A265348(n+1)-1)+1`
-/

namespace A265911.P2201271470331366949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A265348 (n + 1) - 1).toNat + 1

end

end A265911.P2201271470331366949

/-! ## A265911.P3818354555659798975

`A002262(A265348(A265342(n+1)))`
-/

namespace A265911.P3818354555659798975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A265348 (A265342 (n + 1)).toNat).toNat

end

end A265911.P3818354555659798975

/-!
# A265912: Smallest m such that A014631(n) occurs in row m of Pascal's triangle.

The programs for A265912, there is no canonical definition to state claims against.
-/

/-! ## A265912.P5402645793348849439

`comp[A126256(n)+n]-n`
-/

namespace A265912.P5402645793348849439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126256 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A265912.P5402645793348849439

/-! ## A265912.P5632063414009539779

`comp[∑[A057427(n)*A126257(n)+1]]-n`
-/

namespace A265912.P5632063414009539779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A126257 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A265912.P5632063414009539779

/-! ## A265912.P9707427706891519256

`A058084(A014631(n+1))`
-/

namespace A265912.P9707427706891519256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (A014631 (n + 1)).toNat

end

end A265912.P9707427706891519256

/-! ## A265912.P4439514321765228898

`A058084(A028328(n)/2)`
-/

namespace A265912.P4439514321765228898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (SequenceMachineLib.roundAway ((A028328 n : ℚ) / 2)).toNat

end

end A265912.P4439514321765228898

/-! ## A265912.P6975405202512335550

`A058084(sqrt(A014764(n+1)))`
-/

namespace A265912.P6975405202512335550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (SequenceMachineLib.roundAway (Real.sqrt (A014764 (n + 1) : ℝ))).toNat

end

end A265912.P6975405202512335550

/-!
# A265914: Number of Hamiltonian paths on an n X n grid reduced for symmetry, i.e., where rotations and reflections are not counted as distinct.

The programs for A265914, there is no canonical definition to state claims against.
-/

/-! ## A265914.P12212503893620546043

`A005187(C(n!, gcd(n, ∑[n])))`
-/

namespace A265914.P12212503893620546043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Nat.choose (Nat.factorial n) (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A265914.P12212503893620546043

/-!
# A265915: Primes that are sum of 5 consecutive primes congruent to 1 mod 6.

The programs for A265915, there is no canonical definition to state claims against.
-/

/-! ## A265915.P16878975253820563452

`p?[A172113(n+6)-A172113(n+1)]`
-/

namespace A265915.P16878975253820563452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172113 (n + 6) - A172113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265915.P16878975253820563452

/-! ## A265915.P17974520639718615017

`A001359(lt[A115570(3*n+5), A115583(3*n+2)])`
-/

namespace A265915.P17974520639718615017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265915.P17974520639718615017

/-!
# A265916: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A265916, there is no canonical definition to state claims against.
-/

/-! ## A265916.P6314617286784395176

`∑[A271538(abs(1-n))]-3`
-/

namespace A265916.P6314617286784395176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271538 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A265916.P6314617286784395176

/-! ## A265916.P5586837090775372427

`A271538(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A265916.P5586837090775372427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271538 (n - 1) + a (n - 1)

end

end A265916.P5586837090775372427

/-! ## A265916.P10401478375109106500

`∑[A271538((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A265916.P10401478375109106500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271538 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265916.P10401478375109106500

/-! ## A265916.P5779481825571512719

`Δ[A271537(n)]-A271538(n)`
-/

namespace A265916.P5779481825571512719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271538 n

end

end A265916.P5779481825571512719

/-! ## A265916.P6139230647777312829

`A271537(n+1)-(A271538(n)+A271537(n))`
-/

namespace A265916.P6139230647777312829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271537 (n + 1) - (A271538 n + A271537 n)

end

end A265916.P6139230647777312829

/-! ## A265916.P12918744161690213589

`A065475(∑[A271538(n)])-A271538(n)`
-/

namespace A265916.P12918744161690213589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A271538 n

end

end A265916.P12918744161690213589

/-!
# A265917: a(n) = floor(A070939(n)/A000120(n)) where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

The programs for A265917, the canonical program `A265917.P11657784271815987445` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265917 has offset 1).

The definition of A265917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A070939(n+1)/A000120(n+1))` (program `A265917.P11657784271815987445`, by `A265917.P11657784271815987445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265917.P11657784271815987445

`floor(A070939(n+1)/A000120(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A265917

/-- `floor(A070939(n+1)/A000120(n+1))` -/
def P11657784271815987445.Spec : Prop :=
  ∀ n, P11657784271815987445.a n = A265917 (n + 1)

theorem P11657784271815987445.correct : P11657784271815987445.Spec := by
  intro n
  simp only [A265917, Nat.add_sub_cancel]

end A265917

/-! ## A265917.P4246396207036222195

`floor(∑[A209229(n+1)]/A000120(n+1))`
-/

namespace A265917.P4246396207036222195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A265917.P4246396207036222195

namespace A265917

/-- `floor(∑[A209229(n+1)]/A000120(n+1))` -/
def P4246396207036222195.Spec : Prop :=
  ∀ n, P4246396207036222195.a n = A265917 (n + 1)

end A265917

/-! ## A265917.P13772146566016584377

`floor(A023416(n+1)/A000120(n+1))+1`
-/

namespace A265917.P13772146566016584377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023416 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)⌋ + 1

end

end A265917.P13772146566016584377

namespace A265917

/-- `floor(A023416(n+1)/A000120(n+1))+1` -/
def P13772146566016584377.Spec : Prop :=
  ∀ n, P13772146566016584377.a n = A265917 (n + 1)

end A265917

/-! ## A265917.P6977002428345365375

`(A070939(n+1)-A265918(n+1))/A000120(n+1)`
-/

namespace A265917.P6977002428345365375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 (n + 1) - A265918 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)

end

end A265917.P6977002428345365375

namespace A265917

/-- `(A070939(n+1)-A265918(n+1))/A000120(n+1)` -/
def P6977002428345365375.Spec : Prop :=
  ∀ n, P6977002428345365375.a n = (A265917 (n + 1) : ℚ)

end A265917

/-! ## A265917.P3992602323881993710

`ceil(A000120(A059894(n+1))/A000120(n+1))`
-/

namespace A265917.P3992602323881993710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000120 (A059894 (n + 1)).toNat : ℚ) / (A000120 (n + 1) : ℚ)⌉

end

end A265917.P3992602323881993710

namespace A265917

/-- `ceil(A000120(A059894(n+1))/A000120(n+1))` -/
def P3992602323881993710.Spec : Prop :=
  ∀ n, P3992602323881993710.a n = A265917 (n + 1)

end A265917

/-! ## A265917.P3588457836315078263

`floor(A272020(A000788(n))/A000120(n+1))`
-/

namespace A265917.P3588457836315078263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272020 (A000788 n).toNat : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A265917.P3588457836315078263

namespace A265917

/-- `floor(A272020(A000788(n))/A000120(n+1))` -/
def P3588457836315078263.Spec : Prop :=
  ∀ n, P3588457836315078263.a n = A265917 (n + 1)

end A265917

/-! ## A265917.P17904436320273166795

`val(2*A003418(n+1), A001316(n+1))`
-/

namespace A265917.P17904436320273166795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A003418 (n + 1)).toNat (A001316 (n + 1)).toNat

end

end A265917.P17904436320273166795

namespace A265917

/-- `val(2*A003418(n+1), A001316(n+1))` -/
def P17904436320273166795.Spec : Prop :=
  ∀ n, (P17904436320273166795.a n : ℤ) = A265917 (n + 1)

end A265917

/-! ## A265917.P11722321600667923214

`val(A284650(2*(n+1)), A071044(A004277(n+1)))`
-/

namespace A265917.P11722321600667923214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284650 (2 * (n + 1))).toNat (A071044 (A004277 (n + 1)).toNat).toNat

end

end A265917.P11722321600667923214

namespace A265917

/-- `val(A284650(2*(n+1)), A071044(A004277(n+1)))` -/
def P11722321600667923214.Spec : Prop :=
  ∀ n, (P11722321600667923214.a n : ℤ) = A265917 (n + 1)

end A265917

/-! ## A265917.P8711983036982689904

`A363943(A333219(n+2))`
-/

namespace A265917.P8711983036982689904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (A333219 (n + 2)).toNat

end

end A265917.P8711983036982689904

namespace A265917

/-- `A363943(A333219(n+2))` -/
def P8711983036982689904.Spec : Prop :=
  ∀ n, P8711983036982689904.a n = A265917 (n + 1)

end A265917

/-! ## A265917.P15799312809741374161

`A070012(A057335(n+1))`
-/

namespace A265917.P15799312809741374161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (A057335 (n + 1)).toNat

end

end A265917.P15799312809741374161

namespace A265917

/-- `A070012(A057335(n+1))` -/
def P15799312809741374161.Spec : Prop :=
  ∀ n, P15799312809741374161.a n = A265917 (n + 1)

end A265917

/-!
# A265918: a(n) = A070939(n) mod A000120(n), where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

The programs for A265918, the canonical program `A265918.P6975300764845745833` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265918 has offset 1).

The definition of A265918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070939(n+1)%A000120(n+1)` (program `A265918.P6975300764845745833`, by `A265918.P6975300764845745833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265918.P6975300764845745833

`A070939(n+1)%A000120(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A265918

/-- `A070939(n+1)%A000120(n+1)` -/
def P6975300764845745833.Spec : Prop :=
  ∀ n, P6975300764845745833.a n = A265918 (n + 1)

theorem P6975300764845745833.correct : P6975300764845745833.Spec := by
  intro n
  simp only [A265918, Nat.add_sub_cancel]

end A265918

/-! ## A265918.P10701562963152787022

`A070939(n)%(A048881(n)+1)`
-/

namespace A265918.P10701562963152787022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n) (A048881 n + 1)

end

end A265918.P10701562963152787022

namespace A265918

/-- `A070939(n)%(A048881(n)+1)` -/
def P10701562963152787022.Spec : Prop :=
  ∀ n, P10701562963152787022.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P11164835648759630766

`A070939(n)%A000005(A048896(n))`
-/

namespace A265918.P11164835648759630766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n) (A000005 (A048896 n).toNat)

end

end A265918.P11164835648759630766

namespace A265918

/-- `A070939(n)%A000005(A048896(n))` -/
def P11164835648759630766.Spec : Prop :=
  ∀ n, P11164835648759630766.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P14962899749913687984

`A029837(n+1)%A029837(A001316(n+1))`
-/

namespace A265918.P14962899749913687984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029837 (n + 1)) (A029837 (A001316 (n + 1)).toNat)

end

end A265918.P14962899749913687984

namespace A265918

/-- `A029837(n+1)%A029837(A001316(n+1))` -/
def P14962899749913687984.Spec : Prop :=
  ∀ n, P14962899749913687984.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P6810632101253972444

`(A023416(n)+A000120(n))%A099246(A048896(n))`
-/

namespace A265918.P6810632101253972444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 n + A000120 n) (A099246 (A048896 n).toNat)

end

end A265918.P6810632101253972444

namespace A265918

/-- `(A023416(n)+A000120(n))%A099246(A048896(n))` -/
def P6810632101253972444.Spec : Prop :=
  ∀ n, P6810632101253972444.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P15840253627937481143

`A070939(n+1)-A000120(n+1)*A265917(n+1)`
-/

namespace A265918.P15840253627937481143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A000120 (n + 1) * A265917 (n + 1)

end

end A265918.P15840253627937481143

namespace A265918

/-- `A070939(n+1)-A000120(n+1)*A265917(n+1)` -/
def P15840253627937481143.Spec : Prop :=
  ∀ n, P15840253627937481143.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P4857605861064931793

`A023416(n+1)%A005811(A006068(n+1))`
-/

namespace A265918.P4857605861064931793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (n + 1)) (A005811 (A006068 (n + 1)).toNat)

end

end A265918.P4857605861064931793

namespace A265918

/-- `A023416(n+1)%A005811(A006068(n+1))` -/
def P4857605861064931793.Spec : Prop :=
  ∀ n, P4857605861064931793.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P5674153757701599079

`floor(log2(2*or(1, n)))%-A000120(2*(n+1))`
-/

namespace A265918.P5674153757701599079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.log 2 (2 * Nat.lor 1 n) : ℤ) (-A000120 (2 * (n + 1)))

end

end A265918.P5674153757701599079

namespace A265918

/-- `floor(log2(2*or(1, n)))%-A000120(2*(n+1))` -/
def P5674153757701599079.Spec : Prop :=
  ∀ n, P5674153757701599079.a n = A265918 (n + 1)

end A265918

/-! ## A265918.P6493882760681912887

`A180160(A261300(n+1))`
-/

namespace A265918.P6493882760681912887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A261300 (n + 1)).toNat

end

end A265918.P6493882760681912887

namespace A265918

/-- `A180160(A261300(n+1))` -/
def P6493882760681912887.Spec : Prop :=
  ∀ n, P6493882760681912887.a n = A265918 (n + 1)

end A265918

/-!
# A265919: Numerator of the probability that Bob wins the following game: Alice and Bob take turn (Alice starts first) to gain 1 or 2 chips randomly and independently with 1/2 chance, and the first player that collects at least n chips is the winner.

The programs for A265919, there is no canonical definition to state claims against.
-/

/-! ## A265919.P11606769048624613902

`4^n-A265920(n+1)`
-/

namespace A265919.P11606769048624613902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A265920 (n + 1)

end

end A265919.P11606769048624613902

/-! ## A265919.P12182394416739181988

`A000302(n)%A265920(n+1)`
-/

namespace A265919.P12182394416739181988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n) (A265920 (n + 1))

end

end A265919.P12182394416739181988

/-! ## A265919.P5142927321646396678

`A155543(n)%A265920(n+1)`
-/

namespace A265919.P5142927321646396678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155543 n) (A265920 (n + 1))

end

end A265919.P5142927321646396678

/-! ## A265919.P18012397729178227784

`A000079(n)²%A265920(n+1)`
-/

namespace A265919.P18012397729178227784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n ^ 2) (A265920 (n + 1))

end

end A265919.P18012397729178227784

/-! ## A265919.P8213445136197141615

`∑[A002001(n)]%A265920(n+1)`
-/

namespace A265919.P8213445136197141615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A265920 (n + 1))

end

end A265919.P8213445136197141615

/-!
# A265920: Numerator of the probability that Alice wins the following game: Alice and Bob take turn (Alice starts first) to gain 1 or 2 chips randomly and independently with 1/2 chance, and the first player that collects at least n chips is the winner.

The programs for A265920, there is no canonical definition to state claims against.
-/

/-! ## A265920.P13071839828022684915

`4^n-A265919(n+1)`
-/

namespace A265920.P13071839828022684915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A265919 (n + 1)

end

end A265920.P13071839828022684915

/-! ## A265920.P16986813940458018387

`abs(A265919(n+1)-A000302(n))`
-/

namespace A265920.P16986813940458018387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265919 (n + 1) - A000302 n|

end

end A265920.P16986813940458018387

/-! ## A265920.P16664670832516599764

`A052539(n)-(A265919(n+1)+1)`
-/

namespace A265920.P16664670832516599764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - (A265919 (n + 1) + 1)

end

end A265920.P16664670832516599764

/-! ## A265920.P13246089929358551682

`abs(A265919(n+1)-A000079(n)²)`
-/

namespace A265920.P13246089929358551682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265919 (n + 1) - A000079 n ^ 2|

end

end A265920.P13246089929358551682

/-! ## A265920.P12750211407384791326

`abs(A265919(n+1)-∑[A002001(n)])`
-/

namespace A265920.P12750211407384791326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265919 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A265920.P12750211407384791326

/-!
# A265921: Number of n X n 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265921, there is no canonical definition to state claims against.
-/

/-! ## A265921.P181525577689520868

`A265928(∑[4*n]+1)`
-/

namespace A265921.P181525577689520868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265921.P181525577689520868

/-! ## A265921.P11412026270383353891

`record[A003982(n)*A265928(n+1)]`
-/

namespace A265921.P11412026270383353891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A265928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265921.P11412026270383353891

/-! ## A265921.P272257922160916579

`record[gcd(A114327(n), A265928(n+1))]`
-/

namespace A265921.P272257922160916579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A265928 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265921.P272257922160916579

/-! ## A265921.P994729804495567791

`record[root(A265928(n+1), A280172(n+1))]`
-/

namespace A265921.P994729804495567791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265928 (n + 1) : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265921.P994729804495567791

/-! ## A265921.P7676017803542897316

`A265928(A001844(n))+A033665(n)`
-/

namespace A265921.P7676017803542897316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A001844 n).toNat + A033665 n

end

end A265921.P7676017803542897316

/-!
# A265922: Number of nX2 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265922, there is no canonical definition to state claims against.
-/

/-! ## A265922.P9195180443347560642

`A265929(2*(n+1))`
-/

namespace A265922.P9195180443347560642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265929 (2 * (n + 1))

end

end A265922.P9195180443347560642

/-! ## A265922.P10399298146531444080

`record[A265929(A064786(n+1))]`
-/

namespace A265922.P10399298146531444080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265929 (A064786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265922.P10399298146531444080

/-! ## A265922.P9001919401694088509

`record[A265929(2*A126759(n))]`
-/

namespace A265922.P9001919401694088509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265929 (2 * A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265922.P9001919401694088509

/-! ## A265922.P15627197806525252757

`record[A265929(2*A324347(n))]`
-/

namespace A265922.P15627197806525252757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265929 (2 * A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265922.P15627197806525252757

/-! ## A265922.P6977178832958837099

`A265928(∑[n+2])`
-/

namespace A265922.P6977178832958837099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265922.P6977178832958837099

/-!
# A265923: Number of n X 3 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265923, there is no canonical definition to state claims against.
-/

/-! ## A265923.P575566617833132340

`A265928(∑[n+3]+1)`
-/

namespace A265923.P575566617833132340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265923.P575566617833132340

/-!
# A265924: Number of nX4 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265924, there is no canonical definition to state claims against.
-/

/-! ## A265924.P12060115438006829153

`A265928(A141214(n+1))`
-/

namespace A265924.P12060115438006829153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A141214 (n + 1)).toNat

end

end A265924.P12060115438006829153

/-! ## A265924.P9758408787340009853

`A265928(A027379(n+2))`
-/

namespace A265924.P9758408787340009853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A027379 (n + 2)).toNat

end

end A265924.P9758408787340009853

/-! ## A265924.P11476353965923573350

`A265928(A155212(n)+5)`
-/

namespace A265924.P11476353965923573350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A155212 n + 5).toNat

end

end A265924.P11476353965923573350

/-! ## A265924.P11527362802241730086

`A265928(A056000(n)+7)`
-/

namespace A265924.P11527362802241730086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A056000 n + 7).toNat

end

end A265924.P11527362802241730086

/-! ## A265924.P6204823596738224836

`A265928(eq[5, A001404(n)])`
-/

namespace A265924.P6204823596738224836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265924.P6204823596738224836

/-!
# A265925: Number of nX5 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265925, there is no canonical definition to state claims against.
-/

/-! ## A265925.P464891889692248202

`A265928(record[(n-11)*n/2]+11)`
-/

namespace A265925.P464891889692248202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 11)).toNat

end

end A265925.P464891889692248202

/-! ## A265925.P17596236566870333656

`A265928(Δ[A264443(n)])`
-/

namespace A265925.P17596236566870333656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (f1 (n + 1) - f1 n).toNat

end

end A265925.P17596236566870333656

/-! ## A265925.P8819405534496510403

`A265928(eq[4, A193592(n)])`
-/

namespace A265925.P8819405534496510403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265925.P8819405534496510403

/-! ## A265925.P16613270617692735729

`A265928(eq[8, A209439(n)])`
-/

namespace A265925.P16613270617692735729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265925.P16613270617692735729

/-! ## A265925.P10882315531295957501

`A265928(Δ[A023545(n+1)])`
-/

namespace A265925.P10882315531295957501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (f1 (n + 1) - f1 n).toNat

end

end A265925.P10882315531295957501

/-!
# A265926: Number of nX6 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265926, there is no canonical definition to state claims against.
-/

/-! ## A265926.P2927444661920071257

`A265928(A056119(n)+16)`
-/

namespace A265926.P2927444661920071257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A056119 n + 16).toNat

end

end A265926.P2927444661920071257

/-! ## A265926.P5716098734395216471

`A265928(eq[3, A219347(n)])`
-/

namespace A265926.P5716098734395216471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265926.P5716098734395216471

/-! ## A265926.P82006075732252066

`A265928(eq[5, A193592(n)])`
-/

namespace A265926.P82006075732252066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265926.P82006075732252066

/-! ## A265926.P1011031784868531669

`A265928(A155212(n+2)+3)`
-/

namespace A265926.P1011031784868531669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A155212 (n + 2) + 3).toNat

end

end A265926.P1011031784868531669

/-! ## A265926.P6469671926689441281

`A265928(eq[6, A200370(n+1)])`
-/

namespace A265926.P6469671926689441281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265926.P6469671926689441281

/-!
# A265927: Number of nX7 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265927, there is no canonical definition to state claims against.
-/

/-! ## A265927.P6536702199516505651

`A265928(A055999(n+4))`
-/

namespace A265927.P6536702199516505651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A055999 (n + 4)).toNat

end

end A265927.P6536702199516505651

/-! ## A265927.P2543149242799684182

`A265928(eq[4, A219347(n)])`
-/

namespace A265927.P2543149242799684182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265927.P2543149242799684182

/-! ## A265927.P6989027650404580858

`A265928(eq[6, A193592(n)])`
-/

namespace A265927.P6989027650404580858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265927.P6989027650404580858

/-! ## A265927.P17207585589812834407

`A265928(Δ[A023551(n+2)])`
-/

namespace A265927.P17207585589812834407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (f1 (n + 1) - f1 n).toNat

end

end A265927.P17207585589812834407

/-! ## A265927.P13173569251749309843

`A265928(eq[7, A200370(n+1)])`
-/

namespace A265927.P13173569251749309843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265927.P13173569251749309843

/-!
# A265928: T(n,k) = number of n X k 0..4 arrays with the absolute differences of each element with its horizontal and antidiagonal neighbors unique.

The programs for A265928, there is no canonical definition to state claims against.
-/

/-! ## A265928.P16741332004567461176

`A265973(round(log(A309164(n))))`
-/

namespace A265928.P16741332004567461176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (SequenceMachineLib.roundAway (Real.log (A309164 n : ℝ))).toNat

end

end A265928.P16741332004567461176

/-!
# A265929: Number of 1 X n 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265929, there is no canonical definition to state claims against.
-/

/-! ## A265929.P9153794752443190938

`A265928(∑[n]+1)`
-/

namespace A265929.P9153794752443190938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265929.P9153794752443190938

/-! ## A265929.P2951490527316130753

`or(char[1], A265928(A000124(n)))`
-/

namespace A265929.P2951490527316130753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265928 (A000124 n).toNat)

end

end A265929.P2951490527316130753

/-! ## A265929.P9479695576210087091

`record[A010054(n)*A265928(n+1)]`
-/

namespace A265929.P9479695576210087091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A265928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265929.P9479695576210087091

/-! ## A265929.P6617614349474704933

`lcm(A043559(n), A265928(A000124(n)))`
-/

namespace A265929.P6617614349474704933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043559 n) (A265928 (A000124 n).toNat)

end

end A265929.P6617614349474704933

/-! ## A265929.P13933500821714388135

`A265928(A000124(n))+A034477(n+1)`
-/

namespace A265929.P13933500821714388135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A000124 n).toNat + A034477 (n + 1)

end

end A265929.P13933500821714388135

/-!
# A265930: Number of 2Xn 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265930, there is no canonical definition to state claims against.
-/

/-! ## A265930.P4457515275681600645

`A265928(∑[n+1]+2)`
-/

namespace A265930.P4457515275681600645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265930.P4457515275681600645

/-! ## A265930.P11133136219607390124

`record[A010054(n)*A265928(n+2)]`
-/

namespace A265930.P11133136219607390124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A265928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265930.P11133136219607390124

/-! ## A265930.P6295210048468117763

`1/A265928(A133263(n+1))^(-1)`
-/

namespace A265930.P6295210048468117763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A265928 (A133263 (n + 1)).toNat : ℚ) ^ (-1 : ℤ)

end

end A265930.P6295210048468117763

/-! ## A265930.P17269561354028848300

`A033999(n)²*A265928(A152948(n+3))`
-/

namespace A265930.P17269561354028848300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A265928 (A152948 (n + 3)).toNat

end

end A265930.P17269561354028848300

/-! ## A265930.P15884857609319343101

`record[gcd(A111810(n), A265928(n+3))]`
-/

namespace A265930.P15884857609319343101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111810 n) (A265928 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265930.P15884857609319343101

/-!
# A265931: Number of 3Xn 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265931, there is no canonical definition to state claims against.
-/

/-! ## A265931.P18292688978479760406

`A265928(∑[n+2]+4)`
-/

namespace A265931.P18292688978479760406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265931.P18292688978479760406

/-! ## A265931.P10823089433389395555

`A326685(n)+A265928(A167614(n+1))`
-/

namespace A265931.P10823089433389395555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A265928 (A167614 (n + 1)).toNat

end

end A265931.P10823089433389395555

/-! ## A265931.P16940885963334631992

`A016126(n)*A265928(A167614(n+1))`
-/

namespace A265931.P16940885963334631992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016126 n * A265928 (A167614 (n + 1)).toNat

end

end A265931.P16940885963334631992

/-! ## A265931.P18234238252556334605

`lcm(A033999(n), A265928(A167614(n+1)))`
-/

namespace A265931.P18234238252556334605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A265928 (A167614 (n + 1)).toNat)

end

end A265931.P18234238252556334605

/-! ## A265931.P3216853996415035297

`or(A000007(n), A265928(A167614(n+1)))`
-/

namespace A265931.P3216853996415035297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265928 (A167614 (n + 1)).toNat)

end

end A265931.P3216853996415035297

/-!
# A265932: Number of 4Xn 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265932, there is no canonical definition to state claims against.
-/

/-! ## A265932.P1409624517429925165

`A265928(A141214(n)+7)`
-/

namespace A265932.P1409624517429925165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A141214 n + 7).toNat

end

end A265932.P1409624517429925165

/-! ## A265932.P207296401466505237

`A265928(A052905(n)+9)`
-/

namespace A265932.P207296401466505237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A052905 n + 9).toNat

end

end A265932.P207296401466505237

/-! ## A265932.P14933227296253811349

`A265928(A055999(n)+10)`
-/

namespace A265932.P14933227296253811349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A055999 n + 10).toNat

end

end A265932.P14933227296253811349

/-! ## A265932.P6770210570095226890

`A265928(A167614(n+2)+1)`
-/

namespace A265932.P6770210570095226890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A167614 (n + 2) + 1).toNat

end

end A265932.P6770210570095226890

/-! ## A265932.P8547110362892345687

`A265928(eq[5, A131818(n+1)])`
-/

namespace A265932.P8547110362892345687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265932.P8547110362892345687

/-!
# A265933: Number of 5Xn 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265933, there is no canonical definition to state claims against.
-/

/-! ## A265933.P2681048791754935234

`A265928(A167499(n+3))`
-/

namespace A265933.P2681048791754935234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A167499 (n + 3)).toNat

end

end A265933.P2681048791754935234

/-! ## A265933.P14681063603305504157

`A265928(A155212(n)+13)`
-/

namespace A265933.P14681063603305504157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A155212 n + 13).toNat

end

end A265933.P14681063603305504157

/-! ## A265933.P7518446797973017873

`A265928(A056000(n)+15)`
-/

namespace A265933.P7518446797973017873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A056000 n + 15).toNat

end

end A265933.P7518446797973017873

/-! ## A265933.P4069262580432449378

`A265928(A027379(n+2)+8)`
-/

namespace A265933.P4069262580432449378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A027379 (n + 2) + 8).toNat

end

end A265933.P4069262580432449378

/-! ## A265933.P5395546385290489723

`A265928(eq[6, A131818(n+1)])`
-/

namespace A265933.P5395546385290489723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265933.P5395546385290489723

/-!
# A265934: Number of 6Xn 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265934, there is no canonical definition to state claims against.
-/

/-! ## A265934.P5728198896813869609

`A265928(A056115(n)+21)`
-/

namespace A265934.P5728198896813869609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A056115 n + 21).toNat

end

end A265934.P5728198896813869609

/-! ## A265934.P14782564995570681604

`A265928(A167499(n+4)+1)`
-/

namespace A265934.P14782564995570681604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A167499 (n + 4) + 1).toNat

end

end A265934.P14782564995570681604

/-! ## A265934.P15318314722591026286

`A265928(A141214(n+2)+9)`
-/

namespace A265934.P15318314722591026286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A141214 (n + 2) + 9).toNat

end

end A265934.P15318314722591026286

/-! ## A265934.P7262726335396865417

`A265928(A246172(n+1)+20)`
-/

namespace A265934.P7262726335396865417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A246172 (n + 1) + 20).toNat

end

end A265934.P7262726335396865417

/-! ## A265934.P16764802992890368390

`A265928(eq[7, A131818(n+1)])`
-/

namespace A265934.P16764802992890368390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265934.P16764802992890368390

/-!
# A265935: Number of 7Xn 0..4 arrays with the absolute differences of each element with its with horizontal and antidiagonal neighbors unique.

The programs for A265935, there is no canonical definition to state claims against.
-/

/-! ## A265935.P18026367403206647994

`A265928(eq[11, A066657(n)])`
-/

namespace A265935.P18026367403206647994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265935.P18026367403206647994

/-! ## A265935.P3648050285233170182

`A265928(A167499(n+5)+2)`
-/

namespace A265935.P3648050285233170182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A167499 (n + 5) + 2).toNat

end

end A265935.P3648050285233170182

/-! ## A265935.P10374682825298895950

`A265928(A000217(n+6)+7)`
-/

namespace A265935.P10374682825298895950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A000217 (n + 6) + 7).toNat

end

end A265935.P10374682825298895950

/-! ## A265935.P4272256737114794761

`A265928(A141214(n+3)+10)`
-/

namespace A265935.P4272256737114794761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (A141214 (n + 3) + 10).toNat

end

end A265935.P4272256737114794761

/-! ## A265935.P12745737855792701691

`A265928(eq[8, A131818(n+1)])`
-/

namespace A265935.P12745737855792701691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265935.P12745737855792701691

/-!
# A265936: G.f.: Sum_{n>=0} (1 + x)^(n^2) / 2^n.

The programs for A265936, there is no canonical definition to state claims against.
-/

/-! ## A265936.P9124612719139447841

`2*A173217(n)`
-/

namespace A265936.P9124612719139447841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173217 n

end

end A265936.P9124612719139447841

/-! ## A265936.P12084845124172662638

`A173217(A118759(n))+A173217(n)`
-/

namespace A265936.P12084845124172662638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173217 (A118759 n).toNat + A173217 n

end

end A265936.P12084845124172662638

/-! ## A265936.P9866150415786041563

`A173217(n)+A173217(A292579(n))`
-/

namespace A265936.P9866150415786041563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173217 n + A173217 (A292579 n).toNat

end

end A265936.P9866150415786041563

/-! ## A265936.P16581779843837210236

`A173217(A262065(n+1))+A173217(n)`
-/

namespace A265936.P16581779843837210236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173217 (A262065 (n + 1)).toNat + A173217 n

end

end A265936.P16581779843837210236

/-! ## A265936.P13445532528744058618

`A000007(A086363(n))+A173217(n)+A173217(n)`
-/

namespace A265936.P13445532528744058618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A086363 n).toNat + (A173217 n + A173217 n)

end

end A265936.P13445532528744058618

/-!
# A265937: G.f.: Sum_{n>=0} (1 + x)^(n*(n+1)/2) / 2^n.

The programs for A265937, there is no canonical definition to state claims against.
-/

/-! ## A265937.P12874364670291822825

`2*A173219(n)`
-/

namespace A265937.P12874364670291822825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173219 n

end

end A265937.P12874364670291822825

/-! ## A265937.P1789694507434672406

`A173219(A033619(n+1))+A173219(n)`
-/

namespace A265937.P1789694507434672406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173219 (A033619 (n + 1)).toNat + A173219 n

end

end A265937.P1789694507434672406

/-! ## A265937.P6869196841233490478

`A173219(n)+A173219(n)+A008592(n)%2`
-/

namespace A265937.P6869196841233490478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173219 n + (A173219 n + Int.tmod (A008592 n) 2)

end

end A265937.P6869196841233490478

/-! ## A265937.P10620289021009579587

`A173219(n)+A173219(n)%A265936(n)`
-/

namespace A265937.P10620289021009579587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173219 n + Int.tmod (A173219 n) (A265936 n)

end

end A265937.P10620289021009579587

/-! ## A265937.P2742692812718399821

`record[2*A331278(A133263(n))]`
-/

namespace A265937.P2742692812718399821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331278 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265937.P2742692812718399821

/-!
# A265938: Numbers k such that 6*10^k + 91 is prime.

The programs for A265938, there is no canonical definition to state claims against.
-/

/-! ## A265938.P6078972449913539829

`lt[A264388(n+3), A361386(n+2)]`
-/

namespace A265938.P6078972449913539829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264388 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361386 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265938.P6078972449913539829

/-! ## A265938.P4755761355177971938

`lt[A026479(A264388(n+3)), A000040(n+1)]`
-/

namespace A265938.P4755761355177971938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026479 (A264388 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265938.P4755761355177971938

/-! ## A265938.P15786989087224050598

`lt[A033586(A264388(n+3)), A185632(n+4)]`
-/

namespace A265938.P15786989087224050598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 (A264388 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185632 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265938.P15786989087224050598

/-! ## A265938.P13278083160446409187

`lt[A091924(A264388(n+3)), A195162(n+4)]`
-/

namespace A265938.P13278083160446409187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091924 (A264388 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265938.P13278083160446409187

/-! ## A265938.P6026306941948054434

`lt[A368402(n+1), A083550(A318892(2*n+1))]`
-/

namespace A265938.P6026306941948054434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083550 (A318892 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265938.P6026306941948054434

/-!
# A265939: Central terms of triangle A102363.

The programs for A265939, the canonical program `A265939.P16049748140387971680` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265939 has offset 0).

The definition of A265939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265939.P16049748140387971680

`(3*4^n-C(2*n, n))/2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A265939

/-- `(3*4^n-C(2*n, n))/2` -/
def P16049748140387971680.Spec : Prop :=
  ∀ n, P16049748140387971680.a n = (A265939 n : ℚ)

end A265939

/-! ## A265939.P878535478202518798

`A117186(2*n)`
-/

namespace A265939.P878535478202518798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n)

end

end A265939.P878535478202518798

namespace A265939

/-- `A117186(2*n)` -/
def P878535478202518798.Spec : Prop :=
  ∀ n, P878535478202518798.a n = A265939 n

end A265939

/-! ## A265939.P2119910650454189926

`A120588(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A265939.P2119910650454189926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 n + 4 * a (n - 1)

end

end A265939.P2119910650454189926

namespace A265939

/-- `A120588(n)+4*a(n-1)` -/
def P2119910650454189926.Spec : Prop :=
  ∀ n, P2119910650454189926.a n = A265939 n

end A265939

/-! ## A265939.P16587230197274179255

`4*a(n-1)-A115140(n)` with `a(0)=1`
-/

namespace A265939.P16587230197274179255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A115140 n

end

end A265939.P16587230197274179255

namespace A265939

/-- `4*a(n-1)-A115140(n)` -/
def P16587230197274179255.Spec : Prop :=
  ∀ n, P16587230197274179255.a n = A265939 n

end A265939

/-! ## A265939.P12472055380338671254

`A000108(n-1)+4*a(n-1)` with `a(0)=1`
-/

namespace A265939.P12472055380338671254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 (n - 1) + 4 * a (n - 1)

end

end A265939.P12472055380338671254

namespace A265939

/-- `A000108(n-1)+4*a(n-1)` -/
def P12472055380338671254.Spec : Prop :=
  ∀ n, P12472055380338671254.a n = A265939 n

end A265939

/-! ## A265939.P12284110615086587931

`abs(A246432(n))+4*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A265939.P12284110615086587931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  |A246432 n| + 4 * a (n - 1)

end

end A265939.P12284110615086587931

namespace A265939

/-- `abs(A246432(n))+4*a(n-1)` -/
def P12284110615086587931.Spec : Prop :=
  ∀ n, P12284110615086587931.a n = A265939 n

end A265939

/-! ## A265939.P15638829314717068763

`record[-(A210736(n)+2*a(n-1))]` with `a(0)=1`
-/

namespace A265939.P15638829314717068763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(A210736 n + 2 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265939.P15638829314717068763

namespace A265939

/-- `record[-(A210736(n)+2*a(n-1))]` -/
def P15638829314717068763.Spec : Prop :=
  ∀ n, P15638829314717068763.a n = A265939 n

end A265939

/-! ## A265939.P7861808454569857913

`A068551(n)+A032443(n)`
-/

namespace A265939.P7861808454569857913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 n + A032443 n

end

end A265939.P7861808454569857913

namespace A265939

/-- `A068551(n)+A032443(n)` -/
def P7861808454569857913.Spec : Prop :=
  ∀ n, P7861808454569857913.a n = A265939 n

end A265939

/-! ## A265939.P3361807557066254284

`A246472(n)+A020522(n)`
-/

namespace A265939.P3361807557066254284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246472 n + A020522 n

end

end A265939.P3361807557066254284

namespace A265939

/-- `A246472(n)+A020522(n)` -/
def P3361807557066254284.Spec : Prop :=
  ∀ n, P3361807557066254284.a n = A265939 n

end A265939

/-! ## A265939.P7448077935851586842

`A277924(n)+A008549(n)`
-/

namespace A265939.P7448077935851586842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277924 n + A008549 n

end

end A265939.P7448077935851586842

namespace A265939

/-- `A277924(n)+A008549(n)` -/
def P7448077935851586842.Spec : Prop :=
  ∀ n, P7448077935851586842.a n = A265939 n

end A265939

/-! ## A265939.P1012862821602223156

`A004171(n)-A032443(n)`
-/

namespace A265939.P1012862821602223156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A032443 n

end

end A265939.P1012862821602223156

namespace A265939

/-- `A004171(n)-A032443(n)` -/
def P1012862821602223156.Spec : Prop :=
  ∀ n, P1012862821602223156.a n = A265939 n

end A265939

/-! ## A265939.P9587084995861744479

`A136412(n)-A360168(n)`
-/

namespace A265939.P9587084995861744479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n - A360168 n

end

end A265939.P9587084995861744479

namespace A265939

/-- `A136412(n)-A360168(n)` -/
def P9587084995861744479.Spec : Prop :=
  ∀ n, P9587084995861744479.a n = A265939 n

end A265939

/-! ## A265939.P13100662539884593449

`A049775(n+2)-A005317(n)`
-/

namespace A265939.P13100662539884593449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) - A005317 n

end

end A265939.P13100662539884593449

namespace A265939

/-- `A049775(n+2)-A005317(n)` -/
def P13100662539884593449.Spec : Prop :=
  ∀ n, P13100662539884593449.a n = A265939 n

end A265939

/-! ## A265939.P4199446650033838931

`A058622(2*n)+A000302(n)`
-/

namespace A265939.P4199446650033838931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n) + A000302 n

end

end A265939.P4199446650033838931

namespace A265939

/-- `A058622(2*n)+A000302(n)` -/
def P4199446650033838931.Spec : Prop :=
  ∀ n, P4199446650033838931.a n = A265939 n

end A265939

/-! ## A265939.P3795817801237023154

`A294175(2*n)+A000302(n)`
-/

namespace A265939.P3795817801237023154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * n) + A000302 n

end

end A265939.P3795817801237023154

namespace A265939

/-- `A294175(2*n)+A000302(n)` -/
def P3795817801237023154.Spec : Prop :=
  ∀ n, P3795817801237023154.a n = A265939 n

end A265939

/-! ## A265939.P5311500935538135589

`2*A000302(n)-A032443(n)`
-/

namespace A265939.P5311500935538135589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000302 n - A032443 n

end

end A265939.P5311500935538135589

namespace A265939

/-- `2*A000302(n)-A032443(n)` -/
def P5311500935538135589.Spec : Prop :=
  ∀ n, P5311500935538135589.a n = A265939 n

end A265939

/-! ## A265939.P16288800672388151191

`A058622(2*n)+A000079(n)²`
-/

namespace A265939.P16288800672388151191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n) + A000079 n ^ 2

end

end A265939.P16288800672388151191

namespace A265939

/-- `A058622(2*n)+A000079(n)²` -/
def P16288800672388151191.Spec : Prop :=
  ∀ n, P16288800672388151191.a n = A265939 n

end A265939

/-! ## A265939.P16821186915454296418

`A294175(2*n)+A000079(n)²`
-/

namespace A265939.P16821186915454296418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * n) + A000079 n ^ 2

end

end A265939.P16821186915454296418

namespace A265939

/-- `A294175(2*n)+A000079(n)²` -/
def P16821186915454296418.Spec : Prop :=
  ∀ n, P16821186915454296418.a n = A265939 n

end A265939

/-! ## A265939.P3185941075220395349

`2*A000079(n)²-A032443(n)`
-/

namespace A265939.P3185941075220395349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A032443 n

end

end A265939.P3185941075220395349

namespace A265939

/-- `2*A000079(n)²-A032443(n)` -/
def P3185941075220395349.Spec : Prop :=
  ∀ n, P3185941075220395349.a n = A265939 n

end A265939

/-! ## A265939.P4109748078576606145

`A000079(n)²+A068551(n)/2`
-/

namespace A265939.P4109748078576606145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) + (A068551 n : ℚ) / 2

end

end A265939.P4109748078576606145

namespace A265939

/-- `A000079(n)²+A068551(n)/2` -/
def P4109748078576606145.Spec : Prop :=
  ∀ n, P4109748078576606145.a n = (A265939 n : ℚ)

end A265939

/-!
# A265940: G.f. A(x) satisfies: A( x*A(x) - x*A(x)^2 ) = x^2.

The programs for A265940, there is no canonical definition to state claims against.
-/

/-! ## A265940.P10361317087947101516

`A116649(∏[floor(sqrt(n+1))])`
-/

namespace A265940.P10361317087947101516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116649 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A265940.P10361317087947101516

/-! ## A265940.P13025740062016097272

`A131507(floor(floor(A144495(n)/9)/9))`
-/

namespace A265940.P13025740062016097272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 ⌊(⌊(A144495 n : ℚ) / 9⌋ : ℚ) / 9⌋.toNat

end

end A265940.P13025740062016097272

/-! ## A265940.P3211650724778631562

`A000006(A000142(n))-A158092(n+1)`
-/

namespace A265940.P3211650724778631562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000142 n).toNat - A158092 (n + 1)

end

end A265940.P3211650724778631562

/-! ## A265940.P2607019582129724419

`A008618(A166290(n)*A325796(n+5))`
-/

namespace A265940.P2607019582129724419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A166290 n * A325796 (n + 5)).toNat

end

end A265940.P2607019582129724419

/-!
# A265942: G.f. A(x) satisfies: x = Sum_{n>=1} x^n * A(-n*x).

The programs for A265942, there is no canonical definition to state claims against.
-/

/-! ## A265942.P11388211948113903815

`A226872(A250309(n)-A002663(n))`
-/

namespace A265942.P11388211948113903815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (A250309 n - A002663 n).toNat

end

end A265942.P11388211948113903815

/-! ## A265942.P14406439864041971713

`A303880(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A265942.P14406439864041971713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A303880 (a (n - 1) ^ 2).toNat

end

end A265942.P14406439864041971713

/-!
# A265943: E.g.f.: Sum_{n>=1} x^(n^2) * exp(3*x^n) / n!.

The programs for A265943, the canonical program `A265943.P1309440453762043124` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265943 has offset 1).

The definition of A265943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265943.P1309440453762043124

`∑{d}[n+1, 3^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A265943

/-- `∑{d}[n+1, 3^(#-(n+1)/#)*C(#, (n+1)/#)*(n+1)!/#!]` -/
def P1309440453762043124.Spec : Prop :=
  ∀ n, P1309440453762043124.a n = (A265943 (n + 1) : ℝ)

end A265943

/-!
# A265944: Absolute value of the determinant of the matrix whose terms are fibonacci(m+r+s)^(n) with 0 <= r, s <=n, for any m.

The programs for A265944, there is no canonical definition to state claims against.
-/

/-! ## A265944.P8591108723389774712

`A001142(n+1)*A152686(n+1)²`
-/

namespace A265944.P8591108723389774712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 (n + 1) * A152686 (n + 1) ^ 2

end

end A265944.P8591108723389774712

/-!
# A265945: n-th derivative of x^(2*x) at x=1.

The programs for A265945, there is no canonical definition to state claims against.
-/

/-! ## A265945.P14715515258963895250

`A108954(A155117(n))+A056654(n+1)`
-/

namespace A265945.P14715515258963895250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A155117 n).toNat + A056654 (n + 1)

end

end A265945.P14715515258963895250

/-! ## A265945.P9391231478448503585

`A121655(n)-A048158(A205487(n+1)+1)`
-/

namespace A265945.P9391231478448503585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121655 n - A048158 (A205487 (n + 1) + 1).toNat

end

end A265945.P9391231478448503585

/-!
# A265946: Sums of positive differences and negated sums of negative differences in the Collatz trajectory of n.

The programs for A265946, there is no canonical definition to state claims against.
-/

/-! ## A265946.P13711786469455812163

`A285098(A008619(n))-A026741(n+1)`
-/

namespace A265946.P13711786469455812163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285098 (A008619 n).toNat - A026741 (n + 1)

end

end A265946.P13711786469455812163

/-! ## A265946.P248297224971529227

`A285098(A008619(n))-A008619(A257088(n))`
-/

namespace A265946.P248297224971529227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285098 (A008619 n).toNat - A008619 (A257088 n).toNat

end

end A265946.P248297224971529227

/-!
# A265948: Numbers whose name in German contains the letter Ö (O with Umlaut).

The programs for A265948, there is no canonical definition to state claims against.
-/

/-! ## A265948.P2723164677702075430

`n*100+12`
-/

namespace A265948.P2723164677702075430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 100 + 12

end

end A265948.P2723164677702075430

/-!
# A265949: Expansion of Product_{k>=1} (1 + k^k*x^k).

The programs for A265949, there is no canonical definition to state claims against.
-/

/-! ## A265949.P2812032377963103790

`A261053(n)-A291799(A208832(n))`
-/

namespace A265949.P2812032377963103790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261053 n - A291799 (A208832 n).toNat

end

end A265949.P2812032377963103790

/-! ## A265949.P14529889611937141343

`A292810(n+1)+A241036(A292816(n))`
-/

namespace A265949.P14529889611937141343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292810 (n + 1) + A241036 (A292816 n).toNat

end

end A265949.P14529889611937141343

/-!
# A265950: Expansion of Product_{k>=1} (1 + k!*x^k).

The programs for A265950, there is no canonical definition to state claims against.
-/

/-! ## A265950.P8975871887220491123

`A107894(n)-Δ[A243791(n+3)]`
-/

namespace A265950.P8975871887220491123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243791 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107894 n - (f1 (n + 1) - f1 n)

end

end A265950.P8975871887220491123

/-! ## A265950.P6298256636542187565

`A054346(A033312(n))+A033312(n)`
-/

namespace A265950.P6298256636542187565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054346 (A033312 n).toNat + A033312 n

end

end A265950.P6298256636542187565

/-! ## A265950.P15715691581675776874

`A326756(n)+A224772(A017966(n))`
-/

namespace A265950.P15715691581675776874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326756 n + A224772 (A017966 n).toNat

end

end A265950.P15715691581675776874

/-!
# A265951: Expansion of Product_{k>=1} 1/(1 - 2*k*x^k).

The programs for A265951, there is no canonical definition to state claims against.
-/

/-! ## A265951.P675729047286680699

`∑[or(2, A115840(a(n-1)+1))]` with `a(0)=1, a(1)=1`
-/

namespace A265951.P675729047286680699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.lor 2 (A115840 (f1 (n - 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265951.P675729047286680699

/-! ## A265951.P18152356634361151000

`A263312(∑[C(n, ceil(n/2)+1)]+n+1)`
-/

namespace A265951.P18152356634361151000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (⌈(n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263312 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A265951.P18152356634361151000

/-!
# A265952: E.g.f.: Product_{k>=1} (1 + exp(x)*x^k).

The programs for A265952, there is no canonical definition to state claims against.
-/

/-! ## A265952.P7704959465451154204

`∏{e}[13^n, A052852(#)]`
-/

namespace A265952.P7704959465451154204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A052852 (Nat.factorization (f1 n) p)

end

end A265952.P7704959465451154204

/-!
# A265953: E.g.f.: Product_{k>=1} 1/(1 - exp(x)*x^k).

The programs for A265953, there is no canonical definition to state claims against.
-/

/-! ## A265953.P9548145300541179714

`A276214(n^n)`
-/

namespace A265953.P9548145300541179714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (n ^ n)

end

end A265953.P9548145300541179714

/-!
# A265954: Coefficients in asymptotic expansion of sequence A265950.

The programs for A265954, there is no canonical definition to state claims against.
-/

/-! ## A265954.P9118959791363488119

`A256502(A213229(n))`
-/

namespace A265954.P9118959791363488119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A213229 n).toNat

end

end A265954.P9118959791363488119

/-! ## A265954.P8086374538159280053

`A002637(A151108(n+1))`
-/

namespace A265954.P8086374538159280053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (A151108 (n + 1)).toNat

end

end A265954.P8086374538159280053

/-!
# A265955: Expansion of Product_{k>=1} (1 + 2*k*x^k)/(1 - 2*k*x^k).

The programs for A265955, there is no canonical definition to state claims against.
-/

/-! ## A265955.P8705582369265466346

`A261563(n)+A213370(A265952(n))`
-/

namespace A265955.P8705582369265466346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261563 n + A213370 (A265952 n).toNat

end

end A265955.P8705582369265466346

/-!
# A265956: Number of nX2 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors less than itself.

The programs for A265956, there is no canonical definition to state claims against.
-/

/-! ## A265956.P2731753390488206532

`A265960(∑[n+1]+2)`
-/

namespace A265956.P2731753390488206532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265956.P2731753390488206532

/-! ## A265956.P11900427570529222911

`record[A265960(n+3)/A265981(n+1)]`
-/

namespace A265956.P11900427570529222911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265960 (n + 3) : ℚ) / (A265981 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265956.P11900427570529222911

/-! ## A265956.P3052461413970335970

`record[A265960(n+3)/A266033(n+1)]`
-/

namespace A265956.P3052461413970335970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265960 (n + 3) : ℚ) / (A266033 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265956.P3052461413970335970

/-! ## A265956.P2957526236469581511

`record[root(A265960(n+2), A002260(n+1))]`
-/

namespace A265956.P2957526236469581511
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265960 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265956.P2957526236469581511

/-! ## A265956.P588303235981363776

`record[A265960(abs(A201163(n)))]`
-/

namespace A265956.P588303235981363776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265956.P588303235981363776

/-!
# A265957: Number of nX3 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors less than itself.

The programs for A265957, there is no canonical definition to state claims against.
-/

/-! ## A265957.P10819057360404258999

`A265960(∑[n+2]+4)`
-/

namespace A265957.P10819057360404258999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265957.P10819057360404258999

/-! ## A265957.P13122142183935319508

`lcm(∏{e}[n+1, #], A265960(A167614(n+1)))`
-/

namespace A265957.P13122142183935319508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A265960 (A167614 (n + 1)).toNat)

end

end A265957.P13122142183935319508

/-! ## A265957.P4331119668466223092

`A265960(A167614(n+1))+A025437(n)`
-/

namespace A265957.P4331119668466223092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (A167614 (n + 1)).toNat + A025437 n

end

end A265957.P4331119668466223092

/-! ## A265957.P16767003660201829562

`A265960(A167614(n+1))+A031286(n)`
-/

namespace A265957.P16767003660201829562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (A167614 (n + 1)).toNat + A031286 n

end

end A265957.P16767003660201829562

/-! ## A265957.P9980255537572496390

`A265960(A167614(n+1))+A054908(n)`
-/

namespace A265957.P9980255537572496390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (A167614 (n + 1)).toNat + A054908 n

end

end A265957.P9980255537572496390

/-!
# A265958: Number of n X 4 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors less than itself.

The programs for A265958, there is no canonical definition to state claims against.
-/

/-! ## A265958.P17958543338927149051

`A265960(∑[n+3]+7)`
-/

namespace A265958.P17958543338927149051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265958.P17958543338927149051

/-! ## A265958.P7164070982976604019

`A265960(A141214(n+1))^A284992(n)`
-/

namespace A265958.P7164070982976604019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265960 (A141214 (n + 1)).toNat : ℚ) ^ (A284992 n : ℤ)

end

end A265958.P7164070982976604019

/-! ## A265958.P3862694511763110267

`A265960(A141214(n+1))+A212619(n+1)`
-/

namespace A265958.P3862694511763110267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (A141214 (n + 1)).toNat + A212619 (n + 1)

end

end A265958.P3862694511763110267

/-!
# A265959: Number of n X 5 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors less than itself.

The programs for A265959, there is no canonical definition to state claims against.
-/

/-! ## A265959.P3967908773262021679

`A265960(A374005(n+1))`
-/

namespace A265959.P3967908773262021679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (A374005 (n + 1)).toNat

end

end A265959.P3967908773262021679

/-! ## A265959.P7090236674034378513

`A265960(Δ[A264443(n)])`
-/

namespace A265959.P7090236674034378513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265960 (f1 (n + 1) - f1 n).toNat

end

end A265959.P7090236674034378513

/-!
# A265961: Number of nX2 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than or equal to itself.

The programs for A265961, there is no canonical definition to state claims against.
-/

/-! ## A265961.P18151084454728724484

`A265965(∑[n+1]+2)`
-/

namespace A265961.P18151084454728724484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265961.P18151084454728724484

/-! ## A265961.P11156593253055061817

`record[gcd(A265965(n+2), A271439(n))]`
-/

namespace A265961.P11156593253055061817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265965 (n + 2)) (A271439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265961.P11156593253055061817

/-! ## A265961.P10871116490401713491

`lcm(A033999(n), A265965(A000096(n)+3))`
-/

namespace A265961.P10871116490401713491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A265965 (A000096 n + 3).toNat)

end

end A265961.P10871116490401713491

/-! ## A265961.P9226811590110577413

`A265965(A000096(n)+3)%A119376(2*n+1)`
-/

namespace A265961.P9226811590110577413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265965 (A000096 n + 3).toNat) (A119376 (2 * n + 1))

end

end A265961.P9226811590110577413

/-! ## A265961.P13157374456434484320

`record[A265965(n+3)/A265981(n+1)]`
-/

namespace A265961.P13157374456434484320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265965 (n + 3) : ℚ) / (A265981 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265961.P13157374456434484320

/-!
# A265962: Number of nX3 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than or equal to itself.

The programs for A265962, there is no canonical definition to state claims against.
-/

/-! ## A265962.P12614767443612674197

`A265965(∑[n+2]+4)`
-/

namespace A265962.P12614767443612674197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265962.P12614767443612674197

/-! ## A265962.P7008850496256194667

`A265965(A167614(n+1))+A011744(n)`
-/

namespace A265962.P7008850496256194667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A167614 (n + 1)).toNat + A011744 n

end

end A265962.P7008850496256194667

/-! ## A265962.P1264562927682317564

`A265965(A167614(n+1))+A025442(n)`
-/

namespace A265962.P1264562927682317564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A167614 (n + 1)).toNat + A025442 n

end

end A265962.P1264562927682317564

/-! ## A265962.P1029233940405830545

`A265965(A167614(n+1))*A291168(n)`
-/

namespace A265962.P1029233940405830545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A167614 (n + 1)).toNat * A291168 n

end

end A265962.P1029233940405830545

/-! ## A265962.P151592094505120037

`A265965(A167614(n+1))+A048070(n+1)`
-/

namespace A265962.P151592094505120037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A167614 (n + 1)).toNat + A048070 (n + 1)

end

end A265962.P151592094505120037

/-!
# A265963: Number of nX4 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than or equal to itself.

The programs for A265963, there is no canonical definition to state claims against.
-/

/-! ## A265963.P16501826939969610569

`A265965(A374004(n+1))`
-/

namespace A265963.P16501826939969610569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A374004 (n + 1)).toNat

end

end A265963.P16501826939969610569

/-! ## A265963.P9886619192129849271

`A265965(A052905(n)+9)`
-/

namespace A265963.P9886619192129849271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A052905 n + 9).toNat

end

end A265963.P9886619192129849271

/-! ## A265963.P5804039156175449296

`A265965(A055999(n)+10)`
-/

namespace A265963.P5804039156175449296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A055999 n + 10).toNat

end

end A265963.P5804039156175449296

/-! ## A265963.P17119204663426521625

`A265965(A167614(n+2)+1)`
-/

namespace A265963.P17119204663426521625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A167614 (n + 2) + 1).toNat

end

end A265963.P17119204663426521625

/-! ## A265963.P1249462426679187522

`A265965(A141214(n+1))`
-/

namespace A265963.P1249462426679187522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A141214 (n + 1)).toNat

end

end A265963.P1249462426679187522

/-!
# A265964: Number of nX5 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than or equal to itself.

The programs for A265964, there is no canonical definition to state claims against.
-/

/-! ## A265964.P3978127103979606447

`A265965(A374005(n+1))`
-/

namespace A265964.P3978127103979606447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A374005 (n + 1)).toNat

end

end A265964.P3978127103979606447

/-! ## A265964.P8401938944429398471

`A265965(A167499(n+3))`
-/

namespace A265964.P8401938944429398471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A167499 (n + 3)).toNat

end

end A265964.P8401938944429398471

/-! ## A265964.P7755604617633307424

`A265965(A155212(n)+13)`
-/

namespace A265964.P7755604617633307424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A155212 n + 13).toNat

end

end A265964.P7755604617633307424

/-! ## A265964.P17083109734124830072

`A265965(A056000(n)+15)`
-/

namespace A265964.P17083109734124830072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (A056000 n + 15).toNat

end

end A265964.P17083109734124830072

/-! ## A265964.P12204678620444336130

`A265965(eq[7, A066657(n)])`
-/

namespace A265964.P12204678620444336130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265964.P12204678620444336130

/-!
# A265966: Number of n X n 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265966, there is no canonical definition to state claims against.
-/

/-! ## A265966.P13889161884624593108

`A265973(∑[4*n]+1)`
-/

namespace A265966.P13889161884624593108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265966.P13889161884624593108

/-! ## A265966.P13177624624898634293

`record[A265973(Δ[A235355(n)])]`
-/

namespace A265966.P13177624624898634293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265966.P13177624624898634293

/-! ## A265966.P12417000256793181232

`and(-1, A265973(A001844(n)))`
-/

namespace A265966.P12417000256793181232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265973 (A001844 n).toNat)

end

end A265966.P12417000256793181232

/-! ## A265966.P8658397803575969990

`record[A003982(n)*A265973(n+1)]`
-/

namespace A265966.P8658397803575969990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A265973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265966.P8658397803575969990

/-! ## A265966.P9994772020983132730

`record[gcd(A003987(n), A265973(n+1))]`
-/

namespace A265966.P9994772020983132730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A265973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265966.P9994772020983132730

/-!
# A265967: Number of nX2 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265967, there is no canonical definition to state claims against.
-/

/-! ## A265967.P2020389654400155780

`A265973(∑[n+1]+2)`
-/

namespace A265967.P2020389654400155780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265967.P2020389654400155780

/-! ## A265967.P5580704536548356243

`record[A265973(A007494(n+1))]`
-/

namespace A265967.P5580704536548356243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A007494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265967.P5580704536548356243

/-! ## A265967.P13364158900174685618

`record[A265973(A034020(n+1))]`
-/

namespace A265967.P13364158900174685618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A034020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265967.P13364158900174685618

/-! ## A265967.P16381825136612646674

`record[A265973(A047370(n+1))]`
-/

namespace A265967.P16381825136612646674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A047370 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265967.P16381825136612646674

/-! ## A265967.P14505444354566854894

`record[A265973(A189716(n+1))]`
-/

namespace A265967.P14505444354566854894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A189716 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265967.P14505444354566854894

/-!
# A265968: Number of nX3 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265968, there is no canonical definition to state claims against.
-/

/-! ## A265968.P17447309960210978683

`A265973(∑[n+2]+4)`
-/

namespace A265968.P17447309960210978683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265968.P17447309960210978683

/-! ## A265968.P16368902602912952550

`lcm(2, A265973(A167614(n+1)))`
-/

namespace A265968.P16368902602912952550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265973 (A167614 (n + 1)).toNat)

end

end A265968.P16368902602912952550

/-! ## A265968.P6861263873446635961

`record[A120113(n)*A265973(n+4)]`
-/

namespace A265968.P6861263873446635961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120113 n * A265973 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265968.P6861263873446635961

/-! ## A265968.P12131733744551433383

`A265973(A167614(n+1))+A011737(n)`
-/

namespace A265968.P12131733744551433383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A167614 (n + 1)).toNat + A011737 n

end

end A265968.P12131733744551433383

/-! ## A265968.P4543395922742144211

`A265973(A167614(n+1))+A011738(n)`
-/

namespace A265968.P4543395922742144211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A167614 (n + 1)).toNat + A011738 n

end

end A265968.P4543395922742144211

/-!
# A265969: Number of nX4 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265969, there is no canonical definition to state claims against.
-/

/-! ## A265969.P3439010417130005016

`A265973(∑[n+3]+7)`
-/

namespace A265969.P3439010417130005016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265969.P3439010417130005016

/-! ## A265969.P17555070745215767026

`A265973(A055998(n+2))+A101638(n+1)`
-/

namespace A265969.P17555070745215767026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A055998 (n + 2)).toNat + A101638 (n + 1)

end

end A265969.P17555070745215767026

/-! ## A265969.P1149351235700832798

`A294889(n+1)+A265973(A027379(n+2))`
-/

namespace A265969.P1149351235700832798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1) + A265973 (A027379 (n + 2)).toNat

end

end A265969.P1149351235700832798

/-! ## A265969.P17056545891365978804

`A265973(A027379(n+2))+A014027(3*n+4)`
-/

namespace A265969.P17056545891365978804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A027379 (n + 2)).toNat + A014027 (3 * n + 4)

end

end A265969.P17056545891365978804

/-! ## A265969.P1717365591469318568

`record[A265973(A141214(∑{e}[n+1, #]+1))]`
-/

namespace A265969.P1717365591469318568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A141214 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265969.P1717365591469318568

/-!
# A265970: Number of nX5 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265970, there is no canonical definition to state claims against.
-/

/-! ## A265970.P6228769170505911419

`A265973(A374005(n+1))`
-/

namespace A265970.P6228769170505911419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A374005 (n + 1)).toNat

end

end A265970.P6228769170505911419

/-! ## A265970.P11594404137001489215

`A265973(A167499(n+3))`
-/

namespace A265970.P11594404137001489215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A167499 (n + 3)).toNat

end

end A265970.P11594404137001489215

/-! ## A265970.P7754512483392679879

`A265973(A155212(n)+13)`
-/

namespace A265970.P7754512483392679879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A155212 n + 13).toNat

end

end A265970.P7754512483392679879

/-! ## A265970.P5574073644779045974

`A265973(A056000(n)+15)`
-/

namespace A265970.P5574073644779045974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A056000 n + 15).toNat

end

end A265970.P5574073644779045974

/-! ## A265970.P1061223137557869285

`A265973(eq[7, A066657(n)])`
-/

namespace A265970.P1061223137557869285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265970.P1061223137557869285

/-!
# A265971: Number of nX6 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265971, there is no canonical definition to state claims against.
-/

/-! ## A265971.P12797463781317402105

`A265973(A374007(n+1))`
-/

namespace A265971.P12797463781317402105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A374007 (n + 1)).toNat

end

end A265971.P12797463781317402105

/-! ## A265971.P12509809650745514184

`A265973(A056115(n)+21)`
-/

namespace A265971.P12509809650745514184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A056115 n + 21).toNat

end

end A265971.P12509809650745514184

/-! ## A265971.P4856031713658161775

`A265973(A167499(n+4)+1)`
-/

namespace A265971.P4856031713658161775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A167499 (n + 4) + 1).toNat

end

end A265971.P4856031713658161775

/-! ## A265971.P1406613791118503709

`A265973(A167614(n+4)+3)`
-/

namespace A265971.P1406613791118503709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A167614 (n + 4) + 3).toNat

end

end A265971.P1406613791118503709

/-! ## A265971.P9416867989777522540

`A265973(A000096(n+4)+7)`
-/

namespace A265971.P9416867989777522540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A000096 (n + 4) + 7).toNat

end

end A265971.P9416867989777522540

/-!
# A265972: Number of nX7 0..4 arrays with the absolute differences of each element with its with horizontal and vertical neighbors unique.

The programs for A265972, there is no canonical definition to state claims against.
-/

/-! ## A265972.P13369204455312110597

`A265973(A374008(n+1))`
-/

namespace A265972.P13369204455312110597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A374008 (n + 1)).toNat

end

end A265972.P13369204455312110597

/-! ## A265972.P6812131687869764079

`A265973(A056119(n)+28)`
-/

namespace A265972.P6812131687869764079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A056119 n + 28).toNat

end

end A265972.P6812131687869764079

/-! ## A265972.P4753810085213496213

`A265973(eq[11, A066657(n)])`
-/

namespace A265972.P4753810085213496213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265972.P4753810085213496213

/-! ## A265972.P15163942757673817813

`A265973(A166136(n+5)+1)`
-/

namespace A265972.P15163942757673817813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A166136 (n + 5) + 1).toNat

end

end A265972.P15163942757673817813

/-! ## A265972.P10319245354100515974

`A265973(A167499(n+5)+2)`
-/

namespace A265972.P10319245354100515974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265973 (A167499 (n + 5) + 2).toNat

end

end A265972.P10319245354100515974

/-!
# A265974: Expansion of Product_{k>=1} 1/(1 - 3*k*x^k).

The programs for A265974, there is no canonical definition to state claims against.
-/

/-! ## A265974.P2827792956578580811

`A071347(eq[1, lcm(16, n)/16])`
-/

namespace A265974.P2827792956578580811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071347 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A265974.P2827792956578580811

/-!
# A265976: Expansion of Product_{k>=1} 1/(1 - 5*k*x^k).

The programs for A265976, there is no canonical definition to state claims against.
-/

/-! ## A265976.P10294013832059092284

`A130348(∑[A262977(n)])`
-/

namespace A265976.P10294013832059092284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265976.P10294013832059092284

/-!
# A265977: Number of nX3 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265977, there is no canonical definition to state claims against.
-/

/-! ## A265977.P5739836120934121629

`A265981(∑[n+3]+1)`
-/

namespace A265977.P5739836120934121629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265977.P5739836120934121629

/-! ## A265977.P15544627491756447220

`record[A265981(A198464(n+1))]`
-/

namespace A265977.P15544627491756447220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265977.P15544627491756447220

/-!
# A265978: Number of n X 4 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265978, there is no canonical definition to state claims against.
-/

/-! ## A265978.P13309086289644782825

`A265981(∑[n+4]+3)`
-/

namespace A265978.P13309086289644782825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265978.P13309086289644782825

/-! ## A265978.P12306004190544952881

`and(-1, A265981(A141214(n+1)))`
-/

namespace A265978.P12306004190544952881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265981 (A141214 (n + 1)).toNat)

end

end A265978.P12306004190544952881

/-! ## A265978.P7288188410079988087

`A265981(A141214(n+1))+A011744(n)`
-/

namespace A265978.P7288188410079988087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A141214 (n + 1)).toNat + A011744 n

end

end A265978.P7288188410079988087

/-! ## A265978.P10740193625362306588

`A265981(A141214(n+1))+A025442(n)`
-/

namespace A265978.P10740193625362306588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A141214 (n + 1)).toNat + A025442 n

end

end A265978.P10740193625362306588

/-!
# A265979: Number of nX5 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265979, there is no canonical definition to state claims against.
-/

/-! ## A265979.P3447013689857675523

`A265981(-xor(∑[n+5]+5, -1))`
-/

namespace A265979.P3447013689857675523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (-Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ) (-1)).toNat

end

end A265979.P3447013689857675523

/-! ## A265979.P17900935568687444799

`A265981(Δ[A264443(n)])`
-/

namespace A265979.P17900935568687444799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (f1 (n + 1) - f1 n).toNat

end

end A265979.P17900935568687444799

/-! ## A265979.P14399852491678020755

`A265981(A046691(n+3))`
-/

namespace A265979.P14399852491678020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A046691 (n + 3)).toNat

end

end A265979.P14399852491678020755

/-!
# A265980: Number of nX6 integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265980, there is no canonical definition to state claims against.
-/

/-! ## A265980.P13010605025733016536

`A265981(A052905(n+3))`
-/

namespace A265980.P13010605025733016536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A052905 (n + 3)).toNat

end

end A265980.P13010605025733016536

/-! ## A265980.P9109192532785694196

`A265981(A056119(n)+16)`
-/

namespace A265980.P9109192532785694196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A056119 n + 16).toNat

end

end A265980.P9109192532785694196

/-!
# A265982: Number of 2Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265982, there is no canonical definition to state claims against.
-/

/-! ## A265982.P4651225680808310857

`A265981(∑[n+1]+2)`
-/

namespace A265982.P4651225680808310857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265982.P4651225680808310857

/-! ## A265982.P9475704314640339957

`record[gcd(A097230(n), A265981(n+1))]`
-/

namespace A265982.P9475704314640339957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A265981 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265982.P9475704314640339957

/-! ## A265982.P17978979055613622315

`record[gcd(A097805(n), A265981(n+2))]`
-/

namespace A265982.P17978979055613622315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 n) (A265981 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265982.P17978979055613622315

/-! ## A265982.P15233603670965681176

`record[gcd(A265981(n+3), A296067(n))]`
-/

namespace A265982.P15233603670965681176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265981 (n + 3)) (A296067 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265982.P15233603670965681176

/-! ## A265982.P15933064822174678179

`A265981(A000217(n+1)+2)^A029635(A161680(2*n))`
-/

namespace A265982.P15933064822174678179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265981 (A000217 (n + 1) + 2).toNat : ℚ) ^ (A029635 (A161680 (2 * n)).toNat : ℤ)

end

end A265982.P15933064822174678179

/-!
# A265983: Number of 3Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265983, there is no canonical definition to state claims against.
-/

/-! ## A265983.P17944836466455893464

`A265981(∑[n+2]+4)`
-/

namespace A265983.P17944836466455893464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265983.P17944836466455893464

/-! ## A265983.P7817228397183346713

`A265981(A167614(n+1))+char[10]`
-/

namespace A265983.P7817228397183346713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265983.P7817228397183346713

/-! ## A265983.P11133950805255190778

`record[gcd(A105422(n), A265981(n+5))]`
-/

namespace A265983.P11133950805255190778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A265981 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265983.P11133950805255190778

/-! ## A265983.P5751829883680102442

`record[A265981(A167614(val(n+1, 2)+1))]`
-/

namespace A265983.P5751829883680102442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265983.P5751829883680102442

/-! ## A265983.P8511673762774989441

`A265981(A167614(n+1))*A291168(n)`
-/

namespace A265983.P8511673762774989441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A167614 (n + 1)).toNat * A291168 n

end

end A265983.P8511673762774989441

/-!
# A265984: Number of 4Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265984, there is no canonical definition to state claims against.
-/

/-! ## A265984.P12114659795963079576

`A265981(∑[n+3]+7)`
-/

namespace A265984.P12114659795963079576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265984.P12114659795963079576

/-!
# A265985: Number of 5Xn integer arrays with each element equal to the number of horizontal, diagonal and antidiagonal neighbors less than itself.

The programs for A265985, there is no canonical definition to state claims against.
-/

/-! ## A265985.P4000130763163682503

`A265981(A167499(n+3))`
-/

namespace A265985.P4000130763163682503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A167499 (n + 3)).toNat

end

end A265985.P4000130763163682503

/-! ## A265985.P12913317042079082504

`A265981(A155212(n)+13)`
-/

namespace A265985.P12913317042079082504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A155212 n + 13).toNat

end

end A265985.P12913317042079082504

/-! ## A265985.P17732022892884794056

`A265981(A056000(n)+15)`
-/

namespace A265985.P17732022892884794056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (A056000 n + 15).toNat

end

end A265985.P17732022892884794056

/-! ## A265985.P14540712556335980009

`A265981(eq[7, A066657(n)])`
-/

namespace A265985.P14540712556335980009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265985.P14540712556335980009

/-!
# A265986: Number of n X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265986, there is no canonical definition to state claims against.
-/

/-! ## A265986.P8317406800960225056

`A265991(∑[4*n]+1)`
-/

namespace A265986.P8317406800960225056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265986.P8317406800960225056

/-! ## A265986.P17091493442350855120

`A265991(A001844(n))+char[15]`
-/

namespace A265986.P17091493442350855120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265986.P17091493442350855120

/-! ## A265986.P6004679378486660619

`A265991(A001844(n))%A189317(n)`
-/

namespace A265986.P6004679378486660619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265991 (A001844 n).toNat) (A189317 n)

end

end A265986.P6004679378486660619

/-! ## A265986.P1309219016333704275

`A007318(∑[n])*A265991(A001844(n))`
-/

namespace A265986.P1309219016333704275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A265991 (A001844 n).toNat

end

end A265986.P1309219016333704275

/-! ## A265986.P14648910677293224468

`A014963(or(14, n))*A265991(A001844(n))`
-/

namespace A265986.P14648910677293224468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor 14 n) * A265991 (A001844 n).toNat

end

end A265986.P14648910677293224468

/-!
# A265987: Number of n X 3 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265987, the canonical program `A265987.P15610298332707606675` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265987 has offset 1).

The definition of A265987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265987.P17793012116074659222

`∑[ogf((-2+2x+4x^2)/(-1+x+4x^2))]`
-/

namespace A265987.P17793012116074659222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -4] [1, -1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265987.P17793012116074659222

namespace A265987

/-- `∑[ogf((-2+2x+4x^2)/(-1+x+4x^2))]` -/
def P17793012116074659222.Spec : Prop :=
  ∀ n, P17793012116074659222.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P4015797045520411356

`ogf((-2+2x+4x^2)/(-1+2x+3x^2-4x^3))`
-/

namespace A265987.P4015797045520411356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -4] [1, -2, -3, 4] n

end

end A265987.P4015797045520411356

namespace A265987

/-- `ogf((-2+2x+4x^2)/(-1+2x+3x^2-4x^3))` -/
def P4015797045520411356.Spec : Prop :=
  ∀ n, P4015797045520411356.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P15610298332707606675

`a(n-1)+4*(a(n-2)-1)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A265987

/-- `a(n-1)+4*(a(n-2)-1)` -/
def P15610298332707606675.Spec : Prop :=
  ∀ n, P15610298332707606675.a n = A265987 (n + 1)

theorem P15610298332707606675.correct : P15610298332707606675.Spec := by
  intro n
  simp only [A265987, Nat.add_sub_cancel]

end A265987

/-! ## A265987.P1534415626602198625

`a(n-1)-4*(1-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A265987.P1534415626602198625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 2))

end

end A265987.P1534415626602198625

namespace A265987

/-- `a(n-1)-4*(1-a(n-2))` -/
def P1534415626602198625.Spec : Prop :=
  ∀ n, P1534415626602198625.a n = A265987 (n + 1)

theorem P1534415626602198625.correct : P1534415626602198625.Spec := by
  intro n
  simp only [A265987, Nat.add_sub_cancel, A265987.P1534415626602198625.a, A265987.P15610298332707606675.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A265987

/-! ## A265987.P14583931688405172860

`1+A006131(n)`
-/

namespace A265987.P14583931688405172860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006131 n

end

end A265987.P14583931688405172860

namespace A265987

/-- `1+A006131(n)` -/
def P14583931688405172860.Spec : Prop :=
  ∀ n, P14583931688405172860.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P14319212413999992939

`2*A193649(n)`
-/

namespace A265987.P14319212413999992939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193649 n

end

end A265987.P14319212413999992939

namespace A265987

/-- `2*A193649(n)` -/
def P14319212413999992939.Spec : Prop :=
  ∀ n, P14319212413999992939.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P3198362864374690654

`∑[A052923(n)]+1`
-/

namespace A265987.P3198362864374690654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265987.P3198362864374690654

namespace A265987

/-- `∑[A052923(n)]+1` -/
def P3198362864374690654.Spec : Prop :=
  ∀ n, P3198362864374690654.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P5346345559099925179

`2*or(1, A344236(n))`
-/

namespace A265987.P5346345559099925179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A344236 n)

end

end A265987.P5346345559099925179

namespace A265987

/-- `2*or(1, A344236(n))` -/
def P5346345559099925179.Spec : Prop :=
  ∀ n, P5346345559099925179.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P3342441964409628913

`2*or(1, A344261(n))`
-/

namespace A265987.P3342441964409628913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A344261 n)

end

end A265987.P3342441964409628913

namespace A265987

/-- `2*or(1, A344261(n))` -/
def P3342441964409628913.Spec : Prop :=
  ∀ n, P3342441964409628913.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P17637832597410522774

`A344236(n)+A344261(n)+1`
-/

namespace A265987.P17637832597410522774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 n + (A344261 n + 1)

end

end A265987.P17637832597410522774

namespace A265987

/-- `A344236(n)+A344261(n)+1` -/
def P17637832597410522774.Spec : Prop :=
  ∀ n, P17637832597410522774.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P10873937433407361752

`2*(A344261(n)+A000035(n))`
-/

namespace A265987.P10873937433407361752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A344261 n + A000035 n)

end

end A265987.P10873937433407361752

namespace A265987

/-- `2*(A344261(n)+A000035(n))` -/
def P10873937433407361752.Spec : Prop :=
  ∀ n, P10873937433407361752.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P11601825842472423723

`2*(A344236(n)+A059841(n))`
-/

namespace A265987.P11601825842472423723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A344236 n + A059841 n)

end

end A265987.P11601825842472423723

namespace A265987

/-- `2*(A344236(n)+A059841(n))` -/
def P11601825842472423723.Spec : Prop :=
  ∀ n, P11601825842472423723.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P7888453024103838432

`A053669(A109613(n))-(1-A006131(n))`
-/

namespace A265987.P7888453024103838432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A109613 n).toNat - (1 - A006131 n)

end

end A265987.P7888453024103838432

namespace A265987

/-- `A053669(A109613(n))-(1-A006131(n))` -/
def P7888453024103838432.Spec : Prop :=
  ∀ n, P7888453024103838432.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P4348167356612943427

`A102446(n)/2+1`
-/

namespace A265987.P4348167356612943427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102446 n : ℚ) / 2 + 1

end

end A265987.P4348167356612943427

namespace A265987

/-- `A102446(n)/2+1` -/
def P4348167356612943427.Spec : Prop :=
  ∀ n, P4348167356612943427.a n = (A265987 (n + 1) : ℚ)

end A265987

/-! ## A265987.P466622398469588732

`abs(∑[A122112(n)])+1`
-/

namespace A265987.P466622398469588732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| + 1

end

end A265987.P466622398469588732

namespace A265987

/-- `abs(∑[A122112(n)])+1` -/
def P466622398469588732.Spec : Prop :=
  ∀ n, P466622398469588732.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P14419256002824495599

`A026597(n)+2-a(n-1)` with `a(0)=2`
-/

namespace A265987.P14419256002824495599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A026597 n + (2 - a (n - 1))

end

end A265987.P14419256002824495599

namespace A265987

/-- `A026597(n)+2-a(n-1)` -/
def P14419256002824495599.Spec : Prop :=
  ∀ n, P14419256002824495599.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P3205092521010467019

`A072265(n)+1-A052923(n)`
-/

namespace A265987.P3205092521010467019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 n + (1 - A052923 n)

end

end A265987.P3205092521010467019

namespace A265987

/-- `A072265(n)+1-A052923(n)` -/
def P3205092521010467019.Spec : Prop :=
  ∀ n, P3205092521010467019.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P9792034860303371045

`Δ[A026581(n)]+1-A026581(n)`
-/

namespace A265987.P9792034860303371045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A026581 n)

end

end A265987.P9792034860303371045

namespace A265987

/-- `Δ[A026581(n)]+1-A026581(n)` -/
def P9792034860303371045.Spec : Prop :=
  ∀ n, P9792034860303371045.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P6053146362448869223

`A026581(n+1)+1-A026597(n+1)`
-/

namespace A265987.P6053146362448869223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (n + 1) + (1 - A026597 (n + 1))

end

end A265987.P6053146362448869223

namespace A265987

/-- `A026581(n+1)+1-A026597(n+1)` -/
def P6053146362448869223.Spec : Prop :=
  ∀ n, P6053146362448869223.a n = A265987 (n + 1)

end A265987

/-! ## A265987.P12249730660260071405

`A102446(n+1)+1-A072265(n+1)`
-/

namespace A265987.P12249730660260071405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 (n + 1) + (1 - A072265 (n + 1))

end

end A265987.P12249730660260071405

namespace A265987

/-- `A102446(n+1)+1-A072265(n+1)` -/
def P12249730660260071405.Spec : Prop :=
  ∀ n, P12249730660260071405.a n = A265987 (n + 1)

end A265987

/-!
# A265988: Number of n X 4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265988, there is no canonical definition to state claims against.
-/

/-! ## A265988.P16198033547510192711

`A265991(∑[n+4]+3)`
-/

namespace A265988.P16198033547510192711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265988.P16198033547510192711

/-! ## A265988.P16409527605651557841

`A265991(A141214(n+1))+char[26]`
-/

namespace A265988.P16409527605651557841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265988.P16409527605651557841

/-! ## A265988.P3478790037123152855

`A007318(C(2, n))*A265991(A141214(n+1))`
-/

namespace A265988.P3478790037123152855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265991 (A141214 (n + 1)).toNat

end

end A265988.P3478790037123152855

/-! ## A265988.P4071051309872162729

`A265991(A141214(n+1))/A007318(C(n, 2))`
-/

namespace A265988.P4071051309872162729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265991 (A141214 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A265988.P4071051309872162729

/-! ## A265988.P4378842080007659164

`A000108(and(1, n-1))*A265991(A141214(n+1))`
-/

namespace A265988.P4378842080007659164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 ((n : ℤ) - 1)).toNat * A265991 (A141214 (n + 1)).toNat

end

end A265988.P4378842080007659164

/-!
# A265989: Number of n X 6 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265989, the canonical program `A265989.P8645935117073164355` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265989 has offset 1).

The definition of A265989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265989.P8645935117073164355

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=6, a(2)=9, a(3)=4, a(4)=26, a(5)=5, a(6)=101`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A265989

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P8645935117073164355.Spec : Prop :=
  ∀ n, P8645935117073164355.a n = A265989 (n + 1)

theorem P8645935117073164355.correct : P8645935117073164355.Spec := by
  intro n
  simp only [A265989, Nat.add_sub_cancel]

end A265989

/-! ## A265989.P1330459792467024340

`A265991(∑[n+6]+10)`
-/

namespace A265989.P1330459792467024340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A265989.P1330459792467024340

namespace A265989

/-- `A265991(∑[n+6]+10)` -/
def P1330459792467024340.Spec : Prop :=
  ∀ n, P1330459792467024340.a n = A265989 (n + 1)

end A265989

/-! ## A265989.P2022696588112327311

`A265991(A055998(n+4)-2)+char[24]`
-/

namespace A265989.P2022696588112327311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A055998 (n + 4) - 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265989.P2022696588112327311

namespace A265989

/-- `A265991(A055998(n+4)-2)+char[24]` -/
def P2022696588112327311.Spec : Prop :=
  ∀ n, P2022696588112327311.a n = A265989 (n + 1)

end A265989

/-! ## A265989.P13932183408327899631

`A265991(A052905(n+3))%A154638(n+1)`
-/

namespace A265989.P13932183408327899631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265991 (A052905 (n + 3)).toNat) (A154638 (n + 1))

end

end A265989.P13932183408327899631

namespace A265989

/-- `A265991(A052905(n+3))%A154638(n+1)` -/
def P13932183408327899631.Spec : Prop :=
  ∀ n, P13932183408327899631.a n = A265989 (n + 1)

end A265989

/-! ## A265989.P15609536475482675310

`A265991(A055998(n+4)-2)%A000032(n+11)`
-/

namespace A265989.P15609536475482675310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265991 (A055998 (n + 4) - 2).toNat) (A000032 (n + 11))

end

end A265989.P15609536475482675310

namespace A265989

/-- `A265991(A055998(n+4)-2)%A000032(n+11)` -/
def P15609536475482675310.Spec : Prop :=
  ∀ n, P15609536475482675310.a n = A265989 (n + 1)

end A265989

/-!
# A265990: Number of nX7 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265990, there is no canonical definition to state claims against.
-/

/-! ## A265990.P6356822050645117712

`A265991(Δ[n²]+∑[n+5]+16)`
-/

namespace A265990.P6356822050645117712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A265990.P6356822050645117712

/-! ## A265990.P17562292264888109033

`or(char[1], A265991(A000096(n+6)-5))`
-/

namespace A265990.P17562292264888109033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265991 (A000096 (n + 6) - 5).toNat)

end

end A265990.P17562292264888109033

/-! ## A265990.P15276793859135739683

`A007318(∑[n])*A265991(A000096(n+6)-5)`
-/

namespace A265990.P15276793859135739683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A265991 (A000096 (n + 6) - 5).toNat

end

end A265990.P15276793859135739683

/-! ## A265990.P12789897655296085694

`A265991(A000096(n+6)-5)%A000108(n+3)`
-/

namespace A265990.P12789897655296085694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265991 (A000096 (n + 6) - 5).toNat) (A000108 (n + 3))

end

end A265990.P12789897655296085694

/-! ## A265990.P12301994383240348345

`A265991(A000096(n+6)-5)/A007318(C(2, n))`
-/

namespace A265990.P12301994383240348345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265991 (A000096 (n + 6) - 5).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A265990.P12301994383240348345

/-!
# A265991: T(n,k)=Number of nXk integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265991, there is no canonical definition to state claims against.
-/

/-! ## A265991.P15940107344136917451

`A173927(n+1)%A266012(n+1)+1`
-/

namespace A265991.P15940107344136917451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173927 (n + 1)) (A266012 (n + 1)) + 1

end

end A265991.P15940107344136917451

/-! ## A265991.P10315228886811824257

`gcd(A266012(n+1), A341542(2*n+3))`
-/

namespace A265991.P10315228886811824257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266012 (n + 1)) (A341542 (2 * n + 3))

end

end A265991.P10315228886811824257

/-! ## A265991.P15451841244688731842

`gcd(A002620(n), A193773(A000712(n)))`
-/

namespace A265991.P15451841244688731842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 n) (A193773 (A000712 n).toNat)

end

end A265991.P15451841244688731842

/-! ## A265991.P2148765363539283308

`A216455(A266012(n+1)^A069010(n))`
-/

namespace A265991.P2148765363539283308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (SequenceMachineLib.roundAway ((A266012 (n + 1) : ℚ) ^ (A069010 n : ℤ))).toNat

end

end A265991.P2148765363539283308

/-! ## A265991.P17766271091733320207

`A216455(A266012(n+1)^A124766(n))`
-/

namespace A265991.P17766271091733320207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (SequenceMachineLib.roundAway ((A266012 (n + 1) : ℚ) ^ (A124766 n : ℤ))).toNat

end

end A265991.P17766271091733320207

/-!
# A265992: Number of 2 X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265992, there is no canonical definition to state claims against.
-/

/-! ## A265992.P15576504426350056436

`A265991(∑[n+1]+2)`
-/

namespace A265992.P15576504426350056436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265992.P15576504426350056436

/-! ## A265992.P8672060228872732408

`A265991(A167487(n)-5)+char[32]`
-/

namespace A265992.P8672060228872732408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A167487 n - 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265992.P8672060228872732408

/-! ## A265992.P3169055718727473536

`A265991(A167487(n)-5)%∑[A000032(n)]`
-/

namespace A265992.P3169055718727473536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265991 (A167487 n - 5).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265992.P3169055718727473536

/-! ## A265992.P13870777611185408573

`A007318(C(n, 2))*A265991(A167487(n)-5)`
-/

namespace A265992.P13870777611185408573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A265991 (A167487 n - 5).toNat

end

end A265992.P13870777611185408573

/-! ## A265992.P10881716464614886492

`A265991(A167487(n)-5)/A007318(C(3, n))`
-/

namespace A265992.P10881716464614886492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265991 (A167487 n - 5).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A265992.P10881716464614886492

/-!
# A265993: Number of 3 X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265993, there is no canonical definition to state claims against.
-/

/-! ## A265993.P12012324980764699041

`A265991(∑[n+2]+4)`
-/

namespace A265993.P12012324980764699041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265993.P12012324980764699041

/-! ## A265993.P6470898064393016873

`or(char[4], A265991(A055998(n)+6))`
-/

namespace A265993.P6470898064393016873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265991 (A055998 n + 6).toNat)

end

end A265993.P6470898064393016873

/-! ## A265993.P2889307797757623987

`lcm((-1)^n, A265991(A167614(n+1)))`
-/

namespace A265993.P2889307797757623987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A265991 (A167614 (n + 1)).toNat)

end

end A265993.P2889307797757623987

/-! ## A265993.P10008277999514964135

`A265991(A167614(n+1))+A025469(n)`
-/

namespace A265993.P10008277999514964135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A167614 (n + 1)).toNat + A025469 n

end

end A265993.P10008277999514964135

/-! ## A265993.P14465480441283481023

`A265991(A167614(n+1))%A228879(n)`
-/

namespace A265993.P14465480441283481023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265991 (A167614 (n + 1)).toNat) (A228879 n)

end

end A265993.P14465480441283481023

/-!
# A265994: Number of 4Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265994, there is no canonical definition to state claims against.
-/

/-! ## A265994.P5964176942443063936

`A265991(∑[n+3]+7)`
-/

namespace A265994.P5964176942443063936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265994.P5964176942443063936

/-! ## A265994.P10365248023364272762

`or(char[1], A265991(A112355(n+1)+4))`
-/

namespace A265994.P10365248023364272762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265991 (A112355 (n + 1) + 4).toNat)

end

end A265994.P10365248023364272762

/-! ## A265994.P15141610359201469437

`A007318(C(2, n))*A265991(A112355(n+1)+4)`
-/

namespace A265994.P15141610359201469437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265991 (A112355 (n + 1) + 4).toNat

end

end A265994.P15141610359201469437

/-! ## A265994.P1662986243273534234

`A265991(A112355(n+1)+4)^A014963(4*n+2)`
-/

namespace A265994.P1662986243273534234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265991 (A112355 (n + 1) + 4).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A265994.P1662986243273534234

/-! ## A265994.P4737251820473076742

`A265991(A112355(n+1)+4)/A007318(C(n+3, 2))`
-/

namespace A265994.P4737251820473076742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265991 (A112355 (n + 1) + 4).toNat : ℚ) / (A007318 (Nat.choose (n + 3) 2) : ℚ)

end

end A265994.P4737251820473076742

/-!
# A265995: Number of 5Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265995, there is no canonical definition to state claims against.
-/

/-! ## A265995.P6814489165189154063

`A265991(A167499(n+3))`
-/

namespace A265995.P6814489165189154063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A167499 (n + 3)).toNat

end

end A265995.P6814489165189154063

/-! ## A265995.P8481433273929777023

`A265991(A155212(n)+13)`
-/

namespace A265995.P8481433273929777023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A155212 n + 13).toNat

end

end A265995.P8481433273929777023

/-! ## A265995.P15098844538583656904

`A265991(A056000(n)+15)`
-/

namespace A265995.P15098844538583656904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A056000 n + 15).toNat

end

end A265995.P15098844538583656904

/-! ## A265995.P5545748505371059416

`A265991(A000124(n+4)+4)`
-/

namespace A265995.P5545748505371059416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A000124 (n + 4) + 4).toNat

end

end A265995.P5545748505371059416

/-! ## A265995.P11945297103277938052

`A265991(A253145(n+3)+5)`
-/

namespace A265995.P11945297103277938052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A253145 (n + 3) + 5).toNat

end

end A265995.P11945297103277938052

/-!
# A265996: Number of 6Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265996, there is no canonical definition to state claims against.
-/

/-! ## A265996.P15808565691372117369

`A265991(∑[n+5]+16)`
-/

namespace A265996.P15808565691372117369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A265996.P15808565691372117369

/-! ## A265996.P879985694792104830

`A265991(A167499(n+4)+1)+char[30]`
-/

namespace A265996.P879985694792104830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265996.P879985694792104830

/-! ## A265996.P3321527623182495288

`A265991(A055999(n+2)+12)+C(n, 64)`
-/

namespace A265996.P3321527623182495288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A055999 (n + 2) + 12).toNat + (Nat.choose n 64 : ℤ)

end

end A265996.P3321527623182495288

/-! ## A265996.P6681098412031680225

`A014963(4*n+6)*A265991(A055999(n+2)+12)`
-/

namespace A265996.P6681098412031680225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A265991 (A055999 (n + 2) + 12).toNat

end

end A265996.P6681098412031680225

/-! ## A265996.P17014312117065594901

`A000041(gcd(n, n+1))*A265991(A055999(n+2)+12)`
-/

namespace A265996.P17014312117065594901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A265991 (A055999 (n + 2) + 12).toNat

end

end A265996.P17014312117065594901

/-!
# A265997: Number of 7Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors not equal to itself.

The programs for A265997, there is no canonical definition to state claims against.
-/

/-! ## A265997.P8881489824409718905

`A265991(A167487(n+5))`
-/

namespace A265997.P8881489824409718905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A167487 (n + 5)).toNat

end

end A265997.P8881489824409718905

/-! ## A265997.P15352546213393676014

`A265991(A302537(n)+27)`
-/

namespace A265997.P15352546213393676014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A302537 n + 27).toNat

end

end A265997.P15352546213393676014

/-! ## A265997.P7507575915884764960

`A265991(A056119(n)+28)`
-/

namespace A265997.P7507575915884764960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A056119 n + 28).toNat

end

end A265997.P7507575915884764960

/-! ## A265997.P7146060781164184648

`A265991(A166136(n+5)+1)`
-/

namespace A265997.P7146060781164184648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A166136 (n + 5) + 1).toNat

end

end A265997.P7146060781164184648

/-! ## A265997.P13097449345734511865

`A265991(A145018(n+7)+3)`
-/

namespace A265997.P13097449345734511865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (A145018 (n + 7) + 3).toNat

end

end A265997.P13097449345734511865

/-!
# A265998: a(n) is the total number of occurrences of the 5-petal flower of life in the Christmas tree pattern at the n-th iteration of pattern construction (see comment).

The programs for A265998, there is no canonical definition to state claims against.
-/

/-! ## A265998.P11210359066861038436

`xor(floor(n/2), record[A020032(n)])`
-/

namespace A265998.P11210359066861038436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 2⌋ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A265998.P11210359066861038436

/-!
# A265999: Numbers k such that in the symmetric representation of sigma(k) all parts are of the same size.

The programs for A265999, there is no canonical definition to state claims against.
-/

/-! ## A265999.P2162838718445281604

`eq[char[A266000(n+1)], A151933(n)]`
-/

namespace A265999.P2162838718445281604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A265999.P2162838718445281604

/-! ## A265999.P4231323504516332713

`eq[A241838(n+1), A295422(n+1)]+1`
-/

namespace A265999.P4231323504516332713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265999.P4231323504516332713

/-! ## A265999.P4147003586779537673

`eq[A241558(n+1), A241559(n+1)]+1`
-/

namespace A265999.P4147003586779537673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265999.P4147003586779537673

/-! ## A265999.P7658145091596030880

`lt[A002106(A093178(n)), A121663(n)]`
-/

namespace A265999.P7658145091596030880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265999.P7658145091596030880

/-! ## A265999.P18048535842434501842

`lt[A226290(A366606(n)), A000040(n+1)]`
-/

namespace A265999.P18048535842434501842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226290 (A366606 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265999.P18048535842434501842

