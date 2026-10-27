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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A137305: Write n in base 3, change twos in ones and ones in twos, reverse.

The programs for A137305, there is no canonical definition to state claims against.
-/

/-! ## A137305.P1819067796112852020

`A004488(A030102(n))`
-/

namespace A137305.P1819067796112852020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A030102 n).toNat

end

end A137305.P1819067796112852020

/-! ## A137305.P6321195933057032449

`A327252(n)+A030102(n)`
-/

namespace A137305.P6321195933057032449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n + A030102 n

end

end A137305.P6321195933057032449

/-! ## A137305.P14691064869141485487

`A004488(n-A055947(n))`
-/

namespace A137305.P14691064869141485487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 ((n : ℤ) - A055947 n).toNat

end

end A137305.P14691064869141485487

/-! ## A137305.P8694931074812356125

`A004488(A055946(n)-n)`
-/

namespace A137305.P8694931074812356125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A055946 n - (n : ℤ)).toNat

end

end A137305.P8694931074812356125

/-! ## A137305.P15691197450984773340

`A327252(n)+n-A055947(n)`
-/

namespace A137305.P15691197450984773340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n + ((n : ℤ) - A055947 n)

end

end A137305.P15691197450984773340

/-! ## A137305.P4946537671822252850

`A117966(n)+n-A055947(A117966(n)+n)`
-/

namespace A137305.P4946537671822252850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n + (n : ℤ) - A055947 (A117966 n + (n : ℤ)).toNat

end

end A137305.P4946537671822252850

/-! ## A137305.P16560543562289396393

`A327252(n)+A055947(n)*A253206(A006530(n+1))+n`
-/

namespace A137305.P16560543562289396393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n + (A055947 n * A253206 (A006530 (n + 1)).toNat + (n : ℤ))

end

end A137305.P16560543562289396393

/-! ## A137305.P7831978416378821412

`A030102(A117966(n)+n)`
-/

namespace A137305.P7831978416378821412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A117966 n + (n : ℤ)).toNat

end

end A137305.P7831978416378821412

/-! ## A137305.P6586868661507751378

`A030102(A134028(n)+A274107(n)+n)`
-/

namespace A137305.P6586868661507751378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A134028 n + (A274107 n + (n : ℤ))).toNat

end

end A137305.P6586868661507751378

/-! ## A137305.P18316761221031484895

`A030102(A059249(2*(n+1)+n))`
-/

namespace A137305.P18316761221031484895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A059249 (2 * (n + 1) + n)).toNat

end

end A137305.P18316761221031484895

/-! ## A137305.P9466008448733461877

`A030102(A253586(∑[n]))`
-/

namespace A137305.P9466008448733461877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137305.P9466008448733461877

/-! ## A137305.P8865292119966433081

`A030102(A253587(∑[n]))`
-/

namespace A137305.P8865292119966433081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A253587 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137305.P8865292119966433081

/-! ## A137305.P16229296571344053533

`A030102(A325820(∑[n+3]))`
-/

namespace A137305.P16229296571344053533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A325820 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137305.P16229296571344053533

/-!
# A137306: Related to A018226 and A018227: due to the stable element 118 (last term in A018227) this is submitted as a suggested new observed list with 459 as a probable next new atomic weight stable island.

The programs for A137306, there is no canonical definition to state claims against.
-/

/-! ## A137306.P2784041745330310296

`xor(A000045(A000389(n)), A018226(n+1))`
-/

namespace A137306.P2784041745330310296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (A000389 n).toNat) (A018226 (n + 1))

end

end A137306.P2784041745330310296

/-! ## A137306.P3277620741823692385

`xor(A018226(n+1), A241708(A028310(n)))`
-/

namespace A137306.P3277620741823692385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018226 (n + 1)) (A241708 (A028310 n).toNat)

end

end A137306.P3277620741823692385

/-! ## A137306.P18360030335501024900

`A309214(A000579(n+1))+A018226(n+1)`
-/

namespace A137306.P18360030335501024900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A000579 (n + 1)).toNat + A018226 (n + 1)

end

end A137306.P18360030335501024900

/-!
# A137307: Triangle reads by rows: T(n,k) = A053120(2*n-1, k) + A053120(2*n, k) for 0 <= k < 2*n.

The programs for A137307, there is no canonical definition to state claims against.
-/

/-! ## A137307.P15919887727141395701

`A136523(A161983(log2(A011782(n))))`
-/

namespace A137307.P15919887727141395701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 (A161983 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat).toNat

end

end A137307.P15919887727141395701

/-!
# A137308: Number of dimer coverings on n X n square if n is even; number of dimer arrangements with exactly one monomer if n is odd.

The programs for A137308, there is no canonical definition to state claims against.
-/

/-! ## A137308.P15225152306537711842

`A242861(∑[A004526(n²)]+n)`
-/

namespace A137308.P15225152306537711842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A137308.P15225152306537711842

/-! ## A137308.P18171183981477650358

`A242861(A004006(n)+A002620(n))`
-/

namespace A137308.P18171183981477650358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (A004006 n + A002620 n).toNat

end

end A137308.P18171183981477650358

/-! ## A137308.P17262878476616363781

`A242861(A004006(n)+∑[A004526(n)])`
-/

namespace A137308.P17262878476616363781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (A004006 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137308.P17262878476616363781

/-! ## A137308.P8821578642280903505

`A242861(eq[1, A242861(n+1)])`
-/

namespace A137308.P8821578642280903505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137308.P8821578642280903505

/-! ## A137308.P12255814725603089789

`A242861(lt[A242861(n+1), 2])`
-/

namespace A137308.P12255814725603089789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242861 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A137308.P12255814725603089789

/-!
# A137310: Numbers k such that a type-4 Gaussian normal basis over GF(2^k) exists.

The programs for A137310, there is no canonical definition to state claims against.
-/

/-! ## A137310.P9879440202054937984

`eq[n, A003560(n)]`
-/

namespace A137310.P9879440202054937984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137310.P9879440202054937984

/-! ## A137310.P16295550299106547180

`record[A385230(n+1)]`
-/

namespace A137310.P16295550299106547180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137310.P16295550299106547180

/-! ## A137310.P18285925518781424154

`record[A240659(n+3)]`
-/

namespace A137310.P18285925518781424154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240659 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137310.P18285925518781424154

/-! ## A137310.P10740656563379244206

`A163777(n+1)/2`
-/

namespace A137310.P10740656563379244206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163777 (n + 1) : ℚ) / 2

end

end A137310.P10740656563379244206

/-! ## A137310.P3001092689310826021

`eq[1, A006694(2*n)]`
-/

namespace A137310.P3001092689310826021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137310.P3001092689310826021

/-! ## A137310.P4093814709687018905

`eq[2, A081844(2*n)]`
-/

namespace A137310.P4093814709687018905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137310.P4093814709687018905

/-! ## A137310.P9559302109290838446

`eq[2*n, A003573(n)]`
-/

namespace A137310.P9559302109290838446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137310.P9559302109290838446

/-! ## A137310.P1812433875050252112

`eq[2*n, A019567(n)]`
-/

namespace A137310.P1812433875050252112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137310.P1812433875050252112

/-! ## A137310.P3872444712697131088

`eq[n, A302141(2*n)]`
-/

namespace A137310.P3872444712697131088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137310.P3872444712697131088

/-! ## A137310.P17672771979223744933

`floor(A213050(n+1)/4)`
-/

namespace A137310.P17672771979223744933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213050 (n + 1) : ℚ) / 4⌋

end

end A137310.P17672771979223744933

/-!
# A137311: Numbers k such that a type-5 Gaussian normal basis over GF(2^k) exists.

The programs for A137311, there is no canonical definition to state claims against.
-/

/-! ## A137311.P8548362217864230337

`A002266(A307628(n+1)^A196222(n))`
-/

namespace A137311.P8548362217864230337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway ((A307628 (n + 1) : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A137311.P8548362217864230337

/-! ## A137311.P16756017816311643297

`A002266(C(A307628(n+1), A196222(n)))`
-/

namespace A137311.P16756017816311643297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Nat.choose (A307628 (n + 1)).toNat (A196222 n).toNat)

end

end A137311.P16756017816311643297

/-! ## A137311.P4477274167992324084

`A002266(A196222(n)²*A307628(n+1))`
-/

namespace A137311.P4477274167992324084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A196222 n ^ 2 * A307628 (n + 1)).toNat

end

end A137311.P4477274167992324084

/-! ## A137311.P14711380690040372652

`A002266(A307628(n+1)^(A059995(n)+1))`
-/

namespace A137311.P14711380690040372652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway ((A307628 (n + 1) : ℚ) ^ (A059995 n + 1 : ℤ))).toNat

end

end A137311.P14711380690040372652

/-! ## A137311.P12945051796512836029

`A002266(A196222(n)*A307628(n+1)*A196222(n))`
-/

namespace A137311.P12945051796512836029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A196222 n * A307628 (n + 1) * A196222 n).toNat

end

end A137311.P12945051796512836029

/-!
# A137312: Coefficients of generalized factorial polynomials p(x, n) = (x/a - (n-1))*p(x, n-1) with p(x, 0) = 1, p(x, 1) = x/a and a = 1/2. Triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A137312, there is no canonical definition to state claims against.
-/

/-! ## A137312.P6717721872854176780

`A137320(n)/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A137312.P6717721872854176780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137320 n : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A137312.P6717721872854176780

/-! ## A137312.P5102670778036690329

`2^(n-C(∑[char[∑[n]]], 2))*A048994(n)`
-/

namespace A137312.P5102670778036690329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A048994 n : ℚ)

end

end A137312.P5102670778036690329

/-! ## A137312.P14069131433103763154

`2^(n-C(∑[char[∑[n]]], 2))*A054654(∑[2*n]%comp[∑[n]])`
-/

namespace A137312.P14069131433103763154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A054654 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n) : ℚ)

end

end A137312.P14069131433103763154

/-! ## A137312.P13932405016412262245

`A048994(n)*A059268(n)`
-/

namespace A137312.P13932405016412262245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A059268 n

end

end A137312.P13932405016412262245

/-! ## A137312.P13555769701713711586

`A097807(n)*A137320(n)`
-/

namespace A137312.P13555769701713711586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A137320 n

end

end A137312.P13555769701713711586

/-! ## A137312.P8073666147606441701

`2^A002262(n)*A048994(n)`
-/

namespace A137312.P8073666147606441701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A048994 n : ℚ)

end

end A137312.P8073666147606441701

/-! ## A137312.P15821498064564874562

`2^A025668(n+1)*A048994(n)`
-/

namespace A137312.P15821498064564874562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025668 (n + 1) : ℤ) * (A048994 n : ℚ)

end

end A137312.P15821498064564874562

/-! ## A137312.P6728101863275565429

`2^A025690(n+1)*A048994(n)`
-/

namespace A137312.P6728101863275565429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025690 (n + 1) : ℤ) * (A048994 n : ℚ)

end

end A137312.P6728101863275565429

/-! ## A137312.P360327878430791549

`2^(A002260(n+1)-1)*A048994(n)`
-/

namespace A137312.P360327878430791549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ) * (A048994 n : ℚ)

end

end A137312.P360327878430791549

/-! ## A137312.P18231819468091688271

`A013609(n)/A007318(n)*A048994(n)`
-/

namespace A137312.P18231819468091688271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A048994 n : ℚ)

end

end A137312.P18231819468091688271

/-!
# A137313: Numbers k such that a type-6 Gaussian normal basis over GF(2^k) exists.

The programs for A137313, there is no canonical definition to state claims against.
-/

/-! ## A137313.P9882273941471181567

`eq[2*n, A053451(9*n+1)]`
-/

namespace A137313.P9882273941471181567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137313.P9882273941471181567

/-! ## A137313.P10124925906975664174

`eq[2*n, lcm(2, A053451(3*n))]`
-/

namespace A137313.P10124925906975664174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053451 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137313.P10124925906975664174

/-! ## A137313.P14729456716541032921

`eq[n+1, A003570(3*(n+1))]+1`
-/

namespace A137313.P14729456716541032921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003570 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137313.P14729456716541032921

/-! ## A137313.P13075894297182584366

`eq[n, A003570(A008486(n))]`
-/

namespace A137313.P13075894297182584366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003570 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137313.P13075894297182584366

/-! ## A137313.P2313386009594538551

`record[gcd(A003570(n), A301686(n))]`
-/

namespace A137313.P2313386009594538551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003570 n) (A301686 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137313.P2313386009594538551

/-! ## A137313.P7868851279914045557

`eq[n, A051176(A003558(3*n))]`
-/

namespace A137313.P7868851279914045557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A003558 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137313.P7868851279914045557

/-! ## A137313.P3739674933184943372

`eq[n, A051176(A053447(3*n))]`
-/

namespace A137313.P3739674933184943372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A053447 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137313.P3739674933184943372

/-! ## A137313.P7277999304810867171

`eq[A053451(9*n+1), A005843(n)]`
-/

namespace A137313.P7277999304810867171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (9 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137313.P7277999304810867171

/-! ## A137313.P7742729035705240104

`eq[lcm(2, A053451(3*n)), A005843(n)]`
-/

namespace A137313.P7742729035705240104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053451 (3 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137313.P7742729035705240104

/-!
# A137314: Numbers k such that a type-7 Gaussian normal basis over GF(2^k) exists.

The programs for A137314, there is no canonical definition to state claims against.
-/

/-! ## A137314.P859330359551174008

`A233583(A323576(n+1))/7`
-/

namespace A137314.P859330359551174008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (A323576 (n + 1)).toNat : ℚ) / 7

end

end A137314.P859330359551174008

/-! ## A137314.P17494233715023929904

`eq[A144703(A300382(n+1)), A351307(n+1)]`
-/

namespace A137314.P17494233715023929904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144703 (A300382 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137314.P17494233715023929904

/-!
# A137315: a(n) is the least number m such that any finite group of order at least m has at least n automorphisms.

The programs for A137315, there is no canonical definition to state claims against.
-/

/-! ## A137315.P9672853930502930103

`A139795(A233279(n)+1)`
-/

namespace A137315.P9672853930502930103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (A233279 n + 1).toNat

end

end A137315.P9672853930502930103

/-! ## A137315.P16660099199208125576

`A139795(A006466(n)+n)`
-/

namespace A137315.P16660099199208125576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (A006466 n + (n : ℤ)).toNat

end

end A137315.P16660099199208125576

/-! ## A137315.P9168492808112436229

`A139795(A367905(n)+n)`
-/

namespace A137315.P9168492808112436229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (A367905 n + (n : ℤ)).toNat

end

end A137315.P9168492808112436229

/-! ## A137315.P15672027986628242716

`A139795(n+1)%A001960(n)`
-/

namespace A137315.P15672027986628242716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139795 (n + 1)) (A001960 n)

end

end A137315.P15672027986628242716

/-!
# A137317: Array T(n,m) = 1 + (n+m-2) mod 26, 1 <= n,m <= 26, read by rows or columns.

The programs for A137317, there is no canonical definition to state claims against.
-/

/-! ## A137317.P1825521077908251942

`∑[1-char[26]*A144341(n+1)]`
-/

namespace A137317.P1825521077908251942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A144341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137317.P1825521077908251942

/-! ## A137317.P6928984405876157739

`(a(n-1)+1)%A165826(A016754(n))` with `a(0)=1`
-/

namespace A137317.P6928984405876157739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A165826 (A016754 n).toNat)

end

end A137317.P6928984405876157739

/-! ## A137317.P18312985748599093591

`∑[A177121(A080697(n+1))]`
-/

namespace A137317.P18312985748599093591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177121 (A080697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137317.P18312985748599093591

/-! ## A137317.P11758256326500570672

`∑[A378066(A000013((n+1)/∏{p}[n+1, #]))]`
-/

namespace A137317.P11758256326500570672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378066 (A000013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137317.P11758256326500570672

/-!
# A137319: Start with the set of natural numbers. Add 1 to every 2nd term, 2 to every 3rd term, 3 to every 4th term, etc.

The programs for A137319, the canonical program `A137319.P10681023325901659618` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137319 has offset 1).

The definition of A137319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137319.P10681023325901659618

`n+1+A065608(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137319

/-- `n+1+A065608(n+1)` -/
def P10681023325901659618.Spec : Prop :=
  ∀ n, P10681023325901659618.a n = A137319 (n + 1)

theorem P10681023325901659618.correct : P10681023325901659618.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel]

end A137319

/-! ## A137319.P11983045380519739350

`A000203(n+1)-A000005(n+1)+n+1`
-/

namespace A137319.P11983045380519739350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1) + (n + 1 : ℤ)

end

end A137319.P11983045380519739350

namespace A137319

/-- `A000203(n+1)-A000005(n+1)+n+1` -/
def P11983045380519739350.Spec : Prop :=
  ∀ n, P11983045380519739350.a n = A137319 (n + 1)

theorem P11983045380519739350.correct : P11983045380519739350.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P11983045380519739350.a, A137319.P10681023325901659618.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065608, A065608.P12445239359989980431.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P17562083404682474157

`∑{d}[n+1, #-1]+1+n`
-/

namespace A137319.P17562083404682474157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) + 1 + (n : ℤ)

end

end A137319.P17562083404682474157

namespace A137319

/-- `∑{d}[n+1, #-1]+1+n` -/
def P17562083404682474157.Spec : Prop :=
  ∀ n, P17562083404682474157.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P1408436090309211434

`A158901(n+1)+n`
-/

namespace A137319.P1408436090309211434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) + (n : ℤ)

end

end A137319.P1408436090309211434

namespace A137319

/-- `A158901(n+1)+n` -/
def P1408436090309211434.Spec : Prop :=
  ∀ n, P1408436090309211434.a n = A137319 (n + 1)

theorem P1408436090309211434.correct : P1408436090309211434.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P1408436090309211434.a, A137319.P10681023325901659618.a, A065608, A065608.P12445239359989980431.a, A158901, A158901.P2411227311583190290.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P12130879906623914679

`A152770(n+1)+Δ[n²]`
-/

namespace A137319.P12130879906623914679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A137319.P12130879906623914679

namespace A137319

/-- `A152770(n+1)+Δ[n²]` -/
def P12130879906623914679.Spec : Prop :=
  ∀ n, P12130879906623914679.a n = A137319 (n + 1)

theorem P12130879906623914679.correct : P12130879906623914679.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P12130879906623914679.f1, A137319.P12130879906623914679.a, A137319.P10681023325901659618.a, A065608, A065608.P12445239359989980431.a, A152770, A152770.P4996422170920482869.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062249, A062249.P5473932307129171226.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P15723146300657251479

`A049820(n+1)+∑{d}[n+1, #]`
-/

namespace A137319.P15723146300657251479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A137319.P15723146300657251479

namespace A137319

/-- `A049820(n+1)+∑{d}[n+1, #]` -/
def P15723146300657251479.Spec : Prop :=
  ∀ n, P15723146300657251479.a n = A137319 (n + 1)

theorem P15723146300657251479.correct : P15723146300657251479.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P15723146300657251479.f1, A137319.P15723146300657251479.a, A137319.P10681023325901659618.a, A049820, A049820.P9428372222244335888.a, A065608, A065608.P12445239359989980431.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P1014129040483460118

`∑{d}[n+1, A000010(#)-1+#]`
-/

namespace A137319.P1014129040483460118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1 + (d : ℤ))

end

end A137319.P1014129040483460118

namespace A137319

/-- `∑{d}[n+1, A000010(#)-1+#]` -/
def P1014129040483460118.Spec : Prop :=
  ∀ n, P1014129040483460118.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P6381670393592585317

`A330866(n+1)/(n+1)+n+1`
-/

namespace A137319.P6381670393592585317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330866 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A137319.P6381670393592585317

namespace A137319

/-- `A330866(n+1)/(n+1)+n+1` -/
def P6381670393592585317.Spec : Prop :=
  ∀ n, P6381670393592585317.a n = (A137319 (n + 1) : ℚ)

theorem P6381670393592585317.correct : P6381670393592585317.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P6381670393592585317.a, A137319.P10681023325901659618.a, A065608, A065608.P12445239359989980431.a, A330866, A330866.P8751946144507611148.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P11773441929006798894

`A016789(n)-A152864(n+1)`
-/

namespace A137319.P11773441929006798894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A152864 (n + 1)

end

end A137319.P11773441929006798894

namespace A137319

/-- `A016789(n)-A152864(n+1)` -/
def P11773441929006798894.Spec : Prop :=
  ∀ n, P11773441929006798894.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P13847962271862501505

`A049820(n+1)+Δ[A160664(n)]`
-/

namespace A137319.P13847962271862501505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (f1 (n + 1) - f1 n)

end

end A137319.P13847962271862501505

namespace A137319

/-- `A049820(n+1)+Δ[A160664(n)]` -/
def P13847962271862501505.Spec : Prop :=
  ∀ n, P13847962271862501505.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P7897046452572189173

`A155085(n+1)-Δ[A006218(n)]`
-/

namespace A137319.P7897046452572189173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (f1 (n + 1) - f1 n)

end

end A137319.P7897046452572189173

namespace A137319

/-- `A155085(n+1)-Δ[A006218(n)]` -/
def P7897046452572189173.Spec : Prop :=
  ∀ n, P7897046452572189173.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P7213620907259464006

`A049820(n+1)+A000203(n+1)`
-/

namespace A137319.P7213620907259464006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A000203 (n + 1)

end

end A137319.P7213620907259464006

namespace A137319

/-- `A049820(n+1)+A000203(n+1)` -/
def P7213620907259464006.Spec : Prop :=
  ∀ n, P7213620907259464006.a n = A137319 (n + 1)

theorem P7213620907259464006.correct : P7213620907259464006.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P7213620907259464006.a, A137319.P10681023325901659618.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A049820, A049820.P9428372222244335888.a, A065608, A065608.P12445239359989980431.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P619889223477106403

`A121048(n+1)+A046520(n+1)`
-/

namespace A137319.P619889223477106403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + A046520 (n + 1)

end

end A137319.P619889223477106403

namespace A137319

/-- `A121048(n+1)+A046520(n+1)` -/
def P619889223477106403.Spec : Prop :=
  ∀ n, P619889223477106403.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P3528604628432819348

`A255385(n+1)+A051953(n+1)`
-/

namespace A137319.P3528604628432819348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) + A051953 (n + 1)

end

end A137319.P3528604628432819348

namespace A137319

/-- `A255385(n+1)+A051953(n+1)` -/
def P3528604628432819348.Spec : Prop :=
  ∀ n, P3528604628432819348.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P16938586281555894686

`A155085(n+1)-A000005(n+1)`
-/

namespace A137319.P16938586281555894686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A000005 (n + 1)

end

end A137319.P16938586281555894686

namespace A137319

/-- `A155085(n+1)-A000005(n+1)` -/
def P16938586281555894686.Spec : Prop :=
  ∀ n, P16938586281555894686.a n = A137319 (n + 1)

theorem P16938586281555894686.correct : P16938586281555894686.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P16938586281555894686.a, A137319.P10681023325901659618.a, A000005, A000005.P16091521709108585461.a, A065608, A065608.P12445239359989980431.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P17443390368889344305

`A054519(n)-A098798(n+1)+n`
-/

namespace A137319.P17443390368889344305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A098798 (n + 1) + (n : ℤ)

end

end A137319.P17443390368889344305

namespace A137319

/-- `A054519(n)-A098798(n+1)+n` -/
def P17443390368889344305.Spec : Prop :=
  ∀ n, P17443390368889344305.a n = A137319 (n + 1)

end A137319

/-! ## A137319.P2599813302832214305

`A000203(n+1)+A059292(n+1)-2`
-/

namespace A137319.P2599813302832214305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A059292 (n + 1) - 2)

