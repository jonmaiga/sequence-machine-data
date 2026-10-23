import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110101: a(n) is the number of 3-regular 3-hypergraphs on n labeled vertices. (In a 3-hypergraph, each hyper-edge is a proper 3-set; 3-regular implies that each vertex is in exactly 3 hyperedges.)

The programs for A110101, there is no canonical definition to state claims against.
-/

/-! ## A110101.P5796406592206530670

`A216809(∑[n]+a(n-1)+1)` with `a(0)=1`
-/

namespace A110101.P5796406592206530670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216809 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) + 1).toNat

end

end A110101.P5796406592206530670

/-! ## A110101.P6552743100298296688

`A268925(ceil(ϕ*a(n-1)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A110101.P6552743100298296688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n a =>
  A268925 ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉.toNat

end

end A110101.P6552743100298296688

/-! ## A110101.P4429680363189744179

`A315725(2^(6*a(n-2)-a(n-4))+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A110101.P4429680363189744179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n a =>
  A315725 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (6 * a (n - 2) - a (n - 4) : ℤ) + 1)).toNat

end

end A110101.P4429680363189744179

/-!
# A110102: A triangle of coefficients based on A000931: a(n) = a(n - 2) + a(n - 3); t(n,m) := a(n - m + 1)*a(m + 1).

The programs for A110102, there is no canonical definition to state claims against.
-/

/-! ## A110102.P9164145387924128511

`A110023(n+1)/A007318(n)`
-/

namespace A110102.P9164145387924128511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110023 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A110102.P9164145387924128511

/-! ## A110102.P11132226923841227376

`abs(A110023(n+1)/A108086(n))`
-/

namespace A110102.P11132226923841227376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A110023 (n + 1) : ℚ) / (A108086 n : ℚ)|

end

end A110102.P11132226923841227376

/-! ## A110102.P13093493311444541684

`abs(A110023(n+1)/A117440(n))`
-/

namespace A110102.P13093493311444541684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A110023 (n + 1) : ℚ) / (A117440 n : ℚ)|

end

end A110102.P13093493311444541684

/-! ## A110102.P7512618795654095713

`abs(A110023(n+1)/A130595(n))`
-/

namespace A110102.P7512618795654095713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A110023 (n + 1) : ℚ) / (A130595 n : ℚ)|

end

end A110102.P7512618795654095713

/-! ## A110102.P15135117338618204313

`A110023(n+1)/sqrt(A008459(n))`
-/

namespace A110102.P15135117338618204313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110023 (n + 1) : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A110102.P15135117338618204313

/-! ## A110102.P3743311627065203555

`A110023(n+1)/Δ[A102363(n)]`
-/

namespace A110102.P3743311627065203555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110023 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A110102.P3743311627065203555

/-! ## A110102.P16637682863907567424

`∏{e}[A036561(n), A018124(#)]`
-/

namespace A110102.P16637682863907567424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018124 (Nat.factorization (f1 n).natAbs p)

end

end A110102.P16637682863907567424

/-! ## A110102.P13747709454094607906

`∏{e}[A175840(n), A018124(#)]`
-/

namespace A110102.P13747709454094607906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018124 (Nat.factorization (f1 n).natAbs p)

end

end A110102.P13747709454094607906

/-! ## A110102.P18281869683253560361

`A110361(n+1)/A058071(n)`
-/

namespace A110102.P18281869683253560361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110361 (n + 1) : ℚ) / (A058071 n : ℚ)

end

end A110102.P18281869683253560361

/-!
# A110103: a(n) is the number of 2-regular 4-hypergraphs on 2n labeled vertices. (In a r-hypergraph, each hyper-edge is a proper r-set; k-regular implies that each vertex is in exactly k hyperedges.)

The programs for A110103, there is no canonical definition to state claims against.
-/

/-! ## A110103.P18041209367045306268

`A134978(a(n-1)+(1-n)²)` with `a(0)=1`
-/

namespace A110103.P18041209367045306268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134978 (a (n - 1) + (1 - (n : ℤ)) ^ 2).toNat

end

end A110103.P18041209367045306268

/-!
# A110105: a(n) is the number of coverings of 1..n by cyclic words of length n, such that each value from 1 to n appears precisely 3 times. That is, the union of all the letters in all of the words of a given covering is the multiset {1,1,1,2,2,2,...,n,n,n}. Repeats of words are not allowed in a given covering.

The programs for A110105, there is no canonical definition to state claims against.
-/

/-! ## A110105.P890476196838999276

`A000010(A001044(n)-A045658(n))`
-/

namespace A110105.P890476196838999276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001044 n - A045658 n).toNat

end

end A110105.P890476196838999276

/-! ## A110105.P14154884617318350279

`A000010(A001044(n)-A045667(n))`
-/

namespace A110105.P14154884617318350279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001044 n - A045667 n).toNat

end

end A110105.P14154884617318350279

/-!
# A110107: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of Delannoy paths of length n, having k return steps to the line y = x from the line y = x+1 or from the line y = x-1 (i.e., E steps from the line y = x+1 to the line y = x or N steps from the line y = x-1 to the line y = x).

The programs for A110107, there is no canonical definition to state claims against.
-/

/-! ## A110107.P4561989359974753177

`A059268(n)*A101275(n)`
-/

namespace A110107.P4561989359974753177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A101275 n

end

end A110107.P4561989359974753177

/-! ## A110107.P1022884420850632283

`A000079(A002262(n))*A101275(n)`
-/

namespace A110107.P1022884420850632283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A101275 n

end

end A110107.P1022884420850632283

/-! ## A110107.P9535984225061109194

`A101275(n)*A130321(A061579(n))`
-/

namespace A110107.P9535984225061109194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101275 n * A130321 (A061579 n).toNat

end

end A110107.P9535984225061109194

/-! ## A110107.P5498420730138959480

`A011782(A002260(n+1))*A101275(n)`
-/

namespace A110107.P5498420730138959480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A101275 n

end

end A110107.P5498420730138959480

/-! ## A110107.P6211870823192087181

`A101275(n)*A156552(A037126(n+1))`
-/

namespace A110107.P6211870823192087181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101275 n * A156552 (A037126 (n + 1)).toNat

end

end A110107.P6211870823192087181

/-!
# A110108: Conjectured values of n such that sigma(n)+sigma(k)=sigma(n+k) has no solution.

The programs for A110108, there is no canonical definition to state claims against.
-/

/-! ## A110108.P2413044146565098645

`eq[A066435(n+1), A288991(A066435(n+1)+1)]+1`
-/

namespace A110108.P2413044146565098645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A066435 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A110108.P2413044146565098645

/-! ## A110108.P3308807884794079804

`∑[A324467(record[A324485(n+1)])]`
-/

namespace A110108.P3308807884794079804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110108.P3308807884794079804

/-! ## A110108.P5343912375143458214

`∑[A358548(A041869(n))]`
-/

namespace A110108.P5343912375143458214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358548 (A041869 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110108.P5343912375143458214

/-! ## A110108.P8824015693888906587

`lt[A008000(A355737(n+1)), A276094(n+3)]`
-/

namespace A110108.P8824015693888906587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (A355737 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110108.P8824015693888906587

/-!
# A110109: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of left factors of Schroeder paths, going from (0,0) to (n,k) (a Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis).

The programs for A110109, there is no canonical definition to state claims against.
-/

/-! ## A110109.P3020510174992501595

`A057427(A117436(n))*A117316(n)`
-/

namespace A110109.P3020510174992501595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A117436 n).toNat * A117316 n

end

end A110109.P3020510174992501595

/-! ## A110109.P2218679144881087764

`A117316(n)%A007782(A128890(n))`
-/

namespace A110109.P2218679144881087764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117316 n) (A007782 (A128890 n).toNat)

end

end A110109.P2218679144881087764

/-! ## A110109.P4364772986071306299

`A111959(n)+A000122(A194368(3*n+4))`
-/

namespace A110109.P4364772986071306299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111959 n + A000122 (A194368 (3 * n + 4)).toNat

end

end A110109.P4364772986071306299

/-! ## A110109.P12040069668595977847

`A055572(lcm(A053121(n), A089940(n)))`
-/

namespace A110109.P12040069668595977847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (Int.lcm (A053121 n) (A089940 n))

end

end A110109.P12040069668595977847

/-!
# A110110: Number of symmetric Schroeder paths of length 2n (A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis).

The programs for A110110, there is no canonical definition to state claims against.
-/

/-! ## A110110.P13743105257907173601

`∑[A247630(n)]`
-/

namespace A110110.P13743105257907173601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110110.P13743105257907173601

/-! ## A110110.P6439329876101748716

`A036453(n+1)*A247623(n)`
-/

namespace A110110.P6439329876101748716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A247623 n

end

end A110110.P6439329876101748716

/-! ## A110110.P9401220239711714439

`(A057427(n)+1)*A247623(n)`
-/

namespace A110110.P9401220239711714439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A247623 n

end

end A110110.P9401220239711714439

/-! ## A110110.P8726232204942803281

`(2-A000007(n))*A247623(n)`
-/

namespace A110110.P8726232204942803281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A247623 n

end

end A110110.P8726232204942803281

/-! ## A110110.P18385829473260191875

`A020639(A007843(n))*A247623(n)`
-/

namespace A110110.P18385829473260191875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 n).toNat * A247623 n

end

end A110110.P18385829473260191875

/-! ## A110110.P10428635290955313101

`A020639(A247513(n+1))*A247623(n)`
-/

namespace A110110.P10428635290955313101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247513 (n + 1)).toNat * A247623 n

end

end A110110.P10428635290955313101

/-! ## A110110.P13755140280830503077

`A247623(n)+A247623(n)-A000007(A004273(n))`
-/

namespace A110110.P13755140280830503077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 n + (A247623 n - A000007 (A004273 n).toNat)

end

end A110110.P13755140280830503077

/-! ## A110110.P9214572169803172457

`2*A247623(n+1)-A247630(n+1)`
-/

namespace A110110.P9214572169803172457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247623 (n + 1) - A247630 (n + 1)

end

end A110110.P9214572169803172457

/-! ## A110110.P12798454828865948225

`A026003(n+1)+A026003(n)-A247630(n+1)`
-/

namespace A110110.P12798454828865948225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (n + 1) + (A026003 n - A247630 (n + 1))

end

end A110110.P12798454828865948225

/-! ## A110110.P6522915747134779505

`A035607(A007590(n+1))`
-/

namespace A110110.P6522915747134779505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A007590 (n + 1)).toNat

end

end A110110.P6522915747134779505

/-! ## A110110.P2903552648509350243

`A035607(A080476(n+1))`
-/

namespace A110110.P2903552648509350243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A080476 (n + 1)).toNat

end

end A110110.P2903552648509350243

/-! ## A110110.P12947197218336414845

`A266213(A074148(n+1))`
-/

namespace A110110.P12947197218336414845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A074148 (n + 1)).toNat

end

end A110110.P12947197218336414845

/-! ## A110110.P2344968110593942468

`A122542(A080476(n+2))`
-/

namespace A110110.P2344968110593942468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A080476 (n + 2)).toNat

end

end A110110.P2344968110593942468

/-! ## A110110.P14639510765453587830

`2*A378939(n)-A006318(n)`
-/

namespace A110110.P14639510765453587830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378939 n - A006318 n

end

end A110110.P14639510765453587830

/-! ## A110110.P16673596707630522601

`A006318(n)/A001003(n)*A247623(n)`
-/

namespace A110110.P16673596707630522601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n : ℚ) / (A001003 n : ℚ) * (A247623 n : ℚ)

end

end A110110.P16673596707630522601

/-! ## A110110.P16402964065736760964

`A035607(A004525(n²)+n)`
-/

namespace A110110.P16402964065736760964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A110110.P16402964065736760964

/-!
# A110111: Sequence associated to the recurrence b(n) = b(n-1) + 3*b(n-2).

The programs for A110111, the canonical program `A110111.P7931091919788765877` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110111 has offset 0).

The definition of A110111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110111.P7931091919788765877

`7*a(n-1)+84*a(n-2)-189*a(n-3)-729*a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=133`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110111

/-- `7*a(n-1)+84*a(n-2)-189*a(n-3)-729*a(n-4)` -/
def P7931091919788765877.Spec : Prop :=
  ∀ n, P7931091919788765877.a n = A110111 n

theorem P7931091919788765877.correct : P7931091919788765877.Spec := by
  intro n
  simp only [A110111]

end A110111

/-! ## A110111.P6421227915447008663

`floor(atan(n+1))*A172347(∑[n+2]+4)`
-/

namespace A110111.P6421227915447008663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * A172347 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A110111.P6421227915447008663

namespace A110111

/-- `floor(atan(n+1))*A172347(∑[n+2]+4)` -/
def P6421227915447008663.Spec : Prop :=
  ∀ n, P6421227915447008663.a n = A110111 n

end A110111

/-! ## A110111.P18239095053894186263

`A110112(A167614(n+1))%(10^n)`
-/

namespace A110111.P18239095053894186263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110112 (A167614 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A110111.P18239095053894186263

namespace A110111

/-- `A110112(A167614(n+1))%(10^n)` -/
def P18239095053894186263.Spec : Prop :=
  ∀ n, P18239095053894186263.a n = A110111 n

end A110111

/-! ## A110111.P16711624608553724023

`record[char[A167614(n+1)]*A110112(n)]`
-/

namespace A110111.P16711624608553724023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A110112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110111.P16711624608553724023

namespace A110111

/-- `record[char[A167614(n+1)]*A110112(n)]` -/
def P16711624608553724023.Spec : Prop :=
  ∀ n, P16711624608553724023.a n = A110111 n

end A110111

/-!
# A110112: Square array of numbers associated to the recurrences b(k) = b(k-1) + n*b(k-2); array T(n,k), read by descending antidiagonals, for n, k >= 0.

The programs for A110112, there is no canonical definition to state claims against.
-/

/-! ## A110112.P226433362797333797

`A305995(or(A039756(n), A111579(n)))`
-/

namespace A110112.P226433362797333797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305995 (Int.lor (A039756 n) (A111579 n)).toNat

end

end A110112.P226433362797333797

/-! ## A110112.P6580170588487753063

`A008304(n+1)-A132662(A157153(n))`
-/

namespace A110112.P6580170588487753063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (n + 1) - A132662 (A157153 n).toNat

end

end A110112.P6580170588487753063

/-! ## A110112.P6071095844703042202

`A134478(A046792(n+1))/A307847(n)`
-/

namespace A110112.P6071095844703042202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134478 (A046792 (n + 1)).toNat : ℚ) / (A307847 n : ℚ)

end

end A110112.P6071095844703042202

/-! ## A110112.P13855060098503898718

`A286102(A157221(n))/A164306(n+1)`
-/

namespace A110112.P13855060098503898718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286102 (A157221 n).toNat : ℚ) / (A164306 (n + 1) : ℚ)

end

end A110112.P13855060098503898718

/-! ## A110112.P7595921203650759030

`A004736(A262849(n+1)^A004197(n))`
-/

namespace A110112.P7595921203650759030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway ((A262849 (n + 1) : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A110112.P7595921203650759030

/-!
# A110113: Diagonal sums of A083856.

The programs for A110113, there is no canonical definition to state claims against.
-/

/-! ## A110113.P9811620949007630455

`A051889(A101890(n+1))`
-/

namespace A110113.P9811620949007630455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A101890 (n + 1)).toNat

end

end A110113.P9811620949007630455

/-! ## A110113.P13426924223677808737

`∑[A259361(∑[A087949(n)])]`
-/

namespace A110113.P13426924223677808737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110113.P13426924223677808737

/-! ## A110113.P6611174366078543365

`A051889(A129519(n)-1+n)`
-/

namespace A110113.P6611174366078543365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A129519 n - 1 + (n : ℤ)).toNat

end

end A110113.P6611174366078543365

/-! ## A110113.P12604934020891008956

`A051889(n-(1-A129519(n)))`
-/

namespace A110113.P12604934020891008956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 ((n : ℤ) - (1 - A129519 n)).toNat

end

end A110113.P12604934020891008956

/-! ## A110113.P15420997050958618317

`A051889(A202973(n+1)+n)-1`
-/

namespace A110113.P15420997050958618317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A202973 (n + 1) + (n : ℤ)).toNat - 1

end

end A110113.P15420997050958618317

/-!
# A110114: Numerators in expansion of (1 - 2*x - 3*x^2)^(-1/4).

The programs for A110114, there is no canonical definition to state claims against.
-/

/-! ## A110114.P4097060282104265860

`A307447((∑[round(sqrt(2*n))]+1)^n)`
-/

namespace A110114.P4097060282104265860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307447 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ n).toNat

end

end A110114.P4097060282104265860

/-!
# A110115: Numerators in expansion of 1/((1-4x^2)^(1/4)*sqrt(1+x)).

The programs for A110115, there is no canonical definition to state claims against.
-/

/-! ## A110115.P9872606015725824612

`A152823(A144905(n))-Δ[A167193(n+1)]`
-/

namespace A110115.P9872606015725824612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (A144905 n).toNat - (f1 (n + 1) - f1 n)

end

end A110115.P9872606015725824612

/-!
# A110117: a(n) = floor(n * (sqrt(2) + sqrt(3))).

The programs for A110117, the canonical program `A110117.P11630810609770778186` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110117 has offset 1).

The definition of A110117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(sqrt(2)+sqrt(3)))` (program `A110117.P11630810609770778186`, by `A110117.P11630810609770778186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110117.P11630810609770778186