end

end A137319.P2599813302832214305

namespace A137319

/-- `A000203(n+1)+A059292(n+1)-2` -/
def P2599813302832214305.Spec : Prop :=
  ∀ n, P2599813302832214305.a n = A137319 (n + 1)

theorem P2599813302832214305.correct : P2599813302832214305.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P2599813302832214305.a, A137319.P10681023325901659618.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059292, A059292.P13391037705740320393.a, A065608, A065608.P12445239359989980431.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P16935800457768325414

`A286002(n+1)+A091818(n+1)/2`
-/

namespace A137319.P16935800457768325414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286002 (n + 1) : ℚ) + (A091818 (n + 1) : ℚ) / 2

end

end A137319.P16935800457768325414

namespace A137319

/-- `A286002(n+1)+A091818(n+1)/2` -/
def P16935800457768325414.Spec : Prop :=
  ∀ n, P16935800457768325414.a n = (A137319 (n + 1) : ℚ)

theorem P16935800457768325414.correct : P16935800457768325414.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P16935800457768325414.a, A137319.P10681023325901659618.a, A065608, A065608.P12445239359989980431.a, A091818, A091818.P1536144604709334989.a, A286002, A286002.P1824755549209206382.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P4999665183187131827

`A001065(n+1)+A062968(n+1)+n`
-/

namespace A137319.P4999665183187131827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A062968 (n + 1) + (n : ℤ))

end

end A137319.P4999665183187131827

namespace A137319

/-- `A001065(n+1)+A062968(n+1)+n` -/
def P4999665183187131827.Spec : Prop :=
  ∀ n, P4999665183187131827.a n = A137319 (n + 1)

theorem P4999665183187131827.correct : P4999665183187131827.Spec := by
  intro n
  simp only [A137319, Nat.add_sub_cancel, A137319.P4999665183187131827.a, A137319.P10681023325901659618.a, A001065, A001065.P4097147489331274860.a, A062968, A062968.P12745258028289340812.a, A065608, A065608.P12445239359989980431.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137319

/-! ## A137319.P3786388691347527327

`A039649(n+1)+A046520(n+1)+n`
-/

namespace A137319.P3786388691347527327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A046520 (n + 1) + (n : ℤ))

end

end A137319.P3786388691347527327

namespace A137319

/-- `A039649(n+1)+A046520(n+1)+n` -/
def P3786388691347527327.Spec : Prop :=
  ∀ n, P3786388691347527327.a n = A137319 (n + 1)

end A137319

/-!
# A137320: Coefficients of raising factorial polynomials, T(n,k) = [x^k] p(x, n) where p(x, n) = (m*x + n - 1)*p(x, n - 1) with p[x, 0] = 1, p[x, -1] = 0, p[x, 1] = m*x and m = 2. Triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A137320, there is no canonical definition to state claims against.
-/

/-! ## A137320.P13963781882596846006

`abs(A137312(n))`
-/

namespace A137320.P13963781882596846006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137312 n|

end

end A137320.P13963781882596846006

/-! ## A137320.P2332868683391994567

`2^(n-C(∑[char[∑[n]]], 2))*A132393(n)`
-/

namespace A137320.P2332868683391994567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A132393 n : ℚ)

end

end A137320.P2332868683391994567

/-! ## A137320.P17899133158562872094

`A059268(n)*A132393(n)`
-/

namespace A137320.P17899133158562872094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A132393 n

end

end A137320.P17899133158562872094

/-! ## A137320.P2647750955465064180

`A097807(n)*A137312(n)`
-/

namespace A137320.P2647750955465064180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A137312 n

end

end A137320.P2647750955465064180

/-! ## A137320.P3886785813953742759

`gcd(A000038(n), A137312(n))`
-/

namespace A137320.P3886785813953742759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A137312 n)

end

end A137320.P3886785813953742759

/-! ## A137320.P7268303332512751374

`lcm(A000034(n), A137312(n))`
-/

namespace A137320.P7268303332512751374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A137312 n)

end

end A137320.P7268303332512751374

/-! ## A137320.P14712944452447381221

`abs(A048994(n)*A059268(n))`
-/

namespace A137320.P14712944452447381221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A059268 n|

end

end A137320.P14712944452447381221

/-! ## A137320.P7274147067424260931

`sqrt(A137312(n)^A020639(2*(n+1)))`
-/

namespace A137320.P7274147067424260931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A137312 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A137320.P7274147067424260931

/-!
# A137321: a(n) = prime(n)^prime(n) - k!, where prime(n) is the n-th prime number, and k is the greatest number for which k! <= prime(n)^prime(n).

The programs for A137321, there is no canonical definition to state claims against.
-/

/-! ## A137321.P16524435631684350977

`A066908(A000040(n+1))`
-/

namespace A137321.P16524435631684350977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066908 (A000040 (n + 1)).toNat

end

end A137321.P16524435631684350977

/-!
# A137322: a(n) = k! - A051674(n), where k is the smallest number for which A051674(n) <= k! where A051674(n) = prime(n)^prime(n).

The programs for A137322, there is no canonical definition to state claims against.
-/

/-! ## A137322.P2656696316608430661

`A118167(∑[A190775(n+1)+A129761(n)])`
-/

namespace A137322.P2656696316608430661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1) + A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137322.P2656696316608430661

/-!
# A137323: a(n) = sum(d divides n, 2^(n/d-1) - 1 ), omitting d=1 and d=n.

The programs for A137323, the canonical program `A137323.P7439224015646553123` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137323 has offset 1).

The definition of A137323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137323.P7439224015646553123

`∑{d}[n+1, A011782(#%(n+1))-1]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A137323

/-- `∑{d}[n+1, A011782(#%(n+1))-1]` -/
def P7439224015646553123.Spec : Prop :=
  ∀ n, P7439224015646553123.a n = A137323 (n + 1)

theorem P7439224015646553123.correct : P7439224015646553123.Spec := by
  intro n
  simp only [A137323, Nat.add_sub_cancel]

end A137323

/-! ## A137323.P1440652693399599340

`A328337(n+1)-Δ[A325459(n)]`
-/

namespace A137323.P1440652693399599340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) - (f1 (n + 1) - f1 n)

end

end A137323.P1440652693399599340

namespace A137323

/-- `A328337(n+1)-Δ[A325459(n)]` -/
def P1440652693399599340.Spec : Prop :=
  ∀ n, P1440652693399599340.a n = A137323 (n + 1)

end A137323

/-! ## A137323.P6740057377316111900

`A328337(n+1)-A070824(n+1)`
-/

namespace A137323.P6740057377316111900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) - A070824 (n + 1)

end

end A137323.P6740057377316111900

namespace A137323

/-- `A328337(n+1)-A070824(n+1)` -/
def P6740057377316111900.Spec : Prop :=
  ∀ n, P6740057377316111900.a n = A137323 (n + 1)

end A137323

/-! ## A137323.P6076357043976131506

`A247146(n+1)-∑{d}[n+1, A247146(A020639(#))]`
-/

namespace A137323.P6076357043976131506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A247146 (A020639 d).toNat

end

end A137323.P6076357043976131506

namespace A137323

/-- `A247146(n+1)-∑{d}[n+1, A247146(A020639(#))]` -/
def P6076357043976131506.Spec : Prop :=
  ∀ n, P6076357043976131506.a n = A137323 (n + 1)

end A137323

/-! ## A137323.P16946837093248005546

`∑{d}[n+1, A000225(#-1)]-A000225(n)`
-/

namespace A137323.P16946837093248005546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000225 (d - 1) - A000225 n

end

end A137323.P16946837093248005546

namespace A137323

/-- `∑{d}[n+1, A000225(#-1)]-A000225(n)` -/
def P16946837093248005546.Spec : Prop :=
  ∀ n, P16946837093248005546.a n = A137323 (n + 1)

end A137323

/-! ## A137323.P17340371681434816353

`A034729(n+1)-(A000225(n)+A000005(n+1))`
-/

namespace A137323.P17340371681434816353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - (A000225 n + A000005 (n + 1))

end

end A137323.P17340371681434816353

namespace A137323

/-- `A034729(n+1)-(A000225(n)+A000005(n+1))` -/
def P17340371681434816353.Spec : Prop :=
  ∀ n, P17340371681434816353.a n = A137323 (n + 1)

end A137323

/-! ## A137323.P6387006930866474594

`∑{d}[n+1, A267604(n)%A267604(n+1-#)]`
-/

namespace A137323.P6387006930866474594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A267604 n) (A267604 (n + 1 - d))

end

end A137323.P6387006930866474594

namespace A137323

/-- `∑{d}[n+1, A267604(n)%A267604(n+1-#)]` -/
def P6387006930866474594.Spec : Prop :=
  ∀ n, P6387006930866474594.a n = A137323 (n + 1)

end A137323

/-! ## A137323.P6320467697993732591

`A247146(n+1)-A001222(A100577(n+1))`
-/

namespace A137323.P6320467697993732591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) - A001222 (A100577 (n + 1)).toNat

end

end A137323.P6320467697993732591

namespace A137323

/-- `A247146(n+1)-A001222(A100577(n+1))` -/
def P6320467697993732591.Spec : Prop :=
  ∀ n, P6320467697993732591.a n = A137323 (n + 1)

end A137323

/-!
# A137324: a(n) = Sum_{prime p < n} gcd(n,p).

The programs for A137324, the canonical program `A137324.P13493334267181104569` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137324 has offset 3).

The definition of A137324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137324.P13493334267181104569

`A048865(n+3)+A105221(n+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A137324

/-- `A048865(n+3)+A105221(n+3)` -/
def P13493334267181104569.Spec : Prop :=
  ∀ n, P13493334267181104569.a n = A137324 (n + 3)

theorem P13493334267181104569.correct : P13493334267181104569.Spec := by
  intro n
  simp only [A137324, Nat.add_sub_cancel]

end A137324

/-! ## A137324.P10892641263941708800

`A066911(n+2)+A048865(n+3)-A181835(n+3)`
-/

namespace A137324.P10892641263941708800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 2) + (A048865 (n + 3) - A181835 (n + 3))

end

end A137324.P10892641263941708800

namespace A137324

/-- `A066911(n+2)+A048865(n+3)-A181835(n+3)` -/
def P10892641263941708800.Spec : Prop :=
  ∀ n, P10892641263941708800.a n = A137324 (n + 3)

end A137324

/-!
# A137325: Number of terms in the Janet periodic table of the elements 32 columns: ordered 14 2's, 10 4's, 6 6's, 2 8's.

The programs for A137325, there is no canonical definition to state claims against.
-/

/-! ## A137325.P8284261019213041540

`2*ceil(sinh(or(1, n)/16))`
-/

namespace A137325.P8284261019213041540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sinh ((Nat.lor 1 n : ℚ) / 16 : ℝ)⌉

end

end A137325.P8284261019213041540

/-! ## A137325.P18108102167571516771

`2*(round((floor(n/2)/9)²)+1)`
-/

namespace A137325.P18108102167571516771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway (((⌊(n : ℚ) / 2⌋ : ℚ) / 9) ^ 2) + 1)

end

end A137325.P18108102167571516771

/-! ## A137325.P4965271853749161539

`ceil(or(3, A279220(n))/2)`
-/

namespace A137325.P4965271853749161539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 3 (A279220 n) : ℚ) / 2⌉

end

end A137325.P4965271853749161539

/-! ## A137325.P9144737168981474363

`A001222(4^ceil(sinh(or(1, n)/16)))`
-/

namespace A137325.P9144737168981474363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌈Real.sinh ((Nat.lor 1 n : ℚ) / 16 : ℝ)⌉ : ℤ))).toNat

end

end A137325.P9144737168981474363

/-! ## A137325.P17922158934226938240

`∑[∏{e}[A127324(n)+6, #]]+1-n`
-/

namespace A137325.P17922158934226938240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (n : ℤ)

end

end A137325.P17922158934226938240

/-!
# A137326: a(n) = sqrt(A139033(n)).

The programs for A137326, there is no canonical definition to state claims against.
-/

/-! ## A137326.P17216727881014093503

`sqrt(A139033(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137326.P17216727881014093503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A139033 (n + 1) : ℝ)

end

end A137326.P17216727881014093503

/-! ## A137326.P333572184575090791

`root(A139033(C(n+1, n)), 2)`
-/

namespace A137326.P333572184575090791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A139033 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A137326.P333572184575090791

/-! ## A137326.P5473774684462917497

`root(A139033(2*n+1-n), 2)`
-/

namespace A137326.P5473774684462917497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A139033 (2 * n + 1 - n) : ℝ) ^ (1 / (2 : ℝ))

end

end A137326.P5473774684462917497

/-! ## A137326.P15067961988546465355

`A000027(root(A139033(n+1), 2))`
-/

namespace A137326.P15067961988546465355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A139033 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A137326.P15067961988546465355

/-! ## A137326.P8328445026540531794

`A025439(n)+root(A139033(n+1), 2)`
-/

namespace A137326.P8328445026540531794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025439 n : ℝ) + (A139033 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A137326.P8328445026540531794

/-! ## A137326.P5738797866077215147

`root(A139033(n+1), 2)*A007318(∑[n])`
-/

namespace A137326.P5738797866077215147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A139033 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A137326.P5738797866077215147

/-! ## A137326.P9657051213075187744

`root(A139033(n+1), 2)%A000041(n+6)`
-/

namespace A137326.P9657051213075187744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A139033 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 6))

end

end A137326.P9657051213075187744

/-!
# A137327: Fermat(n) modulo n.

The programs for A137327, there is no canonical definition to state claims against.
-/

/-! ## A137327.P1320915710375545126

`(A155836(n+1)+1)%(n+1)`
-/

namespace A137327.P1320915710375545126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155836 (n + 1) + 1) (n + 1 : ℤ)

end

end A137327.P1320915710375545126

/-! ## A137327.P5910072873354639435

`A155836(n+1)+A057427(n)`
-/

namespace A137327.P5910072873354639435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155836 (n + 1) + A057427 n

end

end A137327.P5910072873354639435

/-! ## A137327.P14319719672206963648

`A155836(n+1)-A057428(n)`
-/

namespace A137327.P14319719672206963648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155836 (n + 1) - A057428 n

end

end A137327.P14319719672206963648

/-! ## A137327.P6683430968541820879

`A243127(C(2, n+2))+A155836(n+1)`
-/

namespace A137327.P6683430968541820879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243127 (Nat.choose 2 (n + 2) + 10) + A155836 (n + 1)

end

end A137327.P6683430968541820879

/-! ## A137327.P6755085622658333099

`ceil(A155836(n+1)+n/A101681(n+1))`
-/

namespace A137327.P6755085622658333099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155836 (n + 1) : ℚ) + (n : ℚ) / (A101681 (n + 1) : ℚ)⌉

end

end A137327.P6755085622658333099

/-!
# A137328: a(n) = prime(n) - primorial(k), where k is the greatest number for which primorial(k) <= prime(n).

The programs for A137328, the canonical program `A137328.P11203523918348425048` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137328 has offset 1).

The definition of A137328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137328.P15668621730020530291

`A000040(n+1)-A260188(Δ[A007504(n)])`
-/

namespace A137328.P15668621730020530291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260188 (f1 (n + 1) - f1 n).toNat

end

end A137328.P15668621730020530291

namespace A137328

/-- `A000040(n+1)-A260188(Δ[A007504(n)])` -/
def P15668621730020530291.Spec : Prop :=
  ∀ n, P15668621730020530291.a n = A137328 (n + 1)

end A137328

/-! ## A137328.P16956839892345827958

`Δ[A007504(n)]-A260188(A008578(n+2))`
-/

namespace A137328.P16956839892345827958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A260188 (A008578 (n + 2)).toNat

end

end A137328.P16956839892345827958

namespace A137328

/-- `Δ[A007504(n)]-A260188(A008578(n+2))` -/
def P16956839892345827958.Spec : Prop :=
  ∀ n, P16956839892345827958.a n = A137328 (n + 1)

end A137328

/-! ## A137328.P7671623926604054513

`A000040(n+1)-A260188(p?[A007989(n)])`
-/

namespace A137328.P7671623926604054513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137328.P7671623926604054513

namespace A137328

/-- `A000040(n+1)-A260188(p?[A007989(n)])` -/
def P7671623926604054513.Spec : Prop :=
  ∀ n, P7671623926604054513.a n = A137328 (n + 1)

end A137328

/-! ## A137328.P11203523918348425048

`record[A162753(n)]-A260188(A008578(n+2))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137328

/-- `record[A162753(n)]-A260188(A008578(n+2))` -/
def P11203523918348425048.Spec : Prop :=
  ∀ n, P11203523918348425048.a n = A137328 (n + 1)

theorem P11203523918348425048.correct : P11203523918348425048.Spec := by
  intro n
  simp only [A137328, Nat.add_sub_cancel]

end A137328

/-! ## A137328.P12441187614998522965

`p?[A259153(n)]-A260188(A008578(n+2))`
-/

namespace A137328.P12441187614998522965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260188 (A008578 (n + 2)).toNat

end

end A137328.P12441187614998522965

namespace A137328

/-- `p?[A259153(n)]-A260188(A008578(n+2))` -/
def P12441187614998522965.Spec : Prop :=
  ∀ n, P12441187614998522965.a n = A137328 (n + 1)

end A137328

/-! ## A137328.P639990467635195892

`A000040(n+1)-A260188(p?[A142150(n)])`
-/

namespace A137328.P639990467635195892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137328.P639990467635195892

namespace A137328

/-- `A000040(n+1)-A260188(p?[A142150(n)])` -/
def P639990467635195892.Spec : Prop :=
  ∀ n, P639990467635195892.a n = A137328 (n + 1)

end A137328

/-! ## A137328.P6163494809120626695

`A000040(n+1)-A260188(p?[A181762(n)])`
-/

namespace A137328.P6163494809120626695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137328.P6163494809120626695

namespace A137328

/-- `A000040(n+1)-A260188(p?[A181762(n)])` -/
def P6163494809120626695.Spec : Prop :=
  ∀ n, P6163494809120626695.a n = A137328 (n + 1)

end A137328

/-! ## A137328.P12535339144771177495

`p?[A006370(n)]-A260188(A008578(n+2))`
-/

namespace A137328.P12535339144771177495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260188 (A008578 (n + 2)).toNat

end

end A137328.P12535339144771177495

namespace A137328

/-- `p?[A006370(n)]-A260188(A008578(n+2))` -/
def P12535339144771177495.Spec : Prop :=
  ∀ n, P12535339144771177495.a n = A137328 (n + 1)

end A137328

/-!
# A137329: a(n)=-4a(n-4).

The programs for A137329, the canonical program `A137329.P8503263781291652940` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137329 has offset 0).

The definition of A137329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-4)` (program `A137329.P8503263781291652940`, by `A137329.P8503263781291652940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137329.P8503263781291652940

`-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137329

/-- `-4*a(n-4)` -/
def P8503263781291652940.Spec : Prop :=
  ∀ n, P8503263781291652940.a n = A137329 n

theorem P8503263781291652940.correct : P8503263781291652940.Spec := by
  intro n
  simp only [A137329]

end A137329

/-! ## A137329.P576385326379019463

`ogf((2x+3x^2+x^3)/(1+4x^4))`
-/

namespace A137329.P576385326379019463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 1] [1, 0, 0, 0, 4] n

end

end A137329.P576385326379019463

namespace A137329

/-- `ogf((2x+3x^2+x^3)/(1+4x^4))` -/
def P576385326379019463.Spec : Prop :=
  ∀ n, P576385326379019463.a n = A137329 n

end A137329

/-! ## A137329.P1671515014213901506

`a(n-4)-5*a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A137329.P1671515014213901506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 1] fun n a =>
  a (n - 4) - 5 * a (n - 4)

end

end A137329.P1671515014213901506

namespace A137329

/-- `a(n-4)-5*a(n-4)` -/
def P1671515014213901506.Spec : Prop :=
  ∀ n, P1671515014213901506.a n = A137329 n

theorem P1671515014213901506.correct : P1671515014213901506.Spec := by
  intro n
  simp only [A137329, Nat.add_sub_cancel, A137329.P1671515014213901506.a, A137329.P8503263781291652940.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A137329

/-! ## A137329.P511903963104081720

`A138377(xor(3, n)+1)`
-/

namespace A137329.P511903963104081720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (Nat.xor 3 n + 1)

end

end A137329.P511903963104081720

namespace A137329

/-- `A138377(xor(3, n)+1)` -/
def P511903963104081720.Spec : Prop :=
  ∀ n, P511903963104081720.a n = A137329 n

end A137329

/-! ## A137329.P17364355893563276205

`A138377(A159966(n))`
-/

namespace A137329.P17364355893563276205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (A159966 n).toNat

end

end A137329.P17364355893563276205

namespace A137329

/-- `A138377(A159966(n))` -/
def P17364355893563276205.Spec : Prop :=
  ∀ n, P17364355893563276205.a n = A137329 n

end A137329

/-! ## A137329.P4527104693262228418

`A138377(A113778(n+1))`
-/

namespace A137329.P4527104693262228418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (A113778 (n + 1)).toNat

end

end A137329.P4527104693262228418

namespace A137329

/-- `A138377(A113778(n+1))` -/
def P4527104693262228418.Spec : Prop :=
  ∀ n, P4527104693262228418.a n = A137329 n

end A137329

/-! ## A137329.P7514497963127084076

`A138377(xor(n, A010673(n)))`
-/

namespace A137329.P7514497963127084076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (Int.xor (n : ℤ) (A010673 n)).toNat

end

end A137329.P7514497963127084076

namespace A137329

/-- `A138377(xor(n, A010673(n)))` -/
def P7514497963127084076.Spec : Prop :=
  ∀ n, P7514497963127084076.a n = A137329 n

end A137329

/-! ## A137329.P10637094091960875697

`A138377(A004447(2*n)/2+1)`
-/

namespace A137329.P10637094091960875697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (SequenceMachineLib.roundAway ((A004447 (2 * n) : ℚ) / 2 + 1)).toNat

end

end A137329.P10637094091960875697

namespace A137329

/-- `A138377(A004447(2*n)/2+1)` -/
def P10637094091960875697.Spec : Prop :=
  ∀ n, P10637094091960875697.a n = A137329 n

end A137329

/-!
# A137330: a(n) = primorial(k) - prime(n) where k is the smallest number for which prime(n) <= primorial(k).

The programs for A137330, the canonical program `A137330.P2971508443877887425` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137330 has offset 1).

The definition of A137330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137330.P2971508443877887425

`A260188(A001097(3*n+2))-(A006093(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A137330

/-- `A260188(A001097(3*n+2))-(A006093(n+1)+1)` -/
def P2971508443877887425.Spec : Prop :=
  ∀ n, P2971508443877887425.a n = A137330 (n + 1)

theorem P2971508443877887425.correct : P2971508443877887425.Spec := by
  intro n
  simp only [A137330, Nat.add_sub_cancel]

end A137330

/-! ## A137330.P15199248993603592378

`A260188(A001097(3*n+2))-A001748(n+1)/3`
-/

namespace A137330.P15199248993603592378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260188 (A001097 (3 * n + 2)).toNat : ℚ) - (A001748 (n + 1) : ℚ) / 3

end

end A137330.P15199248993603592378

namespace A137330

/-- `A260188(A001097(3*n+2))-A001748(n+1)/3` -/
def P15199248993603592378.Spec : Prop :=
  ∀ n, P15199248993603592378.a n = (A137330 (n + 1) : ℚ)

end A137330

/-! ## A137330.P10473348311824572910

`A260188(A230026(n+1))-A000040(n+1)`
-/

namespace A137330.P10473348311824572910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A230026 (n + 1)).toNat - A000040 (n + 1)

end

end A137330.P10473348311824572910

namespace A137330

/-- `A260188(A230026(n+1))-A000040(n+1)` -/
def P10473348311824572910.Spec : Prop :=
  ∀ n, P10473348311824572910.a n = A137330 (n + 1)

end A137330

/-! ## A137330.P17777021816828635345

`A260188(A230026(n+1))-sqrt(A001248(n+1))`
-/

namespace A137330.P17777021816828635345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260188 (A230026 (n + 1)).toNat : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A137330.P17777021816828635345

namespace A137330

/-- `A260188(A230026(n+1))-sqrt(A001248(n+1))` -/
def P17777021816828635345.Spec : Prop :=
  ∀ n, P17777021816828635345.a n = (A137330 (n + 1) : ℝ)

end A137330

/-! ## A137330.P7899446603266747397

`A260188(A230026(n+1))-∑[A054541(n+1)]`
-/

namespace A137330.P7899446603266747397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A230026 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137330.P7899446603266747397

namespace A137330

/-- `A260188(A230026(n+1))-∑[A054541(n+1)]` -/
def P7899446603266747397.Spec : Prop :=
  ∀ n, P7899446603266747397.a n = A137330 (n + 1)

end A137330

/-!
# A137331: a(n) = 1 if the binary weight of n is prime, otherwise 0.

The programs for A137331, the canonical program `A137331.P2086045150003382942` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137331 has offset 0).

The definition of A137331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137331.P1451073254702314186

`char[A052294(n+1)]`
-/

namespace A137331.P1451073254702314186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137331.P1451073254702314186

namespace A137331

/-- `char[A052294(n+1)]` -/
def P1451073254702314186.Spec : Prop :=
  ∀ n, (P1451073254702314186.a n : ℤ) = A137331 n

end A137331

/-! ## A137331.P13025249488373094467

`char[comp[A084345(n+1)]]`
-/

namespace A137331.P13025249488373094467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A137331.P13025249488373094467

namespace A137331

/-- `char[comp[A084345(n+1)]]` -/
def P13025249488373094467.Spec : Prop :=
  ∀ n, (P13025249488373094467.a n : ℤ) = A137331 n

end A137331

/-! ## A137331.P2086045150003382942

`A101436(A001316(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137331

/-- `A101436(A001316(n))` -/
def P2086045150003382942.Spec : Prop :=
  ∀ n, P2086045150003382942.a n = A137331 n

theorem P2086045150003382942.correct : P2086045150003382942.Spec := by
  intro n
  simp only [A137331]

end A137331

/-! ## A137331.P12339774440412076530

`A257000(A000120(n))`
-/

namespace A137331.P12339774440412076530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A000120 n).toNat

end

end A137331.P12339774440412076530

namespace A137331

/-- `A257000(A000120(n))` -/
def P12339774440412076530.Spec : Prop :=
  ∀ n, P12339774440412076530.a n = A137331 n

end A137331

/-! ## A137331.P7156342328979781455

`A302048(A000120(n)²)`
-/

namespace A137331.P7156342328979781455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A000120 n ^ 2).toNat

end

end A137331.P7156342328979781455

namespace A137331

/-- `A302048(A000120(n)²)` -/
def P7156342328979781455.Spec : Prop :=
  ∀ n, P7156342328979781455.a n = A137331 n

end A137331

/-! ## A137331.P5321038858215370227

`A088534(xor(2, A088512(n)))`
-/

namespace A137331.P5321038858215370227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (Int.xor 2 (A088512 n)).toNat

end

end A137331.P5321038858215370227

namespace A137331

/-- `A088534(xor(2, A088512(n)))` -/
def P5321038858215370227.Spec : Prop :=
  ∀ n, P5321038858215370227.a n = A137331 n

end A137331

/-! ## A137331.P6550840130871492260

`A105700(A000120(n)²)/2`
-/

namespace A137331.P6550840130871492260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105700 (A000120 n ^ 2).toNat : ℚ) / 2

end

end A137331.P6550840130871492260

namespace A137331

/-- `A105700(A000120(n)²)/2` -/
def P6550840130871492260.Spec : Prop :=
  ∀ n, P6550840130871492260.a n = (A137331 n : ℚ)

end A137331

/-! ## A137331.P9384658884151100249

`A343229(∑{e}[∑{e}[A071044(n), #], #]+1)`
-/

namespace A137331.P9384658884151100249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A137331.P9384658884151100249

namespace A137331

/-- `A343229(∑{e}[∑{e}[A071044(n), #], #]+1)` -/
def P9384658884151100249.Spec : Prop :=
  ∀ n, P9384658884151100249.a n = A137331 n

end A137331

/-! ## A137331.P6587826898010993902

`A081603(∑{e}[A324467(n), #])`
-/

namespace A137331.P6587826898010993902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A137331.P6587826898010993902

namespace A137331

/-- `A081603(∑{e}[A324467(n), #])` -/
def P6587826898010993902.Spec : Prop :=
  ∀ n, P6587826898010993902.a n = A137331 n

end A137331

/-! ## A137331.P6788569349924235587

`A343229(∑{e}[∑{e}[1-A151712(n), #], #]+1)`
-/

namespace A137331.P6788569349924235587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151712 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A137331.P6788569349924235587

namespace A137331

/-- `A343229(∑{e}[∑{e}[1-A151712(n), #], #]+1)` -/
def P6788569349924235587.Spec : Prop :=
  ∀ n, P6788569349924235587.a n = A137331 n

end A137331

/-! ## A137331.P4160826225397080553

`A307431(A307431(A088512(n))²)`
-/

namespace A137331.P4160826225397080553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307431 (A307431 (A088512 n).toNat ^ 2).toNat

end

end A137331.P4160826225397080553

namespace A137331

/-- `A307431(A307431(A088512(n))²)` -/
def P4160826225397080553.Spec : Prop :=
  ∀ n, P4160826225397080553.a n = A137331 n

end A137331

/-! ## A137331.P2006252200522670532

`A025426(A050315(n))`
-/

namespace A137331.P2006252200522670532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A050315 n).toNat

end

end A137331.P2006252200522670532

namespace A137331

/-- `A025426(A050315(n))` -/
def P2006252200522670532.Spec : Prop :=
  ∀ n, P2006252200522670532.a n = A137331 n

end A137331

/-! ## A137331.P11081712864165535853

`char[A160899(n+1)]`
-/

namespace A137331.P11081712864165535853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A137331.P11081712864165535853

namespace A137331

/-- `char[A160899(n+1)]` -/
def P11081712864165535853.Spec : Prop :=
  ∀ n, (P11081712864165535853.a n : ℤ) = A137331 n

end A137331

/-! ## A137331.P17579542780643268725

`A022925(A093659(n))`
-/

namespace A137331.P17579542780643268725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022925 (A093659 n).toNat

end

end A137331.P17579542780643268725

namespace A137331

/-- `A022925(A093659(n))` -/
def P17579542780643268725.Spec : Prop :=
  ∀ n, P17579542780643268725.a n = A137331 n

end A137331

/-!
# A137332: Primes which are equal to the order of 2 modulo a prime q, sorted with respect to the value of q.

The programs for A137332, there is no canonical definition to state claims against.
-/

/-! ## A137332.P15333386252594394898

`A002326((A122094(n+1)-1)/2)`
-/

namespace A137332.P15333386252594394898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A122094 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A137332.P15333386252594394898

/-! ## A137332.P7852084721484646516

`A007733(A122094(n+1))`
-/

namespace A137332.P7852084721484646516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A122094 (n + 1)).toNat

end

end A137332.P7852084721484646516

/-! ## A137332.P1563886016108174301

`p?[A014664(n+2)]`
-/

namespace A137332.P1563886016108174301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P1563886016108174301

/-! ## A137332.P16874771908136878143

`p?[gcd(A037166(n+1), A243905(n+2))]`
-/

namespace A137332.P16874771908136878143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037166 (n + 1)) (A243905 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137332.P16874771908136878143

/-! ## A137332.P6953482371839595418

`p?[lcm(A082654(n+1), A211244(n+1))]`
-/

namespace A137332.P6953482371839595418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082654 (n + 1)) (A211244 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137332.P6953482371839595418

/-! ## A137332.P8112582465434801023

`p?[floor(A243905(n+2)/A065091(n+1))]`
-/

namespace A137332.P8112582465434801023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243905 (n + 2) : ℚ) / (A065091 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P8112582465434801023

/-! ## A137332.P3663580674963194505

`A118106(2*A122094(n+1))`
-/

namespace A137332.P3663580674963194505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (2 * A122094 (n + 1)).toNat

end

end A137332.P3663580674963194505

/-! ## A137332.P6227349023084620619

`p?[A118106(2*A000040(n+1))]`
-/

namespace A137332.P6227349023084620619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P6227349023084620619

/-! ## A137332.P9292513663370281775

`p?[A118106(A000040(n+1)+A000040(n+1))]`
-/

namespace A137332.P9292513663370281775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (A000040 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P9292513663370281775

/-! ## A137332.P6010782398971648479

`p?[A002326(A005097(n+1))]`
-/

namespace A137332.P6010782398971648479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A005097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P6010782398971648479

/-! ## A137332.P4289981756916464370

`p?[A002326(A102781(n+1))]`
-/

namespace A137332.P4289981756916464370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P4289981756916464370

/-! ## A137332.P7443751927963910841

`p?[A002326(A002180(n+2))]`
-/

namespace A137332.P7443751927963910841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A002180 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P7443751927963910841

/-! ## A137332.P10486787664306913502

`p?[A336843(A000040(n+1))]`
-/

namespace A137332.P10486787664306913502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P10486787664306913502

/-! ## A137332.P16836417295027760725

`p?[A007733(p?[A014681(n)])]`
-/

namespace A137332.P16836417295027760725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P16836417295027760725

/-! ## A137332.P4164438731600406744

`p?[A007733(p?[A056847(n)])]`
-/

namespace A137332.P4164438731600406744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P4164438731600406744

/-! ## A137332.P12379751614106697513

`p?[A007733(p?[A256450(n)])]`
-/

namespace A137332.P12379751614106697513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P12379751614106697513

/-! ## A137332.P14139597303048767960

`p?[A007733(p?[A260442(n)])]`
-/

namespace A137332.P14139597303048767960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P14139597303048767960

/-! ## A137332.P3369024307183382508

`p?[A007733(A000040(n+2))]`
-/

namespace A137332.P3369024307183382508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137332.P3369024307183382508

/-!
# A137334: Number of n X n crossword puzzles with dihedral symmetry group, for n odd. Acceptable crossword puzzles must have all words of length 3 or more, at least one word in each row and each column and be connected.

The programs for A137334, there is no canonical definition to state claims against.
-/

/-! ## A137334.P8179112164421260065

`A086495(A066184(n))`
-/

namespace A137334.P8179112164421260065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086495 (A066184 n).toNat

end

end A137334.P8179112164421260065

/-!
# A137336: Triangle read by rows, with 2-variable g.f. (-2*x*t+t^2)/(1-2*x*t+t^2).

The programs for A137336, there is no canonical definition to state claims against.
-/

/-! ## A137336.P13329083830473926638

`floor(acot(n)-A053117(n))`
-/

namespace A137336.P13329083830473926638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A053117 n : ℝ)⌋

end

end A137336.P13329083830473926638

/-! ## A137336.P7900309748972964538

`-A053117(round(sqrt(n²+1)))`
-/

namespace A137336.P7900309748972964538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053117 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A137336.P7900309748972964538

/-! ## A137336.P7469009230690875622

`A000007(n)-A053117(n)`
-/

namespace A137336.P7469009230690875622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A053117 n

end

end A137336.P7469009230690875622

/-! ## A137336.P16769960221012460817

`A151878(n)-A053117(n)`
-/

namespace A137336.P16769960221012460817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n - A053117 n

end

end A137336.P16769960221012460817

/-! ## A137336.P16417150324674099133

`A151909(n)-A053117(n)`
-/

namespace A137336.P16417150324674099133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n - A053117 n

end

end A137336.P16417150324674099133

/-! ## A137336.P10329320920916775026

`A151933(n)-A053117(n)`
-/

namespace A137336.P10329320920916775026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n - A053117 n

end

end A137336.P10329320920916775026

/-! ## A137336.P1282082298824488357

`A053117(n)*A057428(n)`
-/

namespace A137336.P1282082298824488357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A057428 n

end

end A137336.P1282082298824488357

/-! ## A137336.P5278614951412530449

`A053117(n)*A134824(n)`
-/

namespace A137336.P5278614951412530449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A134824 n

end

end A137336.P5278614951412530449

/-! ## A137336.P7347816010513217944

`A000038(n)/2-A053117(n)`
-/

namespace A137336.P7347816010513217944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 - (A053117 n : ℚ)

end

end A137336.P7347816010513217944

/-!
# A137337: T(i,j) = (-1)^(i+j)*(i+1)*binomial(i,j)*2^(i-j)*4^j.

The programs for A137337, the canonical program `A137337.P10686852196539418959` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137337 has offset 0).

The definition of A137337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137337.P10686852196539418959

`(-1)^(row(n)+col(n))*(row(n)+1)*C(row(n), col(n))*2^(row(n)-col(n))*4^col(n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137337

/-- `(-1)^(row(n)+col(n))*(row(n)+1)*C(row(n), col(n))*2^(row(n)-col(n))*4^col(n)` -/
def P10686852196539418959.Spec : Prop :=
  ∀ n, P10686852196539418959.a n = (A137337 n : ℚ)

end A137337

/-! ## A137337.P17172158922409945195

`A003506(n+1)*A122803(A051162(n))`
-/

namespace A137337.P17172158922409945195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A122803 (A051162 n).toNat

end

end A137337.P17172158922409945195

namespace A137337

/-- `A003506(n+1)*A122803(A051162(n))` -/
def P17172158922409945195.Spec : Prop :=
  ∀ n, P17172158922409945195.a n = A137337 n

end A137337

/-! ## A137337.P11160882215004166252

`A001787(A002024(n+1))*A303872(n)`
-/

namespace A137337.P11160882215004166252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A002024 (n + 1)).toNat * A303872 n

end

end A137337.P11160882215004166252

namespace A137337

/-- `A001787(A002024(n+1))*A303872(n)` -/
def P11160882215004166252.Spec : Prop :=
  ∀ n, P11160882215004166252.a n = A137337 n

end A137337

/-! ## A137337.P5418282710686892921

`A001787(A003056(n)+1)*A303872(n)`
-/

namespace A137337.P5418282710686892921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A003056 n + 1).toNat * A303872 n

end

end A137337.P5418282710686892921

namespace A137337

/-- `A001787(A003056(n)+1)*A303872(n)` -/
def P5418282710686892921.Spec : Prop :=
  ∀ n, P5418282710686892921.a n = A137337 n

end A137337

/-! ## A137337.P16041873439204179849

`A002024(n+1)*A137688(n)*A303872(n)`
-/

namespace A137337.P16041873439204179849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A137688 n * A303872 n

end

end A137337.P16041873439204179849

namespace A137337

/-- `A002024(n+1)*A137688(n)*A303872(n)` -/
def P16041873439204179849.Spec : Prop :=
  ∀ n, P16041873439204179849.a n = A137337 n

end A137337

/-! ## A137337.P3636273723324793174

`2^A002262(n)*A130595(n)*A001787(A002024(n+1))`
-/

namespace A137337.P3636273723324793174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A130595 n : ℚ) * (A001787 (A002024 (n + 1)).toNat : ℚ)

end

end A137337.P3636273723324793174

namespace A137337

/-- `2^A002262(n)*A130595(n)*A001787(A002024(n+1))` -/
def P3636273723324793174.Spec : Prop :=
  ∀ n, P3636273723324793174.a n = (A137337 n : ℚ)

end A137337

/-!
# A137339: A triangular sequence from a functional coefficient expansion of a raising factorial type: p(x,t)=1/(1-t)^(m*x);m=3.

The programs for A137339, there is no canonical definition to state claims against.
-/

/-! ## A137339.P5300784362589504277

`3^A002262(n)*A132393(n)`
-/

namespace A137339.P5300784362589504277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A132393 n : ℚ)

end

end A137339.P5300784362589504277

/-! ## A137339.P9436203258752471225

`abs(A048994(n))*3^A002262(n)`
-/

namespace A137339.P9436203258752471225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A048994 n| : ℚ) * (3 : ℚ) ^ (A002262 n : ℤ)

end

end A137339.P9436203258752471225

/-! ## A137339.P11517241471026322652

`A000244(A002262(n))*A132393(n)`
-/

namespace A137339.P11517241471026322652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A132393 n

end

end A137339.P11517241471026322652

/-! ## A137339.P10177888030741673042

`A000265(A036561(n))*A132393(n)`
-/

namespace A137339.P10177888030741673042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A132393 n

end

end A137339.P10177888030741673042

/-! ## A137339.P13541996257334894785

`A003959(A059268(n))*A132393(n)`
-/

namespace A137339.P13541996257334894785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A132393 n

end

end A137339.P13541996257334894785

/-!
# A137340: a(n) = 2*a(n-1) + 3*a(n-2), with a(0) = 1, a(1) = 9.

The programs for A137340, the canonical program `A137340.P8785401060333508904` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137340 has offset 0).

The definition of A137340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A137340.P8785401060333508904`, by `A137340.P8785401060333508904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137340.P13779800875112645658

`20*3^(n-2)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A137340.P13779800875112645658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  20 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + a (n - 2)