`floor((n+1)*(sqrt(2)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110117

/-- `floor((n+1)*(sqrt(2)+sqrt(3)))` -/
def P11630810609770778186.Spec : Prop :=
  ∀ n, P11630810609770778186.a n = A110117 (n + 1)

theorem P11630810609770778186.correct : P11630810609770778186.Spec := by
  intro n
  simp only [A110117, Nat.add_sub_cancel]

end A110117

/-! ## A110117.P7319576579020963604

`∑[A276870(n+1)]`
-/

namespace A110117.P7319576579020963604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110117.P7319576579020963604

namespace A110117

/-- `∑[A276870(n+1)]` -/
def P7319576579020963604.Spec : Prop :=
  ∀ n, P7319576579020963604.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P17047660252896880915

`A187385(n+1)-(n+1)`
-/

namespace A110117.P17047660252896880915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187385 (n + 1) - (n + 1 : ℤ)

end

end A110117.P17047660252896880915

namespace A110117

/-- `A187385(n+1)-(n+1)` -/
def P17047660252896880915.Spec : Prop :=
  ∀ n, P17047660252896880915.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P5281723372183931174

`A014248(n+1)+floor((n+1)/(sqrt(2)+1-sqrt(3)))`
-/

namespace A110117.P5281723372183931174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014248 (n + 1) + ⌊(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + (1 - Real.sqrt (3 : ℝ)))⌋

end

end A110117.P5281723372183931174

namespace A110117

/-- `A014248(n+1)+floor((n+1)/(sqrt(2)+1-sqrt(3)))` -/
def P5281723372183931174.Spec : Prop :=
  ∀ n, P5281723372183931174.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P3140707949613593973

`A110118(n+1)+A014248(n+1)`
-/

namespace A110117.P3140707949613593973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110118 (n + 1) + A014248 (n + 1)

end

end A110117.P3140707949613593973

namespace A110117

/-- `A110118(n+1)+A014248(n+1)` -/
def P3140707949613593973.Spec : Prop :=
  ∀ n, P3140707949613593973.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P2528391601742810843

`A189527(n+1)-A187386(n+1)`
-/

namespace A110117.P2528391601742810843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189527 (n + 1) - A187386 (n + 1)

end

end A110117.P2528391601742810843

namespace A110117

/-- `A189527(n+1)-A187386(n+1)` -/
def P2528391601742810843.Spec : Prop :=
  ∀ n, P2528391601742810843.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P9912476369003210618

`record[A110119(n+1)]`
-/

namespace A110117.P9912476369003210618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110117.P9912476369003210618

namespace A110117

/-- `record[A110119(n+1)]` -/
def P9912476369003210618.Spec : Prop :=
  ∀ n, P9912476369003210618.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P5046459443177486396

`A110119(A110118(n+1))`
-/

namespace A110117.P5046459443177486396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (A110118 (n + 1)).toNat

end

end A110117.P5046459443177486396

namespace A110117

/-- `A110119(A110118(n+1))` -/
def P5046459443177486396.Spec : Prop :=
  ∀ n, P5046459443177486396.a n = A110117 (n + 1)

end A110117

/-! ## A110117.P13359913182070703030

`lt[A110119(n+1), A066104(n)]+1`
-/

namespace A110117.P13359913182070703030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A110117.P13359913182070703030

namespace A110117

/-- `lt[A110119(n+1), A066104(n)]+1` -/
def P13359913182070703030.Spec : Prop :=
  ∀ n, (P13359913182070703030.a n : ℤ) = A110117 (n + 1)

end A110117

/-!
# A110118: a(n) = floor(n*(sqrt(6) + sqrt(2) + 2)/4).

The programs for A110118, the canonical program `A110118.P10131114702583180275` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110118 has offset 1).

The definition of A110118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(sqrt(6)+sqrt(2)+2)/4)` (program `A110118.P10131114702583180275`, by `A110118.P10131114702583180275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110118.P10131114702583180275

`floor((n+1)*(sqrt(6)+sqrt(2)+2)/4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110118

/-- `floor((n+1)*(sqrt(6)+sqrt(2)+2)/4)` -/
def P10131114702583180275.Spec : Prop :=
  ∀ n, P10131114702583180275.a n = A110118 (n + 1)

theorem P10131114702583180275.correct : P10131114702583180275.Spec := by
  intro n
  simp only [A110118, Nat.add_sub_cancel]

end A110118

/-! ## A110118.P13357923755366859714

`comp[A110117(n+1)-1]+1`
-/

namespace A110118.P13357923755366859714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A110118.P13357923755366859714

namespace A110118

/-- `comp[A110117(n+1)-1]+1` -/
def P13357923755366859714.Spec : Prop :=
  ∀ n, (P13357923755366859714.a n : ℤ) = A110118 (n + 1)

end A110118

/-! ## A110118.P15437594126580143428

`floor((sqrt(2)+sqrt(3))*(n+1))%A014248(n+1)`
-/

namespace A110118.P15437594126580143428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(Real.sqrt (2 : ℝ) + Real.sqrt (3 : ℝ)) * (n + 1 : ℝ)⌋ (A014248 (n + 1))

end

end A110118.P15437594126580143428

namespace A110118

/-- `floor((sqrt(2)+sqrt(3))*(n+1))%A014248(n+1)` -/
def P15437594126580143428.Spec : Prop :=
  ∀ n, P15437594126580143428.a n = A110118 (n + 1)

end A110118

/-! ## A110118.P17376857332069278179

`A110117(n+1)-A014248(n+1)`
-/

namespace A110118.P17376857332069278179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) - A014248 (n + 1)

end

end A110118.P17376857332069278179

namespace A110118

/-- `A110117(n+1)-A014248(n+1)` -/
def P17376857332069278179.Spec : Prop :=
  ∀ n, P17376857332069278179.a n = A110118 (n + 1)

end A110118

/-! ## A110118.P1856283919885731163

`∑[A276870(n+1)]-A014248(n+1)`
-/

namespace A110118.P1856283919885731163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014248 (n + 1)

end

end A110118.P1856283919885731163

namespace A110118

/-- `∑[A276870(n+1)]-A014248(n+1)` -/
def P1856283919885731163.Spec : Prop :=
  ∀ n, P1856283919885731163.a n = A110118 (n + 1)

end A110118

/-! ## A110118.P3878500544931063235

`lt[n, A110119(n+1)]+1`
-/

namespace A110118.P3878500544931063235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110118.P3878500544931063235

namespace A110118

/-- `lt[n, A110119(n+1)]+1` -/
def P3878500544931063235.Spec : Prop :=
  ∀ n, (P3878500544931063235.a n : ℤ) = A110118 (n + 1)

end A110118

/-! ## A110118.P14578181894884195867

`A110119(A110117(n+1))`
-/

namespace A110118.P14578181894884195867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (A110117 (n + 1)).toNat

end

end A110118.P14578181894884195867

namespace A110118

/-- `A110119(A110117(n+1))` -/
def P14578181894884195867.Spec : Prop :=
  ∀ n, P14578181894884195867.a n = A110118 (n + 1)

end A110118

/-! ## A110118.P17322764009921740067

`A110119(record[A110119(n+1)])`
-/

namespace A110118.P17322764009921740067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A110118.P17322764009921740067

namespace A110118

/-- `A110119(record[A110119(n+1)])` -/
def P17322764009921740067.Spec : Prop :=
  ∀ n, P17322764009921740067.a n = A110118 (n + 1)

end A110118

/-! ## A110118.P18427573258096095084

`A138251(n+1)`
-/

namespace A110118.P18427573258096095084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138251 (n + 1)

end

end A110118.P18427573258096095084

namespace A110118

/-- `A138251(n+1)` -/
def P18427573258096095084.Spec : Prop :=
  ∀ n, P18427573258096095084.a n = A110118 (n + 1)

end A110118

/-!
# A110119: Self-inverse integer permutation induced by Beatty sequences for x and (x+1)/(2*sqrt(2)) with x=sqrt(2)+sqrt(3).

The programs for A110119, there is no canonical definition to state claims against.
-/

/-! ## A110119.P11117856157709207084

`A108591(n+1)+A108577(A349315(n)^A040790(n))`
-/

namespace A110119.P11117856157709207084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (n + 1) + A108577 (SequenceMachineLib.roundAway ((A349315 n : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A110119.P11117856157709207084

/-! ## A110119.P10072894496123345628

`A297086(A015781(n+1))+A108591(n+1)`
-/

namespace A110119.P10072894496123345628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297086 (A015781 (n + 1)).toNat + A108591 (n + 1)

end

end A110119.P10072894496123345628

/-! ## A110119.P1801730372677922201

`A108591(n+1)+A163581(2*n+3)*A163584(4*n+3)`
-/

namespace A110119.P1801730372677922201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (n + 1) + A163581 (2 * n + 3) * A163584 (4 * n + 3)

end

end A110119.P1801730372677922201

/-! ## A110119.P18005335979980738039

`A108591(n+1)+A055641(A020753(n+1))`
-/

namespace A110119.P18005335979980738039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (n + 1) + A055641 (A020753 (n + 1)).toNat

end

end A110119.P18005335979980738039

/-!
# A110120: Numerators in expansion of 1/sqrt(1-x-x^2*c(x^2)), c(x) the g.f. of A000108.

The programs for A110120, there is no canonical definition to state claims against.
-/

/-! ## A110120.P2226994452935187303

`xor(3, A356843(n!))`
-/

namespace A110120.P2226994452935187303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A356843 (Nat.factorial n))

end

end A110120.P2226994452935187303

/-!
# A110122: Number of Delannoy paths of length n with no EE's crossing the line y = x (i.e., no two consecutive E steps from the line y = x+1 to the line y = x-1).

The programs for A110122, there is no canonical definition to state claims against.
-/

/-! ## A110122.P11842130143254309249

`A089324(Δ[n²])`
-/

namespace A110122.P11842130143254309249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110122.P11842130143254309249

/-! ## A110122.P17370100912545748853

`record[A089324(A145979(2*n)-n)]`
-/

namespace A110122.P17370100912545748853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (A145979 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110122.P17370100912545748853

/-! ## A110122.P15771884295876235930

`A177020(∑[n])`
-/

namespace A110122.P15771884295876235930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110122.P15771884295876235930

/-! ## A110122.P9206513406376284093

`record[A177020(n)]`
-/

namespace A110122.P9206513406376284093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110122.P9206513406376284093

/-! ## A110122.P10161530469834609059

`A106595(n*(n+3))`
-/

namespace A110122.P10161530469834609059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106595 (n * (n + 3))

end

end A110122.P10161530469834609059

/-! ## A110122.P17446133440586498266

`A110121(C(n+1, 2)-floor((n/2)²))`
-/

namespace A110122.P17446133440586498266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110121 ((Nat.choose (n + 1) 2 : ℤ) - ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A110122.P17446133440586498266

/-! ## A110122.P5984658503412064770

`A110121(A002620(n+1))`
-/

namespace A110122.P5984658503412064770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110121 (A002620 (n + 1)).toNat

end

end A110122.P5984658503412064770

/-!
# A110125: Row sums of a scaled Legendre triangle.

The programs for A110125, there is no canonical definition to state claims against.
-/

/-! ## A110125.P2738616522114487821

`A274430(a(n-1))+n!` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A110125.P2738616522114487821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A274430 (a (n - 1)).toNat + (Nat.factorial n : ℤ)

end

end A110125.P2738616522114487821

/-! ## A110125.P16548420966321497923

`A008676(A100511(n))`
-/

namespace A110125.P16548420966321497923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A100511 n).toNat

end

end A110125.P16548420966321497923

/-!
# A110127: Number of EE's crossing the line y = x (i.e., two consecutive E steps from the line y = x+1 to the line y = x-1) in all Delannoy paths of length n.

The programs for A110127, the canonical program `A110127.P5274012538628892863` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110127 has offset 0).

The definition of A110127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110127.P15762835705441278909

`A129180(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A110127.P15762835705441278909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A129180 (n - 1) - a (n - 1)

end

end A110127.P15762835705441278909

namespace A110127

/-- `A129180(n-1)-a(n-1)` -/
def P15762835705441278909.Spec : Prop :=
  ∀ n, P15762835705441278909.a n = A110127 n

end A110127

/-! ## A110127.P5274012538628892863

`A001109(n)-A002002(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110127

/-- `A001109(n)-A002002(n)` -/
def P5274012538628892863.Spec : Prop :=
  ∀ n, P5274012538628892863.a n = A110127 n

theorem P5274012538628892863.correct : P5274012538628892863.Spec := by
  intro n
  simp only [A110127]

end A110127

/-! ## A110127.P5602174737535546257

`∑[record[A116558(n)]]-A002002(n)`
-/

namespace A110127.P5602174737535546257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002002 n

end

end A110127.P5602174737535546257

namespace A110127

/-- `∑[record[A116558(n)]]-A002002(n)` -/
def P5602174737535546257.Spec : Prop :=
  ∀ n, P5602174737535546257.a n = A110127 n

end A110127

/-! ## A110127.P6213424787147318879

`floor(A182189(n)/2-A002002(n))`
-/

namespace A110127.P6213424787147318879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182189 n : ℚ) / 2 - (A002002 n : ℚ)⌋

end

end A110127.P6213424787147318879

namespace A110127

/-- `floor(A182189(n)/2-A002002(n))` -/
def P6213424787147318879.Spec : Prop :=
  ∀ n, P6213424787147318879.a n = A110127 n

end A110127

/-! ## A110127.P16302108546788921786

`∑[record[A215936(n+2)]]-A002002(n)`
-/

namespace A110127.P16302108546788921786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002002 n

end

end A110127.P16302108546788921786

namespace A110127

/-- `∑[record[A215936(n+2)]]-A002002(n)` -/
def P16302108546788921786.Spec : Prop :=
  ∀ n, P16302108546788921786.a n = A110127 n

end A110127

/-! ## A110127.P1198118661213918145

`A105635(A004273(n))-A002002(n)`
-/

namespace A110127.P1198118661213918145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (A004273 n).toNat - A002002 n

end

end A110127.P1198118661213918145

namespace A110127

/-- `A105635(A004273(n))-A002002(n)` -/
def P1198118661213918145.Spec : Prop :=
  ∀ n, P1198118661213918145.a n = A110127 n

end A110127

/-! ## A110127.P6410896723168205618

`∑[A002965(A130824(n))]-A002002(n)`
-/

namespace A110127.P6410896723168205618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002002 n

end

end A110127.P6410896723168205618

namespace A110127

/-- `∑[A002965(A130824(n))]-A002002(n)` -/
def P6410896723168205618.Spec : Prop :=
  ∀ n, P6410896723168205618.a n = A110127 n

end A110127

/-! ## A110127.P3712916477685368734

`A000129(n)*A001333(n)-A002002(n)`
-/

namespace A110127.P3712916477685368734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A001333 n - A002002 n

end

end A110127.P3712916477685368734

namespace A110127

/-- `A000129(n)*A001333(n)-A002002(n)` -/
def P3712916477685368734.Spec : Prop :=
  ∀ n, P3712916477685368734.a n = A110127 n

end A110127

/-! ## A110127.P5753952034056262394

`A001109(n)+A001850(n)-A050146(n+1)`
-/

namespace A110127.P5753952034056262394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + (A001850 n - A050146 (n + 1))

end

end A110127.P5753952034056262394

namespace A110127

/-- `A001109(n)+A001850(n)-A050146(n+1)` -/
def P5753952034056262394.Spec : Prop :=
  ∀ n, P5753952034056262394.a n = A110127 n

end A110127

/-! ## A110127.P17527555964622343660

`A075848(n)/6-A002002(n)`
-/

namespace A110127.P17527555964622343660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075848 n : ℚ) / 6 - (A002002 n : ℚ)

end

end A110127.P17527555964622343660

namespace A110127

/-- `A075848(n)/6-A002002(n)` -/
def P17527555964622343660.Spec : Prop :=
  ∀ n, P17527555964622343660.a n = (A110127 n : ℚ)

end A110127

/-!
# A110128: Number of permutations p of 1,2,...,n satisfying |p(i+2)-p(i)| not equal to 2 for all 0

The programs for A110128, there is no canonical definition to state claims against.
-/

/-! ## A110128.P10466187591704106308

`A333706(∑[char[A004072(n)]+n])`
-/

namespace A110128.P10466187591704106308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004072 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110128.P10466187591704106308

/-! ## A110128.P5765154562114377318

`A333706((∑[char[1]+n]+1)%A000254(n+1))`
-/

namespace A110128.P5765154562114377318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333706 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A000254 (n + 1))).toNat

end

end A110128.P5765154562114377318

/-! ## A110128.P3659265207645997407

`A333706(A133263(n)%A001700(n))`
-/

namespace A110128.P3659265207645997407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333706 (Int.tmod (A133263 n) (A001700 n)).toNat

end

end A110128.P3659265207645997407

/-! ## A110128.P13755290097415471182

`A333706(A022856(n+4)*A117825(n+1))`
-/

namespace A110128.P13755290097415471182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333706 (A022856 (n + 4) * A117825 (n + 1)).toNat

end

end A110128.P13755290097415471182

/-!
# A110129: Central coefficients of a scaled Legendre triangle.

The programs for A110129, there is no canonical definition to state claims against.
-/

/-! ## A110129.P8569317342472406737

`A110124(∑[4*n])`
-/

namespace A110129.P8569317342472406737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110129.P8569317342472406737

/-! ## A110129.P1141762738480602066

`A110130(2*n)`
-/

namespace A110129.P1141762738480602066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110130 (2 * n)

end

end A110129.P1141762738480602066

/-! ## A110129.P3453359109042734516

`record[A110130(n%4+n)]`
-/

namespace A110129.P3453359109042734516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110130 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110129.P3453359109042734516

/-! ## A110129.P6639390270851968969

`record[A110130(n)^log2(gcd(2, n))]`
-/

namespace A110129.P6639390270851968969
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110130 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110129.P6639390270851968969

/-! ## A110129.P3858612102521522666

`record[A110130(A004275(n))]`
-/

namespace A110129.P3858612102521522666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110130 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110129.P3858612102521522666

/-!
# A110130: Central coefficients of a scaled Legendre triangle.

The programs for A110130, there is no canonical definition to state claims against.
-/

/-! ## A110130.P1454811384421147130

`A110124(∑[n]+floor(n/2))`
-/

namespace A110130.P1454811384421147130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110124 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A110130.P1454811384421147130

/-! ## A110130.P8285871482191036907

`A316313(2^n)-∑{d}[n+1, log2(gcd(2, #))]`
-/

namespace A110130.P8285871482191036907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316313 (2 ^ n) : ℝ) - ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

end

end A110130.P8285871482191036907

/-!
# A110131: Determinant of n X n matrix M_{i,j} = 2^i*P_i(j), where P_i(j) is the Legendre polynomial of order i at j and i and j are 0-based.

The programs for A110131, there is no canonical definition to state claims against.
-/

/-! ## A110131.P3811113536724200517

`A112332(n+1)`
-/

namespace A110131.P3811113536724200517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112332 (n + 1)

end

end A110131.P3811113536724200517

/-! ## A110131.P11741145669682413549

`∏[(2*n)!/n!]`
-/

namespace A110131.P11741145669682413549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110131.P11741145669682413549

/-! ## A110131.P33018790803570970

`∏[n!*C(2*n, n)]`
-/

namespace A110131.P33018790803570970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110131.P33018790803570970

/-! ## A110131.P11580587103535537044

`∏[∏[floor(abs(4*n-ϕ))]]`
-/

namespace A110131.P11580587103535537044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110131.P11580587103535537044

/-! ## A110131.P2002781336771511942

`2^n*A086205(n)`
-/

namespace A110131.P2002781336771511942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A086205 n

end

end A110131.P2002781336771511942

/-!
# A110132: a(n) = floor(n/2)^ceiling(n/2).

The programs for A110132, the canonical program `A110132.P6375423696429330557` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110132 has offset 0).

The definition of A110132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110132.P6375423696429330557