end

end A137340.P13779800875112645658

namespace A137340

/-- `20*3^(n-2)+a(n-2)` -/
def P13779800875112645658.Spec : Prop :=
  ∀ n, P13779800875112645658.a n = (A137340 n : ℚ)

end A137340

/-! ## A137340.P4349159509918643654

`(5*3^n-3*(-1)^n)/2`
-/

namespace A137340.P4349159509918643654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) - 3 * (-1) ^ n : ℚ) / 2

end

end A137340.P4349159509918643654

namespace A137340

/-- `(5*3^n-3*(-1)^n)/2` -/
def P4349159509918643654.Spec : Prop :=
  ∀ n, P4349159509918643654.a n = (A137340 n : ℚ)

theorem P4349159509918643654.correct : P4349159509918643654.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A137340, Nat.add_sub_cancel, A137340.P4349159509918643654.a, A137340.P8785401060333508904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A137340, Nat.add_sub_cancel, A137340.P4349159509918643654.a, A137340.P8785401060333508904.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A137340

/-! ## A137340.P8785401060333508904

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137340

/-- `2*a(n-1)+3*a(n-2)` -/
def P8785401060333508904.Spec : Prop :=
  ∀ n, (P8785401060333508904.a n : ℤ) = A137340 n

theorem P8785401060333508904.correct : P8785401060333508904.Spec := by
  intro n
  simp only [A137340]

end A137340

/-! ## A137340.P1405670120779330772

`A096019(n)-2*(-1)^n`
-/

namespace A137340.P1405670120779330772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096019 n - 2 * (-1) ^ n

end

end A137340.P1405670120779330772

namespace A137340

/-- `A096019(n)-2*(-1)^n` -/
def P1405670120779330772.Spec : Prop :=
  ∀ n, P1405670120779330772.a n = A137340 n

end A137340

/-! ## A137340.P4042124180907956594

`ogf((1+7x)/(1-2x-3x^2))`
-/

namespace A137340.P4042124180907956594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -2, -3] n

end

end A137340.P4042124180907956594

namespace A137340

/-- `ogf((1+7x)/(1-2x-3x^2))` -/
def P4042124180907956594.Spec : Prop :=
  ∀ n, P4042124180907956594.a n = A137340 n

end A137340

/-! ## A137340.P5513460819983958090

`Δ[-(3*xor(1, -a(n-1)))]` with `a(0)=2`
-/

namespace A137340.P5513460819983958090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -(3 * Int.xor 1 (-f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137340.P5513460819983958090

namespace A137340

/-- `Δ[-(3*xor(1, -a(n-1)))]` -/
def P5513460819983958090.Spec : Prop :=
  ∀ n, P5513460819983958090.a n = A137340 n

end A137340

/-! ## A137340.P8737508504031169297

`Δ[A135522(n)]`
-/

namespace A137340.P8737508504031169297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137340.P8737508504031169297

namespace A137340

/-- `Δ[A135522(n)]` -/
def P8737508504031169297.Spec : Prop :=
  ∀ n, P8737508504031169297.a n = A137340 n

end A137340

/-! ## A137340.P14790142590335989341

`A120471(n)+3^n`
-/

namespace A137340.P14790142590335989341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120471 n + (3 ^ n : ℤ)

end

end A137340.P14790142590335989341

namespace A137340

/-- `A120471(n)+3^n` -/
def P14790142590335989341.Spec : Prop :=
  ∀ n, P14790142590335989341.a n = A137340 n

end A137340

/-! ## A137340.P14407916838658185805

`abs(5*A165553(n)-6)`
-/

namespace A137340.P14407916838658185805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A165553 n - 6|

end

end A137340.P14407916838658185805

namespace A137340

/-- `abs(5*A165553(n)-6)` -/
def P14407916838658185805.Spec : Prop :=
  ∀ n, P14407916838658185805.a n = A137340 n

end A137340

/-! ## A137340.P10476438055031343822

`Δ[A081250(n)+gcd(2, n)]`
-/

namespace A137340.P10476438055031343822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137340.P10476438055031343822

namespace A137340

/-- `Δ[A081250(n)+gcd(2, n)]` -/
def P10476438055031343822.Spec : Prop :=
  ∀ n, P10476438055031343822.a n = A137340 n

end A137340

/-! ## A137340.P8169823813779219773

`Δ[A060925(n)+(-1)^n]`
-/

namespace A137340.P8169823813779219773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137340.P8169823813779219773

namespace A137340

/-- `Δ[A060925(n)+(-1)^n]` -/
def P8169823813779219773.Spec : Prop :=
  ∀ n, P8169823813779219773.a n = A137340 n

end A137340

/-! ## A137340.P13439623253253848235

`A134931(n)+A010674(n)`
-/

namespace A137340.P13439623253253848235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 n + A010674 n

end

end A137340.P13439623253253848235

namespace A137340

/-- `A134931(n)+A010674(n)` -/
def P13439623253253848235.Spec : Prop :=
  ∀ n, P13439623253253848235.a n = A137340 n

end A137340

/-! ## A137340.P7671084536932597162

`A164907(n)+A105723(n)`
-/

namespace A137340.P7671084536932597162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n + A105723 n

end

end A137340.P7671084536932597162

namespace A137340

/-- `A164907(n)+A105723(n)` -/
def P7671084536932597162.Spec : Prop :=
  ∀ n, P7671084536932597162.a n = A137340 n

end A137340

/-! ## A137340.P4660080949834161360

`A105723(n)+A046717(n+1)`
-/

namespace A137340.P4660080949834161360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 n + A046717 (n + 1)

end

end A137340.P4660080949834161360

namespace A137340

/-- `A105723(n)+A046717(n+1)` -/
def P4660080949834161360.Spec : Prop :=
  ∀ n, P4660080949834161360.a n = A137340 n

end A137340

/-! ## A137340.P18064276598068402396

`A105723(n)+A080925(n+1)`
-/

namespace A137340.P18064276598068402396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 n + A080925 (n + 1)

end

end A137340.P18064276598068402396

namespace A137340

/-- `A105723(n)+A080925(n+1)` -/
def P18064276598068402396.Spec : Prop :=
  ∀ n, P18064276598068402396.a n = A137340 n

end A137340

/-! ## A137340.P15406458590889774774

`A084182(n+1)-A046717(n)`
-/

namespace A137340.P15406458590889774774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 (n + 1) - A046717 n

end

end A137340.P15406458590889774774

namespace A137340

/-- `A084182(n+1)-A046717(n)` -/
def P15406458590889774774.Spec : Prop :=
  ∀ n, P15406458590889774774.a n = A137340 n

end A137340

/-! ## A137340.P15730791718642179810

`A010685(n)+A134931(n)-1`
-/

namespace A137340.P15730791718642179810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + (A134931 n - 1)

end

end A137340.P15730791718642179810

namespace A137340

/-- `A010685(n)+A134931(n)-1` -/
def P15730791718642179810.Spec : Prop :=
  ∀ n, P15730791718642179810.a n = A137340 n

end A137340

/-! ## A137340.P411333878613620379

`A102345(n+1)-A046717(n)`
-/

namespace A137340.P411333878613620379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 (n + 1) - A046717 n

end

end A137340.P411333878613620379

namespace A137340

/-- `A102345(n+1)-A046717(n)` -/
def P411333878613620379.Spec : Prop :=
  ∀ n, P411333878613620379.a n = A137340 n

end A137340

/-! ## A137340.P1388461885206733225

`A135522(n+1)-A135522(n)`
-/

namespace A137340.P1388461885206733225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135522 (n + 1) - A135522 n

end

end A137340.P1388461885206733225

namespace A137340

/-- `A135522(n+1)-A135522(n)` -/
def P1388461885206733225.Spec : Prop :=
  ∀ n, P1388461885206733225.a n = A137340 n

end A137340

/-! ## A137340.P11997306799594056464

`2*A060925(n)-A033999(n)`
-/

namespace A137340.P11997306799594056464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060925 n - A033999 n

end

end A137340.P11997306799594056464

namespace A137340

/-- `2*A060925(n)-A033999(n)` -/
def P11997306799594056464.Spec : Prop :=
  ∀ n, P11997306799594056464.a n = A137340 n

end A137340

/-!
# A137341: a(n) = n! * A000110(n) where A000110 is the sequence of Bell numbers.

The programs for A137341, there is no canonical definition to state claims against.
-/

/-! ## A137341.P7548027360751488237

`n!*A000110(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137341.P7548027360751488237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000110 n

end

end A137341.P7548027360751488237

/-! ## A137341.P14545547441229149520

`abs(n!*A292935(n))`
-/

namespace A137341.P14545547441229149520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A292935 n|

end

end A137341.P14545547441229149520

/-! ## A137341.P3994466206549482838

`sqrt(A001247(n))*n!`
-/

namespace A137341.P3994466206549482838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001247 n : ℝ) * (Nat.factorial n : ℝ)

end

end A137341.P3994466206549482838

/-! ## A137341.P3553441200696836844

`n!*A011971(∑[n])`
-/

namespace A137341.P3553441200696836844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137341.P3553441200696836844

/-! ## A137341.P4145382510310930368

`n!*A049020(∑[n])`
-/

namespace A137341.P4145382510310930368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A049020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137341.P4145382510310930368

/-!
# A137344: a(n)=4a(n-2). Also 3*A084221.

The programs for A137344, the canonical program `A137344.P13027439129769656836` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137344 has offset 0).

The definition of A137344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)` (program `A137344.P13027439129769656836`, by `A137344.P13027439129769656836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137344.P13027439129769656836

`4*a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137344

/-- `4*a(n-2)` -/
def P13027439129769656836.Spec : Prop :=
  ∀ n, (P13027439129769656836.a n : ℤ) = A137344 n

theorem P13027439129769656836.correct : P13027439129769656836.Spec := by
  intro n
  simp only [A137344]

end A137344

/-! ## A137344.P2329398660067411204

`ogf((3+9x)/(1-4x^2))`
-/

namespace A137344.P2329398660067411204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9] [1, 0, -4] n

end

end A137344.P2329398660067411204

namespace A137344

/-- `ogf((3+9x)/(1-4x^2))` -/
def P2329398660067411204.Spec : Prop :=
  ∀ n, P2329398660067411204.a n = A137344 n

end A137344

/-! ## A137344.P10600080599967588659

`abs(Δ[(-2)^xor(1, n)])`
-/

namespace A137344.P10600080599967588659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A137344.P10600080599967588659

namespace A137344

/-- `abs(Δ[(-2)^xor(1, n)])` -/
def P10600080599967588659.Spec : Prop :=
  ∀ n, P10600080599967588659.a n = A137344 n

end A137344

/-! ## A137344.P17791581184518061521

`∏[4/a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A137344.P17791581184518061521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137344.P17791581184518061521

namespace A137344

/-- `∏[4/a(n-1)]` -/
def P17791581184518061521.Spec : Prop :=
  ∀ n, P17791581184518061521.a n = (A137344 n : ℚ)

end A137344

/-! ## A137344.P11380245929020018451

`lcm(3, Δ[(-2)^xor(1, n)])`
-/

namespace A137344.P11380245929020018451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (n + 1) - f1 n)

end

end A137344.P11380245929020018451

namespace A137344

/-- `lcm(3, Δ[(-2)^xor(1, n)])` -/
def P11380245929020018451.Spec : Prop :=
  ∀ n, (P11380245929020018451.a n : ℤ) = A137344 n

end A137344

/-! ## A137344.P8469448088100213431

`a(n-2)/(1/2)²` with `a(0)=3, a(1)=9`
-/

namespace A137344.P8469448088100213431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 9] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A137344.P8469448088100213431

namespace A137344

/-- `a(n-2)/(1/2)²` -/
def P8469448088100213431.Spec : Prop :=
  ∀ n, P8469448088100213431.a n = (A137344 n : ℚ)

end A137344

/-! ## A137344.P11050819036261738057

`3*A084221(n)`
-/

namespace A137344.P11050819036261738057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A084221 n

end

end A137344.P11050819036261738057

namespace A137344

/-- `3*A084221(n)` -/
def P11050819036261738057.Spec : Prop :=
  ∀ n, P11050819036261738057.a n = A137344 n

end A137344

/-! ## A137344.P8457570889657309729

`lcm(3, A074323(n+1)²)`
-/

namespace A137344.P8457570889657309729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A074323 (n + 1) ^ 2)

end

end A137344.P8457570889657309729

namespace A137344

/-- `lcm(3, A074323(n+1)²)` -/
def P8457570889657309729.Spec : Prop :=
  ∀ n, (P8457570889657309729.a n : ℤ) = A137344 n

end A137344

/-! ## A137344.P8040454472532952894

`3/2*A122756(n+1)`
-/

namespace A137344.P8040454472532952894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A122756 (n + 1) : ℚ)

end

end A137344.P8040454472532952894

namespace A137344

/-- `3/2*A122756(n+1)` -/
def P8040454472532952894.Spec : Prop :=
  ∀ n, P8040454472532952894.a n = (A137344 n : ℚ)

end A137344

/-! ## A137344.P717357498962261682

`2^(n-1)*A010725(n)`
-/

namespace A137344.P717357498962261682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A010725 n : ℚ)

end

end A137344.P717357498962261682

namespace A137344

/-- `2^(n-1)*A010725(n)` -/
def P717357498962261682.Spec : Prop :=
  ∀ n, P717357498962261682.a n = (A137344 n : ℚ)

end A137344

/-! ## A137344.P833634735805624620

`∑[A007283((n*gcd(2, n))%(n+2))]`
-/

namespace A137344.P833634735805624620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n * Nat.gcd 2 n % (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137344.P833634735805624620

namespace A137344

/-- `∑[A007283((n*gcd(2, n))%(n+2))]` -/
def P833634735805624620.Spec : Prop :=
  ∀ n, P833634735805624620.a n = A137344 n

end A137344

/-! ## A137344.P6282120905408899788

`A134693(A042948(n))`
-/

namespace A137344.P6282120905408899788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 (A042948 n).toNat

end

end A137344.P6282120905408899788

namespace A137344

/-- `A134693(A042948(n))` -/
def P6282120905408899788.Spec : Prop :=
  ∀ n, P6282120905408899788.a n = A137344 n

end A137344

/-! ## A137344.P17672353039202040084

`A178715(A047221(n+2))`
-/

namespace A137344.P17672353039202040084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178715 (A047221 (n + 2)).toNat

end

end A137344.P17672353039202040084

namespace A137344

/-- `A178715(A047221(n+2))` -/
def P17672353039202040084.Spec : Prop :=
  ∀ n, P17672353039202040084.a n = A137344 n

end A137344

/-! ## A137344.P11098673188500713237

`A016116(n)*A134693(n)`
-/

namespace A137344.P11098673188500713237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A134693 n

end

end A137344.P11098673188500713237

namespace A137344

/-- `A016116(n)*A134693(n)` -/
def P11098673188500713237.Spec : Prop :=
  ∀ n, P11098673188500713237.a n = A137344 n

end A137344

/-! ## A137344.P4173396394877097522

`A010707(n)*A213173(n)`
-/

namespace A137344.P4173396394877097522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 n * A213173 n

end

end A137344.P4173396394877097522

namespace A137344

/-- `A010707(n)*A213173(n)` -/
def P4173396394877097522.Spec : Prop :=
  ∀ n, P4173396394877097522.a n = A137344 n

end A137344

/-! ## A137344.P9786001151183855670

`lcm(A010707(n), A084221(n))`
-/

namespace A137344.P9786001151183855670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010707 n) (A084221 n)

end

end A137344.P9786001151183855670

namespace A137344

/-- `lcm(A010707(n), A084221(n))` -/
def P9786001151183855670.Spec : Prop :=
  ∀ n, (P9786001151183855670.a n : ℤ) = A137344 n

end A137344

/-! ## A137344.P3545426620844759470

`lcm(A134693(n), A164111(n))`
-/

namespace A137344.P3545426620844759470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134693 n) (A164111 n)

end

end A137344.P3545426620844759470

namespace A137344

/-- `lcm(A134693(n), A164111(n))` -/
def P3545426620844759470.Spec : Prop :=
  ∀ n, (P3545426620844759470.a n : ℤ) = A137344 n

end A137344

/-! ## A137344.P5428608197066808040

`A016116(n)²*A010707(n)`
-/

namespace A137344.P5428608197066808040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A010707 n

end

end A137344.P5428608197066808040

namespace A137344

/-- `A016116(n)²*A010707(n)` -/
def P5428608197066808040.Spec : Prop :=
  ∀ n, P5428608197066808040.a n = A137344 n

end A137344

/-! ## A137344.P4563515934301723856

`A094360(n+1)+A094360(n)`
-/

namespace A137344.P4563515934301723856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 (n + 1) + A094360 n

end

end A137344.P4563515934301723856

namespace A137344

/-- `A094360(n+1)+A094360(n)` -/
def P4563515934301723856.Spec : Prop :=
  ∀ n, P4563515934301723856.a n = A137344 n

end A137344

/-! ## A137344.P3864694406780730588

`A122756(n+1)+A084221(n)`
-/

namespace A137344.P3864694406780730588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (n + 1) + A084221 n

end

end A137344.P3864694406780730588

namespace A137344

/-- `A122756(n+1)+A084221(n)` -/
def P3864694406780730588.Spec : Prop :=
  ∀ n, P3864694406780730588.a n = A137344 n

end A137344

/-!
# A137345: a(n) = binomial( n(n+1)/2, n) mod n.

The programs for A137345, the canonical program `A137345.P18290114486492900245` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137345 has offset 1).

The definition of A137345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+1)*(n+2)/2, n+1)%(n+1)` (program `A137345.P18290114486492900245`, by `A137345.P18290114486492900245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137345.P15789791345844233936

`A014068(n+1)%(n+1)`
-/

namespace A137345.P15789791345844233936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014068 (n + 1)) (n + 1 : ℤ)

end

end A137345.P15789791345844233936

namespace A137345

/-- `A014068(n+1)%(n+1)` -/
def P15789791345844233936.Spec : Prop :=
  ∀ n, P15789791345844233936.a n = A137345 (n + 1)

end A137345

/-! ## A137345.P18290114486492900245

`C((n+1)*(n+2)/2, n+1)%(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137345

/-- `C((n+1)*(n+2)/2, n+1)%(n+1)` -/
def P18290114486492900245.Spec : Prop :=
  ∀ n, (P18290114486492900245.a n : ℤ) = A137345 (n + 1)

theorem P18290114486492900245.correct : P18290114486492900245.Spec := by
  intro n
  simp only [A137345, Nat.add_sub_cancel]

end A137345

/-! ## A137345.P2375103003070441319

`Δ[A139125(round(sqrt(n²+1))-1)]`
-/

namespace A137345.P2375103003070441319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139125 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137345.P2375103003070441319

namespace A137345

/-- `Δ[A139125(round(sqrt(n²+1))-1)]` -/
def P2375103003070441319.Spec : Prop :=
  ∀ n, P2375103003070441319.a n = A137345 (n + 1)

end A137345

/-! ## A137345.P18281952974734015926

`Δ[A139125(floor(acot(n)+n)-1)]%(n+1)`
-/

namespace A137345.P18281952974734015926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139125 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A137345.P18281952974734015926

namespace A137345

/-- `Δ[A139125(floor(acot(n)+n)-1)]%(n+1)` -/
def P18281952974734015926.Spec : Prop :=
  ∀ n, P18281952974734015926.a n = A137345 (n + 1)

end A137345

/-! ## A137345.P14846644150221192885

`Δ[A139125(n-A057427(n))]%(n+1)`
-/

namespace A137345.P14846644150221192885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139125 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A137345.P14846644150221192885

namespace A137345

/-- `Δ[A139125(n-A057427(n))]%(n+1)` -/
def P14846644150221192885.Spec : Prop :=
  ∀ n, P14846644150221192885.a n = A137345 (n + 1)

end A137345

/-! ## A137345.P7141522099151972776

`A139125(n)-A139125(A004273(n)-n)`
-/

namespace A137345.P7141522099151972776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139125 n - A139125 (A004273 n - (n : ℤ)).toNat

end

end A137345.P7141522099151972776

namespace A137345

/-- `A139125(n)-A139125(A004273(n)-n)` -/
def P7141522099151972776.Spec : Prop :=
  ∀ n, P7141522099151972776.a n = A137345 (n + 1)

end A137345

/-! ## A137345.P471993922024131523

`A139125(n)-A139125(A004526(A004273(n)))`
-/

namespace A137345.P471993922024131523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139125 n - A139125 (A004526 (A004273 n).toNat).toNat

end

end A137345.P471993922024131523

namespace A137345

/-- `A139125(n)-A139125(A004526(A004273(n)))` -/
def P471993922024131523.Spec : Prop :=
  ∀ n, P471993922024131523.a n = A137345 (n + 1)

end A137345

/-! ## A137345.P4726142070803941584

`A139125(n)-A139125(A000196(n²-n))`
-/

namespace A137345.P4726142070803941584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139125 n - A139125 (A000196 (n ^ 2 - n)).toNat

end

end A137345.P4726142070803941584

namespace A137345

/-- `A139125(n)-A139125(A000196(n²-n))` -/
def P4726142070803941584.Spec : Prop :=
  ∀ n, P4726142070803941584.a n = A137345 (n + 1)

end A137345

/-!
# A137350: A triangular Sequence of coefficients of a three deep polynomial recursion based on a Chebyshev kind and a Padovan recursion: Chebyshev; p(x,n)=x*p(x,n-1)-p(x,n-2); Padovan: a(n)=a(n-2)+a(n-3); Q(x, n) = x*Q(x, n - 2) - Q(x, n - 3).

The programs for A137350, there is no canonical definition to state claims against.
-/

/-! ## A137350.P13170611027248406815

`Δ[-A260089(A260058(n+1))]`
-/

namespace A137350.P13170611027248406815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A260089 (A260058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137350.P13170611027248406815

/-! ## A137350.P2960590176553519869

`∏{e}[A002560(2*(n+3)), #-A087011(n+5)]`
-/

namespace A137350.P2960590176553519869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002560 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A087011 (n + 5))

end

end A137350.P2960590176553519869

/-! ## A137350.P14967764198482553954

`A037012(A152955(n+1)-A353725(n+1))`
-/

namespace A137350.P14967764198482553954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A152955 (n + 1) - A353725 (n + 1)).toNat

end

end A137350.P14967764198482553954

/-! ## A137350.P4483041093018915394

`A152066(A059611(n+1))`
-/

namespace A137350.P4483041093018915394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152066 (A059611 (n + 1)).toNat

end

end A137350.P4483041093018915394

/-! ## A137350.P5386797773865006468

`Δ[A330036(n+3)]%A294900(n+1)`
-/

namespace A137350.P5386797773865006468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A294900 (n + 1))

end

end A137350.P5386797773865006468

/-!
# A137351: Composite numbers n such that x^2 - n*y^2 represents -1.

The programs for A137351, there is no canonical definition to state claims against.
-/

/-! ## A137351.P16229638734152499721

`∩[A003814(n+1), A174051(n+1)]`
-/

namespace A137351.P16229638734152499721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P16229638734152499721

/-! ## A137351.P10392132901566415741

`∩[A031396(n+1), A174051(n+1)]`
-/

namespace A137351.P10392132901566415741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P10392132901566415741

/-! ## A137351.P143454607502350347

`filter[A003814(n+1), A005171(#)]`
-/

namespace A137351.P143454607502350347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A137351.P143454607502350347

/-! ## A137351.P16177037760705817503

`filter[A003814(n+1), A066247(#)]`
-/

namespace A137351.P16177037760705817503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A137351.P16177037760705817503

/-! ## A137351.P8825973872620112521

`filter[A031396(n+1), A066247(#)]`
-/

namespace A137351.P8825973872620112521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A137351.P8825973872620112521

/-! ## A137351.P4264210281468017771

`filter[A003814(n+1), A202238(#)]`
-/

namespace A137351.P4264210281468017771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A137351.P4264210281468017771

/-! ## A137351.P2190201567702975271

`filter[A031396(n+1), A202238(#)]`
-/

namespace A137351.P2190201567702975271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A137351.P2190201567702975271

/-! ## A137351.P1116693693202965928

`filter[A003814(n+1), A292438(#)]`
-/

namespace A137351.P1116693693202965928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A137351.P1116693693202965928

/-! ## A137351.P1557991147534667216

`filter[A031396(n+2), A005171(#)]`
-/

namespace A137351.P1557991147534667216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A137351.P1557991147534667216

/-! ## A137351.P2494244634650193884

`filter[A031396(n+2), A292438(#)]`
-/

namespace A137351.P2494244634650193884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A137351.P2494244634650193884

/-! ## A137351.P9656606834726633428

`∩[A002808(n+1), A003814(n+1)]`
-/

namespace A137351.P9656606834726633428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P9656606834726633428

/-! ## A137351.P11438679647132357078

`∩[A003814(n+1), A018252(n+1)]`
-/

namespace A137351.P11438679647132357078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P11438679647132357078

/-! ## A137351.P16744286838542050498

`∩[A002808(n+1), A031396(n+1)]`
-/

namespace A137351.P16744286838542050498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P16744286838542050498

/-! ## A137351.P4274791738240717673

`∩[A003814(n+1), A141468(n+1)]`
-/

namespace A137351.P4274791738240717673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P4274791738240717673

/-! ## A137351.P5552459103703274180

`∩[A003814(n+1), A171993(n+1)]`
-/

namespace A137351.P5552459103703274180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P5552459103703274180

/-! ## A137351.P13924736629247874338

`∩[A003814(n+1), A164098(n+1)]`
-/

namespace A137351.P13924736629247874338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P13924736629247874338

/-! ## A137351.P17942884592797737196

`∩[A003814(n+1), A257586(n+1)]`
-/

namespace A137351.P17942884592797737196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P17942884592797737196

/-! ## A137351.P16415160527138620594

`∩[A003814(n+1), A121893(n+1)]`
-/

namespace A137351.P16415160527138620594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P16415160527138620594

/-! ## A137351.P9687941888610351918

`∩[A031396(n+1), A121893(n+1)]`
-/

namespace A137351.P9687941888610351918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P9687941888610351918

/-! ## A137351.P10109903398457995345

`∩[A003814(n+1), A164276(n+1)]`
-/

namespace A137351.P10109903398457995345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137351.P10109903398457995345

/-!
# A137352: Number of labeled graphs with at least one cycle in which every connected component has at most one cycle.

The programs for A137352, there is no canonical definition to state claims against.
-/

/-! ## A137352.P1975558009301596193

`A133686(n+3)-A001858(n+3)`
-/

namespace A137352.P1975558009301596193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133686 (n + 3) - A001858 (n + 3)

end

end A137352.P1975558009301596193

/-!
# A137353: Minimal number of edges in a (P_4,n)-edge stable graph.

The programs for A137353, there is no canonical definition to state claims against.
-/

/-! ## A137353.P7388177006714572182

`comp[∑[n-char[3]]]+2`
-/

namespace A137353.P7388177006714572182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A137353.P7388177006714572182

/-! ## A137353.P988633487027333237

`A074764(comp[∑[n-2]]+1)`
-/

namespace A137353.P988633487027333237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A137353.P988633487027333237

/-! ## A137353.P18299113129696202925

`A262564(A014132(n+2))`
-/

namespace A137353.P18299113129696202925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (A014132 (n + 2)).toNat

end

end A137353.P18299113129696202925

/-! ## A137353.P12994213889759060785

`eq[A033326(n+1), A326822(n)]`
-/

namespace A137353.P12994213889759060785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137353.P12994213889759060785

/-! ## A137353.P4996862448191315863

`Δ[A060432(n+1)+A027379(n)]`
-/

namespace A137353.P4996862448191315863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137353.P4996862448191315863

/-! ## A137353.P4817147666959151174

`lt[A243978(n), log(A047993(n+3))]`
-/

namespace A137353.P4817147666959151174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A047993 (n + 3) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A137353.P4817147666959151174

/-!
# A137354: Lexicographically earliest subsequence of the perfect powers in A001597 such that first differences are an increasing sequence of primes.

The programs for A137354, there is no canonical definition to state claims against.
-/

/-! ## A137354.P17648615320829246878

`∑[A137355(n+1)]`
-/

namespace A137354.P17648615320829246878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137354.P17648615320829246878

/-! ## A137354.P12164924908589668866

`∑[record[A137355(A020986(n))]]`
-/

namespace A137354.P12164924908589668866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137354.P12164924908589668866

/-! ## A137354.P17445487544134241803

`∑[record[A137355(A028920(n))]]`
-/

namespace A137354.P17445487544134241803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137354.P17445487544134241803

/-! ## A137354.P11979517741543308637

`∑[record[A137355(A033930(n))]]`
-/

namespace A137354.P11979517741543308637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137354.P11979517741543308637

/-! ## A137354.P11676163128447834034

`∑[record[A137355(A051340(n))]]`
-/

namespace A137354.P11676163128447834034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137355 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137354.P11676163128447834034

/-!
# A137356: a(n) = Sum_{k <= n/2 } binomial(n-2k, 3k).

The programs for A137356, the canonical program `A137356.P13907592445562574206` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137356 has offset 0).

The definition of A137356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137356.P13907592445562574206

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137356

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-5)` -/
def P13907592445562574206.Spec : Prop :=
  ∀ n, P13907592445562574206.a n = A137356 n

theorem P13907592445562574206.correct : P13907592445562574206.Spec := by
  intro n
  simp only [A137356]

end A137356

/-! ## A137356.P5188748880817134010

`A052920(3*n)`
-/

namespace A137356.P5188748880817134010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (3 * n)

end

end A137356.P5188748880817134010

namespace A137356

/-- `A052920(3*n)` -/
def P5188748880817134010.Spec : Prop :=
  ∀ n, P5188748880817134010.a n = A137356 n

end A137356

/-! ## A137356.P15741409030903257111

`A052920(A008486(n))+A000007(n)`
-/

namespace A137356.P15741409030903257111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A008486 n).toNat + A000007 n

end

end A137356.P15741409030903257111

namespace A137356

/-- `A052920(A008486(n))+A000007(n)` -/
def P15741409030903257111.Spec : Prop :=
  ∀ n, P15741409030903257111.a n = A137356 n

end A137356

/-! ## A137356.P8430535597897332705

`lcm(A033999(n), A052920(A005843(n)+n))`
-/

namespace A137356.P8430535597897332705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A052920 (A005843 n + (n : ℤ)).toNat)

end

end A137356.P8430535597897332705

namespace A137356

/-- `lcm(A033999(n), A052920(A005843(n)+n))` -/
def P8430535597897332705.Spec : Prop :=
  ∀ n, (P8430535597897332705.a n : ℤ) = A137356 n

end A137356

/-! ## A137356.P11209281224744087739

`Δ[A137357(n)]`
-/

namespace A137356.P11209281224744087739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137356.P11209281224744087739

namespace A137356

/-- `Δ[A137357(n)]` -/
def P11209281224744087739.Spec : Prop :=
  ∀ n, P11209281224744087739.a n = A137356 n

end A137356

/-! ## A137356.P18288387701471052345

`Δ[A052920(A016789(n))]`
-/

namespace A137356.P18288387701471052345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137356.P18288387701471052345

namespace A137356

/-- `Δ[A052920(A016789(n))]` -/
def P18288387701471052345.Spec : Prop :=
  ∀ n, P18288387701471052345.a n = A137356 n

end A137356

/-! ## A137356.P10638162092334501748

`Δ[A052920(A016777(n)+1)]`
-/

namespace A137356.P10638162092334501748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A016777 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137356.P10638162092334501748

namespace A137356

/-- `Δ[A052920(A016777(n)+1)]` -/
def P10638162092334501748.Spec : Prop :=
  ∀ n, P10638162092334501748.a n = A137356 n

end A137356

/-! ## A137356.P8668295617811331944

`Δ[A052920(A103517(n)+n)]`
-/

namespace A137356.P8668295617811331944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A103517 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137356.P8668295617811331944

namespace A137356

/-- `Δ[A052920(A103517(n)+n)]` -/
def P8668295617811331944.Spec : Prop :=
  ∀ n, P8668295617811331944.a n = A137356 n

end A137356

/-! ## A137356.P8220055627539057105

`A137357(n+1)-A137357(n)`
-/

namespace A137356.P8220055627539057105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137357 (n + 1) - A137357 n

end

end A137356.P8220055627539057105

namespace A137356

/-- `A137357(n+1)-A137357(n)` -/
def P8220055627539057105.Spec : Prop :=
  ∀ n, P8220055627539057105.a n = A137356 n

end A137356

/-! ## A137356.P3599322692615802999

`Δ[A052920(A008486(n+1)-1)]`
-/

namespace A137356.P3599322692615802999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A008486 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137356.P3599322692615802999

namespace A137356

/-- `Δ[A052920(A008486(n+1)-1)]` -/
def P3599322692615802999.Spec : Prop :=
  ∀ n, P3599322692615802999.a n = A137356 n

end A137356

/-! ## A137356.P13876046593085220258

`Δ[Δ[A137358(n)]]`
-/

namespace A137356.P13876046593085220258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137356.P13876046593085220258

namespace A137356

/-- `Δ[Δ[A137358(n)]]` -/
def P13876046593085220258.Spec : Prop :=
  ∀ n, P13876046593085220258.a n = A137356 n

end A137356

/-!
# A137357: a(n) = Sum_{k <= n/2} binomial(n-2k, 3k+1).

The programs for A137357, the canonical program `A137357.P8010613889612940067` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137357 has offset 0).

The definition of A137357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137357.P8010613889612940067

`A052920(3*n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A137357

/-- `A052920(3*n+2)` -/
def P8010613889612940067.Spec : Prop :=
  ∀ n, P8010613889612940067.a n = A137357 n

theorem P8010613889612940067.correct : P8010613889612940067.Spec := by
  intro n
  simp only [A137357]

end A137357

/-! ## A137357.P8301721471152111371

`Δ[A137358(n)]`
-/

namespace A137357.P8301721471152111371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137357.P8301721471152111371

namespace A137357

/-- `Δ[A137358(n)]` -/
def P8301721471152111371.Spec : Prop :=
  ∀ n, P8301721471152111371.a n = A137357 n

end A137357

/-! ## A137357.P8363407947823085484

`A137358(n+1)-A137358(n)`
-/

namespace A137357.P8363407947823085484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137358 (n + 1) - A137358 n

end

end A137357.P8363407947823085484

namespace A137357

/-- `A137358(n+1)-A137358(n)` -/
def P8363407947823085484.Spec : Prop :=
  ∀ n, P8363407947823085484.a n = A137357 n

end A137357

/-! ## A137357.P17688781905962110744

`A137402(n+1)-A137356(n+2)`
-/

namespace A137357.P17688781905962110744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137402 (n + 1) - A137356 (n + 2)

end

end A137357.P17688781905962110744

namespace A137357

/-- `A137402(n+1)-A137356(n+2)` -/
def P17688781905962110744.Spec : Prop :=
  ∀ n, P17688781905962110744.a n = A137357 n

end A137357

/-! ## A137357.P5419563966533977148

`Δ[Δ[A137356(n+2)]]`
-/

namespace A137357.P5419563966533977148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137356 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137357.P5419563966533977148

namespace A137357

/-- `Δ[Δ[A137356(n+2)]]` -/
def P5419563966533977148.Spec : Prop :=
  ∀ n, P5419563966533977148.a n = A137357 n

end A137357

/-!
# A137358: a(n) = Sum_{k <= n/2} binomial(n-2k, 3k+2).

The programs for A137358, the canonical program `A137358.P15206002493302714902` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137358 has offset 0).

The definition of A137358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137358.P15206002493302714902

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137358

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-5)` -/
def P15206002493302714902.Spec : Prop :=
  ∀ n, P15206002493302714902.a n = A137358 n

theorem P15206002493302714902.correct : P15206002493302714902.Spec := by
  intro n
  simp only [A137358]

end A137358

/-! ## A137358.P12466741993653086040

`A052920(3*n+4)`
-/

namespace A137358.P12466741993653086040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (3 * n + 4)

end

end A137358.P12466741993653086040

namespace A137358

/-- `A052920(3*n+4)` -/
def P12466741993653086040.Spec : Prop :=
  ∀ n, P12466741993653086040.a n = A137358 n

end A137358

/-! ## A137358.P737567990394993079

`A137357(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A137358.P737567990394993079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A137357 (n - 1) + a (n - 1)

end

end A137358.P737567990394993079

namespace A137358

/-- `A137357(n-1)+a(n-1)` -/
def P737567990394993079.Spec : Prop :=
  ∀ n, P737567990394993079.a n = A137358 n

end A137358

/-! ## A137358.P16206907292097046477

`Δ[A137356(n+2)]`
-/

namespace A137358.P16206907292097046477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137358.P16206907292097046477

namespace A137358

/-- `Δ[A137356(n+2)]` -/
def P16206907292097046477.Spec : Prop :=
  ∀ n, P16206907292097046477.a n = A137358 n

end A137358

/-! ## A137358.P12077357886737808723

`Δ[A052920(A008486(n+2))]`
-/

namespace A137358.P12077357886737808723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A008486 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137358.P12077357886737808723

namespace A137358

/-- `Δ[A052920(A008486(n+2))]` -/
def P12077357886737808723.Spec : Prop :=
  ∀ n, P12077357886737808723.a n = A137358 n

end A137358

/-! ## A137358.P14942703928803037492

`A137356(n+3)-A137356(n+2)`
-/

namespace A137358.P14942703928803037492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137356 (n + 3) - A137356 (n + 2)

end

end A137358.P14942703928803037492

namespace A137358

/-- `A137356(n+3)-A137356(n+2)` -/
def P14942703928803037492.Spec : Prop :=
  ∀ n, P14942703928803037492.a n = A137358 n

end A137358

/-! ## A137358.P6398978218707026113

`Δ[Δ[A137357(n+2)]]`
-/

namespace A137358.P6398978218707026113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137357 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137358.P6398978218707026113

namespace A137358

/-- `Δ[Δ[A137357(n+2)]]` -/
def P6398978218707026113.Spec : Prop :=
  ∀ n, P6398978218707026113.a n = A137358 n

end A137358

/-!
# A137359: a(n) = Sum_{k <= n/2 } k*binomial(n-2k, 3k).

The programs for A137359, there is no canonical definition to state claims against.
-/

/-! ## A137359.P7651332400994114486

`Δ[A137360(n)]`
-/

namespace A137359.P7651332400994114486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137359.P7651332400994114486

/-! ## A137359.P6829198453475870478

`A137360(n+1)-A137360(n)`
-/

namespace A137359.P6829198453475870478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137360 (n + 1) - A137360 n

end

end A137359.P6829198453475870478

/-! ## A137359.P10483746355673921491

`Δ[Δ[A137361(n)]]`
-/

namespace A137359.P10483746355673921491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137361 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137359.P10483746355673921491

/-! ## A137359.P17330828486325820121

`∑{e}[A257273(n), A134987(#)]`
-/

namespace A137359.P17330828486325820121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A134987 (Nat.factorization (f1 n).natAbs p)

end

end A137359.P17330828486325820121

/-! ## A137359.P729415285537207617

`∑[∑[A135385(A114044(n))]]`
-/

namespace A137359.P729415285537207617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135385 (A114044 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137359.P729415285537207617

/-!
# A137360: a(n) = Sum_{k <= n/2 } k*binomial(n-2k, 3k+1).

The programs for A137360, there is no canonical definition to state claims against.
-/

/-! ## A137360.P11751471554343069725

`∑[A137359(abs(1-n))]`
-/

namespace A137360.P11751471554343069725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137360.P11751471554343069725

/-! ## A137360.P1873486597271484191

`Δ[A137361(n)]`
-/

namespace A137360.P1873486597271484191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137360.P1873486597271484191

/-! ## A137360.P15055970915971599503

`∑[A137359(n)]-A137359(n)`
-/

namespace A137360.P15055970915971599503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137359 n

end

end A137360.P15055970915971599503

/-! ## A137360.P10535359877724736983

`A137361(n+1)-A137361(n)`
-/

namespace A137360.P10535359877724736983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137361 (n + 1) - A137361 n

end

end A137360.P10535359877724736983

/-! ## A137360.P18209763755717578364

`Δ[Δ[A137359(n+2)]-A137358(n)]`
-/

namespace A137360.P18209763755717578364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A137358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137360.P18209763755717578364

/-! ## A137360.P12255840538880461817

`Δ[Δ[A137359(n+2)]]-A137357(n)`
-/

namespace A137360.P12255840538880461817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137357 n

end

end A137360.P12255840538880461817

/-!
# A137361: a(n) = Sum_{k=0..n/2} k*binomial(n-2*k, 3*k+2).

The programs for A137361, there is no canonical definition to state claims against.
-/

/-! ## A137361.P8518224171179196285

`∑[A137360(abs(1-n))]`
-/

namespace A137361.P8518224171179196285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137360 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137361.P8518224171179196285

/-! ## A137361.P6209657412029848182

`∑[∑[A137359(abs(2-n))]]`
-/

namespace A137361.P6209657412029848182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137361.P6209657412029848182

/-! ## A137361.P12508355930573506076

`A137360(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A137361.P12508355930573506076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A137360 (n - 1) + a (n - 1)

end

end A137361.P12508355930573506076

/-! ## A137361.P8278628270403730239

`∑[A137360(n)]-A137360(n)`
-/

namespace A137361.P8278628270403730239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137360 n

end

end A137361.P8278628270403730239

/-! ## A137361.P2232341238128024149

`Δ[A137359(n+2)]-A137358(n)`
-/

namespace A137361.P2232341238128024149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137358 n

end

end A137361.P2232341238128024149

/-!
# A137362: Positions at which the truncated square root of triangular numbers is unique.

The programs for A137362, the canonical program `A137362.P376097695919881041` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137362 has offset 1).

The definition of A137362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137362.P376097695919881041

`2*(round(sqrt(∑[n+1]))+1)+n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137362

/-- `2*(round(sqrt(∑[n+1]))+1)+n` -/
def P376097695919881041.Spec : Prop :=
  ∀ n, P376097695919881041.a n = A137362 (n + 1)

theorem P376097695919881041.correct : P376097695919881041.Spec := by
  intro n
  simp only [A137362, Nat.add_sub_cancel]

end A137362

/-! ## A137362.P14652127927559722104

`∩[A022846(n+1)+1, A022846(n+1)]`
-/

namespace A137362.P14652127927559722104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137362.P14652127927559722104

namespace A137362

/-- `∩[A022846(n+1)+1, A022846(n+1)]` -/
def P14652127927559722104.Spec : Prop :=
  ∀ n, (P14652127927559722104.a n : ℤ) = A137362 (n + 1)

end A137362

/-! ## A137362.P13040770609215347536

`A022846(A003152(2*n+3)-A186221(n+1))`
-/

namespace A137362.P13040770609215347536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A003152 (2 * n + 3) - A186221 (n + 1)).toNat

end

end A137362.P13040770609215347536

namespace A137362

/-- `A022846(A003152(2*n+3)-A186221(n+1))` -/
def P13040770609215347536.Spec : Prop :=
  ∀ n, P13040770609215347536.a n = A137362 (n + 1)

end A137362

/-! ## A137362.P4635784962225021408

`A022846(A003152(2*n+3)-(A194990(2*n+3)+n))`
-/

namespace A137362.P4635784962225021408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A003152 (2 * n + 3) - (A194990 (2 * n + 3) + (n : ℤ))).toNat