`floor(n/2)^ceil(n/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110132

/-- `floor(n/2)^ceil(n/2)` -/
def P6375423696429330557.Spec : Prop :=
  ∀ n, P6375423696429330557.a n = (A110132 n : ℚ)

end A110132

/-! ## A110132.P9485378881905509285

`floor(A004526(n)^∑[n%-2])`
-/

namespace A110132.P9485378881905509285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004526 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A110132.P9485378881905509285

namespace A110132

/-- `floor(A004526(n)^∑[n%-2])` -/
def P9485378881905509285.Spec : Prop :=
  ∀ n, P9485378881905509285.a n = A110132 n

end A110132

/-! ## A110132.P12650424134299809733

`floor(floor(n/2)^Δ[A002620(n)])`
-/

namespace A110132.P12650424134299809733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋

end

end A110132.P12650424134299809733

namespace A110132

/-- `floor(floor(n/2)^Δ[A002620(n)])` -/
def P12650424134299809733.Spec : Prop :=
  ∀ n, P12650424134299809733.a n = A110132 n

end A110132

/-! ## A110132.P14248928868431825085

`floor((and(n, -2)/2)^A110654(n))`
-/

namespace A110132.P14248928868431825085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Int.land (n : ℤ) (-2) : ℚ) / 2) ^ (A110654 n : ℤ)⌋

end

end A110132.P14248928868431825085

namespace A110132

/-- `floor((and(n, -2)/2)^A110654(n))` -/
def P14248928868431825085.Spec : Prop :=
  ∀ n, P14248928868431825085.a n = A110132 n

end A110132

/-! ## A110132.P7040075043487516313

`abs(∑[n]%(n+1)-1)*A000312(floor(n/2))`
-/

namespace A110132.P7040075043487516313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1| * A000312 ⌊(n : ℚ) / 2⌋.toNat

end

end A110132.P7040075043487516313

namespace A110132

/-- `abs(∑[n]%(n+1)-1)*A000312(floor(n/2))` -/
def P7040075043487516313.Spec : Prop :=
  ∀ n, P7040075043487516313.a n = A110132 n

end A110132

/-! ## A110132.P4345805234483108389

`A057979(n)*A110139(n)`
-/

namespace A110132.P4345805234483108389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A110139 n

end

end A110132.P4345805234483108389

namespace A110132

/-- `A057979(n)*A110139(n)` -/
def P4345805234483108389.Spec : Prop :=
  ∀ n, P4345805234483108389.a n = A110132 n

end A110132

/-! ## A110132.P2690233522220258109

`ceil(A004526(n)^(A007494(n)-n))`
-/

namespace A110132.P2690233522220258109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004526 n : ℚ) ^ (A007494 n - (n : ℤ) : ℤ)⌉

end

end A110132.P2690233522220258109

namespace A110132

/-- `ceil(A004526(n)^(A007494(n)-n))` -/
def P2690233522220258109.Spec : Prop :=
  ∀ n, P2690233522220258109.a n = A110132 n

end A110132

/-! ## A110132.P15137616209255467673

`abs((∑[A000035(n)]-n)^A110654(n))`
-/

namespace A110132.P15137616209255467673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) ^ (A110654 n : ℤ)|

end

end A110132.P15137616209255467673

namespace A110132

/-- `abs((∑[A000035(n)]-n)^A110654(n))` -/
def P15137616209255467673.Spec : Prop :=
  ∀ n, P15137616209255467673.a n = (A110132 n : ℚ)

end A110132

/-! ## A110132.P7883187211922684663

`abs((A008619(n)-1)^A004526(n+1))`
-/

namespace A110132.P7883187211922684663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008619 n - 1 : ℚ) ^ (A004526 (n + 1) : ℤ)|

end

end A110132.P7883187211922684663

namespace A110132

/-- `abs((A008619(n)-1)^A004526(n+1))` -/
def P7883187211922684663.Spec : Prop :=
  ∀ n, P7883187211922684663.a n = (A110132 n : ℚ)

end A110132

/-! ## A110132.P11199579119380025469

`A004526(n)^A004526(n)*A057979(n)`
-/

namespace A110132.P11199579119380025469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) ^ (A004526 n : ℤ) * (A057979 n : ℚ)

end

end A110132.P11199579119380025469

namespace A110132

/-- `A004526(n)^A004526(n)*A057979(n)` -/
def P11199579119380025469.Spec : Prop :=
  ∀ n, P11199579119380025469.a n = (A110132 n : ℚ)

end A110132

/-!
# A110133: Numbers which are the sides that belong to only one primitive Pythagorean triangle.

The programs for A110133, there is no canonical definition to state claims against.
-/

/-! ## A110133.P2713814323372917769

`eq[1, A024363(n+1)]+1`
-/

namespace A110133.P2713814323372917769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110133.P2713814323372917769

/-! ## A110133.P718607011242318777

`eq[1, A024363(A028310(n))]`
-/

namespace A110133.P718607011242318777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110133.P718607011242318777

/-! ## A110133.P16663547318531258702

`record[A028233(A192450(n+1))]`
-/

namespace A110133.P16663547318531258702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A192450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P16663547318531258702

/-! ## A110133.P5166844222719274347

`record[A072438(A246655(n+2))]`
-/

namespace A110133.P5166844222719274347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A246655 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P5166844222719274347

/-! ## A110133.P10433967462152341042

`record[A034699(A004144(n+3))]`
-/

namespace A110133.P10433967462152341042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A004144 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P10433967462152341042

/-! ## A110133.P10227442424712753724

`record[A072438(A000015(n+3))]`
-/

namespace A110133.P10227442424712753724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A000015 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P10227442424712753724

/-! ## A110133.P5401613475872494501

`record[A072438(A000961(n+3))]`
-/

namespace A110133.P5401613475872494501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A000961 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P5401613475872494501

/-! ## A110133.P859360545313311413

`record[A072438(A028233(n+3))]`
-/

namespace A110133.P859360545313311413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A028233 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P859360545313311413

/-! ## A110133.P17004857490803846394

`record[A072438(A034699(n+3))]`
-/

namespace A110133.P17004857490803846394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A034699 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P17004857490803846394

/-! ## A110133.P15229428735697426562

`record[A028233(A137409(n+3))]`
-/

namespace A110133.P15229428735697426562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A137409 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110133.P15229428735697426562

/-!
# A110134: Numbers which are the sides common to two or more primitive Pythagorean triangles.

The programs for A110134, there is no canonical definition to state claims against.
-/

/-! ## A110134.P16848701784287346261

`lt[1, A024363(n+1)]+1`
-/

namespace A110134.P16848701784287346261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110134.P16848701784287346261

/-! ## A110134.P8631318351527381089

`lt[log2(a(A024363(n))), 1]` with `a(0)=2, a(1)=2`
-/

namespace A110134.P8631318351527381089
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Real.logb 2 (f1 (A024363 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A110134.P8631318351527381089

/-! ## A110134.P15696450796978317708

`lt[1, A024363(A028310(n))]`
-/

namespace A110134.P15696450796978317708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110134.P15696450796978317708

/-! ## A110134.P12392426259353459240

`lt[1, A024363(A000038(n)+n)]`
-/

namespace A110134.P12392426259353459240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110134.P12392426259353459240

/-! ## A110134.P18272937960209170475

`eq[1, A000007(a(A024363(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A110134.P18272937960209170475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000007 (f2 (A024363 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110134.P18272937960209170475

/-! ## A110134.P869634340345080710

`eq[1, A000010(a(A024363(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A110134.P869634340345080710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A024363 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110134.P869634340345080710

/-! ## A110134.P8442999150599897153

`eq[1, A000045(a(A024363(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A110134.P8442999150599897153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000045 (f2 (A024363 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110134.P8442999150599897153

/-! ## A110134.P15087754311659649725

`eq[1, A000120(a(A024363(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A110134.P15087754311659649725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000120 (f2 (A024363 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110134.P15087754311659649725

/-! ## A110134.P7186331659648691171

`eq[1, A001222(a(A024363(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A110134.P7186331659648691171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A001222 (f2 (A024363 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110134.P7186331659648691171

/-! ## A110134.P13576165183194685500

`eq[1, A007318(a(A024363(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A110134.P13576165183194685500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A007318 (f2 (A024363 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110134.P13576165183194685500

/-!
# A110135: Square array of expansions of 1/sqrt(1-4x-4*k*x^2), read by antidiagonals.

The programs for A110135, there is no canonical definition to state claims against.
-/

/-! ## A110135.P14380288773787743765

`gcd(A017766(A131065(n+1)), A054335(n))`
-/

namespace A110135.P14380288773787743765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017766 (A131065 (n + 1)).toNat) (A054335 n)

end

end A110135.P14380288773787743765

/-! ## A110135.P5125552528789842909

`(A092392(n)-A014473(n))%A137110(n+2)`
-/

namespace A110135.P5125552528789842909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092392 n - A014473 n) (A137110 (n + 2))

end

end A110135.P5125552528789842909

/-! ## A110135.P1320657528761161308

`A001221(A020707(n))*A092392(n)-A014473(n)`
-/

namespace A110135.P1320657528761161308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020707 n).toNat * A092392 n - A014473 n

end

end A110135.P1320657528761161308

/-! ## A110135.P17924856642513968764

`A092392(n)-A064722(A022177(n))`
-/

namespace A110135.P17924856642513968764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A064722 (A022177 n).toNat

end

end A110135.P17924856642513968764

/-!
# A110136: Sums of antidiagonals of number square A110135.

The programs for A110136, there is no canonical definition to state claims against.
-/

/-! ## A110136.P1724338555044410754

`∑[A003602(Δ[A151034(n)])]`
-/

namespace A110136.P1724338555044410754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110136.P1724338555044410754

/-! ## A110136.P3313189167040617761

`or(val(n+1, 2)+1, A230980(5^n))`
-/

namespace A110136.P3313189167040617761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A230980 (5 ^ n))

end

end A110136.P3313189167040617761

/-!
# A110137: Diagonal sums of A110135 when read as a number triangle.

The programs for A110137, there is no canonical definition to state claims against.
-/

/-! ## A110137.P13674598155154355875

`or(n+1, A130371(A101265(n+1)))`
-/

namespace A110137.P13674598155154355875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A130371 (A101265 (n + 1)).toNat)

end

end A110137.P13674598155154355875

/-! ## A110137.P1137010097536326968

`A154439(A130534(n)+A061278(n))`
-/

namespace A110137.P1137010097536326968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A130534 n + A061278 n).toNat

end

end A110137.P1137010097536326968

/-! ## A110137.P12982901225808562286

`A101265(n+1)+A083912(A292304(n))`
-/

namespace A110137.P12982901225808562286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1) + A083912 (A292304 n).toNat

end

end A110137.P12982901225808562286

/-!
# A110138: a(n) = ceiling(n/2)^floor(n/2).

The programs for A110138, the canonical program `A110138.P17328954715644610400` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110138 has offset 0).

The definition of A110138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110138.P17328954715644610400

`ceil(n/2)^floor(n/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110138

/-- `ceil(n/2)^floor(n/2)` -/
def P17328954715644610400.Spec : Prop :=
  ∀ n, P17328954715644610400.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P5752391179086758061

`abs(A001057(n)^floor(n/2))`
-/

namespace A110138.P5752391179086758061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A001057 n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)|

end

end A110138.P5752391179086758061

namespace A110138

/-- `abs(A001057(n)^floor(n/2))` -/
def P5752391179086758061.Spec : Prop :=
  ∀ n, P5752391179086758061.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P8945744452656849164

`abs(∑[n%-2]^A004526(n))`
-/

namespace A110138.P8945744452656849164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A004526 n : ℤ)|

end

end A110138.P8945744452656849164

namespace A110138

/-- `abs(∑[n%-2]^A004526(n))` -/
def P8945744452656849164.Spec : Prop :=
  ∀ n, P8945744452656849164.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P15223179499975953065

`abs(Δ[A002620(n)]^floor(n/2))`
-/

namespace A110138.P15223179499975953065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)|

end

end A110138.P15223179499975953065

namespace A110138

/-- `abs(Δ[A002620(n)]^floor(n/2))` -/
def P15223179499975953065.Spec : Prop :=
  ∀ n, P15223179499975953065.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P6615369885329713088

`abs(A242602(3*n)^floor(n/2))`
-/

namespace A110138.P6615369885329713088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A242602 (3 * n) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)|

end

end A110138.P6615369885329713088

namespace A110138

/-- `abs(A242602(3*n)^floor(n/2))` -/
def P6615369885329713088.Spec : Prop :=
  ∀ n, P6615369885329713088.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P4999390924823857987

`floor(A110654(n)^(and(n, -2)/2))`
-/

namespace A110138.P4999390924823857987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110654 n : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)⌋

end

end A110138.P4999390924823857987

namespace A110138

/-- `floor(A110654(n)^(and(n, -2)/2))` -/
def P4999390924823857987.Spec : Prop :=
  ∀ n, P4999390924823857987.a n = A110138 n

end A110138

/-! ## A110138.P11801878817299755293

`A055858(A114220(n+1))`
-/

namespace A110138.P11801878817299755293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055858 (A114220 (n + 1)).toNat

end

end A110138.P11801878817299755293

namespace A110138

/-- `A055858(A114220(n+1))` -/
def P11801878817299755293.Spec : Prop :=
  ∀ n, P11801878817299755293.a n = A110138 n

end A110138

/-! ## A110138.P1341403975851435882

`A055858(A055802(n+2))`
-/

namespace A110138.P1341403975851435882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055858 (A055802 (n + 2)).toNat

end

end A110138.P1341403975851435882

namespace A110138

/-- `A055858(A055802(n+2))` -/
def P1341403975851435882.Spec : Prop :=
  ∀ n, P1341403975851435882.a n = A110138 n

end A110138

/-! ## A110138.P10903386753347710798

`floor(A004526(n+1)^(A008619(n)-1))`
-/

namespace A110138.P10903386753347710798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004526 (n + 1) : ℚ) ^ (A008619 n - 1 : ℤ)⌋

end

end A110138.P10903386753347710798

namespace A110138

/-- `floor(A004526(n+1)^(A008619(n)-1))` -/
def P10903386753347710798.Spec : Prop :=
  ∀ n, P10903386753347710798.a n = A110138 n

end A110138

/-! ## A110138.P6425496379594824901

`ceil(ceil(n/2)^(A002265(A168273(n+2))-1))`
-/

namespace A110138.P6425496379594824901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(n : ℚ) / 2⌉ : ℚ) ^ (A002265 (A168273 (n + 2)).toNat - 1 : ℤ)⌉

end

end A110138.P6425496379594824901

namespace A110138

/-- `ceil(ceil(n/2)^(A002265(A168273(n+2))-1))` -/
def P6425496379594824901.Spec : Prop :=
  ∀ n, P6425496379594824901.a n = A110138 n

end A110138

/-! ## A110138.P8108071763747900331

`A000007(n)+A110654(n)^A123108(n)`
-/

namespace A110138.P8108071763747900331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A110654 n : ℚ) ^ (A123108 n : ℤ)

end

end A110138.P8108071763747900331

namespace A110138

/-- `A000007(n)+A110654(n)^A123108(n)` -/
def P8108071763747900331.Spec : Prop :=
  ∀ n, P8108071763747900331.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P6486170501271926971

`abs((2*A065033(n)-A065033(n))^A004526(n))`
-/

namespace A110138.P6486170501271926971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * A065033 n - A065033 n : ℚ) ^ (A004526 n : ℤ)|

end

end A110138.P6486170501271926971

namespace A110138

/-- `abs((2*A065033(n)-A065033(n))^A004526(n))` -/
def P6486170501271926971.Spec : Prop :=
  ∀ n, P6486170501271926971.a n = (A110138 n : ℚ)

end A110138

/-! ## A110138.P6816330797184627853

`abs((2*A065033(n)-A065033(n))^A123108(n))`
-/

namespace A110138.P6816330797184627853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * A065033 n - A065033 n : ℚ) ^ (A123108 n : ℤ)|

end

end A110138.P6816330797184627853

namespace A110138

/-- `abs((2*A065033(n)-A065033(n))^A123108(n))` -/
def P6816330797184627853.Spec : Prop :=
  ∀ n, P6816330797184627853.a n = (A110138 n : ℚ)

end A110138

/-!
# A110139: a(n) = floor(n/2)^floor(n/2).

The programs for A110139, the canonical program `A110139.P169449073818456767` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110139 has offset 0).

The definition of A110139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110139.P169449073818456767

`floor(n/2)^floor(n/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110139

/-- `floor(n/2)^floor(n/2)` -/
def P169449073818456767.Spec : Prop :=
  ∀ n, P169449073818456767.a n = (A110139 n : ℚ)

end A110139

/-! ## A110139.P2202435620936263462

`ceil((and(n, -2)/2)^(and(n, -2)/2))`
-/

namespace A110139.P2202435620936263462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)⌉

end

end A110139.P2202435620936263462

namespace A110139

/-- `ceil((and(n, -2)/2)^(and(n, -2)/2))` -/
def P2202435620936263462.Spec : Prop :=
  ∀ n, P2202435620936263462.a n = A110139 n

end A110139

/-! ## A110139.P17004214366787984966

`round((and(n, -2)/2)^(and(n, -2)/2))`
-/

namespace A110139.P17004214366787984966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ))

end

end A110139.P17004214366787984966

namespace A110139

/-- `round((and(n, -2)/2)^(and(n, -2)/2))` -/
def P17004214366787984966.Spec : Prop :=
  ∀ n, P17004214366787984966.a n = A110139 n

end A110139

/-! ## A110139.P3139283011562155571

`abs((n-∑[n%2])^(and(n, -2)/2))`
-/

namespace A110139.P3139283011562155571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)|

end

end A110139.P3139283011562155571

namespace A110139

/-- `abs((n-∑[n%2])^(and(n, -2)/2))` -/
def P3139283011562155571.Spec : Prop :=
  ∀ n, P3139283011562155571.a n = (A110139 n : ℝ)

end A110139

/-! ## A110139.P16971476665860815257

`abs((n-∑[and(1, n)])^(and(n, -2)/2))`
-/

namespace A110139.P16971476665860815257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)|

end

end A110139.P16971476665860815257

namespace A110139

/-- `abs((n-∑[and(1, n)])^(and(n, -2)/2))` -/
def P16971476665860815257.Spec : Prop :=
  ∀ n, P16971476665860815257.a n = (A110139 n : ℝ)

end A110139

/-! ## A110139.P14757527053543912966

`abs(((or(1, n)-1)/2)^(and(n, -2)/2))`
-/

namespace A110139.P14757527053543912966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)|

end

end A110139.P14757527053543912966

namespace A110139

/-- `abs(((or(1, n)-1)/2)^(and(n, -2)/2))` -/
def P14757527053543912966.Spec : Prop :=
  ∀ n, P14757527053543912966.a n = (A110139 n : ℝ)

end A110139

/-! ## A110139.P1138060595102116126

`abs(((or(1, n)-1)/2)^(n-∑[and(1, n)]))`
-/

namespace A110139.P1138060595102116126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)|

end

end A110139.P1138060595102116126

namespace A110139

/-- `abs(((or(1, n)-1)/2)^(n-∑[and(1, n)]))` -/
def P1138060595102116126.Spec : Prop :=
  ∀ n, P1138060595102116126.a n = (A110139 n : ℚ)

end A110139

/-! ## A110139.P7434987397436840183

`ceil(((or(1, n)-1)/2)^(n-∑[and(1, n)]))`
-/

namespace A110139.P7434987397436840183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)⌉

end

end A110139.P7434987397436840183

namespace A110139

/-- `ceil(((or(1, n)-1)/2)^(n-∑[and(1, n)]))` -/
def P7434987397436840183.Spec : Prop :=
  ∀ n, P7434987397436840183.a n = A110139 n

end A110139

/-! ## A110139.P12227005558618165537

`abs(((or(1, n)-1)/2)^((or(1, n)-1)/2))`
-/

namespace A110139.P12227005558618165537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 : ℝ) ^ (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 : ℝ)|

end

end A110139.P12227005558618165537

namespace A110139

/-- `abs(((or(1, n)-1)/2)^((or(1, n)-1)/2))` -/
def P12227005558618165537.Spec : Prop :=
  ∀ n, P12227005558618165537.a n = (A110139 n : ℝ)

end A110139

/-! ## A110139.P7152197851311663992

`A000312(floor(n/2))`
-/

namespace A110139.P7152197851311663992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 ⌊(n : ℚ) / 2⌋.toNat

end

end A110139.P7152197851311663992

namespace A110139

/-- `A000312(floor(n/2))` -/
def P7152197851311663992.Spec : Prop :=
  ∀ n, P7152197851311663992.a n = A110139 n

end A110139

/-! ## A110139.P15803488664137474365

`A110132(or(1, n)-1)`
-/

namespace A110139.P15803488664137474365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (Nat.lor 1 n - 1)

end

end A110139.P15803488664137474365

namespace A110139

/-- `A110132(or(1, n)-1)` -/
def P15803488664137474365.Spec : Prop :=
  ∀ n, P15803488664137474365.a n = A110139 n

end A110139

/-! ## A110139.P9709643524285046214

`A110132(n-and(1, n))`
-/

namespace A110139.P9709643524285046214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (n - Nat.land 1 n)

end

end A110139.P9709643524285046214

namespace A110139

/-- `A110132(n-and(1, n))` -/
def P9709643524285046214.Spec : Prop :=
  ∀ n, P9709643524285046214.a n = A110139 n

end A110139

/-! ## A110139.P17528916688474564564

`A110138(2*floor(n/2))`
-/

namespace A110139.P17528916688474564564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A110139.P17528916688474564564

namespace A110139

/-- `A110138(2*floor(n/2))` -/
def P17528916688474564564.Spec : Prop :=
  ∀ n, P17528916688474564564.a n = A110139 n

end A110139

/-! ## A110139.P812086268693578846

`abs(A177885(ceil((n+1)/2)))`
-/

namespace A110139.P812086268693578846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A177885 ⌈(n + 1 : ℚ) / 2⌉.toNat|

end

end A110139.P812086268693578846

namespace A110139

/-- `abs(A177885(ceil((n+1)/2)))` -/
def P812086268693578846.Spec : Prop :=
  ∀ n, P812086268693578846.a n = A110139 n

end A110139

/-! ## A110139.P1455150199199717020

`A110132(Δ[ceil(n²/2)]-1)`
-/

namespace A110139.P1455150199199717020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (f1 (n + 1) - f1 n - 1).toNat

end

end A110139.P1455150199199717020

namespace A110139

/-- `A110132(Δ[ceil(n²/2)]-1)` -/
def P1455150199199717020.Spec : Prop :=
  ∀ n, P1455150199199717020.a n = A110139 n

end A110139

/-! ## A110139.P14433606147416537673

`A071207(A114220(n+1))`
-/

namespace A110139.P14433606147416537673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 (A114220 (n + 1)).toNat

end

end A110139.P14433606147416537673

namespace A110139

/-- `A071207(A114220(n+1))` -/
def P14433606147416537673.Spec : Prop :=
  ∀ n, P14433606147416537673.a n = A110139 n

end A110139

/-! ## A110139.P8621027016688905917

`A071207(A055802(n+2))`
-/

namespace A110139.P8621027016688905917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 (A055802 (n + 2)).toNat

end

end A110139.P8621027016688905917

namespace A110139

/-- `A071207(A055802(n+2))` -/
def P8621027016688905917.Spec : Prop :=
  ∀ n, P8621027016688905917.a n = A110139 n

end A110139

/-! ## A110139.P16211931112094883163

`abs((-A004526(n))^A004526(n))`
-/

namespace A110139.P16211931112094883163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-A004526 n : ℚ) ^ (A004526 n : ℤ)|

end

end A110139.P16211931112094883163

namespace A110139

/-- `abs((-A004526(n))^A004526(n))` -/
def P16211931112094883163.Spec : Prop :=
  ∀ n, P16211931112094883163.a n = (A110139 n : ℚ)

end A110139

/-! ## A110139.P13603244207457429521

`floor(A004526(n)^(A004526(n+2)-1))`
-/

namespace A110139.P13603244207457429521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004526 n : ℚ) ^ (A004526 (n + 2) - 1 : ℤ)⌋

end

end A110139.P13603244207457429521

namespace A110139

/-- `floor(A004526(n)^(A004526(n+2)-1))` -/
def P13603244207457429521.Spec : Prop :=
  ∀ n, P13603244207457429521.a n = A110139 n

end A110139

/-! ## A110139.P7332129649703533843

`abs(A002265(2*n)^A002265(2*n)-1)+1`
-/

namespace A110139.P7332129649703533843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002265 (2 * n) : ℚ) ^ (A002265 (2 * n) : ℤ) - 1| + 1

end

end A110139.P7332129649703533843

namespace A110139

/-- `abs(A002265(2*n)^A002265(2*n)-1)+1` -/
def P7332129649703533843.Spec : Prop :=
  ∀ n, P7332129649703533843.a n = (A110139 n : ℚ)

end A110139

/-!
# A110140: Binomial transform of n^n (with interpolated zeros).

The programs for A110140, there is no canonical definition to state claims against.
-/

/-! ## A110140.P1644856051363836172

`A130091(A005041(n!))`
-/

namespace A110140.P1644856051363836172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A005041 (Nat.factorial n)).toNat

end

end A110140.P1644856051363836172

/-! ## A110140.P234996567069610973

`A243494(A052806(n))-1`
-/

namespace A110140.P234996567069610973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243494 (A052806 n).toNat - 1

end

end A110140.P234996567069610973

/-! ## A110140.P1504047592187959445

`A243283(A335635(n)+A000212(n))`
-/

namespace A110140.P1504047592187959445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A335635 n + A000212 n).toNat

end

end A110140.P1504047592187959445

/-!
# A110143: Row sums of triangle A110141.

The programs for A110143, there is no canonical definition to state claims against.
-/

/-! ## A110143.P11468943863097727508

`A160449(∑[n+1]+2)`
-/

namespace A110143.P11468943863097727508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A110143.P11468943863097727508

/-! ## A110143.P12806789502464611928

`2*A327015(n)-A327014(n)`
-/

namespace A110143.P12806789502464611928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327015 n - A327014 n

end

end A110143.P12806789502464611928

/-! ## A110143.P2408874453742914081

`A005843(A327015(n))-A327014(n)`
-/

namespace A110143.P2408874453742914081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A327015 n).toNat - A327014 n

end

end A110143.P2408874453742914081

/-!
# A110144: Terms of A110142 at positions p(n)+1, where p(n) = A000041(n) is the number of partitions of n; a(n) = A110142(p(n)+1) for n>=1, with a(0) = 1.

The programs for A110144, there is no canonical definition to state claims against.
-/

/-! ## A110144.P9508508830655013259

`(2-gcd(2, n)²+n)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A110144.P9508508830655013259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (2 - (Nat.gcd 2 n ^ 2 : ℤ) + (n : ℤ)) * a (n - 2)

end

end A110144.P9508508830655013259

/-! ## A110144.P12659873895836970812

`a(n-2)*Δ[A092534(n)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A110144.P12659873895836970812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092534 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) * (f1 (n + 1) - f1 n)

end

end A110144.P12659873895836970812

/-! ## A110144.P9895678811495466040

`∏{e}[A029744(n+1), #!]*A029744(n+1)`
-/

namespace A110144.P9895678811495466040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A029744 (n + 1)

end

end A110144.P9895678811495466040

/-! ## A110144.P4401082341485444329

`A029744(n+1)*A081123(A014681(n))`
-/

namespace A110144.P4401082341485444329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A081123 (A014681 n).toNat

end

end A110144.P4401082341485444329

/-! ## A110144.P580322245500260803

`A000005(A076736(n+1))!*A029744(n+1)`
-/

namespace A110144.P580322245500260803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (A076736 (n + 1)).toNat).toNat : ℤ) * A029744 (n + 1)

end

end A110144.P580322245500260803

/-!
# A110145: a(n) = Sum_{k=0..n} C(n,k)^2*mod(k,2).

The programs for A110145, there is no canonical definition to state claims against.
-/

/-! ## A110145.P17677372346504441246

`A000984(n)-A119358(n)`
-/

namespace A110145.P17677372346504441246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A119358 n

end

end A110145.P17677372346504441246

/-! ## A110145.P915911538186594280

`record[A126869(n)]-A119358(n)`
-/

namespace A110145.P915911538186594280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A119358 n

end

end A110145.P915911538186594280

/-! ## A110145.P10303237496360727974

`record[A126930(n)]-A119358(n)`
-/

namespace A110145.P10303237496360727974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A119358 n

end

end A110145.P10303237496360727974

/-! ## A110145.P7146558485991011103

`A001405(2*n)-A119358(n)`
-/

namespace A110145.P7146558485991011103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A119358 n

end

end A110145.P7146558485991011103

/-! ## A110145.P10953019920396083459

`A126869(2*n)-A119358(n)`
-/

namespace A110145.P10953019920396083459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A119358 n

end

end A110145.P10953019920396083459

/-! ## A110145.P17911261737849720604

`A126930(2*n)-A119358(n)`
-/

namespace A110145.P17911261737849720604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A119358 n

end

end A110145.P17911261737849720604

/-! ## A110145.P464430938062805527

`A210736(2*n+1)-A119358(n)`
-/

namespace A110145.P464430938062805527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) - A119358 n

end

end A110145.P464430938062805527

/-! ## A110145.P12699894193522920666

`(n+1)*A000108(n)-A119358(n)`
-/

namespace A110145.P12699894193522920666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n - A119358 n

end

end A110145.P12699894193522920666

/-!
# A110146: a(n) = n^(n+1) mod (n+2).

The programs for A110146, the canonical program `A110146.P9003473991195921200` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110146 has offset 0).

The definition of A110146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^(n+1))%(n+2)` (program `A110146.P9003473991195921200`, by `A110146.P9003473991195921200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110146.P9003473991195921200

`(n^(n+1))%(n+2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110146

/-- `(n^(n+1))%(n+2)` -/
def P9003473991195921200.Spec : Prop :=
  ∀ n, (P9003473991195921200.a n : ℤ) = A110146 n

theorem P9003473991195921200.correct : P9003473991195921200.Spec := by
  intro n
  simp only [A110146]

end A110146

/-! ## A110146.P7177230828878656080

`A062172(∑[4*n]+C(2, n+2))`
-/

namespace A110146.P7177230828878656080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2))

end

end A110146.P7177230828878656080

namespace A110146

/-- `A062172(∑[4*n]+C(2, n+2))` -/
def P7177230828878656080.Spec : Prop :=
  ∀ n, P7177230828878656080.a n = A110146 n

end A110146

/-! ## A110146.P17230010710637602250

`A062172(∑[n*(floor(atan(n))+3)]+1)`
-/

namespace A110146.P17230010710637602250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (⌊Real.arctan (n : ℝ)⌋ + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A110146.P17230010710637602250

namespace A110146

/-- `A062172(∑[n*(floor(atan(n))+3)]+1)` -/
def P17230010710637602250.Spec : Prop :=
  ∀ n, P17230010710637602250.a n = A110146 n

end A110146

/-! ## A110146.P8266126358018242536

`A062172((n+1)*(comp[2*(n+1)]+1))`
-/

namespace A110146.P8266126358018242536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 ((n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1))

end

end A110146.P8266126358018242536

namespace A110146

/-- `A062172((n+1)*(comp[2*(n+1)]+1))` -/
def P8266126358018242536.Spec : Prop :=
  ∀ n, P8266126358018242536.a n = A110146 n

end A110146

/-!
# A110147: a(n) = 10^((n^2-n)/2).

The programs for A110147, the canonical program `A110147.P12586496956432613750` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110147 has offset 0).

The definition of A110147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110147.P12586496956432613750

`10^C(n, 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110147

/-- `10^C(n, 2)` -/
def P12586496956432613750.Spec : Prop :=
  ∀ n, (P12586496956432613750.a n : ℤ) = A110147 n

theorem P12586496956432613750.correct : P12586496956432613750.Spec := by
  intro n
  simp only [A110147]

end A110147

/-! ## A110147.P9259793557366084085

`10^((n²-n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110147.P9259793557366084085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A110147.P9259793557366084085

namespace A110147

/-- `10^((n²-n)/2)` -/
def P9259793557366084085.Spec : Prop :=
  ∀ n, P9259793557366084085.a n = (A110147 n : ℝ)

end A110147

/-! ## A110147.P4834527575199731054

`10*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A110147.P4834527575199731054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  10 * a (n - 1) ^ 2 / a (n - 2)

end

end A110147.P4834527575199731054

namespace A110147

/-- `10*a(n-1)²/a(n-2)` -/
def P4834527575199731054.Spec : Prop :=
  ∀ n, P4834527575199731054.a n = (A110147 n : ℚ)

end A110147

/-! ## A110147.P16992141962625480358

`∏[10*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A110147.P16992141962625480358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110147.P16992141962625480358

namespace A110147

/-- `∏[10*a(n-1)]` -/
def P16992141962625480358.Spec : Prop :=
  ∀ n, (P16992141962625480358.a n : ℤ) = A110147 n

end A110147

/-! ## A110147.P13005768896292603293

`∏[10^((2*n)%(n+1))]`
-/

namespace A110147.P13005768896292603293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110147.P13005768896292603293

namespace A110147

/-- `∏[10^((2*n)%(n+1))]` -/
def P13005768896292603293.Spec : Prop :=
  ∀ n, (P13005768896292603293.a n : ℤ) = A110147 n

end A110147

/-!
# A110148: Number of perfect squared rectangles of order n up to symmetries of the rectangle and of its subrectangles if any.

The programs for A110148, there is no canonical definition to state claims against.
-/

/-! ## A110148.P15532299367471255986

`A002839(n+1)+A217152(n+1)+A217374(n+1)`
-/

namespace A110148.P15532299367471255986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + A217152 (n + 1) + A217374 (n + 1)

end

end A110148.P15532299367471255986

/-! ## A110148.P17599176843160875648

`a(n-1)+A002839(n+1)+A002839(n)+A217152(n+1)+A217152(n)` with `a(0)=0`
-/

namespace A110148.P17599176843160875648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A002839 (n + 1) + A002839 n + A217152 (n + 1) + A217152 n

end

end A110148.P17599176843160875648

/-! ## A110148.P9990772585161773475

`A217374(n+1)+Δ[A217374(n+1)/2]`
-/

namespace A110148.P9990772585161773475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217374 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217374 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A110148.P9990772585161773475

/-! ## A110148.P15281494614320038237

`A217152(n+1)+A219766(n+1)+A217374(n+1)`
-/

namespace A110148.P15281494614320038237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217152 (n + 1) + (A219766 (n + 1) + A217374 (n + 1))

end

end A110148.P15281494614320038237

/-! ## A110148.P13459149101802959935

`A273943(A217374(n+1)+A217374(n+2))`
-/

namespace A110148.P13459149101802959935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A217374 (n + 1) + A217374 (n + 2)).toNat

end

end A110148.P13459149101802959935

/-!
# A110149: a(0) = 1, a(1) = 3; for n>1, a(n) = n*a(n-1) + (-1)^n.

The programs for A110149, the canonical program `A110149.P655317881882592911` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110149 has offset 0).

The definition of A110149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(-1)^n` (program `A110149.P655317881882592911`, by `A110149.P655317881882592911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110149.P655317881882592911

`n*a(n-1)+(-1)^n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110149

/-- `n*a(n-1)+(-1)^n` -/
def P655317881882592911.Spec : Prop :=
  ∀ n, P655317881882592911.a n = A110149 n

theorem P655317881882592911.correct : P655317881882592911.Spec := by
  intro n
  simp only [A110149]

end A110149

/-! ## A110149.P7936828630272042506

`xor(1, n*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A110149.P7936828630272042506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 1 (n * a (n - 1))

end

end A110149.P7936828630272042506

namespace A110149

/-- `xor(1, n*a(n-1))` -/
def P7936828630272042506.Spec : Prop :=
  ∀ n, (P7936828630272042506.a n : ℤ) = A110149 n

end A110149

/-! ## A110149.P698322854975169033

`xor(1, a(n-1)/tan(acot(n)))` with `a(0)=1, a(1)=3`
-/

namespace A110149.P698322854975169033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A110149.P698322854975169033

namespace A110149

/-- `xor(1, a(n-1)/tan(acot(n)))` -/
def P698322854975169033.Spec : Prop :=
  ∀ n, P698322854975169033.a n = A110149 n

end A110149

/-! ## A110149.P14452833209601833002

`xor(1, a(n-1)/cot(atan(n)))` with `a(0)=1, a(1)=3`
-/

namespace A110149.P14452833209601833002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A110149.P14452833209601833002

namespace A110149

/-- `xor(1, a(n-1)/cot(atan(n)))` -/
def P14452833209601833002.Spec : Prop :=
  ∀ n, P14452833209601833002.a n = A110149 n

end A110149

/-! ## A110149.P4167070270281756154

`xor(1, a(n-1)/n^(-1))` with `a(0)=1, a(1)=3`
-/

namespace A110149.P4167070270281756154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A110149.P4167070270281756154

namespace A110149

/-- `xor(1, a(n-1)/n^(-1))` -/
def P4167070270281756154.Spec : Prop :=
  ∀ n, P4167070270281756154.a n = A110149 n

end A110149

/-! ## A110149.P15346859002807187032

`(-1)^n+n*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A110149.P15346859002807187032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (-1) ^ n + (n : ℤ) * a (n - 1)

end

end A110149.P15346859002807187032

namespace A110149

/-- `(-1)^n+n*a(n-1)` -/
def P15346859002807187032.Spec : Prop :=
  ∀ n, P15346859002807187032.a n = A110149 n

theorem P15346859002807187032.correct : P15346859002807187032.Spec := by
  intro n
  simp only [A110149, Nat.add_sub_cancel, A110149.P15346859002807187032.a, A110149.P655317881882592911.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110149

/-! ## A110149.P15678187422828475901

`xor(1, floor(n*a(log2(1/2)+n)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A110149.P15678187422828475901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 1 (n * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat)

end

end A110149.P15678187422828475901

namespace A110149

/-- `xor(1, floor(n*a(log2(1/2)+n)))` -/
def P15678187422828475901.Spec : Prop :=
  ∀ n, (P15678187422828475901.a n : ℤ) = A110149 n

end A110149

/-! ## A110149.P15272861033514686262

`A052849(n)+A001120(n)`
-/

namespace A110149.P15272861033514686262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 n + A001120 n

end

end A110149.P15272861033514686262

namespace A110149

/-- `A052849(n)+A001120(n)` -/
def P15272861033514686262.Spec : Prop :=
  ∀ n, P15272861033514686262.a n = A110149 n

end A110149

/-! ## A110149.P1984695394864136966

`2*A110043(n)-A001120(n)`
-/

namespace A110149.P1984695394864136966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110043 n - A001120 n

end

end A110149.P1984695394864136966

namespace A110149

/-- `2*A110043(n)-A001120(n)` -/
def P1984695394864136966.Spec : Prop :=
  ∀ n, P1984695394864136966.a n = A110149 n

end A110149

/-! ## A110149.P1915371725948323102

`A001120(n)+A110043(n)-A000166(n)`
-/

namespace A110149.P1915371725948323102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001120 n + (A110043 n - A000166 n)

end

end A110149.P1915371725948323102

namespace A110149

/-- `A001120(n)+A110043(n)-A000166(n)` -/
def P1915371725948323102.Spec : Prop :=
  ∀ n, P1915371725948323102.a n = A110149 n

end A110149

/-!
# A110151: Expansion of x*(-1+3*x-5*x^2+4*x^3+2*x^4+2*x^6) / ((x-1)*(2*x^4-4*x^3+3*x^2-3*x+1)*(x^4-2*x^3+2*x^2+1)).

The programs for A110151, the canonical program `A110151.P5106554389602048167` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110151 has offset 0).

The definition of A110151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-3x^2+5x^3-4x^4-2x^5-2x^7)/(1-4x+8x^2-17x^3+27x^4-32x^5+32x^6-23x^7+10x^8-2x^9))` (program `A110151.P5106554389602048167`, by `A110151.P5106554389602048167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110151.P5106554389602048167

`ogf((x-3x^2+5x^3-4x^4-2x^5-2x^7)/(1-4x+8x^2-17x^3+27x^4-32x^5+32x^6-23x^7+10x^8-2x^9))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110151

/-- `ogf((x-3x^2+5x^3-4x^4-2x^5-2x^7)/(1-4x+8x^2-17x^3+27x^4-32x^5+32x^6-23x^7+10x^8-2x^9))` -/
def P5106554389602048167.Spec : Prop :=
  ∀ n, P5106554389602048167.a n = A110151 n

theorem P5106554389602048167.correct : P5106554389602048167.Spec := by
  intro n
  simp only [A110151]

end A110151

/-!
# A110152: G.f.: A(x) = Product_{n>=1} 1/(1 - 2^n*x^n)^(2/2^n).

The programs for A110152, there is no canonical definition to state claims against.
-/

/-! ## A110152.P9772493367047615

`A318186(A085489(n))`
-/

namespace A110152.P9772493367047615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A085489 n).toNat

end

end A110152.P9772493367047615

/-! ## A110152.P13275922907510096404

`A318186(A151897(n))`
-/

namespace A110152.P13275922907510096404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A151897 n).toNat

end

end A110152.P13275922907510096404

/-! ## A110152.P16554629486566693606

`A318186(A192758(n+2))`
-/

namespace A110152.P16554629486566693606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A192758 (n + 2)).toNat

end

end A110152.P16554629486566693606

/-!
# A110153: Expansion of g.f.: Product_{n>=1} 1/(1 - 3^n*x^n)^(3/3^n).

The programs for A110153, there is no canonical definition to state claims against.
-/

/-! ## A110153.P15261446657395964044

`A194103(A134063(n))+A056182(n)`
-/

namespace A110153.P15261446657395964044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194103 (A134063 n).toNat + A056182 n

end

end A110153.P15261446657395964044

/-!
# A110154: G.f.: A(x) = Product_{n>=1} 1/(1 - 4^n*x^n)^(4/4^n); self-convolution of A110156.

The programs for A110154, there is no canonical definition to state claims against.
-/

/-! ## A110154.P15336599486272983880

`eq[round(2*n/3), A193020(n)]`
-/

namespace A110154.P15336599486272983880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110154.P15336599486272983880

/-!
# A110155: G.f.: A(x) = Product_{n>=1} 1/(1 - 5^n*x^n)^(5/5^n).

The programs for A110155, there is no canonical definition to state claims against.
-/

/-! ## A110155.P16648387930533857789

`A194920(∑[A018014(n)]²)`
-/

namespace A110155.P16648387930533857789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A110155.P16648387930533857789

/-!
# A110156: G.f.: A(x) = Product_{n>=1} 1/(1 - 4^n*x^n)^(2/4^n); self-convolution equals A110154.

The programs for A110156, there is no canonical definition to state claims against.
-/

/-! ## A110156.P288848095835156051

`A080684(A321586(n))+A022998(n)`
-/

namespace A110156.P288848095835156051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080684 (A321586 n).toNat + A022998 n

end

end A110156.P288848095835156051

/-! ## A110156.P9062185877382445846

`A338921(A000079(n))+A280487(n)`
-/

namespace A110156.P9062185877382445846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338921 (A000079 n).toNat + A280487 n

end

end A110156.P9062185877382445846

/-!
# A110157: a(n) = a(rad(n) - 1) + 1, where rad(n) is the squarefree kernel of n, rad=A007947.

The programs for A110157, the canonical program `A110157.P6866093052213501270` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110157 has offset 0).

The definition of A110157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110157.P6866093052213501270

`a(∏{p}[n, #]-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110157

/-- `a(∏{p}[n, #]-1)+1` -/
def P6866093052213501270.Spec : Prop :=
  ∀ n, (P6866093052213501270.a n : ℤ) = A110157 n

theorem P6866093052213501270.correct : P6866093052213501270.Spec := by
  intro n
  simp only [A110157]

end A110157

/-! ## A110157.P15576401946979773112

`a(A075423(n))+1` with `a(0)=0`
-/

namespace A110157.P15576401946979773112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A075423 n).toNat + 1

end

end A110157.P15576401946979773112

namespace A110157

/-- `a(A075423(n))+1` -/
def P15576401946979773112.Spec : Prop :=
  ∀ n, (P15576401946979773112.a n : ℤ) = A110157 n

end A110157

/-! ## A110157.P10802214154555131762

`a(A007947(n)-1)+1` with `a(0)=0`
-/

namespace A110157.P10802214154555131762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A007947 n - 1).toNat + 1

end

end A110157.P10802214154555131762

namespace A110157

/-- `a(A007947(n)-1)+1` -/
def P10802214154555131762.Spec : Prop :=
  ∀ n, (P10802214154555131762.a n : ℤ) = A110157 n

end A110157

/-! ## A110157.P2631780435724269125

`A008620(A008486(a(∏{p}[n, #]-1)))` with `a(0)=0`
-/

namespace A110157.P2631780435724269125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008620 (A008486 (a (∏ p ∈ Nat.primeFactors (f1 n), p - 1)).toNat).toNat

end

end A110157.P2631780435724269125

namespace A110157

/-- `A008620(A008486(a(∏{p}[n, #]-1)))` -/
def P2631780435724269125.Spec : Prop :=
  ∀ n, P2631780435724269125.a n = A110157 n

end A110157

/-! ## A110157.P7309862883010848586

`A075425(A028310(n))+A057427(n)`
-/

namespace A110157.P7309862883010848586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075425 (A028310 n).toNat + A057427 n

end

end A110157.P7309862883010848586

namespace A110157

/-- `A075425(A028310(n))+A057427(n)` -/
def P7309862883010848586.Spec : Prop :=
  ∀ n, P7309862883010848586.a n = A110157 n

end A110157

/-! ## A110157.P7080353033862138068

`A075425(A028310(n))-A057428(n)`
-/

namespace A110157.P7080353033862138068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075425 (A028310 n).toNat - A057428 n

end

end A110157.P7080353033862138068

namespace A110157

/-- `A075425(A028310(n))-A057428(n)` -/
def P7080353033862138068.Spec : Prop :=
  ∀ n, P7080353033862138068.a n = A110157 n

end A110157

/-! ## A110157.P16781528397429887309

`A075425(A028310(n))+A001221(A001316(n))`
-/

namespace A110157.P16781528397429887309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075425 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A110157.P16781528397429887309

namespace A110157

/-- `A075425(A028310(n))+A001221(A001316(n))` -/
def P16781528397429887309.Spec : Prop :=
  ∀ n, P16781528397429887309.a n = A110157 n

end A110157

/-!
# A110158: Expansion of x^4 / ((x+1)*(2*x^3-2*x^2-2*x+1)*(x-1)^2).

The programs for A110158, the canonical program `A110158.P14256028179004802242` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110158 has offset 0).

The definition of A110158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^4/(1-3x-x^2+7x^3-2x^4-4x^5+2x^6))` (program `A110158.P14256028179004802242`, by `A110158.P14256028179004802242.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110158.P14256028179004802242

`ogf(x^4/(1-3x-x^2+7x^3-2x^4-4x^5+2x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110158

/-- `ogf(x^4/(1-3x-x^2+7x^3-2x^4-4x^5+2x^6))` -/
def P14256028179004802242.Spec : Prop :=
  ∀ n, P14256028179004802242.a n = A110158 n

theorem P14256028179004802242.correct : P14256028179004802242.Spec := by
  intro n
  simp only [A110158]

end A110158

/-! ## A110158.P14040052817750448230

`A345913(∑[6*a(n-2)-a(n-4)])` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A110158.P14040052817750448230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 2] fun n f1 =>
  6 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110158.P14040052817750448230

namespace A110158

/-- `A345913(∑[6*a(n-2)-a(n-4)])` -/
def P14040052817750448230.Spec : Prop :=
  ∀ n, P14040052817750448230.a n = A110158 n

end A110158

/-! ## A110158.P13334827385250128415

`A135661(A000111(n+1))`
-/

namespace A110158.P13334827385250128415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A000111 (n + 1)).toNat

end

end A110158.P13334827385250128415

namespace A110158

/-- `A135661(A000111(n+1))` -/
def P13334827385250128415.Spec : Prop :=
  ∀ n, P13334827385250128415.a n = A110158 n

end A110158

/-! ## A110158.P354716478315472413

`A114539(A329479(n+2))`
-/

namespace A110158.P354716478315472413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114539 (A329479 (n + 2)).toNat

end

end A110158.P354716478315472413

namespace A110158

/-- `A114539(A329479(n+2))` -/
def P354716478315472413.Spec : Prop :=
  ∀ n, P354716478315472413.a n = A110158 n

end A110158

/-! ## A110158.P5994989920390695833

`A369614(n)-A136750(n)`
-/

namespace A110158.P5994989920390695833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369614 n - A136750 n

end

end A110158.P5994989920390695833

namespace A110158

/-- `A369614(n)-A136750(n)` -/
def P5994989920390695833.Spec : Prop :=
  ∀ n, P5994989920390695833.a n = A110158 n

end A110158

/-!
# A110159: a(n) = (n+1)(n+2)(n+3)(9n^2 + 26n + 20)/120.

The programs for A110159, the canonical program `A110159.P9995732447368678229` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110159 has offset 0).

The definition of A110159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110159.P9995732447368678229

`(n+1)*(n+2)*(n+3)*(9*n²+26*n+20)/120`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110159

/-- `(n+1)*(n+2)*(n+3)*(9*n²+26*n+20)/120` -/
def P9995732447368678229.Spec : Prop :=
  ∀ n, P9995732447368678229.a n = (A110159 n : ℚ)

end A110159

/-! ## A110159.P14150067732313807731

`∑[∑[∑[∑[a(n-1)+9]]]]` with `a(0)=1, a(1)=7`
-/

namespace A110159.P14150067732313807731
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f4 =>
  f4 (n - 1) + 9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110159.P14150067732313807731

namespace A110159

/-- `∑[∑[∑[∑[a(n-1)+9]]]]` -/
def P14150067732313807731.Spec : Prop :=
  ∀ n, (P14150067732313807731.a n : ℤ) = A110159 n

end A110159

/-! ## A110159.P11447216693903299392

`∑[A187673(n)]`
-/

namespace A110159.P11447216693903299392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110159.P11447216693903299392

namespace A110159

/-- `∑[A187673(n)]` -/
def P11447216693903299392.Spec : Prop :=
  ∀ n, P11447216693903299392.a n = A110159 n

end A110159

/-! ## A110159.P10373264850380338469

`∑[∑[A005920(n)]]`
-/

namespace A110159.P10373264850380338469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110159.P10373264850380338469

namespace A110159

/-- `∑[∑[A005920(n)]]` -/
def P10373264850380338469.Spec : Prop :=
  ∀ n, P10373264850380338469.a n = A110159 n

end A110159

/-! ## A110159.P10426592541557255662

`A271662(n)+∑[A000292(n)]`
-/

namespace A110159.P10426592541557255662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110159.P10426592541557255662

namespace A110159

/-- `A271662(n)+∑[A000292(n)]` -/
def P10426592541557255662.Spec : Prop :=
  ∀ n, P10426592541557255662.a n = A110159 n

end A110159

/-! ## A110159.P196765406578376526

`A051843(n+1)+A051843(n)-A051836(n)`
-/

namespace A110159.P196765406578376526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 (n + 1) + (A051843 n - A051836 n)

end

end A110159.P196765406578376526

namespace A110159

/-- `A051843(n+1)+A051843(n)-A051836(n)` -/
def P196765406578376526.Spec : Prop :=
  ∀ n, P196765406578376526.a n = A110159 n

end A110159

/-! ## A110159.P16106745831162755966

`∑[∑[(A000567(n+1)+1)*(n+1)/2]]`
-/

namespace A110159.P16106745831162755966
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000567 (n + 1) + 1) * (n + 1 : ℤ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110159.P16106745831162755966

namespace A110159

/-- `∑[∑[(A000567(n+1)+1)*(n+1)/2]]` -/
def P16106745831162755966.Spec : Prop :=
  ∀ n, P16106745831162755966.a n = (A110159 n : ℚ)

end A110159

/-! ## A110159.P14129147391245247337

`A112851(n+1)+A051836(n+1)`
-/

namespace A110159.P14129147391245247337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + A051836 (n + 1)

end

end A110159.P14129147391245247337

namespace A110159

/-- `A112851(n+1)+A051836(n+1)` -/
def P14129147391245247337.Spec : Prop :=
  ∀ n, P14129147391245247337.a n = A110159 n

end A110159

/-! ## A110159.P11514812927993717632

`A051798(n)+A051879(n)-A220212(n+1)`
-/

namespace A110159.P11514812927993717632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n + (A051879 n - A220212 (n + 1))

end

end A110159.P11514812927993717632

namespace A110159

/-- `A051798(n)+A051879(n)-A220212(n+1)` -/
def P11514812927993717632.Spec : Prop :=
  ∀ n, P11514812927993717632.a n = A110159 n

end A110159

/-! ## A110159.P1035251853699045627

`A033455(n+1)+A207361(n+1)-A051836(n+1)`
-/

namespace A110159.P1035251853699045627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + (A207361 (n + 1) - A051836 (n + 1))

end

end A110159.P1035251853699045627

namespace A110159

/-- `A033455(n+1)+A207361(n+1)-A051836(n+1)` -/
def P1035251853699045627.Spec : Prop :=
  ∀ n, P1035251853699045627.a n = A110159 n

end A110159

/-!
# A110160: Expansion of Molien series for 16-dimensional real Clifford group C_4 of genus 4 and order 178362777600.

The programs for A110160, there is no canonical definition to state claims against.
-/

/-! ## A110160.P5058420969139882917

`A330878(A000930(n)-A005044(n))`
-/

namespace A110160.P5058420969139882917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A000930 n - A005044 n).toNat

end

end A110160.P5058420969139882917

/-!
# A110161: Expansion of x*(1-x^2)/(1-x^2+x^4).

The programs for A110161, the canonical program `A110161.P13992751515424036911` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110161 has offset 0).

The definition of A110161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x^2+x^4))` (program `A110161.P13992751515424036911`, by `A110161.P13992751515424036911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110161.P13992751515424036911

`ogf((x-x^3)/(1-x^2+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110161

/-- `ogf((x-x^3)/(1-x^2+x^4))` -/
def P13992751515424036911.Spec : Prop :=
  ∀ n, P13992751515424036911.a n = A110161 n

theorem P13992751515424036911.correct : P13992751515424036911.Spec := by
  intro n
  simp only [A110161]

end A110161

/-!
# A110162: Riordan array ((1-x)/(1+x), x/(1+x)^2).

The programs for A110162, the canonical program `A110162.P15690801050727080128` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110162 has offset 0).

The definition of A110162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110162.P7137533500906337077

`A127677(A000038(n)+n)`
-/

namespace A110162.P7137533500906337077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 (A000038 n + (n : ℤ)).toNat

end

end A110162.P7137533500906337077

namespace A110162

/-- `A127677(A000038(n)+n)` -/
def P7137533500906337077.Spec : Prop :=
  ∀ n, P7137533500906337077.a n = A110162 n

end A110162

/-! ## A110162.P11047514394631471285

`A127677(n)-A000007(n)`
-/

namespace A110162.P11047514394631471285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 n - A000007 n

end

end A110162.P11047514394631471285

namespace A110162

/-- `A127677(n)-A000007(n)` -/
def P11047514394631471285.Spec : Prop :=
  ∀ n, P11047514394631471285.a n = A110162 n

end A110162

/-! ## A110162.P15801296415772170827

`A127677(n)/A054977(n)`
-/

namespace A110162.P15801296415772170827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127677 n : ℚ) / (A054977 n : ℚ)

end

end A110162.P15801296415772170827

namespace A110162

/-- `A127677(n)/A054977(n)` -/
def P15801296415772170827.Spec : Prop :=
  ∀ n, P15801296415772170827.a n = (A110162 n : ℚ)

end A110162

/-! ## A110162.P8880423879179903980

`A128414(n)/A130321(n)`
-/

namespace A110162.P8880423879179903980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128414 n : ℚ) / (A130321 n : ℚ)

end

end A110162.P8880423879179903980

namespace A110162

/-- `A128414(n)/A130321(n)` -/
def P8880423879179903980.Spec : Prop :=
  ∀ n, P8880423879179903980.a n = (A110162 n : ℚ)

end A110162

/-! ## A110162.P16715433218879031073

`A127677(xor(n, A000038(n)))`
-/

namespace A110162.P16715433218879031073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 (Int.xor (n : ℤ) (A000038 n)).toNat

end

end A110162.P16715433218879031073

namespace A110162

/-- `A127677(xor(n, A000038(n)))` -/
def P16715433218879031073.Spec : Prop :=
  ∀ n, P16715433218879031073.a n = A110162 n

end A110162

/-! ## A110162.P2677115494955488189

`A127677(2*A000007(n)+n)`
-/

namespace A110162.P2677115494955488189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 (2 * A000007 n + (n : ℤ)).toNat

end

end A110162.P2677115494955488189

namespace A110162

/-- `A127677(2*A000007(n)+n)` -/
def P2677115494955488189.Spec : Prop :=
  ∀ n, P2677115494955488189.a n = A110162 n

end A110162

/-! ## A110162.P3967743672598242697

`A127677(n)-A000038(n)/2`
-/

namespace A110162.P3967743672598242697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127677 n : ℚ) - (A000038 n : ℚ) / 2

end

end A110162.P3967743672598242697

namespace A110162

/-- `A127677(n)-A000038(n)/2` -/
def P3967743672598242697.Spec : Prop :=
  ∀ n, P3967743672598242697.a n = (A110162 n : ℚ)

end A110162

/-! ## A110162.P7997244182306134239

`A127677(A000007(n)+A000007(n)+n)`
-/

namespace A110162.P7997244182306134239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 (A000007 n + (A000007 n + (n : ℤ))).toNat

end

end A110162.P7997244182306134239

namespace A110162

/-- `A127677(A000007(n)+A000007(n)+n)` -/
def P7997244182306134239.Spec : Prop :=
  ∀ n, P7997244182306134239.a n = A110162 n

end A110162

/-! ## A110162.P8456131551177313279

`A127677(n)-A010054(A010054(n)+n)`
-/

namespace A110162.P8456131551177313279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 n - A010054 (A010054 n + (n : ℤ)).toNat

end

end A110162.P8456131551177313279

namespace A110162

/-- `A127677(n)-A010054(A010054(n)+n)` -/
def P8456131551177313279.Spec : Prop :=
  ∀ n, P8456131551177313279.a n = A110162 n

end A110162

/-! ## A110162.P15114109695681100911

`A100051(n)+A127677(n)-A087204(n)`
-/

namespace A110162.P15114109695681100911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n + (A127677 n - A087204 n)

end

end A110162.P15114109695681100911

namespace A110162

/-- `A100051(n)+A127677(n)-A087204(n)` -/
def P15114109695681100911.Spec : Prop :=
  ∀ n, P15114109695681100911.a n = A110162 n

end A110162

/-! ## A110162.P14862088602423476515

`A127677(n)+A132460(n)-A213234(n)`
-/

namespace A110162.P14862088602423476515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 n + (A132460 n - A213234 n)

end

end A110162.P14862088602423476515

namespace A110162

/-- `A127677(n)+A132460(n)-A213234(n)` -/
def P14862088602423476515.Spec : Prop :=
  ∀ n, P14862088602423476515.a n = A110162 n

end A110162

/-! ## A110162.P15690801050727080128

`A028326(n)/A029635(n)*A129818(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110162

/-- `A028326(n)/A029635(n)*A129818(n)` -/
def P15690801050727080128.Spec : Prop :=
  ∀ n, P15690801050727080128.a n = (A110162 n : ℚ)

end A110162

/-! ## A110162.P9093115564800008166

`A100051(n)+A127677(n)-A057079(n+1)`
-/

namespace A110162.P9093115564800008166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n + (A127677 n - A057079 (n + 1))

end

end A110162.P9093115564800008166

namespace A110162

/-- `A100051(n)+A127677(n)-A057079(n+1)` -/
def P9093115564800008166.Spec : Prop :=
  ∀ n, P9093115564800008166.a n = A110162 n

end A110162

/-! ## A110162.P3709712911838141720

`A127677(n)-A154272(n+3)`
-/

namespace A110162.P3709712911838141720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 n - A154272 (n + 3)

end

end A110162.P3709712911838141720

namespace A110162

/-- `A127677(n)-A154272(n+3)` -/
def P3709712911838141720.Spec : Prop :=
  ∀ n, P3709712911838141720.a n = A110162 n

end A110162

/-! ## A110162.P690542817548744179

`A094527(n)/A128417(n)*A128414(n)`
-/

namespace A110162.P690542817548744179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094527 n : ℚ) / (A128417 n : ℚ) * (A128414 n : ℚ)

end

end A110162.P690542817548744179

namespace A110162

/-- `A094527(n)/A128417(n)*A128414(n)` -/
def P690542817548744179.Spec : Prop :=
  ∀ n, P690542817548744179.a n = (A110162 n : ℚ)

end A110162

/-! ## A110162.P14607418623106352871

`A132460(A061579(n)+A057944(n))`
-/

namespace A110162.P14607418623106352871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (A061579 n + A057944 n).toNat

end

end A110162.P14607418623106352871

namespace A110162

/-- `A132460(A061579(n)+A057944(n))` -/
def P14607418623106352871.Spec : Prop :=
  ∀ n, P14607418623106352871.a n = A110162 n

end A110162

/-! ## A110162.P10676317160455291770

`A108045(A185868(n+1)-1)`
-/

namespace A110162.P10676317160455291770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 (A185868 (n + 1) - 1).toNat

end

end A110162.P10676317160455291770

namespace A110162

/-- `A108045(A185868(n+1)-1)` -/
def P10676317160455291770.Spec : Prop :=
  ∀ n, P10676317160455291770.a n = A110162 n

end A110162

/-! ## A110162.P15859962015551935275

`A100218(A008585(A057944(n))+n)`
-/

namespace A110162.P15859962015551935275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A008585 (A057944 n).toNat + (n : ℤ)).toNat

end

end A110162.P15859962015551935275

namespace A110162

/-- `A100218(A008585(A057944(n))+n)` -/
def P15859962015551935275.Spec : Prop :=
  ∀ n, P15859962015551935275.a n = A110162 n

end A110162

/-! ## A110162.P13232933609899019489

`A108045(eq[1, A327571(n+2)])`
-/

namespace A110162.P13232933609899019489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327571 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110162.P13232933609899019489

namespace A110162

/-- `A108045(eq[1, A327571(n+2)])` -/
def P13232933609899019489.Spec : Prop :=
  ∀ n, P13232933609899019489.a n = A110162 n

end A110162

/-! ## A110162.P8625516929308576834

`A127677(n)/A034807(n²)`
-/

namespace A110162.P8625516929308576834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127677 n : ℚ) / (A034807 (n ^ 2) : ℚ)

end

end A110162.P8625516929308576834

namespace A110162

/-- `A127677(n)/A034807(n²)` -/
def P8625516929308576834.Spec : Prop :=
  ∀ n, P8625516929308576834.a n = (A110162 n : ℚ)

end A110162

/-!
# A110163: Exponents a(1), a(2), ... such that theta series of E_8 lattice, 1 + 240 q + 2160 q^2 + ... (A004009) is equal to (1-q)^a(1) (1-q^2)^a(2) (1-q^3)^a(3) ...

The programs for A110163, there is no canonical definition to state claims against.
-/

/-! ## A110163.P14450564059158531948

`8*A289395(n+1)`
-/

namespace A110163.P14450564059158531948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A289395 (n + 1)

end

end A110163.P14450564059158531948

/-! ## A110163.P8170036727724449936

`A288471(n+1)/2`
-/

namespace A110163.P8170036727724449936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288471 (n + 1) : ℚ) / 2

end

end A110163.P8170036727724449936

/-! ## A110163.P17229177727133531181

`A192731(n+1)/3+8`
-/

namespace A110163.P17229177727133531181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192731 (n + 1) : ℚ) / 3 + 8

end

end A110163.P17229177727133531181

/-! ## A110163.P9506598495016479328

`A289024(n+1)-A288851(n+1)`
-/

namespace A110163.P9506598495016479328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289024 (n + 1) - A288851 (n + 1)

end

end A110163.P9506598495016479328

/-!
# A110164: Expansion of (1-x^2)/(1+2*x).

The programs for A110164, the canonical program `A110164.P17648169991732480712` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110164 has offset 0).

The definition of A110164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1+2x))` (program `A110164.P17648169991732480712`, by `A110164.P17648169991732480712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110164.P17648169991732480712

`ogf((1-x^2)/(1+2x))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110164

/-- `ogf((1-x^2)/(1+2x))` -/
def P17648169991732480712.Spec : Prop :=
  ∀ n, P17648169991732480712.a n = A110164 n

theorem P17648169991732480712.correct : P17648169991732480712.Spec := by
  intro n
  simp only [A110164]

end A110164

/-! ## A110164.P8054086481983376840

`round(3*(-2)^(n-2))`
-/

namespace A110164.P8054086481983376840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A110164.P8054086481983376840

namespace A110164

/-- `round(3*(-2)^(n-2))` -/
def P8054086481983376840.Spec : Prop :=
  ∀ n, P8054086481983376840.a n = A110164 n

end A110164

/-! ## A110164.P18084767096730877455

`4*a(n-2)` with `a(0)=1, a(1)=-2, a(2)=3, a(3)=-6`
-/

namespace A110164.P18084767096730877455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3, -6] fun n a =>
  4 * a (n - 2)

end

end A110164.P18084767096730877455

namespace A110164

/-- `4*a(n-2)` -/
def P18084767096730877455.Spec : Prop :=
  ∀ n, P18084767096730877455.a n = A110164 n

end A110164

/-! ## A110164.P7959550514363444673

`a(n-1)/(1/2-1)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A110164.P7959550514363444673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A110164.P7959550514363444673

namespace A110164

/-- `a(n-1)/(1/2-1)` -/
def P7959550514363444673.Spec : Prop :=
  ∀ n, P7959550514363444673.a n = (A110164 n : ℚ)

end A110164

/-! ## A110164.P5615316730426704974

`∑[A279634(n)]`
-/

namespace A110164.P5615316730426704974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110164.P5615316730426704974

namespace A110164

/-- `∑[A279634(n)]` -/
def P5615316730426704974.Spec : Prop :=
  ∀ n, P5615316730426704974.a n = A110164 n

end A110164

/-! ## A110164.P733867874077592351

`floor(3*A117575(2*n)/2)`
-/

namespace A110164.P733867874077592351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A117575 (2 * n) : ℚ) / 2)⌋

end

end A110164.P733867874077592351

namespace A110164

/-- `floor(3*A117575(2*n)/2)` -/
def P733867874077592351.Spec : Prop :=
  ∀ n, P733867874077592351.a n = A110164 n

end A110164

/-! ## A110164.P14765736618916425667

`floor(A176414(n)/4)`
-/

namespace A110164.P14765736618916425667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176414 n : ℚ) / 4⌋

end

end A110164.P14765736618916425667

namespace A110164

/-- `floor(A176414(n)/4)` -/
def P14765736618916425667.Spec : Prop :=
  ∀ n, P14765736618916425667.a n = A110164 n

end A110164

/-! ## A110164.P17615069041304407205

`floor(A002001(n)/(-2)^n)`
-/

namespace A110164.P17615069041304407205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002001 n : ℚ) / ((-2) ^ n : ℚ)⌋

end

end A110164.P17615069041304407205

namespace A110164

/-- `floor(A002001(n)/(-2)^n)` -/
def P17615069041304407205.Spec : Prop :=
  ∀ n, P17615069041304407205.a n = A110164 n

end A110164

/-!
# A110165: Riordan array (1/sqrt(1-6x+5x^2),(1-3x-sqrt(1-6x+5x^2))/(2x)).

The programs for A110165, there is no canonical definition to state claims against.
-/

/-! ## A110165.P15324168160387845595

`A272866(A061885(n))`
-/

namespace A110165.P15324168160387845595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (A061885 n).toNat

end

end A110165.P15324168160387845595

/-! ## A110165.P6962324102602389539

`A272866(A057944(n)+n)`
-/

namespace A110165.P6962324102602389539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (A057944 n + (n : ℤ)).toNat

end

end A110165.P6962324102602389539

/-! ## A110165.P9392695203183224245

`A272866(lt[-1, A196199(n)])`
-/

namespace A110165.P9392695203183224245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110165.P9392695203183224245

/-! ## A110165.P6036110498492988764

`A272866(A004201(n+1)-1)`
-/

namespace A110165.P6036110498492988764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (A004201 (n + 1) - 1).toNat

end

end A110165.P6036110498492988764

/-! ## A110165.P10545938109585045434

`A272866(2*n-A002262(n))`
-/

namespace A110165.P10545938109585045434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 ((2 * n : ℤ) - A002262 n).toNat

end

end A110165.P10545938109585045434

/-! ## A110165.P15349452644327684553

`A272866(n-A002262(n)+n)`
-/

namespace A110165.P15349452644327684553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A110165.P15349452644327684553

/-! ## A110165.P309089959637190326

`A272866(eq[1, A118175(n)])`
-/

namespace A110165.P309089959637190326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110165.P309089959637190326

/-! ## A110165.P16458739621540597636

`A026374(record[xor(1, n)+round(sqrt(n+1))²]-(n-C(∑[char[∑[n+1]]], 2)+2))`
-/

namespace A110165.P16458739621540597636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + 2)).toNat

end

end A110165.P16458739621540597636

/-!
# A110166: Row sums of Riordan array A110165.

The programs for A110166, the canonical program `A110166.P3687076817918549492` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110166 has offset 0).

The definition of A110166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026375, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110166.P3687076817918549492

`1/2*(5^n+A026375(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110166

/-- `1/2*(5^n+A026375(n))` -/
def P3687076817918549492.Spec : Prop :=
  ∀ n, P3687076817918549492.a n = (A110166 n : ℚ)

end A110166

/-! ## A110166.P6517454293882238060

`5*a(n-1)-A007317(n)` with `a(0)=1`
-/

namespace A110166.P6517454293882238060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A007317 n

end

end A110166.P6517454293882238060

namespace A110166

/-- `5*a(n-1)-A007317(n)` -/
def P6517454293882238060.Spec : Prop :=
  ∀ n, P6517454293882238060.a n = A110166 n

end A110166

/-! ## A110166.P1800162487952138507

`5*a(n-1)-A181768(n)` with `a(0)=1`
-/

namespace A110166.P1800162487952138507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A181768 n

end

end A110166.P1800162487952138507

namespace A110166

/-- `5*a(n-1)-A181768(n)` -/
def P1800162487952138507.Spec : Prop :=
  ∀ n, P1800162487952138507.a n = A110166 n

end A110166

/-! ## A110166.P7268534880653735245

`A242586(n)+2*A003463(n)`
-/

namespace A110166.P7268534880653735245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + 2 * A003463 n

end

end A110166.P7268534880653735245

namespace A110166

/-- `A242586(n)+2*A003463(n)` -/
def P7268534880653735245.Spec : Prop :=
  ∀ n, P7268534880653735245.a n = A110166 n

end A110166

/-! ## A110166.P17542901411117807321

`(A026375(n)+A000351(n))/2`
-/

namespace A110166.P17542901411117807321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026375 n + A000351 n : ℚ) / 2

end

end A110166.P17542901411117807321

namespace A110166

/-- `(A026375(n)+A000351(n))/2` -/
def P17542901411117807321.Spec : Prop :=
  ∀ n, P17542901411117807321.a n = (A110166 n : ℚ)

end A110166

/-! ## A110166.P10263728767717127092

`(A026383(2*n)+A026375(n))/2`
-/

namespace A110166.P10263728767717127092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026383 (2 * n) + A026375 n : ℚ) / 2

end

end A110166.P10263728767717127092

namespace A110166

/-- `(A026383(2*n)+A026375(n))/2` -/
def P10263728767717127092.Spec : Prop :=
  ∀ n, P10263728767717127092.a n = (A110166 n : ℚ)

end A110166

/-! ## A110166.P13098763419935524793

`5*a(n-1)-A104259(∑[n]-n)` with `a(0)=1`
-/

namespace A110166.P13098763419935524793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A104259 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A110166.P13098763419935524793

namespace A110166

/-- `5*a(n-1)-A104259(∑[n]-n)` -/
def P13098763419935524793.Spec : Prop :=
  ∀ n, P13098763419935524793.a n = A110166 n

end A110166

/-!
# A110167: Diagonal sums of Riordan array A110165.

The programs for A110167, there is no canonical definition to state claims against.
-/

/-! ## A110167.P18108924707232910768

`A107347(10*a(n-1))+1-n` with `a(0)=1`
-/

namespace A110167.P18108924707232910768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107347 (10 * a (n - 1)).toNat + 1 - (n : ℤ)

end

end A110167.P18108924707232910768

/-! ## A110167.P9255659428249234839

`A180898(n+1)+A133010(∑[4*n]+5)`
-/

namespace A110167.P9255659428249234839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180898 (n + 1) + A133010 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A110167.P9255659428249234839

/-!
# A110169: Triangle read by rows: T(n,k) (0<=k<=n) is the number of Delannoy paths of length n that start with exactly k (1,1) steps.

The programs for A110169, the canonical program `A110169.P12142494471206816610` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110169 has offset 0).