end

end A137362.P4635784962225021408

namespace A137362

/-- `A022846(A003152(2*n+3)-(A194990(2*n+3)+n))` -/
def P4635784962225021408.Spec : Prop :=
  ∀ n, P4635784962225021408.a n = A137362 (n + 1)

end A137362

/-! ## A137362.P17238390952130163268

`A022846(A003152(2*n+3)-(A172474(2*n+3)+n+1))`
-/

namespace A137362.P17238390952130163268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A003152 (2 * n + 3) - (A172474 (2 * n + 3) + (n + 1 : ℤ))).toNat

end

end A137362.P17238390952130163268

namespace A137362

/-- `A022846(A003152(2*n+3)-(A172474(2*n+3)+n+1))` -/
def P17238390952130163268.Spec : Prop :=
  ∀ n, P17238390952130163268.a n = A137362 (n + 1)

end A137362

/-! ## A137362.P8038212292835509735

`A022846(A003152(2*n+3)-(A036715(n+1)-A036713(n+1)+n))`
-/

namespace A137362.P8038212292835509735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A003152 (2 * n + 3) - (A036715 (n + 1) - A036713 (n + 1) + (n : ℤ))).toNat

end

end A137362.P8038212292835509735

namespace A137362

/-- `A022846(A003152(2*n+3)-(A036715(n+1)-A036713(n+1)+n))` -/
def P8038212292835509735.Spec : Prop :=
  ∀ n, P8038212292835509735.a n = A137362 (n + 1)

end A137362

/-!
# A137364: Prime numbers n such that n = p1^2 + p2^2 + p3^2, a sum of squares of 3 distinct prime numbers.

The programs for A137364, there is no canonical definition to state claims against.
-/

/-! ## A137364.P13650194334941225715

`A182479(ceil(log(A331872(3*n+5))/2))`
-/

namespace A137364.P13650194334941225715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182479 ⌈Real.log (A331872 (3 * n + 5) : ℝ) / 2⌉.toNat

end

end A137364.P13650194334941225715

/-! ## A137364.P8768586483519062086

`A182479(A025280(n+1))%A135654(2*(n+2))`
-/

namespace A137364.P8768586483519062086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182479 (A025280 (n + 1)).toNat) (A135654 (2 * (n + 2)))

end

end A137364.P8768586483519062086

/-!
# A137365: Prime numbers n such that n = p1^3 + p2^3 + p3^3, a sum of cubes of 3 distinct prime numbers.

The programs for A137365, there is no canonical definition to state claims against.
-/

/-! ## A137365.P6070832409168859076

`∩[A007490(n+1), A138853(n+1)]`
-/

namespace A137365.P6070832409168859076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137365.P6070832409168859076

/-! ## A137365.P1032724592886012524

`∩[A007490(n+1), A138854(n+1)]`
-/

namespace A137365.P1032724592886012524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137365.P1032724592886012524

/-! ## A137365.P7322879237311462738

`p?[A138853(n+1)]`
-/

namespace A137365.P7322879237311462738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137365.P7322879237311462738

/-! ## A137365.P17935728175625820028

`p?[A138854(n+1)]`
-/

namespace A137365.P17935728175625820028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137365.P17935728175625820028

/-! ## A137365.P5409172995462999784

`p?[A138853(-xor(n, -1))-A000007(n)]`
-/

namespace A137365.P5409172995462999784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (-Int.xor (n : ℤ) (-1)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137365.P5409172995462999784

/-! ## A137365.P15510333263619411401

`p?[A138853(-xor(n, -1))-A000038(n)]`
-/

namespace A137365.P15510333263619411401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (-Int.xor (n : ℤ) (-1)).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137365.P15510333263619411401

/-! ## A137365.P1633789658837584420

`p?[A057427(n)*A138853(-xor(n, -1))]`
-/

namespace A137365.P1633789658837584420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A138853 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137365.P1633789658837584420

/-! ## A137365.P9715248156603928574

`A033999(n)²*p?[A138853(-xor(n, -1))]`
-/

namespace A137365.P9715248156603928574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137365.P9715248156603928574

/-! ## A137365.P12065856763710904711

`A000027(p?[A138853(-xor(n, -1))])`
-/

namespace A137365.P12065856763710904711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137365.P12065856763710904711

/-! ## A137365.P3861848617526674954

`∩[A122723(n+1), A138853(n+1)]`
-/

namespace A137365.P3861848617526674954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137365.P3861848617526674954

/-! ## A137365.P3663702247841876402

`∩[A122723(n+1), A138854(n+1)]`
-/

namespace A137365.P3663702247841876402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137365.P3663702247841876402

/-!
# A137367: Subset of A037165 (p(n)*p(n+1)-p(n)-p(n+1)) for twin primes.

The programs for A137367, the canonical program `A137367.P9315581082478897296` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137367 has offset 1).

The definition of A137367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137367.P9315581082478897296

`p?[p?[2*n+1]-2]²-2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137367

/-- `p?[p?[2*n+1]-2]²-2` -/
def P9315581082478897296.Spec : Prop :=
  ∀ n, P9315581082478897296.a n = A137367 (n + 1)

theorem P9315581082478897296.correct : P9315581082478897296.Spec := by
  intro n
  simp only [A137367, Nat.add_sub_cancel]

end A137367

/-! ## A137367.P1806856403968769324

`A108570(n+1)-2`
-/

namespace A137367.P1806856403968769324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108570 (n + 1) - 2

end

end A137367.P1806856403968769324

namespace A137367

/-- `A108570(n+1)-2` -/
def P1806856403968769324.Spec : Prop :=
  ∀ n, P1806856403968769324.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P380594321319504007

`A001359(n+1)²-2`
-/

namespace A137367.P380594321319504007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) ^ 2 - 2

end

end A137367.P380594321319504007

namespace A137367

/-- `A001359(n+1)²-2` -/
def P380594321319504007.Spec : Prop :=
  ∀ n, P380594321319504007.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P5058436000664323043

`A124588(n+2)²-2`
-/

namespace A137367.P5058436000664323043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2) ^ 2 - 2

end

end A137367.P5058436000664323043

namespace A137367

/-- `A124588(n+2)²-2` -/
def P5058436000664323043.Spec : Prop :=
  ∀ n, P5058436000664323043.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P9189116767044268148

`A181747(n+2)²-2`
-/

namespace A137367.P9189116767044268148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2) ^ 2 - 2

end

end A137367.P9189116767044268148

namespace A137367

/-- `A181747(n+2)²-2` -/
def P9189116767044268148.Spec : Prop :=
  ∀ n, P9189116767044268148.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P17125634006270245751

`p?[A001838(n+1)]²-2`
-/

namespace A137367.P17125634006270245751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P17125634006270245751

namespace A137367

/-- `p?[A001838(n+1)]²-2` -/
def P17125634006270245751.Spec : Prop :=
  ∀ n, P17125634006270245751.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P16058097655343497926

`p?[A040976(n+1)]²-2`
-/

namespace A137367.P16058097655343497926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P16058097655343497926

namespace A137367

/-- `p?[A040976(n+1)]²-2` -/
def P16058097655343497926.Spec : Prop :=
  ∀ n, P16058097655343497926.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P13758122393179843668

`p?[A054799(n+1)]²-2`
-/

namespace A137367.P13758122393179843668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P13758122393179843668

namespace A137367

/-- `p?[A054799(n+1)]²-2` -/
def P13758122393179843668.Spec : Prop :=
  ∀ n, P13758122393179843668.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P16708738085432258888

`p?[A063693(n+1)]²-2`
-/

namespace A137367.P16708738085432258888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P16708738085432258888

namespace A137367

/-- `p?[A063693(n+1)]²-2` -/
def P16708738085432258888.Spec : Prop :=
  ∀ n, P16708738085432258888.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P2249122810312063485

`p?[A063700(n+1)]²-2`
-/

namespace A137367.P2249122810312063485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P2249122810312063485

namespace A137367

/-- `p?[A063700(n+1)]²-2` -/
def P2249122810312063485.Spec : Prop :=
  ∀ n, P2249122810312063485.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P6350565206380899615

`p?[A065873(n+1)]²-2`
-/

namespace A137367.P6350565206380899615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P6350565206380899615

namespace A137367

/-- `p?[A065873(n+1)]²-2` -/
def P6350565206380899615.Spec : Prop :=
  ∀ n, P6350565206380899615.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P15687548031470405173

`p?[A066147(n+1)]²-2`
-/

namespace A137367.P15687548031470405173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P15687548031470405173

namespace A137367

/-- `p?[A066147(n+1)]²-2` -/
def P15687548031470405173.Spec : Prop :=
  ∀ n, P15687548031470405173.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P1443674280752644341

`p?[A066692(n+1)]²-2`
-/

namespace A137367.P1443674280752644341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P1443674280752644341

namespace A137367

/-- `p?[A066692(n+1)]²-2` -/
def P1443674280752644341.Spec : Prop :=
  ∀ n, P1443674280752644341.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P11445011649573497024

`p?[A067532(n+1)]²-2`
-/

namespace A137367.P11445011649573497024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P11445011649573497024

namespace A137367

/-- `p?[A067532(n+1)]²-2` -/
def P11445011649573497024.Spec : Prop :=
  ∀ n, P11445011649573497024.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P3436697429658679864

`p?[A069233(n+1)]²-2`
-/

namespace A137367.P3436697429658679864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P3436697429658679864

namespace A137367

/-- `p?[A069233(n+1)]²-2` -/
def P3436697429658679864.Spec : Prop :=
  ∀ n, P3436697429658679864.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P17670389504614460609

`p?[A072282(n+1)]²-2`
-/

namespace A137367.P17670389504614460609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P17670389504614460609

namespace A137367

/-- `p?[A072282(n+1)]²-2` -/
def P17670389504614460609.Spec : Prop :=
  ∀ n, P17670389504614460609.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P17982940662565339595

`p?[A280590(n+1)]²-2`
-/

namespace A137367.P17982940662565339595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P17982940662565339595

namespace A137367

/-- `p?[A280590(n+1)]²-2` -/
def P17982940662565339595.Spec : Prop :=
  ∀ n, P17982940662565339595.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P4079165866960488264

`p?[A078444(n+2)]²-2`
-/

namespace A137367.P4079165866960488264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P4079165866960488264

namespace A137367

/-- `p?[A078444(n+2)]²-2` -/
def P4079165866960488264.Spec : Prop :=
  ∀ n, P4079165866960488264.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P13695000725534011804

`p?[A157049(n+2)]²-2`
-/

namespace A137367.P13695000725534011804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A137367.P13695000725534011804

namespace A137367

/-- `p?[A157049(n+2)]²-2` -/
def P13695000725534011804.Spec : Prop :=
  ∀ n, P13695000725534011804.a n = A137367 (n + 1)

end A137367

/-! ## A137367.P13216895990583408226

`(A144834(n+1)+1)²-2`
-/

namespace A137367.P13216895990583408226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 1) ^ 2 - 2

end

end A137367.P13216895990583408226

namespace A137367

/-- `(A144834(n+1)+1)²-2` -/
def P13216895990583408226.Spec : Prop :=
  ∀ n, P13216895990583408226.a n = A137367 (n + 1)

end A137367

/-!
# A137368: a(n) = least m such that sum of m reciprocal primes starting with n-th prime is >1.

The programs for A137368, there is no canonical definition to state claims against.
-/

/-! ## A137368.P5306870522614659168

`A327600(n+1)+1`
-/

namespace A137368.P5306870522614659168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327600 (n + 1) + 1

end

end A137368.P5306870522614659168

/-! ## A137368.P12686781917365159495

`A092325(n+1)-n`
-/

namespace A137368.P12686781917365159495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092325 (n + 1) - (n : ℤ)

end

end A137368.P12686781917365159495

/-! ## A137368.P17507398620513597806

`abs(A092325(n+1)+A001489(n))`
-/

namespace A137368.P17507398620513597806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092325 (n + 1) + A001489 n|

end

end A137368.P17507398620513597806

/-! ## A137368.P9551475382983339112

`A001478(n+1)+A092325(n+1)+1`
-/

namespace A137368.P9551475382983339112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A092325 (n + 1) + 1)

end

end A137368.P9551475382983339112

/-! ## A137368.P15689606615151042237

`A092325(n+1)+A024000(n+2)+1`
-/

namespace A137368.P15689606615151042237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092325 (n + 1) + A024000 (n + 2) + 1

end

end A137368.P15689606615151042237

/-!
# A137370: Triangle: signed version of A055134.

The programs for A137370, there is no canonical definition to state claims against.
-/

/-! ## A137370.P15499250644272141733

`(and(2, comp[∑[n]]+n)-1)*A055134(n)`
-/

namespace A137370.P15499250644272141733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A055134 n

end

end A137370.P15499250644272141733

/-! ## A137370.P4639856521919941972

`A055134(n)*A097807(n)`
-/

namespace A137370.P4639856521919941972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 n * A097807 n

end

end A137370.P4639856521919941972

/-! ## A137370.P15295461867712374118

`A055134(abs(1-n)+1)/A097807(n)`
-/

namespace A137370.P15295461867712374118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055134 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (A097807 n : ℚ)

end

end A137370.P15295461867712374118

/-! ## A137370.P8918985630069589524

`A015643(A025581(n))*A055134(n)`
-/

namespace A137370.P8918985630069589524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 (A025581 n).toNat * A055134 n

end

end A137370.P8918985630069589524

/-! ## A137370.P10512068723797951267

`A033999(A054238(n))*A055134(n)`
-/

namespace A137370.P10512068723797951267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054238 n).toNat * A055134 n

end

end A137370.P10512068723797951267

/-! ## A137370.P8938811737275183763

`A009531(A099375(n))*A055134(n)`
-/

namespace A137370.P8938811737275183763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A055134 n

end

end A137370.P8938811737275183763

/-! ## A137370.P4841699276682634536

`A055134(n)*A080891(A130321(n))`
-/

namespace A137370.P4841699276682634536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 n * A080891 (A130321 n).toNat

end

end A137370.P4841699276682634536

/-! ## A137370.P10694391509242551939

`A055134(n)*A087960(A133280(n))`
-/

namespace A137370.P10694391509242551939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 n * A087960 (A133280 n).toNat

end

end A137370.P10694391509242551939

/-! ## A137370.P17568854614113613137

`A033999(A025581(n)²)*A055134(n)`
-/

namespace A137370.P17568854614113613137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n ^ 2).toNat * A055134 n

end

end A137370.P17568854614113613137

/-! ## A137370.P12582723622252122951

`A033999(A004202(n+1))*A055134(n)`
-/

namespace A137370.P12582723622252122951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004202 (n + 1)).toNat * A055134 n

end

end A137370.P12582723622252122951

/-!
# A137371: a(n) = least semiprime such that all subsets of {a(1),...,a(n)} have a different sum.

The programs for A137371, there is no canonical definition to state claims against.
-/

/-! ## A137371.P7443785113602894155

`∑[A001462(A179116(n)+1)]+2`
-/

namespace A137371.P7443785113602894155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A179116 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A137371.P7443785113602894155

/-! ## A137371.P7052868833219869016

`A321231(A217132(n+1))+A189626(n+1)`
-/

namespace A137371.P7052868833219869016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321231 (A217132 (n + 1)).toNat + A189626 (n + 1)

end

end A137371.P7052868833219869016

/-!
# A137373: Triangular sequence from coefficients of Gould polynomials for the special case: n=a=b; g(x,n)=(x/(x - n^2))*binomial(x - n^2, n).

The programs for A137373, there is no canonical definition to state claims against.
-/

/-! ## A137373.P2299191934439533605

`A048994(n)*A178252(A025047(n+3))`
-/

namespace A137373.P2299191934439533605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A178252 (A025047 (n + 3)).toNat

end

end A137373.P2299191934439533605

/-! ## A137373.P14847921983964342664

`A037012(A093561(n)^A166350(n+1))`
-/

namespace A137373.P14847921983964342664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.roundAway ((A093561 n : ℚ) ^ (A166350 (n + 1) : ℤ))).toNat

end

end A137373.P14847921983964342664

/-! ## A137373.P11812996378655170796

`A037012(A093561(n)^A208757(n+1))`
-/

namespace A137373.P11812996378655170796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.roundAway ((A093561 n : ℚ) ^ (A208757 (n + 1) : ℤ))).toNat

end

end A137373.P11812996378655170796

/-! ## A137373.P10202019951056103083

`A037012(A093561(n)^A249027(n+1))`
-/

namespace A137373.P10202019951056103083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.roundAway ((A093561 n : ℚ) ^ (A249027 (n + 1) : ℤ))).toNat

end

end A137373.P10202019951056103083

/-!
# A137376: Triangle: p(x) = (1 - t/c)*(1 - t)^(-x - b); c = 1/2; b = 1.

The programs for A137376, there is no canonical definition to state claims against.
-/

/-! ## A137376.P2580956727188169769

`2*A132393(n)-A130534(n)`
-/

namespace A137376.P2580956727188169769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132393 n - A130534 n

end

end A137376.P2580956727188169769

/-! ## A137376.P8573387160712413761

`abs(2*A048994(n))-A130534(n)`
-/

namespace A137376.P8573387160712413761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A048994 n| - A130534 n

end

end A137376.P8573387160712413761

/-! ## A137376.P5436307916494509325

`2*A132393(n)-A132393(comp[∑[n]])`
-/

namespace A137376.P5436307916494509325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132393 n - A132393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A137376.P5436307916494509325

/-! ## A137376.P15374411716573762611

`2*A132393(n)-abs(A008275(n+1))`
-/

namespace A137376.P15374411716573762611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132393 n - |A008275 (n + 1)|

end

end A137376.P15374411716573762611

/-! ## A137376.P17769014333284160334

`A132393(n)-A003056(n)*A132393(n+1)`
-/

namespace A137376.P17769014333284160334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A003056 n * A132393 (n + 1)

end

end A137376.P17769014333284160334

/-! ## A137376.P14476322576800121787

`A132393(n+1)+A132393(n)-A180013(n+2)`
-/

namespace A137376.P14476322576800121787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (n + 1) + (A132393 n - A180013 (n + 2))

end

end A137376.P14476322576800121787

/-!
# A137377: a(1)=0; for n >= 2, a(n) = a(n-1) + |d(n)-d(n-1)|, where d(n) is the number of positive divisors of n.

The programs for A137377, the canonical program `A137377.P2996303202796642299` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137377 has offset 1).

The definition of A137377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137377.P2996303202796642299

`∑[abs(Δ[A032741(n)])]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A137377

/-- `∑[abs(Δ[A032741(n)])]` -/
def P2996303202796642299.Spec : Prop :=
  ∀ n, P2996303202796642299.a n = A137377 (n + 1)

theorem P2996303202796642299.correct : P2996303202796642299.Spec := by
  intro n
  simp only [A137377, Nat.add_sub_cancel]

end A137377

/-! ## A137377.P9353374770848394216

`∑[abs(A341062(n+1))]-1`
-/

namespace A137377.P9353374770848394216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341062 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137377.P9353374770848394216

namespace A137377

/-- `∑[abs(A341062(n+1))]-1` -/
def P9353374770848394216.Spec : Prop :=
  ∀ n, P9353374770848394216.a n = A137377 (n + 1)

end A137377

/-! ## A137377.P1931328324410205848

`a(n-1)+abs(Δ[A000005(gcd(n, n*a(n-1)))])` with `a(0)=0`
-/

namespace A137377.P1931328324410205848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + |f1 (n + 1) - f1 n|

end

end A137377.P1931328324410205848

namespace A137377

/-- `a(n-1)+abs(Δ[A000005(gcd(n, n*a(n-1)))])` -/
def P1931328324410205848.Spec : Prop :=
  ∀ n, P1931328324410205848.a n = A137377 (n + 1)

end A137377

/-! ## A137377.P10142128085448161655

`∑[abs(A032741(n+1)-A032741(n))]`
-/

namespace A137377.P10142128085448161655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A032741 (n + 1) - A032741 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137377.P10142128085448161655

namespace A137377

/-- `∑[abs(A032741(n+1)-A032741(n))]` -/
def P10142128085448161655.Spec : Prop :=
  ∀ n, P10142128085448161655.a n = A137377 (n + 1)

theorem P10142128085448161655.correct : P10142128085448161655.Spec := by
  intro n
  simp only [A137377, Nat.add_sub_cancel, A137377.P10142128085448161655.f1, A137377.P10142128085448161655.a, A137377.P2996303202796642299.f2, A137377.P2996303202796642299.f1, A137377.P2996303202796642299.a, SequenceMachineLib.memo_apply]

end A137377

/-! ## A137377.P5620591559484661256

`∑[abs(Δ[∏{e}[n, #+1]])]`
-/

namespace A137377.P5620591559484661256
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137377.P5620591559484661256

namespace A137377

/-- `∑[abs(Δ[∏{e}[n, #+1]])]` -/
def P5620591559484661256.Spec : Prop :=
  ∀ n, P5620591559484661256.a n = A137377 (n + 1)

theorem P5620591559484661256.correct : P5620591559484661256.Spec := by
  intro n
  simp only [A137377, Nat.add_sub_cancel, A137377.P5620591559484661256.f3, A137377.P5620591559484661256.f2, A137377.P5620591559484661256.f1, A137377.P5620591559484661256.a, A137377.P2996303202796642299.f2, A137377.P2996303202796642299.f1, A137377.P2996303202796642299.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137377

/-! ## A137377.P15337763755094860024

`∑[abs(Δ[∑{d}[n, (n+1)%#]])]`
-/

namespace A137377.P15337763755094860024
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1) % d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137377.P15337763755094860024

namespace A137377

/-- `∑[abs(Δ[∑{d}[n, (n+1)%#]])]` -/
def P15337763755094860024.Spec : Prop :=
  ∀ n, P15337763755094860024.a n = A137377 (n + 1)

end A137377

/-! ## A137377.P7188144386020946636

`∑[abs(Δ[A319410(n)/2])]`
-/

namespace A137377.P7188144386020946636
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319410 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137377.P7188144386020946636

namespace A137377

/-- `∑[abs(Δ[A319410(n)/2])]` -/
def P7188144386020946636.Spec : Prop :=
  ∀ n, P7188144386020946636.a n = (A137377 (n + 1) : ℚ)

end A137377

/-!
# A137378: Triangle of the coefficient [x^k] of the polynomial 2^n*s_n(x) generated by exp(x*(1 - sqrt(1+t^2))/t) = Sum_{n>=0} s_n(x)*t^k/k! in row n, column k.

The programs for A137378, there is no canonical definition to state claims against.
-/

/-! ## A137378.P2327644307244494064

`A165573(A247712(n))*A256041(n)`
-/

namespace A137378.P2327644307244494064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (A247712 n).toNat * A256041 n

end

end A137378.P2327644307244494064

/-! ## A137378.P14883110851462497895

`A102283(A002524(n))*A256041(n)`
-/

namespace A137378.P14883110851462497895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A002524 n).toNat * A256041 n

end

end A137378.P14883110851462497895

/-! ## A137378.P749690842049578289

`A122538(n)*A330025(A224204(n+1))`
-/

namespace A137378.P749690842049578289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n * A330025 (A224204 (n + 1)).toNat

end

end A137378.P749690842049578289

/-! ## A137378.P10945281246995267352

`A256041(n)*A330025(A224204(n+1))`
-/

namespace A137378.P10945281246995267352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256041 n * A330025 (A224204 (n + 1)).toNat

end

end A137378.P10945281246995267352

/-! ## A137378.P18227205628156409371

`A276922(n)*A330025(A224204(n+1))`
-/

namespace A137378.P18227205628156409371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 n * A330025 (A224204 (n + 1)).toNat

end

end A137378.P18227205628156409371

/-!
# A137379: Number of primes between (n + 1)^Pi and n^Pi.

The programs for A137379, there is no canonical definition to state claims against.
-/

/-! ## A137379.P3590574964036356070

`Δ[A000720(floor(A028310(n)^π))]`
-/

namespace A137379.P3590574964036356070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A028310 n : ℝ) ^ Real.pi⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137379.P3590574964036356070

/-!
# A137380: Number of primes between (prime(n + 1))^Pi and (prime(n))^Pi.

The programs for A137380, there is no canonical definition to state claims against.
-/

/-! ## A137380.P13898672930200179110

`Δ[A000720(floor(A000040(n+1)^π))]`
-/

namespace A137380.P13898672930200179110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A000040 (n + 1) : ℝ) ^ Real.pi⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137380.P13898672930200179110

/-!
# A137382: Number of primes between Pi^(prime(n)) and Pi^(prime(n+1)).

The programs for A137382, the canonical program `A137382.P7698479652326352668` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137382 has offset 1).

The definition of A137382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137382.P7698479652326352668

`A071973(A000040(n+2))-A071973(A000040(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A137382

/-- `A071973(A000040(n+2))-A071973(A000040(n+1))` -/
def P7698479652326352668.Spec : Prop :=
  ∀ n, P7698479652326352668.a n = A137382 (n + 1)

theorem P7698479652326352668.correct : P7698479652326352668.Spec := by
  intro n
  simp only [A137382, Nat.add_sub_cancel]

end A137382

/-! ## A137382.P1957320712856342677

`Δ[A071973(A000040(n+1))]`
-/

namespace A137382.P1957320712856342677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137382.P1957320712856342677

namespace A137382

/-- `Δ[A071973(A000040(n+1))]` -/
def P1957320712856342677.Spec : Prop :=
  ∀ n, P1957320712856342677.a n = A137382 (n + 1)

theorem P1957320712856342677.correct : P1957320712856342677.Spec := by
  intro n
  simp only [A137382, Nat.add_sub_cancel, A137382.P1957320712856342677.f1, A137382.P1957320712856342677.a, A137382.P7698479652326352668.a, SequenceMachineLib.memo_apply]

end A137382

/-! ## A137382.P11705122426787215225

`Δ[A071973(A008578(n+2))]`
-/

namespace A137382.P11705122426787215225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137382.P11705122426787215225

namespace A137382

/-- `Δ[A071973(A008578(n+2))]` -/
def P11705122426787215225.Spec : Prop :=
  ∀ n, P11705122426787215225.a n = A137382 (n + 1)

end A137382

/-! ## A137382.P2433189335885094638

`Δ[A071973(record[A020639(n+2)])]`
-/

namespace A137382.P2433189335885094638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137382.P2433189335885094638

namespace A137382

/-- `Δ[A071973(record[A020639(n+2)])]` -/
def P2433189335885094638.Spec : Prop :=
  ∀ n, P2433189335885094638.a n = A137382 (n + 1)

end A137382

/-! ## A137382.P10661673009328764698

`record[Δ[A071973(A253591(n+2))]]`
-/

namespace A137382.P10661673009328764698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (A253591 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137382.P10661673009328764698

namespace A137382

/-- `record[Δ[A071973(A253591(n+2))]]` -/
def P10661673009328764698.Spec : Prop :=
  ∀ n, P10661673009328764698.a n = A137382 (n + 1)

end A137382

/-!
# A137386: Numbers that when mirrored vertically are still valid characters. Only applies when numbers are scribed in Arabic numerals.

The programs for A137386, there is no canonical definition to state claims against.
-/

/-! ## A137386.P13763862848919818571

`A222234(A084984(n+1))`
-/

namespace A137386.P13763862848919818571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A084984 (n + 1)).toNat

end

end A137386.P13763862848919818571

/-! ## A137386.P9648358757448754876

`A222234(eq[0, A193238(n)])`
-/

namespace A137386.P9648358757448754876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137386.P9648358757448754876

/-! ## A137386.P11566324305867673332

`eq[n, A222246(A222228(n))]`
-/

namespace A137386.P11566324305867673332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137386.P11566324305867673332

/-! ## A137386.P1877530681513261822

`eq[n, A222242(A222229(n))]`
-/

namespace A137386.P1877530681513261822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137386.P1877530681513261822

/-! ## A137386.P1990425522169793396

`eq[n, A222240(A222231(n))]`
-/

namespace A137386.P1990425522169793396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137386.P1990425522169793396

/-! ## A137386.P282223658307024813

`record[A222252(A107130(n))+A064770(n)]`
-/

namespace A137386.P282223658307024813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A107130 n).toNat + A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137386.P282223658307024813

/-! ## A137386.P14667297562425232657

`A235049(A084984(n+1))+A103181(A202267(n+1))`
-/

namespace A137386.P14667297562425232657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A084984 (n + 1)).toNat + A103181 (A202267 (n + 1)).toNat

end

end A137386.P14667297562425232657

/-! ## A137386.P1712658599739982427

`record[A222241(A222241(2*n)/2)]`
-/

namespace A137386.P1712658599739982427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (SequenceMachineLib.roundAway ((A222241 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137386.P1712658599739982427

/-! ## A137386.P13694625504690917106

`record[A222240(2*n)-A222240(n)]`
-/

namespace A137386.P13694625504690917106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (2 * n) - A222240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137386.P13694625504690917106

/-!
# A137388: Triangle t(n,m)= (m^2-1) * binomial(n,m) * (n+2)/(n+2-m) read by rows, 0<=m<=n.

The programs for A137388, the canonical program `A137388.P995043414285949446` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137388 has offset 0).

The definition of A137388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137388.P995043414285949446

`(col(n)²-1)*C(row(n), col(n))*(row(n)+2)/(row(n)+2-col(n))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137388

/-- `(col(n)²-1)*C(row(n), col(n))*(row(n)+2)/(row(n)+2-col(n))` -/
def P995043414285949446.Spec : Prop :=
  ∀ n, P995043414285949446.a n = (A137388 n : ℚ)

end A137388

/-! ## A137388.P9941288023544928683

`(col(n)-1)*(col(n)+1)*C(row(n), col(n))*C(row(n)+2, col(n))/C(row(n)+1, col(n))`
-/

namespace A137388.P9941288023544928683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n + 1 : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n) : ℤ) : ℚ) / (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℚ)

end

end A137388.P9941288023544928683

namespace A137388

/-- `(col(n)-1)*(col(n)+1)*C(row(n), col(n))*C(row(n)+2, col(n))/C(row(n)+1, col(n))` -/
def P9941288023544928683.Spec : Prop :=
  ∀ n, P9941288023544928683.a n = (A137388 n : ℚ)

end A137388

/-!
# A137389: a(n) = 2^prime(n) + 2^prime(n+1).

The programs for A137389, the canonical program `A137389.P15135994414756883404` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137389 has offset 1).

The definition of A137389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137389.P17174402356573233966

`4*A137781(n+1)`
-/

namespace A137389.P17174402356573233966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A137781 (n + 1)

end

end A137389.P17174402356573233966

namespace A137389

/-- `4*A137781(n+1)` -/
def P17174402356573233966.Spec : Prop :=
  ∀ n, P17174402356573233966.a n = A137389 (n + 1)

end A137389

/-! ## A137389.P15135994414756883404

`A034785(n+1)+A034785(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A137389

/-- `A034785(n+1)+A034785(n+2)` -/
def P15135994414756883404.Spec : Prop :=
  ∀ n, P15135994414756883404.a n = A137389 (n + 1)

theorem P15135994414756883404.correct : P15135994414756883404.Spec := by
  intro n
  simp only [A137389, Nat.add_sub_cancel]

end A137389

/-! ## A137389.P835049284984156095

`2^A000040(n+1)+2^A000040(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137389.P835049284984156095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) : ℤ) + (2 : ℚ) ^ (A000040 (n + 2) : ℤ)

end

end A137389.P835049284984156095

namespace A137389

/-- `2^A000040(n+1)+2^A000040(n+2)` -/
def P835049284984156095.Spec : Prop :=
  ∀ n, P835049284984156095.a n = (A137389 (n + 1) : ℚ)

end A137389

/-! ## A137389.P14710923004443438340

`A076793(n+2)-A076793(n)`
-/

namespace A137389.P14710923004443438340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 (n + 2) - A076793 n

end

end A137389.P14710923004443438340

namespace A137389

/-- `A076793(n+2)-A076793(n)` -/
def P14710923004443438340.Spec : Prop :=
  ∀ n, P14710923004443438340.a n = A137389 (n + 1)

end A137389

/-! ## A137389.P5858511489715960854

`A320877(n+2)-A320877(n)`
-/

namespace A137389.P5858511489715960854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320877 (n + 2) - A320877 n

end

end A137389.P5858511489715960854

namespace A137389

/-- `A320877(n+2)-A320877(n)` -/
def P5858511489715960854.Spec : Prop :=
  ∀ n, P5858511489715960854.a n = A137389 (n + 1)

end A137389

/-! ## A137389.P4313924095873406632

`∑{p}[A006094(n+1), A000079(#)]`
-/

namespace A137389.P4313924095873406632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 p

end

end A137389.P4313924095873406632

namespace A137389

/-- `∑{p}[A006094(n+1), A000079(#)]` -/
def P4313924095873406632.Spec : Prop :=
  ∀ n, P4313924095873406632.a n = A137389 (n + 1)

end A137389

/-! ## A137389.P14336562824596501862

`∑{p}[A006094(n+1), A085629(#)]`
-/

namespace A137389.P14336562824596501862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A085629 p

end

end A137389.P14336562824596501862

namespace A137389

/-- `∑{p}[A006094(n+1), A085629(#)]` -/
def P14336562824596501862.Spec : Prop :=
  ∀ n, P14336562824596501862.a n = A137389 (n + 1)

end A137389

/-!
# A137391: Triangle: let f(t) = 1 + t + t^2 and g(t) = t + t^2, expansion of p(t) = f(t)*exp(x*g(t)).

The programs for A137391, there is no canonical definition to state claims against.
-/

/-! ## A137391.P16956713497015757561

`abs(A094587(n)*A104402(n))`
-/

namespace A137391.P16956713497015757561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094587 n * A104402 n|

end

end A137391.P16956713497015757561

/-! ## A137391.P700023290193220703

`abs(A008279(A061579(n))*A104402(n))`
-/

namespace A137391.P700023290193220703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008279 (A061579 n).toNat * A104402 n|

end

end A137391.P700023290193220703

/-! ## A137391.P1030221520295001259

`A094587(n)*A097807(n)*A104402(n)`
-/

namespace A137391.P1030221520295001259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A097807 n * A104402 n

end

end A137391.P1030221520295001259

/-! ## A137391.P18164452718360819524

`gcd(A000038(n), A104402(n))*A094587(n)`
-/

namespace A137391.P18164452718360819524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A104402 n) : ℤ) * A094587 n

end

end A137391.P18164452718360819524

/-! ## A137391.P9134476490011305634

`lcm(A094587(n)*A104402(n), A007318(n))`
-/

namespace A137391.P9134476490011305634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094587 n * A104402 n) (A007318 n)

end

end A137391.P9134476490011305634

/-! ## A137391.P9489823847517919558

`A008279(A061579(n))*A097807(n)*A104402(n)`
-/

namespace A137391.P9489823847517919558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A097807 n * A104402 n

end

end A137391.P9489823847517919558

/-!
# A137392: (10-n) * Fibonacci(n).

The programs for A137392, the canonical program `A137392.P10684567106505632768` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137392 has offset 1).

The definition of A137392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10-(n+1))*A000045(n+1)` (program `A137392.P10684567106505632768`, by `A137392.P10684567106505632768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137392.P10684567106505632768