The definition of A110169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8911 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110169.P11403007315404274677

`A110170(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A110169.P11403007315404274677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A110169.P11403007315404274677

namespace A110169

/-- `A110170(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P11403007315404274677.Spec : Prop :=
  ∀ n, P11403007315404274677.a n = A110169 n

end A110169

/-! ## A110169.P2958036598858583240

`A110170(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A110169.P2958036598858583240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A110169.P2958036598858583240

namespace A110169

/-- `A110170(C(comp[∑[n]]-n, 2)-n-1)` -/
def P2958036598858583240.Spec : Prop :=
  ∀ n, P2958036598858583240.a n = A110169 n

end A110169

/-! ## A110169.P16000990466556420187

`A247630(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A110169.P16000990466556420187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A110169.P16000990466556420187

namespace A110169

/-- `A247630(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P16000990466556420187.Spec : Prop :=
  ∀ n, P16000990466556420187.a n = A110169 n

end A110169

/-! ## A110169.P5323341136195353277

`A247630(∑[2*n]%comp[∑[n]]-∑[char[comp[∑[n]]]])`
-/

namespace A110169.P5323341136195353277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - ∑ j ∈ Finset.range (n + 1), f4 j)

end

end A110169.P5323341136195353277

namespace A110169

/-- `A247630(∑[2*n]%comp[∑[n]]-∑[char[comp[∑[n]]]])` -/
def P5323341136195353277.Spec : Prop :=
  ∀ n, P5323341136195353277.a n = A110169 n

end A110169

/-! ## A110169.P12142494471206816610

`A110170(A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110169

/-- `A110170(A025581(n))` -/
def P12142494471206816610.Spec : Prop :=
  ∀ n, P12142494471206816610.a n = A110169 n

theorem P12142494471206816610.correct : P12142494471206816610.Spec := by
  intro n
  simp only [A110169]

end A110169

/-! ## A110169.P3708388257957009676

`A110170(log2(A130321(n)))`
-/

namespace A110169.P3708388257957009676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A110169.P3708388257957009676

namespace A110169

/-- `A110170(log2(A130321(n)))` -/
def P3708388257957009676.Spec : Prop :=
  ∀ n, P3708388257957009676.a n = A110169 n

end A110169

/-! ## A110169.P15456698124028418909

`A247630(log2(A262616(n)))`
-/

namespace A110169.P15456698124028418909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ))).toNat

end

end A110169.P15456698124028418909

namespace A110169

/-- `A247630(log2(A262616(n)))` -/
def P15456698124028418909.Spec : Prop :=
  ∀ n, P15456698124028418909.a n = A110169 n

end A110169

/-!
# A110170: First differences of the central Delannoy numbers (A001850).

The programs for A110170, the canonical program `A110170.P5706490004854284683` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110170 has offset 0).

The definition of A110170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110170.P17591736634672748346

`A110169(∑[n])`
-/

namespace A110170.P17591736634672748346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110170.P17591736634672748346

namespace A110170

/-- `A110169(∑[n])` -/
def P17591736634672748346.Spec : Prop :=
  ∀ n, P17591736634672748346.a n = A110170 n

end A110170

/-! ## A110170.P15972467634003446172

`record[A110169(n)]`
-/

namespace A110170.P15972467634003446172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110170.P15972467634003446172

namespace A110170

/-- `record[A110169(n)]` -/
def P15972467634003446172.Spec : Prop :=
  ∀ n, P15972467634003446172.a n = A110170 n

end A110170

/-! ## A110170.P3400273106427926996

`A247630(2*n)`
-/

namespace A110170.P3400273106427926996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n)

end

end A110170.P3400273106427926996

namespace A110170

/-- `A247630(2*n)` -/
def P3400273106427926996.Spec : Prop :=
  ∀ n, P3400273106427926996.a n = A110170 n