`(10-(n+1))*A000045(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A137392

/-- `(10-(n+1))*A000045(n+1)` -/
def P10684567106505632768.Spec : Prop :=
  ∀ n, P10684567106505632768.a n = A137392 (n + 1)

theorem P10684567106505632768.correct : P10684567106505632768.Spec := by
  intro n
  simp only [A137392, Nat.add_sub_cancel]

end A137392

/-! ## A137392.P9593012577230700283

`(A000071(n+1)+1)*(9-n)`
-/

namespace A137392.P9593012577230700283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * (9 - (n : ℤ))

end

end A137392.P9593012577230700283

namespace A137392

/-- `(A000071(n+1)+1)*(9-n)` -/
def P9593012577230700283.Spec : Prop :=
  ∀ n, P9593012577230700283.a n = A137392 (n + 1)

theorem P9593012577230700283.correct : P9593012577230700283.Spec := by
  intro n
  simp only [A137392, Nat.add_sub_cancel, A137392.P9593012577230700283.a, A137392.P10684567106505632768.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137392

/-! ## A137392.P2537664548658282687

`(9-n)*∑[A000045(abs(1-n))]`
-/

namespace A137392.P2537664548658282687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137392.P2537664548658282687

namespace A137392

/-- `(9-n)*∑[A000045(abs(1-n))]` -/
def P2537664548658282687.Spec : Prop :=
  ∀ n, P2537664548658282687.a n = A137392 (n + 1)

end A137392

/-! ## A137392.P5174887163109000003

`A000045(n+1)*A022965(n)`
-/

namespace A137392.P5174887163109000003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A022965 n

end

end A137392.P5174887163109000003

namespace A137392

/-- `A000045(n+1)*A022965(n)` -/
def P5174887163109000003.Spec : Prop :=
  ∀ n, P5174887163109000003.a n = A137392 (n + 1)

theorem P5174887163109000003.correct : P5174887163109000003.Spec := by
  intro n
  simp only [A137392, Nat.add_sub_cancel, A137392.P5174887163109000003.a, A137392.P10684567106505632768.a, A000045, A000045.P11838749114346432762.a, A022965, A022965.P10341752570683700963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137392

/-! ## A137392.P9447052053024319886

`A000045(n+1)*A022966(n+1)`
-/

namespace A137392.P9447052053024319886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A022966 (n + 1)

end

end A137392.P9447052053024319886

namespace A137392

/-- `A000045(n+1)*A022966(n+1)` -/
def P9447052053024319886.Spec : Prop :=
  ∀ n, P9447052053024319886.a n = A137392 (n + 1)

theorem P9447052053024319886.correct : P9447052053024319886.Spec := by
  intro n
  simp only [A137392, Nat.add_sub_cancel, A137392.P9447052053024319886.a, A137392.P10684567106505632768.a, A000045, A000045.P11838749114346432762.a, A022966, A022966.P4427188668348917034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A137392

/-! ## A137392.P9919986127238251649

`A022102(n+1)-A094588(n+2)`
-/

namespace A137392.P9919986127238251649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 (n + 1) - A094588 (n + 2)

end

end A137392.P9919986127238251649

namespace A137392

/-- `A022102(n+1)-A094588(n+2)` -/
def P9919986127238251649.Spec : Prop :=
  ∀ n, P9919986127238251649.a n = A137392 (n + 1)

end A137392

/-! ## A137392.P7600548847468881123

`A022965(n)*A053602(2*(n+1))`
-/

namespace A137392.P7600548847468881123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022965 n * A053602 (2 * (n + 1))

end

end A137392.P7600548847468881123

namespace A137392

/-- `A022965(n)*A053602(2*(n+1))` -/
def P7600548847468881123.Spec : Prop :=
  ∀ n, P7600548847468881123.a n = A137392 (n + 1)

end A137392

/-! ## A137392.P11404647154173849728

`A022115(n+1)+A136376(n+1)-A136376(n+2)`
-/

namespace A137392.P11404647154173849728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 (n + 1) + (A136376 (n + 1) - A136376 (n + 2))

end

end A137392.P11404647154173849728

namespace A137392

/-- `A022115(n+1)+A136376(n+1)-A136376(n+2)` -/
def P11404647154173849728.Spec : Prop :=
  ∀ n, P11404647154173849728.a n = A137392 (n + 1)

end A137392

/-!
# A137394: Triangular sequence from a Pidduck polynomials expansion: p(t) = (t/(1 - t))*((1 + t)/(1 - t))^x.

The programs for A137394, there is no canonical definition to state claims against.
-/

/-! ## A137394.P12780226068204763040

`A002024(n+1)*A388456(n)`
-/

namespace A137394.P12780226068204763040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A388456 n

end

end A137394.P12780226068204763040

/-! ## A137394.P4440663829328979178

`A113764(n+1)*A388456(n)`
-/

namespace A137394.P4440663829328979178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113764 (n + 1) * A388456 n

end

end A137394.P4440663829328979178

/-! ## A137394.P1469485727217007243

`A130146(n+1)*A388456(n)`
-/

namespace A137394.P1469485727217007243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130146 (n + 1) * A388456 n

end

end A137394.P1469485727217007243

/-! ## A137394.P12730917561202769526

`A000005(lcm(A052936(n), A127058(n)))`
-/

namespace A137394.P12730917561202769526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A052936 n) (A127058 n))

end

end A137394.P12730917561202769526

/-! ## A137394.P8391966608986846979

`A000005(lcm(A148193(n), A327727(n)))`
-/

namespace A137394.P8391966608986846979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A148193 n) (A327727 n))

end

end A137394.P8391966608986846979

/-!
# A137395: a(1)=1. a(n) = a(n-1) + (sum of the distinct primes that are <= n and don't divide a(n-1)).

The programs for A137395, there is no canonical definition to state claims against.
-/

/-! ## A137395.P15813198547598255717

`A018412(A006447(n+1))+A006918(n)`
-/

namespace A137395.P15813198547598255717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A006447 (n + 1)).toNat + A006918 n

end

end A137395.P15813198547598255717

/-!
# A137396: Triangle read by rows: row n gives the coefficients in the expansion of the chromatic polynomial of the n-cycle graphs.

The programs for A137396, there is no canonical definition to state claims against.
-/

/-! ## A137396.P2178084192702269269

`A130595(n)+Δ[A097808(n)]`
-/

namespace A137396.P2178084192702269269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + (f1 (n + 1) - f1 n)

end

end A137396.P2178084192702269269

/-! ## A137396.P13531241150507269007

`Δ[A105810(n)-A130595(n)]`
-/

namespace A137396.P13531241150507269007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105810 n - A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137396.P13531241150507269007

/-! ## A137396.P17903481413595817233

`Δ[∑[A130595(n+1)]*A023532(n)]`
-/

namespace A137396.P17903481413595817233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137396.P17903481413595817233

/-! ## A137396.P6357665217377387991

`Δ[∑[A130595(n+1)]%A054335(n)]`
-/

namespace A137396.P6357665217377387991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A054335 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137396.P6357665217377387991

/-!
# A137397: Number of distinct palindromic subwords in the binary representation of n.

The programs for A137397, the canonical program `A137397.P9485766455204679455` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137397 has offset 0).

The definition of A137397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137397.P8927503875212088691

`(A070939(n)+1)%A282025(n)`
-/

namespace A137397.P8927503875212088691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n + 1) (A282025 n)

end

end A137397.P8927503875212088691

namespace A137397

/-- `(A070939(n)+1)%A282025(n)` -/
def P8927503875212088691.Spec : Prop :=
  ∀ n, P8927503875212088691.a n = A137397 n

end A137397

/-! ## A137397.P5186885717550957763

`A324826(A082979(n+1))+ceil(log2(n+1))`
-/

namespace A137397.P5186885717550957763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (A082979 (n + 1)).toNat + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A137397.P5186885717550957763

namespace A137397

/-- `A324826(A082979(n+1))+ceil(log2(n+1))` -/
def P5186885717550957763.Spec : Prop :=
  ∀ n, P5186885717550957763.a n = A137397 n

end A137397

/-! ## A137397.P6604760953420510488

`A070939(n)+A000034(A172305(n))`
-/

namespace A137397.P6604760953420510488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A000034 (A172305 n).toNat

end

end A137397.P6604760953420510488

namespace A137397

/-- `A070939(n)+A000034(A172305(n))` -/
def P6604760953420510488.Spec : Prop :=
  ∀ n, P6604760953420510488.a n = A137397 n

end A137397

/-! ## A137397.P8905567587815857823

`A070939(n)+A040001(A187212(n))`
-/

namespace A137397.P8905567587815857823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A040001 (A187212 n).toNat

end

end A137397.P8905567587815857823

namespace A137397

/-- `A070939(n)+A040001(A187212(n))` -/
def P8905567587815857823.Spec : Prop :=
  ∀ n, P8905567587815857823.a n = A137397 n

end A137397

/-! ## A137397.P10380647840846593684

`A118111(A256264(n))+A070939(n)`
-/

namespace A137397.P10380647840846593684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (A256264 n).toNat + A070939 n

end

end A137397.P10380647840846593684

namespace A137397

/-- `A118111(A256264(n))+A070939(n)` -/
def P10380647840846593684.Spec : Prop :=
  ∀ n, P10380647840846593684.a n = A137397 n

end A137397

/-! ## A137397.P9485766455204679455

`A070939(n)+A010052(A057979(n)²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A137397

/-- `A070939(n)+A010052(A057979(n)²)` -/
def P9485766455204679455.Spec : Prop :=
  ∀ n, P9485766455204679455.a n = A137397 n

theorem P9485766455204679455.correct : P9485766455204679455.Spec := by
  intro n
  simp only [A137397]

end A137397

/-! ## A137397.P4644810057641767102

`A070939(n)+A010121(A028864(n+1))`
-/

namespace A137397.P4644810057641767102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A010121 (A028864 (n + 1)).toNat

end

end A137397.P4644810057641767102

namespace A137397

/-- `A070939(n)+A010121(A028864(n+1))` -/
def P4644810057641767102.Spec : Prop :=
  ∀ n, P4644810057641767102.a n = A137397 n

end A137397

/-! ## A137397.P6671494464083294811

`A070939(n)+A052126(A046132(n+1))`
-/

namespace A137397.P6671494464083294811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A052126 (A046132 (n + 1)).toNat

end

end A137397.P6671494464083294811

namespace A137397

/-- `A070939(n)+A052126(A046132(n+1))` -/
def P6671494464083294811.Spec : Prop :=
  ∀ n, P6671494464083294811.a n = A137397 n

end A137397

/-! ## A137397.P4403998804190668685

`A070939(n)+A032742(A213521(n+1))`
-/

namespace A137397.P4403998804190668685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A032742 (A213521 (n + 1)).toNat

end

end A137397.P4403998804190668685

namespace A137397

/-- `A070939(n)+A032742(A213521(n+1))` -/
def P4403998804190668685.Spec : Prop :=
  ∀ n, P4403998804190668685.a n = A137397 n

end A137397

/-! ## A137397.P17039825674076559839

`A178225(A006995(n+3))+A070939(n)`
-/

namespace A137397.P17039825674076559839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A006995 (n + 3)).toNat + A070939 n

end

end A137397.P17039825674076559839

namespace A137397

/-- `A178225(A006995(n+3))+A070939(n)` -/
def P17039825674076559839.Spec : Prop :=
  ∀ n, P17039825674076559839.a n = A137397 n

end A137397

/-! ## A137397.P12516409465881472580

`A054977(A014190(n+1))+A029837(n+1)`
-/

namespace A137397.P12516409465881472580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A014190 (n + 1)).toNat + A029837 (n + 1)

end

end A137397.P12516409465881472580

namespace A137397

/-- `A054977(A014190(n+1))+A029837(n+1)` -/
def P12516409465881472580.Spec : Prop :=
  ∀ n, P12516409465881472580.a n = A137397 n

end A137397

/-! ## A137397.P1859351166442379462

`A003415(A213521(n+1))+a(A004526(n))` with `a(0)=2, a(1)=2`
-/

namespace A137397.P1859351166442379462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A003415 (A213521 (n + 1)).toNat + a (A004526 n).toNat

end

end A137397.P1859351166442379462

namespace A137397

/-- `A003415(A213521(n+1))+a(A004526(n))` -/
def P1859351166442379462.Spec : Prop :=
  ∀ n, P1859351166442379462.a n = A137397 n

end A137397

/-! ## A137397.P9362474260247463193

`A206921(A000203(A006995(2*n+5)))+A070939(n)`
-/

namespace A137397.P9362474260247463193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206921 (A000203 (A006995 (2 * n + 5)).toNat).toNat + A070939 n

end

end A137397.P9362474260247463193

namespace A137397

/-- `A206921(A000203(A006995(2*n+5)))+A070939(n)` -/
def P9362474260247463193.Spec : Prop :=
  ∀ n, P9362474260247463193.a n = A137397 n

end A137397

/-! ## A137397.P4626951043414174712

`A070939(n)+A001222(A228567(n+1))`
-/

namespace A137397.P4626951043414174712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A001222 (A228567 (n + 1)).toNat

end

end A137397.P4626951043414174712

namespace A137397

/-- `A070939(n)+A001222(A228567(n+1))` -/
def P4626951043414174712.Spec : Prop :=
  ∀ n, P4626951043414174712.a n = A137397 n

end A137397

/-! ## A137397.P12213547613817594471

`A070939(n)+A001222(A329736(n+1))`
-/

namespace A137397.P12213547613817594471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A001222 (A329736 (n + 1)).toNat

end

end A137397.P12213547613817594471

namespace A137397

/-- `A070939(n)+A001222(A329736(n+1))` -/
def P12213547613817594471.Spec : Prop :=
  ∀ n, P12213547613817594471.a n = A137397 n

end A137397

/-! ## A137397.P1146689248265302425

`A073429(∑[n])+A029837(n+1)+1`
-/

namespace A137397.P1146689248265302425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (∑ j ∈ Finset.range (n + 1), f1 j) + (A029837 (n + 1) + 1)

end

end A137397.P1146689248265302425

namespace A137397

/-- `A073429(∑[n])+A029837(n+1)+1` -/
def P1146689248265302425.Spec : Prop :=
  ∀ n, P1146689248265302425.a n = A137397 n

end A137397

/-! ## A137397.P6459499902379031111

`A023416(A124108(n))+1`
-/

namespace A137397.P6459499902379031111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A124108 n).toNat + 1

end

end A137397.P6459499902379031111

namespace A137397

/-- `A023416(A124108(n))+1` -/
def P6459499902379031111.Spec : Prop :=
  ∀ n, P6459499902379031111.a n = A137397 n

end A137397

/-! ## A137397.P9943927476680073004

`A110591(n²)+1`
-/

namespace A137397.P9943927476680073004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (n ^ 2) + 1

end

end A137397.P9943927476680073004

namespace A137397

/-- `A110591(n²)+1` -/
def P9943927476680073004.Spec : Prop :=
  ∀ n, P9943927476680073004.a n = A137397 n

end A137397

/-!
# A137398: Let S be a strictly monotonic sequence of length 2n and let p and q be subsequences of S each of length n such that the least element belongs to p and every element of S belongs to either p or q. The number of ways to select p such that for any index i the exchange of p(i) and q(i) makes at least one of p and q non-monotonic, is given by a(n).

The programs for A137398, there is no canonical definition to state claims against.
-/

/-! ## A137398.P7376182412978314837

`A341415(∑[n+1])/2`
-/

namespace A137398.P7376182412978314837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341415 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A137398.P7376182412978314837

/-! ## A137398.P8831707263993494935

`A004525(A341415(∑[n+1]))`
-/

namespace A137398.P8831707263993494935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A341415 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137398.P8831707263993494935

/-! ## A137398.P5524555843040377123

`round(A341415(A000217(n+1))/2)`
-/

namespace A137398.P5524555843040377123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A341415 (A000217 (n + 1)).toNat : ℚ) / 2)

end

end A137398.P5524555843040377123

/-! ## A137398.P6994306381962774685

`A008615(A206603(n)+A109268(n+1))`
-/

namespace A137398.P6994306381962774685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A206603 n + A109268 (n + 1)).toNat

end

end A137398.P6994306381962774685

/-!
# A137399: a(0) = 1, a(1) = a(2) = 2, a(3) = 1, and a(n) = 4*a(n-4) for n > 3.

The programs for A137399, the canonical program `A137399.P9688238434344963122` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137399 has offset 0).

The definition of A137399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-4)` (program `A137399.P9688238434344963122`, by `A137399.P9688238434344963122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137399.P9688238434344963122

`4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137399

/-- `4*a(n-4)` -/
def P9688238434344963122.Spec : Prop :=
  ∀ n, (P9688238434344963122.a n : ℤ) = A137399 n

theorem P9688238434344963122.correct : P9688238434344963122.Spec := by
  intro n
  simp only [A137399]

end A137399

/-! ## A137399.P15214371687360328644

`2^(∑[2-n%4]-2)`
-/

namespace A137399.P15214371687360328644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 4 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ)

end

end A137399.P15214371687360328644

namespace A137399

/-- `2^(∑[2-n%4]-2)` -/
def P15214371687360328644.Spec : Prop :=
  ∀ n, P15214371687360328644.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P263170911484766699

`2^(∑[2-and(3, n)]-2)`
-/

namespace A137399.P263170911484766699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 3 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ)

end

end A137399.P263170911484766699

namespace A137399

/-- `2^(∑[2-and(3, n)]-2)` -/
def P263170911484766699.Spec : Prop :=
  ∀ n, P263170911484766699.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P7007026962870255271

`2^xor(and(1, n), floor(n/2))`
-/

namespace A137399.P7007026962870255271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.xor (Nat.land 1 n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ)

end

end A137399.P7007026962870255271

namespace A137399

/-- `2^xor(and(1, n), floor(n/2))` -/
def P7007026962870255271.Spec : Prop :=
  ∀ n, P7007026962870255271.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P10248236985573150356

`a(n-4)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A137399.P10248236985573150356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 1] fun n a =>
  a (n - 4) / ((1 : ℚ) / 2) ^ 2

end

end A137399.P10248236985573150356

namespace A137399

/-- `a(n-4)/(1/2)²` -/
def P10248236985573150356.Spec : Prop :=
  ∀ n, P10248236985573150356.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P9987513711854916199

`2^∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A137399.P9987513711854916199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A137399.P9987513711854916199

namespace A137399

/-- `2^∑[floor(a(n-4))]` -/
def P9987513711854916199.Spec : Prop :=
  ∀ n, P9987513711854916199.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P11313352624436590131

`2^(A121496(n+1)-1)`
-/

namespace A137399.P11313352624436590131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A121496 (n + 1) - 1 : ℤ)

end

end A137399.P11313352624436590131

namespace A137399

/-- `2^(A121496(n+1)-1)` -/
def P11313352624436590131.Spec : Prop :=
  ∀ n, P11313352624436590131.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P16163959807939063743

`2^(A244953(n+1)-(n+3))`
-/

namespace A137399.P16163959807939063743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A244953 (n + 1) - (n + 3 : ℤ) : ℤ)

end

end A137399.P16163959807939063743

namespace A137399

/-- `2^(A244953(n+1)-(n+3))` -/
def P16163959807939063743.Spec : Prop :=
  ∀ n, P16163959807939063743.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P5795125409371564640

`A016116(A159966(n))`
-/

namespace A137399.P5795125409371564640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A159966 n).toNat

end

end A137399.P5795125409371564640

namespace A137399

/-- `A016116(A159966(n))` -/
def P5795125409371564640.Spec : Prop :=
  ∀ n, P5795125409371564640.a n = A137399 n

end A137399

/-! ## A137399.P3564097211697290387

`A300622(A098180(n))`
-/

namespace A137399.P3564097211697290387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300622 (A098180 n).toNat

end

end A137399.P3564097211697290387

namespace A137399

/-- `A300622(A098180(n))` -/
def P3564097211697290387.Spec : Prop :=
  ∀ n, P3564097211697290387.a n = A137399 n

end A137399

/-! ## A137399.P1237213375892786566

`A011782(A121496(n+1))`
-/

namespace A137399.P1237213375892786566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A121496 (n + 1)).toNat

end

end A137399.P1237213375892786566

namespace A137399

/-- `A011782(A121496(n+1))` -/
def P1237213375892786566.Spec : Prop :=
  ∀ n, P1237213375892786566.a n = A137399 n

end A137399

/-! ## A137399.P10132045306101597169

`A016116(xor(n, A000034(n)))`
-/

namespace A137399.P10132045306101597169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (Int.xor (n : ℤ) (A000034 n)).toNat

end

end A137399.P10132045306101597169

namespace A137399

/-- `A016116(xor(n, A000034(n)))` -/
def P10132045306101597169.Spec : Prop :=
  ∀ n, P10132045306101597169.a n = A137399 n

end A137399

/-! ## A137399.P1555775437177211470

`A131575(xor(n, A000034(n)))`
-/

namespace A137399.P1555775437177211470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (Int.xor (n : ℤ) (A000034 n)).toNat

end

end A137399.P1555775437177211470

namespace A137399

/-- `A131575(xor(n, A000034(n)))` -/
def P1555775437177211470.Spec : Prop :=
  ∀ n, P1555775437177211470.a n = A137399 n

end A137399

/-! ## A137399.P8948064629734411782

`A138191(n+1)*A300622(n)`
-/

namespace A137399.P8948064629734411782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A300622 n

end

end A137399.P8948064629734411782

namespace A137399

/-- `A138191(n+1)*A300622(n)` -/
def P8948064629734411782.Spec : Prop :=
  ∀ n, P8948064629734411782.a n = A137399 n

end A137399

/-! ## A137399.P5338264316929225930

`A060546(n)/A010121(n+1)`
-/

namespace A137399.P5338264316929225930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 n : ℚ) / (A010121 (n + 1) : ℚ)

end

end A137399.P5338264316929225930

namespace A137399

/-- `A060546(n)/A010121(n+1)` -/
def P5338264316929225930.Spec : Prop :=
  ∀ n, P5338264316929225930.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P14350647706122428711

`A016116(xor(n, gcd(2, A270710(n))))`
-/

namespace A137399.P14350647706122428711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (Nat.xor n (Int.gcd 2 (A270710 n)))

end

end A137399.P14350647706122428711

namespace A137399

/-- `A016116(xor(n, gcd(2, A270710(n))))` -/
def P14350647706122428711.Spec : Prop :=
  ∀ n, P14350647706122428711.a n = A137399 n

end A137399

/-! ## A137399.P1607465376416828747

`A016116(n+1)/A177704(n)²`
-/

namespace A137399.P1607465376416828747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) / (A177704 n ^ 2 : ℚ)

end

end A137399.P1607465376416828747

namespace A137399

/-- `A016116(n+1)/A177704(n)²` -/
def P1607465376416828747.Spec : Prop :=
  ∀ n, P1607465376416828747.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P7585274093313250864

`A000079(A004525(n))/A177704(n)`
-/

namespace A137399.P7585274093313250864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A004525 n).toNat : ℚ) / (A177704 n : ℚ)

end

end A137399.P7585274093313250864

namespace A137399

/-- `A000079(A004525(n))/A177704(n)` -/
def P7585274093313250864.Spec : Prop :=
  ∀ n, P7585274093313250864.a n = (A137399 n : ℚ)

end A137399

/-! ## A137399.P11037216755387589881

`A000079(xor(A000035(n), A004526(n)))`
-/

namespace A137399.P11037216755387589881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.xor (A000035 n) (A004526 n)).toNat

end

end A137399.P11037216755387589881

namespace A137399

/-- `A000079(xor(A000035(n), A004526(n)))` -/
def P11037216755387589881.Spec : Prop :=
  ∀ n, P11037216755387589881.a n = A137399 n

end A137399

/-! ## A137399.P8956838567038691870

`A000079(A004525(n)+1-A177704(n))`
-/

namespace A137399.P8956838567038691870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004525 n + (1 - A177704 n)).toNat

end

end A137399.P8956838567038691870

namespace A137399

/-- `A000079(A004525(n)+1-A177704(n))` -/
def P8956838567038691870.Spec : Prop :=
  ∀ n, P8956838567038691870.a n = A137399 n

end A137399