end A110170

/-! ## A110170.P10248252720262810546

`record[A247630(A014681(n))]`
-/

namespace A110170.P10248252720262810546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110170.P10248252720262810546

namespace A110170

/-- `record[A247630(A014681(n))]` -/
def P10248252720262810546.Spec : Prop :=
  ∀ n, P10248252720262810546.a n = A110170 n

end A110170

/-! ## A110170.P3390941605257191944

`record[A247630(A029578(n))]`
-/

namespace A110170.P3390941605257191944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110170.P3390941605257191944

namespace A110170

/-- `record[A247630(A029578(n))]` -/
def P3390941605257191944.Spec : Prop :=
  ∀ n, P3390941605257191944.a n = A110170 n

end A110170

/-! ## A110170.P7430699564665824233

`record[A247630(A083220(n))]`
-/

namespace A110170.P7430699564665824233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110170.P7430699564665824233

namespace A110170

/-- `record[A247630(A083220(n))]` -/
def P7430699564665824233.Spec : Prop :=
  ∀ n, P7430699564665824233.a n = A110170 n

end A110170

/-! ## A110170.P3757587485042499756

`A182626(n)*A280560(n)`
-/

namespace A110170.P3757587485042499756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182626 n * A280560 n

end

end A110170.P3757587485042499756

namespace A110170

/-- `A182626(n)*A280560(n)` -/
def P3757587485042499756.Spec : Prop :=
  ∀ n, P3757587485042499756.a n = A110170 n

end A110170

/-! ## A110170.P8307462544951483503

`record[A247630(A026741(n)+1)]`
-/

namespace A110170.P8307462544951483503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110170.P8307462544951483503

namespace A110170

/-- `record[A247630(A026741(n)+1)]` -/
def P8307462544951483503.Spec : Prop :=
  ∀ n, P8307462544951483503.a n = A110170 n

end A110170

/-! ## A110170.P4522399464286891643

`A050146(n+1)-A002003(n)`
-/

namespace A110170.P4522399464286891643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A002003 n

end

end A110170.P4522399464286891643

namespace A110170

/-- `A050146(n+1)-A002003(n)` -/
def P4522399464286891643.Spec : Prop :=
  ∀ n, P4522399464286891643.a n = A110170 n

end A110170

/-! ## A110170.P5706490004854284683

`A000007(n)+2*A002002(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110170

/-- `A000007(n)+2*A002002(n)` -/
def P5706490004854284683.Spec : Prop :=
  ∀ n, P5706490004854284683.a n = A110170 n

theorem P5706490004854284683.correct : P5706490004854284683.Spec := by
  intro n
  simp only [A110170]

end A110170

/-! ## A110170.P7960616969440436408

`A110110(2*n)-A002003(n)`
-/

namespace A110170.P7960616969440436408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n) - A002003 n

end

end A110170.P7960616969440436408

namespace A110170

/-- `A110110(2*n)-A002003(n)` -/
def P7960616969440436408.Spec : Prop :=
  ∀ n, P7960616969440436408.a n = A110170 n

end A110170

/-! ## A110170.P14228481171758302547

`A050146(n+1)-2*A047781(n)`
-/

namespace A110170.P14228481171758302547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - 2 * A047781 n

end

end A110170.P14228481171758302547

namespace A110170

/-- `A050146(n+1)-2*A047781(n)` -/
def P14228481171758302547.Spec : Prop :=
  ∀ n, P14228481171758302547.a n = A110170 n

end A110170

/-! ## A110170.P18023973160019227092

`record[A247630(A097140(A267048(n)))]`
-/

namespace A110170.P18023973160019227092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A097140 (A267048 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110170.P18023973160019227092

namespace A110170

/-- `record[A247630(A097140(A267048(n)))]` -/
def P18023973160019227092.Spec : Prop :=
  ∀ n, P18023973160019227092.a n = A110170 n

end A110170

/-! ## A110170.P3891097179485185149

`A002002(A000007(n)+n)+A002002(n)`
-/

namespace A110170.P3891097179485185149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (A000007 n + (n : ℤ)).toNat + A002002 n

end

end A110170.P3891097179485185149

namespace A110170

/-- `A002002(A000007(n)+n)+A002002(n)` -/
def P3891097179485185149.Spec : Prop :=
  ∀ n, P3891097179485185149.a n = A110170 n

end A110170

/-! ## A110170.P1906645987056354230

`A001850(n)+A002002(n)-A002003(n)`
-/

namespace A110170.P1906645987056354230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (A002002 n - A002003 n)

end

end A110170.P1906645987056354230

namespace A110170

/-- `A001850(n)+A002002(n)-A002003(n)` -/
def P1906645987056354230.Spec : Prop :=
  ∀ n, P1906645987056354230.a n = A110170 n

end A110170

/-! ## A110170.P9333657400704586497

`A001850(n)+A001850(n)-A241023(n)`
-/

namespace A110170.P9333657400704586497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (A001850 n - A241023 n)

end

end A110170.P9333657400704586497

namespace A110170

/-- `A001850(n)+A001850(n)-A241023(n)` -/
def P9333657400704586497.Spec : Prop :=
  ∀ n, P9333657400704586497.a n = A110170 n

end A110170

/-! ## A110170.P16107359438515975486

`A050146(n+1)+A050146(n)-A050147(n+1)`
-/

namespace A110170.P16107359438515975486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) + (A050146 n - A050147 (n + 1))

end

end A110170.P16107359438515975486

namespace A110170

/-- `A050146(n+1)+A050146(n)-A050147(n+1)` -/
def P16107359438515975486.Spec : Prop :=
  ∀ n, P16107359438515975486.a n = A110170 n

end A110170

/-! ## A110170.P18442720507178407108

`Δ[A002003(n)-A002002(n)]`
-/

namespace A110170.P18442720507178407108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n - A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110170.P18442720507178407108

namespace A110170

/-- `Δ[A002003(n)-A002002(n)]` -/
def P18442720507178407108.Spec : Prop :=
  ∀ n, P18442720507178407108.a n = A110170 n

end A110170

/-! ## A110170.P12924685482608655429

`2*A001850(n)-A241023(n)`
-/

namespace A110170.P12924685482608655429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001850 n - A241023 n

end

end A110170.P12924685482608655429

namespace A110170

/-- `2*A001850(n)-A241023(n)` -/
def P12924685482608655429.Spec : Prop :=
  ∀ n, P12924685482608655429.a n = A110170 n

end A110170

/-!
# A110171: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of Delannoy paths of length n that start with exactly k (0,1) steps (or, equivalently, with exactly k (1,0) steps).

The programs for A110171, there is no canonical definition to state claims against.
-/

/-! ## A110171.P161833235087680388

`A266213(A245300(A061579(n)))`
-/

namespace A110171.P161833235087680388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A245300 (A061579 n).toNat).toNat

end

end A110171.P161833235087680388

/-! ## A110171.P3542636543453457637

`A113139(n)-A113139(n+1)%A113139(n)`
-/

namespace A110171.P3542636543453457637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113139 n - Int.tmod (A113139 (n + 1)) (A113139 n)

end

end A110171.P3542636543453457637

/-!
# A110172: Conjectured numbers j such that phi(j) + phi(k) = phi(j+k) has no solution k, where phi is Euler's totient function.

The programs for A110172, there is no canonical definition to state claims against.
-/

/-! ## A110172.P5195515034772913985

`lt[A066426(n+1), 1]+1`
-/

namespace A110172.P5195515034772913985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A110172.P5195515034772913985

/-! ## A110172.P5567992534847275027

`eq[0, A066426(A028310(n))]`
-/

namespace A110172.P5567992534847275027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110172.P5567992534847275027

/-! ## A110172.P12545027812875596299

`A020725(eq[0, A066426(n+1)])`
-/

namespace A110172.P12545027812875596299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110172.P12545027812875596299

/-! ## A110172.P3944434320723045969

`A065475(eq[0, A066426(n+1)])`
-/

namespace A110172.P3944434320723045969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110172.P3944434320723045969

/-! ## A110172.P5075855442588899360

`A153152(eq[0, A066426(n+1)])`
-/

namespace A110172.P5075855442588899360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110172.P5075855442588899360

/-!
# A110174: Number of solutions 0

The programs for A110174, there is no canonical definition to state claims against.
-/

/-! ## A110174.P1725259504598515503

`and(A272020(n), A382938(A000079(n)))`
-/

namespace A110174.P1725259504598515503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A272020 n) (A382938 (A000079 n).toNat)

end

end A110174.P1725259504598515503

/-! ## A110174.P15324315773496975033

`and(A000010(A271510(n)), A271488(3*n+1))`
-/

namespace A110174.P15324315773496975033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A271510 n).toNat) (A271488 (3 * n + 1))

end

end A110174.P15324315773496975033

/-! ## A110174.P12202948568094488496

`and(A024603(A024630(2*(n+2))), A336811(n+1))`
-/

namespace A110174.P12202948568094488496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024603 (A024630 (2 * (n + 2))).toNat) (A336811 (n + 1))

end

end A110174.P12202948568094488496

/-! ## A110174.P18308760464683173083

`and(A047210(2*n+5), A057557(A231855(n+5)))`
-/

namespace A110174.P18308760464683173083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047210 (2 * n + 5)) (A057557 (A231855 (n + 5)).toNat)

end

end A110174.P18308760464683173083

/-!
# A110177: Number of solutions 0

The programs for A110177, there is no canonical definition to state claims against.
-/

/-! ## A110177.P6568739189832638073

`2*A211225(n+1)`
-/

namespace A110177.P6568739189832638073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211225 (n + 1)

end

end A110177.P6568739189832638073

/-! ## A110177.P17223246015600534845

`A005843(A211225(n+1))`
-/

namespace A110177.P17223246015600534845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211225 (n + 1)).toNat

end

end A110177.P17223246015600534845

/-! ## A110177.P10671694847141894593

`A211225(A000027(n+1))+A211225(n+1)`
-/

namespace A110177.P10671694847141894593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211225 (A000027 (n + 1)).toNat + A211225 (n + 1)

end

end A110177.P10671694847141894593

/-! ## A110177.P12532480647032408865

`A001222(4^A211225(n+1))`
-/

namespace A110177.P12532480647032408865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A211225 (n + 1) : ℤ))).toNat

end

end A110177.P12532480647032408865

/-! ## A110177.P4854352396723741240

`A000005(4^A211225(n+1))-1`
-/

namespace A110177.P4854352396723741240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A211225 (n + 1) : ℤ))).toNat - 1

end

end A110177.P4854352396723741240

/-! ## A110177.P11717203605868607207

`∑{d}[4^A211225(n+1), A001221(#)]`
-/

namespace A110177.P11717203605868607207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A211225 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A110177.P11717203605868607207

/-! ## A110177.P8746370610888622168

`A000523(4^A211225(n+1))`
-/

namespace A110177.P8746370610888622168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A211225 (n + 1) : ℤ))).toNat

end

end A110177.P8746370610888622168

/-!
# A110178: Composite numbers n such that the equation sigma(n)=sigma(k)+sigma(n-k) has no solution, where sigma is the sum of divisors function.

The programs for A110178, there is no canonical definition to state claims against.
-/

/-! ## A110178.P12292135077793785432

`eq[char[A211223(n+1)], A339579(n+1)]`
-/

namespace A110178.P12292135077793785432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A110178.P12292135077793785432

/-! ## A110178.P4199479776838307377

`eq[A110176(A028310(n)), A339579(n+1)]`
-/

namespace A110178.P4199479776838307377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110176 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110178.P4199479776838307377

/-!
# A110179: Least k such that phi(n+k) = 2*phi(n), where phi is Euler's totient function.

The programs for A110179, there is no canonical definition to state claims against.
-/

/-! ## A110179.P2553060642938641290

`A110192(n+1)-(n+1)`
-/

namespace A110179.P2553060642938641290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110192 (n + 1) - (n + 1 : ℤ)

end

end A110179.P2553060642938641290

/-! ## A110179.P7051846720762339270

`A110192(-xor(n, -1))-1-n`
-/

namespace A110179.P7051846720762339270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110192 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A110179.P7051846720762339270

/-! ## A110179.P2256039150133955334

`A110192(Δ[n²]-n)-1-n`
-/

namespace A110179.P2256039150133955334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A110179.P2256039150133955334

/-! ## A110179.P2801032189776890845

`abs(A110192(n+1)+A001478(n+1))`
-/

namespace A110179.P2801032189776890845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110192 (n + 1) + A001478 (n + 1)|

end

end A110179.P2801032189776890845

/-! ## A110179.P9839556665109465194

`A023443(A110192(n+1)-n)`
-/

namespace A110179.P9839556665109465194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A110192 (n + 1) - (n : ℤ)).toNat

end

end A110179.P9839556665109465194

/-! ## A110179.P16235254258218505070

`A083254(n+1)+A051953(A110192(n+1))`
-/

namespace A110179.P16235254258218505070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + A051953 (A110192 (n + 1)).toNat

end

end A110179.P16235254258218505070

/-! ## A110179.P9459319424351730729

`A342350(A110192(n+1))%A342350(n+1)`
-/

namespace A110179.P9459319424351730729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342350 (A110192 (n + 1)).toNat) (A342350 (n + 1))

end

end A110179.P9459319424351730729

/-!
# A110180: Triangle of generalized central trinomial coefficients.

The programs for A110180, there is no canonical definition to state claims against.
-/

/-! ## A110180.P999839576223503844

`A307855(∑[2*n]%comp[∑[n]])`
-/

namespace A110180.P999839576223503844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A110180.P999839576223503844

/-! ## A110180.P8935815390869313373

`A307855(∑[char[∑[n]]]²-n-1)`
-/

namespace A110180.P8935815390869313373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A110180.P8935815390869313373

/-! ## A110180.P13372827928953860270

`gcd(A140579(n+1), A307855(A061579(n)))`
-/

namespace A110180.P13372827928953860270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140579 (n + 1)) (A307855 (A061579 n).toNat)

end

end A110180.P13372827928953860270

/-! ## A110180.P12835874318693536903

`A307855(A061579(n))+A140579(3*n+5)`
-/

namespace A110180.P12835874318693536903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A061579 n).toNat + A140579 (3 * n + 5)

end

end A110180.P12835874318693536903

/-! ## A110180.P9104416204423631488

`A307855(A061579(n))%A029744(n+5)`
-/

namespace A110180.P9104416204423631488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307855 (A061579 n).toNat) (A029744 (n + 5))

end

end A110180.P9104416204423631488

/-!
# A110181: Row sums of number triangle A110180.

The programs for A110181, there is no canonical definition to state claims against.
-/

/-! ## A110181.P12123532468566223644

`A084510(A149955(n))`
-/

namespace A110181.P12123532468566223644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084510 (A149955 n).toNat

end

end A110181.P12123532468566223644

/-! ## A110181.P6470809298032980226

`A111855(A261057(n+4))+A029744(n+1)`
-/

namespace A110181.P6470809298032980226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111855 (A261057 (n + 4)).toNat + A029744 (n + 1)

end

end A110181.P6470809298032980226

/-! ## A110181.P17957301831984141110

`A354166(floor(3/2*a(n-1))²)` with `a(0)=1, a(1)=2`
-/

namespace A110181.P17957301831984141110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A354166 (⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋ ^ 2).toNat

end

end A110181.P17957301831984141110

/-!
# A110184: Number of (1,1)-steps on the lines y=x, y=x+1 and y=x-1 in all Delannoy paths of length n.

The programs for A110184, the canonical program `A110184.P13079875143077863507` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110184 has offset 0).

The definition of A110184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110184.P13079875143077863507

`A001109(n)+2*A110127(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110184

/-- `A001109(n)+2*A110127(n)` -/
def P13079875143077863507.Spec : Prop :=
  ∀ n, P13079875143077863507.a n = A110184 n

theorem P13079875143077863507.correct : P13079875143077863507.Spec := by
  intro n
  simp only [A110184]

end A110184

/-! ## A110184.P2891843481184574071

`A002002(n)+3*A110127(n)`
-/

namespace A110184.P2891843481184574071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + 3 * A110127 n

end

end A110184.P2891843481184574071

namespace A110184

/-- `A002002(n)+3*A110127(n)` -/
def P2891843481184574071.Spec : Prop :=
  ∀ n, P2891843481184574071.a n = A110184 n

end A110184

/-! ## A110184.P12062071562557013183

`A108475(n)-A090390(n)+2*A110127(n)`
-/

namespace A110184.P12062071562557013183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108475 n - A090390 n + 2 * A110127 n

end

end A110184.P12062071562557013183

namespace A110184

/-- `A108475(n)-A090390(n)+2*A110127(n)` -/
def P12062071562557013183.Spec : Prop :=
  ∀ n, P12062071562557013183.a n = A110184 n

end A110184

/-!
# A110185: Coefficients of x in the partial quotients of the continued fraction expansion exp(1/x) = [1, x - 1/2, 12*x, 5*x, 28*x, 9*x, 44*x, 13*x, ...]. The partial quotients all have the form a(n)*x except the constant term of 1 and the initial partial quotient which equals (x - 1/2).

The programs for A110185, the canonical program `A110185.P17143171243034943841` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110185 has offset 0).

The definition of A110185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110185.P17143171243034943841

`(2*n-1)*gcd(4, a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110185

/-- `(2*n-1)*gcd(4, a(n-2))` -/
def P17143171243034943841.Spec : Prop :=
  ∀ n, P17143171243034943841.a n = A110185 n

theorem P17143171243034943841.correct : P17143171243034943841.Spec := by
  intro n
  simp only [A110185]

end A110185

/-! ## A110185.P7954668599262121367

`(and(1, n+1)+1)²*comp[2*(n+1)]`
-/

namespace A110185.P7954668599262121367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A110185.P7954668599262121367

namespace A110185

/-- `(and(1, n+1)+1)²*comp[2*(n+1)]` -/
def P7954668599262121367.Spec : Prop :=
  ∀ n, (P7954668599262121367.a n : ℤ) = A110185 n

end A110185

/-! ## A110185.P506524310168349971

`floor((2*n*gcd(2, n))²/(2*n+1))`
-/

namespace A110185.P506524310168349971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (n * Nat.gcd 2 n)) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A110185.P506524310168349971

namespace A110185

/-- `floor((2*n*gcd(2, n))²/(2*n+1))` -/
def P506524310168349971.Spec : Prop :=
  ∀ n, P506524310168349971.a n = A110185 n

end A110185

/-! ## A110185.P10327409569880632739

`gcd(2, n)²*A004273(n)`
-/

namespace A110185.P10327409569880632739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A004273 n

end

end A110185.P10327409569880632739

namespace A110185

/-- `gcd(2, n)²*A004273(n)` -/
def P10327409569880632739.Spec : Prop :=
  ∀ n, P10327409569880632739.a n = A110185 n

end A110185

/-! ## A110185.P8136489200733276282

`A040001(n)²*comp[2*(n+1)]`
-/

namespace A110185.P8136489200733276282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A110185.P8136489200733276282

namespace A110185

/-- `A040001(n)²*comp[2*(n+1)]` -/
def P8136489200733276282.Spec : Prop :=
  ∀ n, P8136489200733276282.a n = A110185 n

end A110185

/-! ## A110185.P1885019757601274551

`A280193(n)²*comp[2*(n+1)]`
-/

namespace A110185.P1885019757601274551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A110185.P1885019757601274551

namespace A110185

/-- `A280193(n)²*comp[2*(n+1)]` -/
def P1885019757601274551.Spec : Prop :=
  ∀ n, P1885019757601274551.a n = A110185 n

end A110185

/-! ## A110185.P78304909218453841

`A004273(n)*A040005(n)`
-/

namespace A110185.P78304909218453841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A040005 n

end

end A110185.P78304909218453841

namespace A110185

/-- `A004273(n)*A040005(n)` -/
def P78304909218453841.Spec : Prop :=
  ∀ n, P78304909218453841.a n = A110185 n

end A110185

/-! ## A110185.P10882174577381815146

`A134451(n)²*A004273(n)`
-/

namespace A110185.P10882174577381815146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n ^ 2 * A004273 n

end

end A110185.P10882174577381815146

namespace A110185

/-- `A134451(n)²*A004273(n)` -/
def P10882174577381815146.Spec : Prop :=
  ∀ n, P10882174577381815146.a n = A110185 n

end A110185

/-! ## A110185.P10742137861379803908

`A134451(n)²*A060747(n)`
-/

namespace A110185.P10742137861379803908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n ^ 2 * A060747 n

end

end A110185.P10742137861379803908

namespace A110185

/-- `A134451(n)²*A060747(n)` -/
def P10742137861379803908.Spec : Prop :=
  ∀ n, P10742137861379803908.a n = A110185 n

end A110185

/-! ## A110185.P16135100788151292024

`A040001(n)*A123168(n+1)`
-/

namespace A110185.P16135100788151292024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A123168 (n + 1)

end

end A110185.P16135100788151292024

namespace A110185

/-- `A040001(n)*A123168(n+1)` -/
def P16135100788151292024.Spec : Prop :=
  ∀ n, P16135100788151292024.a n = A110185 n

end A110185

/-! ## A110185.P5890385500094190146

`A123168(n+1)*A134451(n)`
-/

namespace A110185.P5890385500094190146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123168 (n + 1) * A134451 n

end

end A110185.P5890385500094190146

namespace A110185

/-- `A123168(n+1)*A134451(n)` -/
def P5890385500094190146.Spec : Prop :=
  ∀ n, P5890385500094190146.a n = A110185 n

end A110185

/-! ## A110185.P3301886222964284929

`A004273(n)*A010121(2*n)`
-/

namespace A110185.P3301886222964284929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A010121 (2 * n)

end

end A110185.P3301886222964284929

namespace A110185

/-- `A004273(n)*A010121(2*n)` -/
def P3301886222964284929.Spec : Prop :=
  ∀ n, P3301886222964284929.a n = A110185 n

end A110185

/-! ## A110185.P17785337196693994951

`2/A010685(n)*A130824(n)`
-/

namespace A110185.P17785337196693994951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A010685 n : ℚ) * (A130824 n : ℚ)

end

end A110185.P17785337196693994951

namespace A110185

/-- `2/A010685(n)*A130824(n)` -/
def P17785337196693994951.Spec : Prop :=
  ∀ n, P17785337196693994951.a n = (A110185 n : ℚ)

end A110185

/-! ## A110185.P10354405046364344947

`gcd(A015237(n), A187287(n+1))`
-/

namespace A110185.P10354405046364344947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015237 n) (A187287 (n + 1))

end

end A110185.P10354405046364344947

namespace A110185

/-- `gcd(A015237(n), A187287(n+1))` -/
def P10354405046364344947.Spec : Prop :=
  ∀ n, (P10354405046364344947.a n : ℤ) = A110185 n

end A110185

/-! ## A110185.P12131698655369471402

`(A059841(n)+1)²*A004273(n)`
-/

namespace A110185.P12131698655369471402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) ^ 2 * A004273 n

end

end A110185.P12131698655369471402

namespace A110185

/-- `(A059841(n)+1)²*A004273(n)` -/
def P12131698655369471402.Spec : Prop :=
  ∀ n, P12131698655369471402.a n = A110185 n

end A110185

/-! ## A110185.P4575126028834896344

`(A004277(n)-1)*A134451(n)²`
-/

namespace A110185.P4575126028834896344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - 1) * A134451 n ^ 2

end

end A110185.P4575126028834896344

namespace A110185

/-- `(A004277(n)-1)*A134451(n)²` -/
def P4575126028834896344.Spec : Prop :=
  ∀ n, P4575126028834896344.a n = A110185 n

end A110185

/-! ## A110185.P15140488133015375354

`(A005843(n)-1)*A134451(n)²`
-/

namespace A110185.P15140488133015375354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n - 1) * A134451 n ^ 2

end

end A110185.P15140488133015375354

namespace A110185

/-- `(A005843(n)-1)*A134451(n)²` -/
def P15140488133015375354.Spec : Prop :=
  ∀ n, P15140488133015375354.a n = A110185 n

end A110185

/-! ## A110185.P13163920073231728211

`(2-A000035(n))²*A004273(n)`
-/

namespace A110185.P13163920073231728211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) ^ 2 * A004273 n

end

end A110185.P13163920073231728211

namespace A110185

/-- `(2-A000035(n))²*A004273(n)` -/
def P13163920073231728211.Spec : Prop :=
  ∀ n, P13163920073231728211.a n = A110185 n

end A110185

/-! ## A110185.P61615723900994336

`(A005408(n)-2)*A134451(n)²`
-/

namespace A110185.P61615723900994336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - 2) * A134451 n ^ 2

end

end A110185.P61615723900994336

namespace A110185

/-- `(A005408(n)-2)*A134451(n)²` -/
def P61615723900994336.Spec : Prop :=
  ∀ n, P61615723900994336.a n = A110185 n

end A110185

/-! ## A110185.P6356285861390446039

`2*A195161(n)-A134451(n)²`
-/

namespace A110185.P6356285861390446039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195161 n - A134451 n ^ 2

end

end A110185.P6356285861390446039

namespace A110185

/-- `2*A195161(n)-A134451(n)²` -/
def P6356285861390446039.Spec : Prop :=
  ∀ n, P6356285861390446039.a n = A110185 n

end A110185

/-!
# A110187: 3-almost primes p * q * r relatively prime to p+q+r.

The programs for A110187, the canonical program `A110187.P7748430197088379820` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110187 has offset 1).

The definition of A110187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110187.P7748430197088379820

`record[A082344(A014612(n+2))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110187

/-- `record[A082344(A014612(n+2))]` -/
def P7748430197088379820.Spec : Prop :=
  ∀ n, P7748430197088379820.a n = A110187 (n + 1)

theorem P7748430197088379820.correct : P7748430197088379820.Spec := by
  intro n
  simp only [A110187, Nat.add_sub_cancel]

end A110187

/-! ## A110187.P6777982693717904851

`∩[A014612(n+1), A082300(n+1)]`
-/

namespace A110187.P6777982693717904851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110187.P6777982693717904851

namespace A110187

/-- `∩[A014612(n+1), A082300(n+1)]` -/
def P6777982693717904851.Spec : Prop :=
  ∀ n, (P6777982693717904851.a n : ℤ) = A110187 (n + 1)

end A110187

/-! ## A110187.P18258530036408459483

`∩[A082300(n+1), A217856(n+1)]`
-/

namespace A110187.P18258530036408459483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110187.P18258530036408459483

namespace A110187

/-- `∩[A082300(n+1), A217856(n+1)]` -/
def P18258530036408459483.Spec : Prop :=
  ∀ n, (P18258530036408459483.a n : ℤ) = A110187 (n + 1)

end A110187

/-! ## A110187.P15207171506025697504

`filter[A082300(n+1), A101605(#)]`
-/

namespace A110187.P15207171506025697504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A110187.P15207171506025697504

namespace A110187

/-- `filter[A082300(n+1), A101605(#)]` -/
def P15207171506025697504.Spec : Prop :=
  ∀ n, P15207171506025697504.a n = A110187 (n + 1)

end A110187

/-! ## A110187.P2719680269800170169

`eq[A082299(n+1), A101605(n+1)]+1`
-/

namespace A110187.P2719680269800170169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A110187.P2719680269800170169

namespace A110187

/-- `eq[A082299(n+1), A101605(n+1)]+1` -/
def P2719680269800170169.Spec : Prop :=
  ∀ n, (P2719680269800170169.a n : ℤ) = A110187 (n + 1)

end A110187

/-! ## A110187.P6406618467916553868

`A020725(eq[A082299(n+1), A101605(n+1)])`
-/

namespace A110187.P6406618467916553868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110187.P6406618467916553868

namespace A110187

/-- `A020725(eq[A082299(n+1), A101605(n+1)])` -/
def P6406618467916553868.Spec : Prop :=
  ∀ n, P6406618467916553868.a n = A110187 (n + 1)

end A110187

/-! ## A110187.P2919142588919812610

`A065475(eq[A082299(n+1), A101605(n+1)])`
-/

namespace A110187.P2919142588919812610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110187.P2919142588919812610

namespace A110187

/-- `A065475(eq[A082299(n+1), A101605(n+1)])` -/
def P2919142588919812610.Spec : Prop :=
  ∀ n, P2919142588919812610.a n = A110187 (n + 1)

end A110187

/-! ## A110187.P11952769463300240153

`A020725(eq[A082299(n+1), A101637(2*(n+1))])`
-/

namespace A110187.P11952769463300240153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110187.P11952769463300240153

namespace A110187

/-- `A020725(eq[A082299(n+1), A101637(2*(n+1))])` -/
def P11952769463300240153.Spec : Prop :=
  ∀ n, P11952769463300240153.a n = A110187 (n + 1)

end A110187

/-!
# A110188: 3-almost primes p * q * r not relatively prime to p+q+r.

The programs for A110188, the canonical program `A110188.P16314448030047574102` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110188 has offset 1).

The definition of A110188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110188.P16314448030047574102

`∩[A014612(n+1), A370354(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A110188

/-- `∩[A014612(n+1), A370354(n+1)]` -/
def P16314448030047574102.Spec : Prop :=
  ∀ n, (P16314448030047574102.a n : ℤ) = A110188 (n + 1)

theorem P16314448030047574102.correct : P16314448030047574102.Spec := by
  intro n
  simp only [A110188, Nat.add_sub_cancel]

end A110188

/-! ## A110188.P1061260256154232302

`∩[A298207(n+1), A370354(n+1)]`
-/

namespace A110188.P1061260256154232302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110188.P1061260256154232302

namespace A110188

/-- `∩[A298207(n+1), A370354(n+1)]` -/
def P1061260256154232302.Spec : Prop :=
  ∀ n, (P1061260256154232302.a n : ℤ) = A110188 (n + 1)

end A110188

/-! ## A110188.P2281237962686337095

`filter[A370354(n+1), A101605(#)]`
-/

namespace A110188.P2281237962686337095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A110188.P2281237962686337095

namespace A110188

/-- `filter[A370354(n+1), A101605(#)]` -/
def P2281237962686337095.Spec : Prop :=
  ∀ n, P2281237962686337095.a n = A110188 (n + 1)

end A110188

/-! ## A110188.P17039545418649231385

`lt[1, A082299(n+1)*A101605(n+1)]+1`
-/

namespace A110188.P17039545418649231385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1) * A101605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110188.P17039545418649231385

namespace A110188

/-- `lt[1, A082299(n+1)*A101605(n+1)]+1` -/
def P17039545418649231385.Spec : Prop :=
  ∀ n, (P17039545418649231385.a n : ℤ) = A110188 (n + 1)

end A110188

/-!
# A110190: Number of (1,0)-steps on the lines y=0 and y=1 in all Schroeder paths of length 2n (a Schroeder path of length 2n is a path from (0,0) to (2n,0), consisting of steps U=(1,1), D=(1,-1) and H=(2,0) and never going below the x-axis).

The programs for A110190, there is no canonical definition to state claims against.
-/

/-! ## A110190.P6697669461290794768

`Δ[A106579(A027379(n))]`
-/

namespace A110190.P6697669461290794768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110190.P6697669461290794768

/-! ## A110190.P15367640363616645492

`Δ[A106579(A055998(A028310(n)))]`
-/

namespace A110190.P15367640363616645492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A055998 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110190.P15367640363616645492

/-! ## A110190.P11444692380913847794

`Δ[A106579(A004273(n)+A000124(n))]`
-/

namespace A110190.P11444692380913847794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A004273 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110190.P11444692380913847794

/-! ## A110190.P12428522880468014556

`Δ[A106579(A161680(n)+A008486(n))]`
-/

namespace A110190.P12428522880468014556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A161680 n + A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110190.P12428522880468014556

/-! ## A110190.P2331814661296869900

`Δ[A080247(A133263(n))%A006319(n)]`
-/

namespace A110190.P2331814661296869900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080247 (A133263 n).toNat) (A006319 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110190.P2331814661296869900

/-!
# A110192: Least k > n such that phi(k) = 2*phi(n), where phi is Euler's totient function.

The programs for A110192, there is no canonical definition to state claims against.
-/

/-! ## A110192.P8424590479498574485

`A110179(n+1)+n+1`
-/

namespace A110192.P8424590479498574485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110179 (n + 1) + (n + 1 : ℤ)

end

end A110192.P8424590479498574485

/-! ## A110192.P16116768067355616612

`A020725(A110179(n+1))+n`
-/

namespace A110192.P16116768067355616612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A110179 (n + 1)).toNat + (n : ℤ)

end

end A110192.P16116768067355616612

/-! ## A110192.P14812032256678364973

`A065475(A110179(n+1)+n)`
-/

namespace A110192.P14812032256678364973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A110179 (n + 1) + (n : ℤ)).toNat

end

end A110192.P14812032256678364973

/-! ## A110192.P2067356119367356052

`A114637(A110179(n+1)+n)`
-/

namespace A110192.P2067356119367356052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (A110179 (n + 1) + (n : ℤ)).toNat

end

end A110192.P2067356119367356052

/-!
# A110194: First differences of A110095 (least nonprime sequence whose first differences are nonprime).

The programs for A110194, there is no canonical definition to state claims against.
-/

/-! ## A110194.P4978594180629131377

`Δ[A110095(n+1)]`
-/

namespace A110194.P4978594180629131377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110194.P4978594180629131377

/-! ## A110194.P12708118051518171208

`Δ[record[A110095(A022446(n))]]`
-/

namespace A110194.P12708118051518171208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110194.P12708118051518171208

/-! ## A110194.P4941783722710402031

`Δ[record[A110095(A106466(n))]]`
-/

namespace A110194.P4941783722710402031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110194.P4941783722710402031

/-! ## A110194.P7916848133698165960

`Δ[record[A110095(A117910(n))]]`
-/

namespace A110194.P7916848133698165960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110194.P7916848133698165960

/-! ## A110194.P17256414361033299411

`abs(Δ[A110095(A106466(2*n))])`
-/

namespace A110194.P17256414361033299411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (A106466 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A110194.P17256414361033299411

/-! ## A110194.P4923595093684746725

`A110095(n+2)-A110095(n+1)`
-/

namespace A110194.P4923595093684746725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (n + 2) - A110095 (n + 1)

end

end A110194.P4923595093684746725

/-! ## A110194.P17296161539342016829

`Δ[record[A110095(A112382(n))]]`
-/

namespace A110194.P17296161539342016829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110194.P17296161539342016829

/-!
# A110195: a(n) = 11^((n^2-n)/2).

The programs for A110195, the canonical program `A110195.P17809634770385540874` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110195 has offset 0).

The definition of A110195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110195.P14830613558813325612

`11^((n²-n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110195.P14830613558813325612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A110195.P14830613558813325612

namespace A110195

/-- `11^((n²-n)/2)` -/
def P14830613558813325612.Spec : Prop :=
  ∀ n, P14830613558813325612.a n = (A110195 n : ℝ)

end A110195

/-! ## A110195.P17809634770385540874

`A001020(A161680(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110195

/-- `A001020(A161680(n))` -/
def P17809634770385540874.Spec : Prop :=
  ∀ n, P17809634770385540874.a n = A110195 n

theorem P17809634770385540874.correct : P17809634770385540874.Spec := by
  intro n
  simp only [A110195]

end A110195

/-! ## A110195.P14403200363380149806

`∏[11*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A110195.P14403200363380149806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110195.P14403200363380149806

namespace A110195

/-- `∏[11*a(n-1)]` -/
def P14403200363380149806.Spec : Prop :=
  ∀ n, (P14403200363380149806.a n : ℤ) = A110195 n

end A110195

/-! ## A110195.P14938323341598589621

`11^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A110195.P14938323341598589621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (11 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A110195.P14938323341598589621

namespace A110195

/-- `11^(n-1)*a(n-1)` -/
def P14938323341598589621.Spec : Prop :=
  ∀ n, P14938323341598589621.a n = (A110195 n : ℚ)

end A110195

/-! ## A110195.P6545097310831061476

`A001020(C(n, 2))`
-/

namespace A110195.P6545097310831061476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (Nat.choose n 2)

end

end A110195.P6545097310831061476

namespace A110195

/-- `A001020(C(n, 2))` -/
def P6545097310831061476.Spec : Prop :=
  ∀ n, P6545097310831061476.a n = A110195 n

end A110195

/-!
# A110196: Numbers m such that k = 2m is the least k such that phi(m+k) = 2*phi(k).

The programs for A110196, there is no canonical definition to state claims against.
-/

/-! ## A110196.P296347378364150229

`eq[2*n, A050473(n^(n%2))]`
-/

namespace A110196.P296347378364150229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050473 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110196.P296347378364150229

/-! ## A110196.P5051129008252473973

`eq[2*n, A050473(A028310(n))]`
-/

namespace A110196.P5051129008252473973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050473 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110196.P5051129008252473973

/-! ## A110196.P10556892485197250742

`eq[2*n, A050473(A257088(n))]`
-/

namespace A110196.P10556892485197250742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050473 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110196.P10556892485197250742

/-! ## A110196.P2162701578685114048

`eq[n, A064680(A050473(A257088(n)))]`
-/

namespace A110196.P2162701578685114048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A050473 (A257088 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110196.P2162701578685114048

/-! ## A110196.P16690457538580018166

`eq[1, A004277(n)/A050473(A028310(n))]`
-/

namespace A110196.P16690457538580018166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A050473 (A028310 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A110196.P16690457538580018166

/-!
# A110197: Number triangle of sums of squared binomial coefficients.

The programs for A110197, there is no canonical definition to state claims against.
-/

/-! ## A110197.P17209167128432893391

`A123349(comp[∑[n]])`
-/

namespace A110197.P17209167128432893391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110197.P17209167128432893391

/-! ## A110197.P6990732841748916659

`or(char[2], A123349(A014132(n+1)))`
-/

namespace A110197.P6990732841748916659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A123349 (A014132 (n + 1)).toNat)

end

end A110197.P6990732841748916659

/-! ## A110197.P17215939227229681045

`gcd(A000038(n), A123349(A014132(n+1)))`
-/

namespace A110197.P17215939227229681045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123349 (A014132 (n + 1)).toNat)

end

end A110197.P17215939227229681045

/-! ## A110197.P14730501520388303791

`lcm(A123349(A014132(n+1)), A158388(n))`
-/

namespace A110197.P14730501520388303791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123349 (A014132 (n + 1)).toNat) (A158388 n)

end

end A110197.P14730501520388303791

/-! ## A110197.P16708083031117056519

`A123349(A014132(n+1))/A007318(C(2, n))`
-/

namespace A110197.P16708083031117056519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123349 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110197.P16708083031117056519

/-! ## A110197.P12719167645620570944

`A123349(A014132(n+1))+C(n, A000040(n+1))`
-/

namespace A110197.P12719167645620570944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123349 (A014132 (n + 1)).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A110197.P12719167645620570944

/-! ## A110197.P956935323317734722

`A001222(A007918(n))*A123349(A014132(n+1))`
-/

namespace A110197.P956935323317734722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A123349 (A014132 (n + 1)).toNat

end

end A110197.P956935323317734722

/-! ## A110197.P6392903434434030868

`A007318(∑[n])*A123349(A014132(n+1))`
-/

namespace A110197.P6392903434434030868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A123349 (A014132 (n + 1)).toNat

end

end A110197.P6392903434434030868

/-! ## A110197.P17582549218924589043

`A123349(A014132(n+1))^A007318(∑[n+1])`
-/

namespace A110197.P17582549218924589043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123349 (A014132 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A110197.P17582549218924589043

/-!
# A110198: Antidiagonal sums of number triangle A110197.

The programs for A110198, there is no canonical definition to state claims against.
-/

/-! ## A110198.P5732917178838097137

`∑[A051286(n)]`
-/

namespace A110198.P5732917178838097137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110198.P5732917178838097137

/-! ## A110198.P15677740008752587123

`∑[A077419(2*n)]`
-/

namespace A110198.P15677740008752587123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110198.P15677740008752587123

/-! ## A110198.P99858566726134901

`A081207(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A110198.P99858566726134901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A081207 n + a (n - 2)

end

end A110198.P99858566726134901

/-! ## A110198.P13020287072656814061

`A078678(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A110198.P13020287072656814061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A078678 n + a (n - 3)

end

end A110198.P13020287072656814061

/-! ## A110198.P8242713325450865833

`∑[A051292(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A110198.P8242713325450865833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A051292 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110198.P8242713325450865833

/-! ## A110198.P8876962637216463983

`∑[A190166(n+1)]-A190166(n)`
-/

namespace A110198.P8876962637216463983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A190166 n

end

end A110198.P8876962637216463983

/-! ## A110198.P11493362675941211157

`A167639(n+1)+∑[A167639(n+2)]`
-/

namespace A110198.P11493362675941211157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110198.P11493362675941211157

/-! ## A110198.P13009357718027709764

`A051286(A002264(3*n))+a(n-1)` with `a(0)=1`
-/

namespace A110198.P13009357718027709764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051286 (A002264 (3 * n)).toNat + a (n - 1)

end

end A110198.P13009357718027709764

/-! ## A110198.P5056655353373895507

`A201631(n+1)+A203611(n)-A051291(n)`
-/

namespace A110198.P5056655353373895507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) + (A203611 n - A051291 n)

end

end A110198.P5056655353373895507

/-! ## A110198.P18067148127703785603

`A201631(n+2)-A091964(n+1)`
-/

namespace A110198.P18067148127703785603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 2) - A091964 (n + 1)

end

end A110198.P18067148127703785603

/-!
# A110199: a(n) = Sum_{k=0..floor(n/2)} Catalan(k).

The programs for A110199, the canonical program `A110199.P14169950119371139962` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110199 has offset 0).

The definition of A110199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110199.P5440388999893163932

`∑[A126120(n)]`
-/

namespace A110199.P5440388999893163932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P5440388999893163932

namespace A110199

/-- `∑[A126120(n)]` -/
def P5440388999893163932.Spec : Prop :=
  ∀ n, P5440388999893163932.a n = A110199 n

end A110199

/-! ## A110199.P14169950119371139962

`A014137(floor(n/2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110199

/-- `A014137(floor(n/2))` -/
def P14169950119371139962.Spec : Prop :=
  ∀ n, P14169950119371139962.a n = A110199 n

theorem P14169950119371139962.correct : P14169950119371139962.Spec := by
  intro n
  simp only [A110199]

end A110199

/-! ## A110199.P12322205560724406944

`∑[A097331(n+1)]`
-/

namespace A110199.P12322205560724406944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P12322205560724406944

namespace A110199

/-- `∑[A097331(n+1)]` -/
def P12322205560724406944.Spec : Prop :=
  ∀ n, P12322205560724406944.a n = A110199 n

end A110199

/-! ## A110199.P11251836081372739960

`∑[A329696(n)]-n`
-/

namespace A110199.P11251836081372739960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A110199.P11251836081372739960

namespace A110199

/-- `∑[A329696(n)]-n` -/
def P11251836081372739960.Spec : Prop :=
  ∀ n, P11251836081372739960.a n = A110199 n

end A110199

/-! ## A110199.P7816254944196670298

`∑[abs(Δ[A166588(n)])]`
-/

namespace A110199.P7816254944196670298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P7816254944196670298

namespace A110199

/-- `∑[abs(Δ[A166588(n)])]` -/
def P7816254944196670298.Spec : Prop :=
  ∀ n, P7816254944196670298.a n = A110199 n

end A110199

/-! ## A110199.P5707195051845020986

`A166588(n+1)-1`
-/

namespace A110199.P5707195051845020986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (n + 1) - 1

end

end A110199.P5707195051845020986

namespace A110199

/-- `A166588(n+1)-1` -/
def P5707195051845020986.Spec : Prop :=
  ∀ n, P5707195051845020986.a n = A110199 n

end A110199

/-! ## A110199.P3417223270395558544

`A155051(or(1, n))/2`
-/

namespace A110199.P3417223270395558544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155051 (Nat.lor 1 n) : ℚ) / 2

end

end A110199.P3417223270395558544

namespace A110199

/-- `A155051(or(1, n))/2` -/
def P3417223270395558544.Spec : Prop :=
  ∀ n, P3417223270395558544.a n = (A110199 n : ℚ)

end A110199

/-! ## A110199.P12150618132019237565

`∑[abs(A090192(n+1))]`
-/

namespace A110199.P12150618132019237565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P12150618132019237565

namespace A110199

/-- `∑[abs(A090192(n+1))]` -/
def P12150618132019237565.Spec : Prop :=
  ∀ n, P12150618132019237565.a n = A110199 n

end A110199

/-! ## A110199.P15154764882691042944

`∑[abs(A105523(n+1))]`
-/

namespace A110199.P15154764882691042944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P15154764882691042944

namespace A110199

/-- `∑[abs(A105523(n+1))]` -/
def P15154764882691042944.Spec : Prop :=
  ∀ n, P15154764882691042944.a n = A110199 n

end A110199

/-! ## A110199.P3895721219126353355

`∑[abs(A210628(n+1))]`
-/

namespace A110199.P3895721219126353355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P3895721219126353355

namespace A110199

/-- `∑[abs(A210628(n+1))]` -/
def P3895721219126353355.Spec : Prop :=
  ∀ n, P3895721219126353355.a n = A110199 n

end A110199

/-! ## A110199.P17803654988247714098

`A014138(floor(n/2))+1`
-/

namespace A110199.P17803654988247714098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A110199.P17803654988247714098

namespace A110199

/-- `A014138(floor(n/2))+1` -/
def P17803654988247714098.Spec : Prop :=
  ∀ n, P17803654988247714098.a n = A110199 n

end A110199

/-! ## A110199.P15739852909905466814

`A155051(n)-a(n-1)` with `a(0)=1`
-/

namespace A110199.P15739852909905466814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155051 n - a (n - 1)

end

end A110199.P15739852909905466814

namespace A110199

/-- `A155051(n)-a(n-1)` -/
def P15739852909905466814.Spec : Prop :=
  ∀ n, P15739852909905466814.a n = A110199 n

end A110199

/-! ## A110199.P7638431509852182108

`∑[abs(A182492(2*n+3))]`
-/

namespace A110199.P7638431509852182108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (2 * n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P7638431509852182108

namespace A110199

/-- `∑[abs(A182492(2*n+3))]` -/
def P7638431509852182108.Spec : Prop :=
  ∀ n, P7638431509852182108.a n = A110199 n

end A110199

/-! ## A110199.P511018807695047501

`a(n-2)+A000108(floor(n/2))` with `a(0)=1, a(1)=1`
-/

namespace A110199.P511018807695047501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A000108 ⌊(n : ℚ) / 2⌋.toNat

end

end A110199.P511018807695047501

namespace A110199

/-- `a(n-2)+A000108(floor(n/2))` -/
def P511018807695047501.Spec : Prop :=
  ∀ n, P511018807695047501.a n = A110199 n

end A110199

/-! ## A110199.P11300518242246023405

`∑[(n+1)%2*A000108(floor((n+1)/2))]`
-/

namespace A110199.P11300518242246023405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P11300518242246023405

namespace A110199

/-- `∑[(n+1)%2*A000108(floor((n+1)/2))]` -/
def P11300518242246023405.Spec : Prop :=
  ∀ n, P11300518242246023405.a n = A110199 n

end A110199

/-! ## A110199.P12058536184642852207

`A155587(A008621(2*n))-1`
-/

namespace A110199.P12058536184642852207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A008621 (2 * n)).toNat - 1

end

end A110199.P12058536184642852207

namespace A110199

/-- `A155587(A008621(2*n))-1` -/
def P12058536184642852207.Spec : Prop :=
  ∀ n, P12058536184642852207.a n = A110199 n

end A110199

/-! ## A110199.P1296858001624960105

`∑[A001405(n)-A037952(n)]`
-/

namespace A110199.P1296858001624960105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P1296858001624960105

namespace A110199

/-- `∑[A001405(n)-A037952(n)]` -/
def P1296858001624960105.Spec : Prop :=
  ∀ n, P1296858001624960105.a n = A110199 n

end A110199

/-! ## A110199.P10255676975204254312

`A072100(n+1)-A037952(n)`
-/

namespace A110199.P10255676975204254312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) - A037952 n

end

end A110199.P10255676975204254312

namespace A110199

/-- `A072100(n+1)-A037952(n)` -/
def P10255676975204254312.Spec : Prop :=
  ∀ n, P10255676975204254312.a n = A110199 n

end A110199

/-! ## A110199.P17595607750723869910

`∑[A138364(n+1)/(n+1)]`
-/

namespace A110199.P17595607750723869910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138364 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110199.P17595607750723869910

namespace A110199

/-- `∑[A138364(n+1)/(n+1)]` -/
def P17595607750723869910.Spec : Prop :=
  ∀ n, P17595607750723869910.a n = (A110199 n : ℚ)

end A110199

/-! ## A110199.P11906796024007858433

`A036256(n)-A014495(n+1)`
-/

namespace A110199.P11906796024007858433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - A014495 (n + 1)

end

end A110199.P11906796024007858433

namespace A110199

/-- `A036256(n)-A014495(n+1)` -/
def P11906796024007858433.Spec : Prop :=
  ∀ n, P11906796024007858433.a n = A110199 n

end A110199

