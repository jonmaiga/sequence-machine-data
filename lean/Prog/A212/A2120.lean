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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A212000: Triangle read by rows: T(n,k) = total number of parts in the last n-k+1 shells of n.

The programs for A212000, there is no canonical definition to state claims against.
-/

/-! ## A212000.P15842609197749063240

`A006128(A002024(n+1))-A006128(A002262(n))`
-/

namespace A212000.P15842609197749063240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A002024 (n + 1)).toNat - A006128 (A002262 n).toNat

end

end A212000.P15842609197749063240

/-! ## A212000.P918813028955020231

`A212010(∑[char[∑[n]]]²-n)`
-/

namespace A212000.P918813028955020231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A212000.P918813028955020231

/-! ## A212000.P2514667381810076740

`and(-1, A212010(A038722(n+1)))`
-/

namespace A212000.P2514667381810076740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A212010 (A038722 (n + 1)).toNat)

end

end A212000.P2514667381810076740

/-! ## A212000.P3103232352879410082

`lcm(A033999(n), A212010(A038722(n+1)))`
-/

namespace A212000.P3103232352879410082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A212010 (A038722 (n + 1)).toNat)

end

end A212000.P3103232352879410082

/-! ## A212000.P1809865296342358334

`A212010(A038722(n+1))^abs(A087960(n))`
-/

namespace A212000.P1809865296342358334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212010 (A038722 (n + 1)).toNat : ℚ) ^ (|A087960 n| : ℤ)

end

end A212000.P1809865296342358334

/-! ## A212000.P3281340777949957205

`A212010(A038722(n+1))%A040117(n+1)`
-/

namespace A212000.P3281340777949957205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212010 (A038722 (n + 1)).toNat) (A040117 (n + 1))

end

end A212000.P3281340777949957205

/-! ## A212000.P10761200722187231392

`A212010(A038722(n+1))+A008683(4*(n+5))`
-/

namespace A212000.P10761200722187231392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (A038722 (n + 1)).toNat + A008683 (4 * (n + 5))

end

end A212000.P10761200722187231392

/-! ## A212000.P3746919346290351599

`A212010(A038722(n+1))^A001221(A001316(n))`
-/

namespace A212000.P3746919346290351599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212010 (A038722 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A212000.P3746919346290351599

/-! ## A212000.P16119191691439727922

`A212010(A038722(n+1))^A001222(A008578(n+1))`
-/

namespace A212000.P16119191691439727922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212010 (A038722 (n + 1)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A212000.P16119191691439727922

/-!
# A212001: Triangle read by rows: T(n,k) = sum of all parts of the last n-k+1 shells of n.

The programs for A212001, there is no canonical definition to state claims against.
-/

/-! ## A212001.P5331758616788534619

`A066186(A002024(n+1))-A066186(A002262(n))`
-/

namespace A212001.P5331758616788534619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A002024 (n + 1)).toNat - A066186 (A002262 n).toNat

end

end A212001.P5331758616788534619

/-! ## A212001.P8913000866373691943

`A212011(∑[char[∑[n]]]²-n)`
-/

namespace A212001.P8913000866373691943
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212011 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A212001.P8913000866373691943

/-! ## A212001.P12519386010974791301

`or(char[2], A212011(A038722(n+1)))`
-/

namespace A212001.P12519386010974791301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212011 (A038722 (n + 1)).toNat)

end

end A212001.P12519386010974791301

/-! ## A212001.P9820796651764730995

`gcd(A151933(n), A212011(A038722(n+1)))`
-/

namespace A212001.P9820796651764730995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A212011 (A038722 (n + 1)).toNat)

end

end A212001.P9820796651764730995

/-! ## A212001.P3838929900683089951

`A007318(∑[n])*A212011(A038722(n+1))`
-/

namespace A212001.P3838929900683089951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A212011 (A038722 (n + 1)).toNat

end

end A212001.P3838929900683089951

/-! ## A212001.P7566165996943439396

`char[A004442(n)]*A212011(A038722(n+1))`
-/

namespace A212001.P7566165996943439396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212011 (A038722 (n + 1)).toNat

end

end A212001.P7566165996943439396

/-! ## A212001.P16385160103436518454

`A212011(A038722(n+1))-A000007(n+1)`
-/

namespace A212001.P16385160103436518454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212011 (A038722 (n + 1)).toNat - A000007 (n + 1)

end

end A212001.P16385160103436518454

/-! ## A212001.P5421481146396159078

`A000034(2*n)*A212011(A038722(n+1))`
-/

namespace A212001.P5421481146396159078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A212011 (A038722 (n + 1)).toNat

end

end A212001.P5421481146396159078

/-! ## A212001.P16250927467660972001

`A212011(A038722(n+1))^A000203(ceil(1/(n+1)))`
-/

namespace A212001.P16250927467660972001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212011 (A038722 (n + 1)).toNat : ℚ) ^ (A000203 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A212001.P16250927467660972001

/-! ## A212001.P10536366573744042330

`A212011(A038722(n+1))/∏{e}[A006530(n+1), #!]`
-/

namespace A212001.P10536366573744042330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212011 (A038722 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ)

end

end A212001.P10536366573744042330

/-!
# A212008: D-toothpick sequence of the second kind starting with a single toothpick.

The programs for A212008, there is no canonical definition to state claims against.
-/

/-! ## A212008.P14259550039455905859

`∑[A212009(n)]`
-/

namespace A212008.P14259550039455905859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212008.P14259550039455905859

/-! ## A212008.P6300271210560565839

`A212009(round(sqrt(n²+1)))+a(n-1)` with `a(0)=0`
-/

namespace A212008.P6300271210560565839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A212009 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A212008.P6300271210560565839

/-! ## A212008.P666689745311477961

`∑[A220501(n)-A175099(A160426(n))]`
-/

namespace A212008.P666689745311477961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n - A175099 (A160426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212008.P666689745311477961

/-!
# A212009: Number of toothpicks or D-toothpicks added at n-th stage in the toothpick structure of A212008.

The programs for A212009, there is no canonical definition to state claims against.
-/

/-! ## A212009.P1502385998146843305

`Δ[A212008(log2(ceil(2^(n-1))))]`
-/

namespace A212009.P1502385998146843305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212008 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212009.P1502385998146843305

/-! ## A212009.P7583525142897155222

`A220501(n)-A033735(A296122(n+4))`
-/

namespace A212009.P7583525142897155222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n - A033735 (A296122 (n + 4)).toNat

end

end A212009.P7583525142897155222

/-! ## A212009.P16448039011703906809

`A220501(n)-A294929(A047086(n))`
-/

namespace A212009.P16448039011703906809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n - A294929 (A047086 n).toNat

end

end A212009.P16448039011703906809

/-! ## A212009.P450431378985404713

`A220501(n)-A175099(A160426(n))`
-/

namespace A212009.P450431378985404713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n - A175099 (A160426 n).toNat

end

end A212009.P450431378985404713

/-!
# A212010: Triangle read by rows: T(n,k) = total number of parts in the last k shells of n.

The programs for A212010, there is no canonical definition to state claims against.
-/

/-! ## A212010.P2067916802871798560

`A006128(A002024(n+1))-A006128(A025581(n))`
-/

namespace A212010.P2067916802871798560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A002024 (n + 1)).toNat - A006128 (A025581 n).toNat

end

end A212010.P2067916802871798560

/-! ## A212010.P10245280135528183659

`A212000(∑[char[∑[n]]]²-n)`
-/

namespace A212010.P10245280135528183659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212000 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A212010.P10245280135528183659

/-! ## A212010.P14771295406555532845

`xor(2, xor(2, A212000(A038722(n+1))))`
-/

namespace A212010.P14771295406555532845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A212000 (A038722 (n + 1)).toNat))

end

end A212010.P14771295406555532845

/-! ## A212010.P16611717520142854257

`A212000(A061579(n)+1)%(∑[n+2]+3)`
-/

namespace A212010.P16611717520142854257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212000 (A061579 n + 1).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)

end

end A212010.P16611717520142854257

/-! ## A212010.P18358206392733803729

`A212000(A038722(n+1))^A178334(n)`
-/

namespace A212010.P18358206392733803729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212000 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A212010.P18358206392733803729

/-! ## A212010.P9191095118249421091

`A212000(A038722(n+1))%A014206(n)`
-/

namespace A212010.P9191095118249421091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212000 (A038722 (n + 1)).toNat) (A014206 n)

end

end A212010.P9191095118249421091

/-! ## A212010.P12292819795543440821

`lcm(A033999(n), A212000(A038722(n+1)))`
-/

namespace A212010.P12292819795543440821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A212000 (A038722 (n + 1)).toNat)

end

end A212010.P12292819795543440821

/-! ## A212010.P3344635048158768561

`A007318(∑[n])*A212000(A038722(n+1))`
-/

namespace A212010.P3344635048158768561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A212000 (A038722 (n + 1)).toNat

end

end A212010.P3344635048158768561

/-!
# A212011: Triangle read by rows: T(n,k) = sum of all parts of the last k shells of n.

The programs for A212011, there is no canonical definition to state claims against.
-/

/-! ## A212011.P15588830070553744778

`A066186(A002024(n+1))-A066186(A025581(n))`
-/

namespace A212011.P15588830070553744778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A002024 (n + 1)).toNat - A066186 (A025581 n).toNat

end

end A212011.P15588830070553744778

/-! ## A212011.P5115644476121594862

`A212001(∑[char[∑[n]]]²-n)`
-/

namespace A212011.P5115644476121594862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212001 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A212011.P5115644476121594862

/-! ## A212011.P1988126922003077468

`xor(C(n, 81), A212001(A038722(n+1)))`
-/

namespace A212011.P1988126922003077468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n 81 : ℤ) (A212001 (A038722 (n + 1)).toNat)

end

end A212011.P1988126922003077468

/-! ## A212011.P5985882378750909714

`A212001(A038722(n+1))+A025439(n)`
-/

namespace A212011.P5985882378750909714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212001 (A038722 (n + 1)).toNat + A025439 n

end

end A212011.P5985882378750909714

/-! ## A212011.P13011480105201508854

`lcm(A212001(A038722(n+1)), A260196(n))`
-/

namespace A212011.P13011480105201508854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A212001 (A038722 (n + 1)).toNat) (A260196 n)

end

end A212011.P13011480105201508854

/-! ## A212011.P3278315163847981151

`A212001(A038722(n+1))%A034096(n+1)`
-/

namespace A212011.P3278315163847981151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212001 (A038722 (n + 1)).toNat) (A034096 (n + 1))

end

end A212011.P3278315163847981151

/-! ## A212011.P14052221901488294470

`A212001(A038722(n+1))/A008292(∑[n]+1)`
-/

namespace A212011.P14052221901488294470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212001 (A038722 (n + 1)).toNat : ℚ) / (A008292 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A212011.P14052221901488294470

/-! ## A212011.P12548843704089230006

`A007318(C(2, n))+A212001(A038722(n+1))-1`
-/

namespace A212011.P12548843704089230006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A212001 (A038722 (n + 1)).toNat - 1)

end

end A212011.P12548843704089230006

/-! ## A212011.P3431425694673047945

`A212001(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A212011.P3431425694673047945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212001 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A212011.P3431425694673047945

/-! ## A212011.P8882161030601559766

`A212001(A038722(n+1))-(A024000(n)+n)+1`
-/

namespace A212011.P8882161030601559766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212001 (A038722 (n + 1)).toNat - (A024000 n + (n : ℤ)) + 1

end

end A212011.P8882161030601559766

/-!
# A212012: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A212012, the canonical program `A212012.P10131555541362374622` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212012 has offset 1).

The definition of A212012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212012.P10131555541362374622

`2*A004736(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212012

/-- `2*A004736(n+1)` -/
def P10131555541362374622.Spec : Prop :=
  ∀ n, P10131555541362374622.a n = A212012 (n + 1)

theorem P10131555541362374622.correct : P10131555541362374622.Spec := by
  intro n
  simp only [A212012, Nat.add_sub_cancel]

end A212012

/-! ## A212012.P3164595356819994303

`2*(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A212012.P3164595356819994303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A212012.P3164595356819994303

namespace A212012

/-- `2*(C(comp[∑[n]]-n, 2)-n)` -/
def P3164595356819994303.Spec : Prop :=
  ∀ n, P3164595356819994303.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P13804844052125391063

`(2*(∑[n]+1))%(comp[∑[n]]+1)`
-/

namespace A212012.P13804844052125391063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A212012.P13804844052125391063

namespace A212012

/-- `(2*(∑[n]+1))%(comp[∑[n]]+1)` -/
def P13804844052125391063.Spec : Prop :=
  ∀ n, (P13804844052125391063.a n : ℤ) = A212012 (n + 1)

end A212012

/-! ## A212012.P15778048743817793075

`(n²+n)%(comp[∑[n]]+1)+2`
-/

namespace A212012.P15778048743817793075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 2

end

end A212012.P15778048743817793075

namespace A212012

/-- `(n²+n)%(comp[∑[n]]+1)+2` -/
def P15778048743817793075.Spec : Prop :=
  ∀ n, (P15778048743817793075.a n : ℤ) = A212012 (n + 1)

end A212012

/-! ## A212012.P8881972630142327595

`(n-comp[∑[n]])²-(comp[∑[n]]+n)`
-/

namespace A212012.P8881972630142327595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n : ℤ)

end

end A212012.P8881972630142327595

namespace A212012

/-- `(n-comp[∑[n]])²-(comp[∑[n]]+n)` -/
def P8881972630142327595.Spec : Prop :=
  ∀ n, P8881972630142327595.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P13265575922875117042

`2*abs(C(comp[C(n, 2)]-n, 2)-n)`
-/

namespace A212012.P13265575922875117042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)|

end

end A212012.P13265575922875117042

namespace A212012

/-- `2*abs(C(comp[C(n, 2)]-n, 2)-n)` -/
def P13265575922875117042.Spec : Prop :=
  ∀ n, P13265575922875117042.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P16384346440539486773

`val(4^(C(comp[∑[n]]-n, 2)-n), 2)`
-/

namespace A212012.P16384346440539486773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat 2

end

end A212012.P16384346440539486773

namespace A212012

/-- `val(4^(C(comp[∑[n]]-n, 2)-n), 2)` -/
def P16384346440539486773.Spec : Prop :=
  ∀ n, (P16384346440539486773.a n : ℤ) = A212012 (n + 1)

end A212012

/-! ## A212012.P11287122794162811308

`(C(comp[∑[n]]-n, 2)-n)/log2(sqrt(2))`
-/

namespace A212012.P11287122794162811308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ))

end

end A212012.P11287122794162811308

namespace A212012

/-- `(C(comp[∑[n]]-n, 2)-n)/log2(sqrt(2))` -/
def P11287122794162811308.Spec : Prop :=
  ∀ n, P11287122794162811308.a n = (A212012 (n + 1) : ℝ)

end A212012

/-! ## A212012.P4126126513565295721

`log2((2^(C(comp[∑[n]]-n, 2)-n))²)`
-/

namespace A212012.P4126126513565295721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)) ^ 2 : ℝ)

end

end A212012.P4126126513565295721

namespace A212012

/-- `log2((2^(C(comp[∑[n]]-n, 2)-n))²)` -/
def P4126126513565295721.Spec : Prop :=
  ∀ n, P4126126513565295721.a n = (A212012 (n + 1) : ℝ)

end A212012

/-! ## A212012.P18259172320562648118

`2*abs(C(round(sqrt(2*(n+1)))+1, 2)-n)`
-/

namespace A212012.P18259172320562648118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1).toNat 2 : ℤ) - (n : ℤ)|

end

end A212012.P18259172320562648118

namespace A212012

/-- `2*abs(C(round(sqrt(2*(n+1)))+1, 2)-n)` -/
def P18259172320562648118.Spec : Prop :=
  ∀ n, P18259172320562648118.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P8093263617286919846

`2*(eq[0, floor(sqrt(4*n+1))%2]-2*n)`
-/

namespace A212012.P8093263617286919846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (2 * n : ℤ))

end

end A212012.P8093263617286919846

namespace A212012

/-- `2*(eq[0, floor(sqrt(4*n+1))%2]-2*n)` -/
def P8093263617286919846.Spec : Prop :=
  ∀ n, P8093263617286919846.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P9828927631621166985

`2*(A025581(n)+1)`
-/

namespace A212012.P9828927631621166985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A025581 n + 1)

end

end A212012.P9828927631621166985

namespace A212012

/-- `2*(A025581(n)+1)` -/
def P9828927631621166985.Spec : Prop :=
  ∀ n, P9828927631621166985.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P2044720965818626440

`log2(A090988(n+1)²)`
-/

namespace A212012.P2044720965818626440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) ^ 2 : ℝ)

end

end A212012.P2044720965818626440

namespace A212012

/-- `log2(A090988(n+1)²)` -/
def P2044720965818626440.Spec : Prop :=
  ∀ n, P2044720965818626440.a n = (A212012 (n + 1) : ℝ)

end A212012

/-! ## A212012.P9046955727135618461

`log2((A130330(n)+1)²)`
-/

namespace A212012.P9046955727135618461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A130330 n + 1) ^ 2 : ℝ)

end

end A212012.P9046955727135618461

namespace A212012

/-- `log2((A130330(n)+1)²)` -/
def P9046955727135618461.Spec : Prop :=
  ∀ n, P9046955727135618461.a n = (A212012 (n + 1) : ℝ)

end A212012

/-! ## A212012.P15840362525442527262

`2*sqrt(A055461(n+1))`
-/

namespace A212012.P15840362525442527262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A055461 (n + 1) : ℝ)

end

end A212012.P15840362525442527262

namespace A212012

/-- `2*sqrt(A055461(n+1))` -/
def P15840362525442527262.Spec : Prop :=
  ∀ n, P15840362525442527262.a n = (A212012 (n + 1) : ℝ)

end A212012

/-! ## A212012.P14504626403425385734

`val(A043569(n+1)², 2)`
-/

namespace A212012.P14504626403425385734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (n + 1) ^ 2).toNat 2

end

end A212012.P14504626403425385734

namespace A212012

/-- `val(A043569(n+1)², 2)` -/
def P14504626403425385734.Spec : Prop :=
  ∀ n, (P14504626403425385734.a n : ℤ) = A212012 (n + 1)

end A212012

/-! ## A212012.P13534572494776986151

`val(A118586(n+1)², 2)`
-/

namespace A212012.P13534572494776986151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118586 (n + 1) ^ 2).toNat 2

end

end A212012.P13534572494776986151

namespace A212012

/-- `val(A118586(n+1)², 2)` -/
def P13534572494776986151.Spec : Prop :=
  ∀ n, (P13534572494776986151.a n : ℤ) = A212012 (n + 1)

end A212012

/-! ## A212012.P4566293136239881753

`2*(A127739(n+1)-n)`
-/

namespace A212012.P4566293136239881753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A127739 (n + 1) - (n : ℤ))

end

end A212012.P4566293136239881753

namespace A212012

/-- `2*(A127739(n+1)-n)` -/
def P4566293136239881753.Spec : Prop :=
  ∀ n, P4566293136239881753.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P16891721898122300684

`A014681(A099375(n))`
-/

namespace A212012.P16891721898122300684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A099375 n).toNat

end

end A212012.P16891721898122300684

namespace A212012

/-- `A014681(A099375(n))` -/
def P16891721898122300684.Spec : Prop :=
  ∀ n, P16891721898122300684.a n = A212012 (n + 1)

end A212012

/-! ## A212012.P5248170506049873512

`A080412(A104571(n))`
-/

namespace A212012.P5248170506049873512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A104571 n).toNat

end

end A212012.P5248170506049873512

namespace A212012

/-- `A080412(A104571(n))` -/
def P5248170506049873512.Spec : Prop :=
  ∀ n, P5248170506049873512.a n = A212012 (n + 1)

end A212012

/-!
# A212013: Triangle read by rows: total number of pairs of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A212013, the canonical program `A212013.P18376095192351240926` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212013 has offset 1).

The definition of A212013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212013.P11373664353348616612

`A212014(n+1)/2`
-/

namespace A212013.P11373664353348616612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212014 (n + 1) : ℚ) / 2

end

end A212013.P11373664353348616612

namespace A212013

/-- `A212014(n+1)/2` -/
def P11373664353348616612.Spec : Prop :=
  ∀ n, P11373664353348616612.a n = (A212013 (n + 1) : ℚ)

end A212013

/-! ## A212013.P15118487500037755566

`∑[C(comp[∑[n]]-n, 2)-n]`
-/

namespace A212013.P15118487500037755566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P15118487500037755566

namespace A212013

/-- `∑[C(comp[∑[n]]-n, 2)-n]` -/
def P15118487500037755566.Spec : Prop :=
  ∀ n, P15118487500037755566.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P14456730998243846908

`a(n-∑[char[∑[n-1]]])+1+n` with `a(0)=1`
-/

namespace A212013.P14456730998243846908
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A212013.P14456730998243846908

namespace A212013

/-- `a(n-∑[char[∑[n-1]]])+1+n` -/
def P14456730998243846908.Spec : Prop :=
  ∀ n, (P14456730998243846908.a n : ℤ) = A212013 (n + 1)

end A212013

/-! ## A212013.P9612015242469243094

`∑[∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2))]`
-/

namespace A212013.P9612015242469243094
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P9612015242469243094

namespace A212013

/-- `∑[∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2))]` -/
def P9612015242469243094.Spec : Prop :=
  ∀ n, P9612015242469243094.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P3398240806203308117

`∑[(2*(∑[n]+1))%(comp[∑[n]]+1)/2]`
-/

namespace A212013.P3398240806203308117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1) % (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1) : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P3398240806203308117

namespace A212013

/-- `∑[(2*(∑[n]+1))%(comp[∑[n]]+1)/2]` -/
def P3398240806203308117.Spec : Prop :=
  ∀ n, P3398240806203308117.a n = (A212013 (n + 1) : ℚ)

end A212013

/-! ## A212013.P11339677945594986638

`a(n-(comp[∑[n-2]]-n))+n+1` with `a(0)=1`
-/

namespace A212013.P11339677945594986638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))).toNat + (n + 1)

end

end A212013.P11339677945594986638

namespace A212013

/-- `a(n-(comp[∑[n-2]]-n))+n+1` -/
def P11339677945594986638.Spec : Prop :=
  ∀ n, (P11339677945594986638.a n : ℤ) = A212013 (n + 1)

end A212013

/-! ## A212013.P18376095192351240926

`∑[eq[0, floor(sqrt(4*n+1))%2]-2*n]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212013

/-- `∑[eq[0, floor(sqrt(4*n+1))%2]-2*n]` -/
def P18376095192351240926.Spec : Prop :=
  ∀ n, P18376095192351240926.a n = A212013 (n + 1)

theorem P18376095192351240926.correct : P18376095192351240926.Spec := by
  intro n
  simp only [A212013, Nat.add_sub_cancel]

end A212013

/-! ## A212013.P15746788814959821360

`∑[ceil((n²+1+n)%(comp[C(n, 2)]+1)/2)]`
-/

namespace A212013.P15746788814959821360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P15746788814959821360

namespace A212013

/-- `∑[ceil((n²+1+n)%(comp[C(n, 2)]+1)/2)]` -/
def P15746788814959821360.Spec : Prop :=
  ∀ n, P15746788814959821360.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P16499788176124895778

`∑[A004736(n+1)]`
-/

namespace A212013.P16499788176124895778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P16499788176124895778

namespace A212013

/-- `∑[A004736(n+1)]` -/
def P16499788176124895778.Spec : Prop :=
  ∀ n, P16499788176124895778.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P5343197714616522378

`∑[A025581(n)+1]`
-/

namespace A212013.P5343197714616522378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P5343197714616522378

namespace A212013

/-- `∑[A025581(n)+1]` -/
def P5343197714616522378.Spec : Prop :=
  ∀ n, P5343197714616522378.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P5659043492830012295

`∑[sqrt(A055461(n+1))]`
-/

namespace A212013.P5659043492830012295
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P5659043492830012295

namespace A212013

/-- `∑[sqrt(A055461(n+1))]` -/
def P5659043492830012295.Spec : Prop :=
  ∀ n, P5659043492830012295.a n = (A212013 (n + 1) : ℝ)

end A212013

/-! ## A212013.P4084837332663176725

`∑[log2(A090988(n+1))]`
-/

namespace A212013.P4084837332663176725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P4084837332663176725

namespace A212013

/-- `∑[log2(A090988(n+1))]` -/
def P4084837332663176725.Spec : Prop :=
  ∀ n, P4084837332663176725.a n = (A212013 (n + 1) : ℝ)

end A212013

/-! ## A212013.P11863190216881031773

`∑[log2(A130321(n))+1]`
-/

namespace A212013.P11863190216881031773
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P11863190216881031773

namespace A212013

/-- `∑[log2(A130321(n))+1]` -/
def P11863190216881031773.Spec : Prop :=
  ∀ n, P11863190216881031773.a n = (A212013 (n + 1) : ℝ)

end A212013

/-! ## A212013.P8354626643900454217

`∑[ceil(A099375(n)/2)]`
-/

namespace A212013.P8354626643900454217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P8354626643900454217

namespace A212013

/-- `∑[ceil(A099375(n)/2)]` -/
def P8354626643900454217.Spec : Prop :=
  ∀ n, P8354626643900454217.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P11153903096113896240

`∑[1-∑[A167407(n)]]`
-/

namespace A212013.P11153903096113896240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P11153903096113896240

namespace A212013

/-- `∑[1-∑[A167407(n)]]` -/
def P11153903096113896240.Spec : Prop :=
  ∀ n, P11153903096113896240.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P8341805265914057214

`∑[A212012(n+1)/2]`
-/

namespace A212013.P8341805265914057214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P8341805265914057214

namespace A212013

/-- `∑[A212012(n+1)/2]` -/
def P8341805265914057214.Spec : Prop :=
  ∀ n, P8341805265914057214.a n = (A212013 (n + 1) : ℚ)

end A212013

/-! ## A212013.P13829487504693041635

`∑[val(A043569(n+1), 2)]`
-/

namespace A212013.P13829487504693041635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P13829487504693041635

namespace A212013

/-- `∑[val(A043569(n+1), 2)]` -/
def P13829487504693041635.Spec : Prop :=
  ∀ n, (P13829487504693041635.a n : ℤ) = A212013 (n + 1)

end A212013

/-! ## A212013.P13233283211083748101

`∑[A127739(n+1)-n]`
-/

namespace A212013.P13233283211083748101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P13233283211083748101

namespace A212013

/-- `∑[A127739(n+1)-n]` -/
def P13233283211083748101.Spec : Prop :=
  ∀ n, P13233283211083748101.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P5098878401456452563

`A121924(n+1)+1+n`
-/

namespace A212013.P5098878401456452563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121924 (n + 1) + 1 + (n : ℤ)

end

end A212013.P5098878401456452563

namespace A212013

/-- `A121924(n+1)+1+n` -/
def P5098878401456452563.Spec : Prop :=
  ∀ n, P5098878401456452563.a n = A212013 (n + 1)

end A212013

/-! ## A212013.P16468091404073314862

`∑[sqrt(A095831(n+1))+1]`
-/

namespace A212013.P16468091404073314862
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A095831 (n + 1) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212013.P16468091404073314862

namespace A212013

/-- `∑[sqrt(A095831(n+1))+1]` -/
def P16468091404073314862.Spec : Prop :=
  ∀ n, P16468091404073314862.a n = (A212013 (n + 1) : ℝ)

end A212013

/-!
# A212014: Total number of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A212014, the canonical program `A212014.P14698386297870251282` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212014 has offset 1).

The definition of A212014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212014.P14698386297870251282

`2*A212013(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212014

/-- `2*A212013(n+1)` -/
def P14698386297870251282.Spec : Prop :=
  ∀ n, P14698386297870251282.a n = A212014 (n + 1)

theorem P14698386297870251282.correct : P14698386297870251282.Spec := by
  intro n
  simp only [A212014, Nat.add_sub_cancel]

end A212014

/-! ## A212014.P2717100840658644403

`∑[2*(C(comp[∑[n]]-n, 2)-n)]`
-/

namespace A212014.P2717100840658644403
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212014.P2717100840658644403

namespace A212014

/-- `∑[2*(C(comp[∑[n]]-n, 2)-n)]` -/
def P2717100840658644403.Spec : Prop :=
  ∀ n, P2717100840658644403.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P1634584618855320699

`∑[(2*(∑[n]+1))%(comp[∑[n]]+1)]`
-/

namespace A212014.P1634584618855320699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1) % (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212014.P1634584618855320699

namespace A212014

/-- `∑[(2*(∑[n]+1))%(comp[∑[n]]+1)]` -/
def P1634584618855320699.Spec : Prop :=
  ∀ n, (P1634584618855320699.a n : ℤ) = A212014 (n + 1)

end A212014

/-! ## A212014.P10182522610206270350

`∑[(n²+n)%(comp[∑[n]]+1)+2]`
-/

namespace A212014.P10182522610206270350
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212014.P10182522610206270350

namespace A212014

/-- `∑[(n²+n)%(comp[∑[n]]+1)+2]` -/
def P10182522610206270350.Spec : Prop :=
  ∀ n, (P10182522610206270350.a n : ℤ) = A212014 (n + 1)

end A212014

/-! ## A212014.P14047093871514320857

`∑[(n-comp[∑[n]])²-(comp[∑[n]]+n)]`
-/

namespace A212014.P14047093871514320857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212014.P14047093871514320857

namespace A212014

/-- `∑[(n-comp[∑[n]])²-(comp[∑[n]]+n)]` -/
def P14047093871514320857.Spec : Prop :=
  ∀ n, P14047093871514320857.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P13633319006008510944

`∑[C(comp[∑[n]]-n, 2)-n]/sqrt(1/4)`
-/

namespace A212014.P13633319006008510944
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A212014.P13633319006008510944

namespace A212014

/-- `∑[C(comp[∑[n]]-n, 2)-n]/sqrt(1/4)` -/
def P13633319006008510944.Spec : Prop :=
  ∀ n, P13633319006008510944.a n = (A212014 (n + 1) : ℝ)

end A212014

/-! ## A212014.P18054675968935074945

`2*∑[eq[0, floor(sqrt(4*n+1))%2]-2*n]`
-/

namespace A212014.P18054675968935074945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212014.P18054675968935074945

namespace A212014

/-- `2*∑[eq[0, floor(sqrt(4*n+1))%2]-2*n]` -/
def P18054675968935074945.Spec : Prop :=
  ∀ n, P18054675968935074945.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P14899140168190058948

`2*∑[A004736(n+1)]`
-/

namespace A212014.P14899140168190058948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212014.P14899140168190058948

namespace A212014

/-- `2*∑[A004736(n+1)]` -/
def P14899140168190058948.Spec : Prop :=
  ∀ n, P14899140168190058948.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P8280774923000180576

`∑[A099375(n)]+1+n`
-/

namespace A212014.P8280774923000180576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A212014.P8280774923000180576

namespace A212014

/-- `∑[A099375(n)]+1+n` -/
def P8280774923000180576.Spec : Prop :=
  ∀ n, P8280774923000180576.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P11943330075632080199

`A394927(n+1)+1+n`
-/

namespace A212014.P11943330075632080199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394927 (n + 1) + 1 + (n : ℤ)

end

end A212014.P11943330075632080199

namespace A212014

/-- `A394927(n+1)+1+n` -/
def P11943330075632080199.Spec : Prop :=
  ∀ n, P11943330075632080199.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P1224722015443617315

`2*∑[A212012(n+1)/2]`
-/

namespace A212014.P1224722015443617315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212014.P1224722015443617315

namespace A212014

/-- `2*∑[A212012(n+1)/2]` -/
def P1224722015443617315.Spec : Prop :=
  ∀ n, P1224722015443617315.a n = (A212014 (n + 1) : ℚ)

end A212014

/-! ## A212014.P1020720784311030806

`2*(A121924(n+1)+n+1)`
-/

namespace A212014.P1020720784311030806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A121924 (n + 1) + (n + 1 : ℤ))

end

end A212014.P1020720784311030806

namespace A212014

/-- `2*(A121924(n+1)+n+1)` -/
def P1020720784311030806.Spec : Prop :=
  ∀ n, P1020720784311030806.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P14060964182542099666

`A060432(n+1)+A008867(n+2)`
-/

namespace A212014.P14060964182542099666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + A008867 (n + 2)

end

end A212014.P14060964182542099666

namespace A212014

/-- `A060432(n+1)+A008867(n+2)` -/
def P14060964182542099666.Spec : Prop :=
  ∀ n, P14060964182542099666.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P15976893353071167240

`A212013(n+2)+A212013(n+2)-A212012(n+2)`
-/

namespace A212014.P15976893353071167240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212013 (n + 2) + (A212013 (n + 2) - A212012 (n + 2))

end

end A212014.P15976893353071167240

namespace A212014

/-- `A212013(n+2)+A212013(n+2)-A212012(n+2)` -/
def P15976893353071167240.Spec : Prop :=
  ∀ n, P15976893353071167240.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P8286627488595763405

`A212013(n+1)+A212013(n+2)-A004736(n+2)`
-/

namespace A212014.P8286627488595763405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212013 (n + 1) + (A212013 (n + 2) - A004736 (n + 2))

end

end A212014.P8286627488595763405

namespace A212014

/-- `A212013(n+1)+A212013(n+2)-A004736(n+2)` -/
def P8286627488595763405.Spec : Prop :=
  ∀ n, P8286627488595763405.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P4302939532554992490

`2*A121924(A014132(n+1))`
-/

namespace A212014.P4302939532554992490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121924 (A014132 (n + 1)).toNat

end

end A212014.P4302939532554992490

namespace A212014

/-- `2*A121924(A014132(n+1))` -/
def P4302939532554992490.Spec : Prop :=
  ∀ n, P4302939532554992490.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P16647549769823113670

`2*A121924(A007401(n+2))`
-/

namespace A212014.P16647549769823113670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121924 (A007401 (n + 2)).toNat

end

end A212014.P16647549769823113670

namespace A212014

/-- `2*A121924(A007401(n+2))` -/
def P16647549769823113670.Spec : Prop :=
  ∀ n, P16647549769823113670.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P6762477757195208978

`A004277(A212013(n+1))`
-/

namespace A212014.P6762477757195208978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A212013 (n + 1)).toNat

end

end A212014.P6762477757195208978

namespace A212014

/-- `A004277(A212013(n+1))` -/
def P6762477757195208978.Spec : Prop :=
  ∀ n, P6762477757195208978.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P5864464500105352048

`A004277(∑[A004736(n+1)])`
-/

namespace A212014.P5864464500105352048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212014.P5864464500105352048

namespace A212014

/-- `A004277(∑[A004736(n+1)])` -/
def P5864464500105352048.Spec : Prop :=
  ∀ n, P5864464500105352048.a n = A212014 (n + 1)

end A212014

/-! ## A212014.P7685482138686720063

`A005843(∑[A004736(n+1)])`
-/

namespace A212014.P7685482138686720063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212014.P7685482138686720063

namespace A212014

/-- `A005843(∑[A004736(n+1)])` -/
def P7685482138686720063.Spec : Prop :=
  ∀ n, P7685482138686720063.a n = A212014 (n + 1)

end A212014

/-!
# A212015: Nonsquare positive integers that are sums of consecutive integer squares.

The programs for A212015, there is no canonical definition to state claims against.
-/

/-! ## A212015.P14432556170996902232

`filter[A062861(n+1), A049240(#)]`
-/

namespace A212015.P14432556170996902232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A212015.P14432556170996902232

/-! ## A212015.P2537865303558509326

`filter[A212016(n+1), A049240(#)]`
-/

namespace A212015.P2537865303558509326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A212015.P2537865303558509326

/-! ## A212015.P10134071033932798826

`record[A212016(n+2)/A056926(A212016(n+2))]`
-/

namespace A212015.P10134071033932798826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212016 (n + 2) : ℚ) / (A056926 (A212016 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212015.P10134071033932798826

/-! ## A212015.P4284200502441035378

`∩[A000037(n+1), A062861(n)]`
-/

namespace A212015.P4284200502441035378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212015.P4284200502441035378

/-! ## A212015.P5580910032703970473

`∩[A000037(n+1), A212016(n+1)]`
-/

namespace A212015.P5580910032703970473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212015.P5580910032703970473

/-! ## A212015.P12241640170378851642

`∩[A212016(n+1), A386267(n+1)]`
-/

namespace A212015.P12241640170378851642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212015.P12241640170378851642

/-! ## A212015.P6367834112015031371

`filter[A062861(n+1), A267594(#)]`
-/

namespace A212015.P6367834112015031371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A212015.P6367834112015031371

/-! ## A212015.P16120391853988374397

`filter[A062861(n+1), A267635(#)]`
-/

namespace A212015.P16120391853988374397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A212015.P16120391853988374397

/-! ## A212015.P14643099859863424041

`filter[A212016(n+1), A267594(#)]`
-/

namespace A212015.P14643099859863424041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A212015.P14643099859863424041

/-! ## A212015.P12300986414516713186

`filter[A212016(n+1), A267635(#)]`
-/

namespace A212015.P12300986414516713186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A212015.P12300986414516713186

/-! ## A212015.P13274478170813741366

`lt[1, A062862(n)*A077116(n)]`
-/

namespace A212015.P13274478170813741366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062862 n * A077116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212015.P13274478170813741366

/-!
# A212016: Sums of the squares of two or more consecutive integers.

The programs for A212016, there is no canonical definition to state claims against.
-/

/-! ## A212016.P12877546354348507552

`∑[A244426(A069123(n))]`
-/

namespace A212016.P12877546354348507552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244426 (A069123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212016.P12877546354348507552

/-!
# A212017: Integers n such that n^3 is the sum of consecutive integer squares.

The programs for A212017, there is no canonical definition to state claims against.
-/

/-! ## A212017.P2458816801130486890

`∪[A212018(n+1), n²]`
-/

namespace A212017.P2458816801130486890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212018 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A212017.P2458816801130486890

/-! ## A212017.P16704255827891584918

`∪[A000290(n), A212018(n+1)]`
-/

namespace A212017.P16704255827891584918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212017.P16704255827891584918

/-! ## A212017.P4148481216709499574

`eq[A001221(A084608(n)), A000122(3*(n+1))]`
-/

namespace A212017.P4148481216709499574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A084608 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212017.P4148481216709499574

/-! ## A212017.P11186060165296015328

`record[n-A048760(A341862(n))]`
-/

namespace A212017.P11186060165296015328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048760 (A341862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212017.P11186060165296015328

/-! ## A212017.P790741095110314638

`A354989(A001764(n))+A336826(n+1)`
-/

namespace A212017.P790741095110314638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354989 (A001764 n).toNat + A336826 (n + 1)

end

end A212017.P790741095110314638

/-!
# A212018: Integers m such that m^3 is the sum of two or more consecutive integer squares.

The programs for A212018, there is no canonical definition to state claims against.
-/

/-! ## A212018.P17507994251852288195

`filter[A212017(n+2), A008966(#)]`
-/

namespace A212018.P17507994251852288195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A212018.P17507994251852288195

/-! ## A212018.P18212637984728038949

`filter[A212017(n+2), A132350(#)]`
-/

namespace A212018.P18212637984728038949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A212018.P18212637984728038949

/-! ## A212018.P2115123293616074108

`filter[A212017(n+2), A295316(#)]`
-/

namespace A212018.P2115123293616074108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A212018.P2115123293616074108

/-! ## A212018.P7133802653920973593

`filter[A212017(n+2), A323154(#)]`
-/

namespace A212018.P7133802653920973593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A212018.P7133802653920973593

/-! ## A212018.P791371976774426962

`filter[A212017(n+2), A359473(#)]`
-/

namespace A212018.P791371976774426962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A212018.P791371976774426962

/-!
# A212019: Number of (w,x,y,z) with all terms in {1,...,n} and w*x=2*y*z.

The programs for A212019, there is no canonical definition to state claims against.
-/

/-! ## A212019.P16489638931930913166

`n^4-(A211797(n)+A211795(n))`
-/

namespace A212019.P16489638931930913166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (A211797 n + A211795 n)

end

end A212019.P16489638931930913166

/-! ## A212019.P8965406776122605372

`A211787(n)-A211795(n)`
-/

namespace A212019.P8965406776122605372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - A211795 n

end

end A212019.P8965406776122605372

/-! ## A212019.P1135166370420463096

`A211787(n)%A211795(A028310(n))`
-/

namespace A212019.P1135166370420463096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211787 n) (A211795 (A028310 n).toNat)

end

end A212019.P1135166370420463096

/-! ## A212019.P17559586432599269707

`A211809(n)-A211797(n)`
-/

namespace A212019.P17559586432599269707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211809 n - A211797 n

end

end A212019.P17559586432599269707

/-! ## A212019.P8423988231209827605

`A211787(n)+A211809(n)-n^4`
-/

namespace A212019.P8423988231209827605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211809 n - (n ^ 4 : ℤ))

end

end A212019.P8423988231209827605

/-! ## A212019.P18165639260842230687

`A211787(n)-(A000583(n)-A211809(n))`
-/

namespace A212019.P18165639260842230687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - (A000583 n - A211809 n)

end

end A212019.P18165639260842230687

/-! ## A212019.P15658579148651843635

`A211787(n)-(A000290(n)²-A211809(n))`
-/

namespace A212019.P15658579148651843635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - (A000290 n ^ 2 - A211809 n)

end

end A212019.P15658579148651843635

/-! ## A212019.P15103349033386366800

`A211787(n)-(A002523(n)-(A211809(n)+1))`
-/

namespace A212019.P15103349033386366800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - (A002523 n - (A211809 n + 1))

end

end A212019.P15103349033386366800

/-! ## A212019.P8780176832171939375

`A211787(n)-(1-(A211809(n)+A024002(n)))`
-/

namespace A212019.P8780176832171939375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - (1 - (A211809 n + A024002 n))

end

end A212019.P8780176832171939375

/-! ## A212019.P647984385450960237

`A211787(n)-(n²²-A157928(n)*A211809(n))`
-/

namespace A212019.P647984385450960237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - (((n ^ 2) ^ 2 : ℤ) - A157928 n * A211809 n)

end

end A212019.P647984385450960237

/-!
# A212020: Number of (w,x,y,z) with all terms in {1,...,n} and w*x=3*y*z.

The programs for A212020, there is no canonical definition to state claims against.
-/

/-! ## A212020.P16184870846434232337

`A211919(n)-A211918(n)`
-/

namespace A212020.P16184870846434232337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211919 n - A211918 n

end

end A212020.P16184870846434232337

/-! ## A212020.P8420545408370421686

`A211919(n)+A057428(n)*A211918(n)`
-/

namespace A212020.P8420545408370421686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211919 n + A057428 n * A211918 n

end

end A212020.P8420545408370421686

/-! ## A212020.P5859335698412867052

`A211812(n)-(n^4-A211919(n))`
-/

namespace A212020.P5859335698412867052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - ((n ^ 4 : ℤ) - A211919 n)

end

end A212020.P5859335698412867052

/-! ## A212020.P18418733423152750736

`A211812(n)+A211919(n)-A000583(n)`
-/

namespace A212020.P18418733423152750736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211919 n - A000583 n)

end

end A212020.P18418733423152750736

/-! ## A212020.P15475093221709189367

`A211812(n)+A211919(n)-A000290(n)²`
-/

namespace A212020.P15475093221709189367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211919 n - A000290 n ^ 2)

end

end A212020.P15475093221709189367

/-! ## A212020.P3875913204572832073

`A211812(n)-(A002523(n)-(A211919(n)+1))`
-/

namespace A212020.P3875913204572832073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - (A002523 n - (A211919 n + 1))

end

end A212020.P3875913204572832073

/-! ## A212020.P7794016296930274306

`A211919(n)-(A011863(2*n)-A211812(n))`
-/

namespace A212020.P7794016296930274306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211919 n - (A011863 (2 * n) - A211812 n)

end

end A212020.P7794016296930274306

/-! ## A212020.P11266635686251564261

`A211812(n)-(A091940(n+1)-(A211919(n)+n))`
-/

namespace A212020.P11266635686251564261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - (A091940 (n + 1) - (A211919 n + (n : ℤ)))

end

end A212020.P11266635686251564261

/-! ## A212020.P16289598444101652706

`A211919(n)-(A211787(n)+A211797(n)-A211812(n))`
-/

namespace A212020.P16289598444101652706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211919 n - (A211787 n + (A211797 n - A211812 n))

end

end A212020.P16289598444101652706

/-! ## A212020.P6720178747086095784

`A211812(n)-(A212673(n)+A212674(n)-A211919(n))`
-/

namespace A212020.P6720178747086095784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - (A212673 n + (A212674 n - A211919 n))

end

end A212020.P6720178747086095784

/-! ## A212020.P11802909559406799332

`A211812(n)-((2*A000041(n))%2-(A211919(n)-A000583(n)))`
-/

namespace A212020.P11802909559406799332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - (Int.tmod (2 * A000041 n) 2 - (A211919 n - A000583 n))

end

end A212020.P11802909559406799332

/-! ## A212020.P10404699560761814204

`A211812(n)-A211917(n)`
-/

namespace A212020.P10404699560761814204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - A211917 n

end

end A212020.P10404699560761814204

/-! ## A212020.P15677477203156948388

`n^4-A211917(n)-A211918(n)`
-/

namespace A212020.P15677477203156948388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211917 n - A211918 n

end

end A212020.P15677477203156948388

/-! ## A212020.P14250720947076511179

`A211812(n)%A211917(A028310(n))`
-/

namespace A212020.P14250720947076511179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211812 n) (A211917 (A028310 n).toNat)

end

end A212020.P14250720947076511179

/-!
# A212021: Number of (w,x,y,z) with all terms in {1,...,n} and 2w*x=3*y*z.

The programs for A212021, there is no canonical definition to state claims against.
-/

/-! ## A212021.P5770098288531927534

`A211921(n)-A211920(n)`
-/

namespace A212021.P5770098288531927534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n - A211920 n

end

end A212021.P5770098288531927534

/-! ## A212021.P17985804070113245825

`A211921(n)-(n^4-A211923(n))`
-/

namespace A212021.P17985804070113245825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n - ((n ^ 4 : ℤ) - A211923 n)

end

end A212021.P17985804070113245825

/-! ## A212021.P11720389440443680856

`A211921(n)%A211920(A028310(n))`
-/

namespace A212021.P11720389440443680856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211921 n) (A211920 (A028310 n).toNat)

end

end A212021.P11720389440443680856

/-! ## A212021.P17877190912448736362

`A211921(n)+A211923(n)-A000583(n)`
-/

namespace A212021.P17877190912448736362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n + (A211923 n - A000583 n)

end

end A212021.P17877190912448736362

/-! ## A212021.P3371168622888722159

`A211921(n)-(A211787(n)+A211797(n)-A211923(n))`
-/

namespace A212021.P3371168622888722159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n - (A211787 n + (A211797 n - A211923 n))

end

end A212021.P3371168622888722159

/-! ## A212021.P6188940464965014272

`A211921(n)-(A211917(n)+A211919(n)-A211923(n))`
-/

namespace A212021.P6188940464965014272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n - (A211917 n + (A211919 n - A211923 n))

end

end A212021.P6188940464965014272

/-! ## A212021.P9352302276960911996

`A211923(n)-(A212053(n)+A212054(n)-A211921(n))`
-/

namespace A212021.P9352302276960911996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211923 n - (A212053 n + (A212054 n - A211921 n))

end

end A212021.P9352302276960911996

/-! ## A212021.P17046672749857747980

`A211923(n)-(A212065(n)+A212066(n)-A211921(n))`
-/

namespace A212021.P17046672749857747980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211923 n - (A212065 n + (A212066 n - A211921 n))

end

end A212021.P17046672749857747980

/-! ## A212021.P12197173613279800864

`A211921(n)-(A212106(n)+A212107(n)-A211923(n))`
-/

namespace A212021.P12197173613279800864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n - (A212106 n + (A212107 n - A211923 n))

end

end A212021.P12197173613279800864

/-! ## A212021.P13359767567333473965

`A211923(n)-(A000583(n)-A211921(n))*A057427(n)`
-/

namespace A212021.P13359767567333473965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211923 n - (A000583 n - A211921 n) * A057427 n

end

end A212021.P13359767567333473965

/-!
# A212022: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-3.

The programs for A212022, there is no canonical definition to state claims against.
-/

/-! ## A212022.P5146835232158883552

`A211925(n+1)+n²-n`
-/

namespace A212022.P5146835232158883552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211925 (n + 1) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A212022.P5146835232158883552

/-! ## A212022.P8380373395488205893

`A211925(n+1)+A002061(n)-1`
-/

namespace A212022.P8380373395488205893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211925 (n + 1) + A002061 n - 1

end

end A212022.P8380373395488205893

/-! ## A212022.P1549773037594737714

`A279019(n+4)+A211925(n+1)`
-/

namespace A212022.P1549773037594737714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (n + 4) + A211925 (n + 1)

end

end A212022.P1549773037594737714

/-! ## A212022.P11606930451693252232

`A211925(n+1)+A000290(n)-n`
-/

namespace A212022.P11606930451693252232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211925 (n + 1) + A000290 n - (n : ℤ)

end

end A212022.P11606930451693252232

/-! ## A212022.P17446425841852370011

`A211925(n+1)+A002620(2*n)-n`
-/

namespace A212022.P17446425841852370011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211925 (n + 1) + A002620 (2 * n) - (n : ℤ)

end

end A212022.P17446425841852370011

/-!
# A212023: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-4.

The programs for A212023, there is no canonical definition to state claims against.
-/

/-! ## A212023.P16132799779903342125

`A212026(∑[n+3]+1)`
-/

namespace A212023.P16132799779903342125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212023.P16132799779903342125

/-! ## A212023.P13289295389781057727

`A212026(A034856(n+2))+A102683(2*n)`
-/

namespace A212023.P13289295389781057727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A034856 (n + 2)).toNat + A102683 (2 * n)

end

end A212023.P13289295389781057727

/-! ## A212023.P730895038528546115

`A212026(A034856(n+2))%A226847(n+1)`
-/

namespace A212023.P730895038528546115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212026 (A034856 (n + 2)).toNat) (A226847 (n + 1))

end

end A212023.P730895038528546115

/-!
# A212024: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-5.

The programs for A212024, there is no canonical definition to state claims against.
-/

/-! ## A212024.P14665830373468078103

`A212026(∑[round(1/acot(n))+3]+n+3)`
-/

namespace A212024.P14665830373468078103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)).toNat

end

end A212024.P14665830373468078103

/-! ## A212024.P4621765143821828887

`A212026(A141214(n+1))`
-/

namespace A212024.P4621765143821828887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A141214 (n + 1)).toNat

end

end A212024.P4621765143821828887

/-! ## A212024.P15001775023184050411

`A212026(A055998(n+2))`
-/

namespace A212024.P15001775023184050411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A055998 (n + 2)).toNat

end

end A212024.P15001775023184050411

/-! ## A212024.P6019835548464811305

`A212026(A155212(n)+5)`
-/

namespace A212024.P6019835548464811305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A155212 n + 5).toNat

end

end A212024.P6019835548464811305

/-! ## A212024.P7722005100539271350

`A212026(A056000(n)+7)`
-/

namespace A212024.P7722005100539271350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A056000 n + 7).toNat

end

end A212024.P7722005100539271350

/-!
# A212025: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-6.

The programs for A212025, there is no canonical definition to state claims against.
-/

/-! ## A212025.P7397686778029591669

`A212026(Δ[A264443(n)])`
-/

namespace A212025.P7397686778029591669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (f1 (n + 1) - f1 n).toNat

end

end A212025.P7397686778029591669

/-! ## A212025.P2145665907594929985

`A212026(A046691(n+3))`
-/

namespace A212025.P2145665907594929985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A046691 (n + 3)).toNat

end

end A212025.P2145665907594929985

/-! ## A212025.P8718009766559249756

`A212026(A056115(n)+11)`
-/

namespace A212025.P8718009766559249756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (A056115 n + 11).toNat

end

end A212025.P8718009766559249756

/-! ## A212025.P15488703778765507881

`A212026(eq[2, A092921(n)])`
-/

namespace A212025.P15488703778765507881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212025.P15488703778765507881

/-!
# A212026: T(n,k)=Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-k-1.

The programs for A212026, there is no canonical definition to state claims against.
-/

/-! ## A212026.P14614535955449310462

`A240672(A001333(n))+A211930(n+1)`
-/

namespace A212026.P14614535955449310462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240672 (A001333 n).toNat + A211930 (n + 1)

end

end A212026.P14614535955449310462

/-! ## A212026.P7871800940415786692

`A319227(A004149(n))+A211930(n+1)`
-/

namespace A212026.P7871800940415786692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319227 (A004149 n).toNat + A211930 (n + 1)

end

end A212026.P7871800940415786692

/-! ## A212026.P15319649414802816358

`A211930(n+1)+A211930(A111536(n))`
-/

namespace A212026.P15319649414802816358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (n + 1) + A211930 (A111536 n).toNat

end

end A212026.P15319649414802816358

/-! ## A212026.P10193624421799111990

`A211930(n+1)+A211930(A232266(n))`
-/

namespace A212026.P10193624421799111990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (n + 1) + A211930 (A232266 n).toNat

end

end A212026.P10193624421799111990

/-! ## A212026.P7685138862522520276

`A319227(A286796(n))+A211930(n+1)`
-/

namespace A212026.P7685138862522520276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319227 (A286796 n).toNat + A211930 (n + 1)

end

end A212026.P7685138862522520276

/-!
# A212027: G.f. satisfies: A(x) = x + x*A(x) * A(A(A(x))) / A(A(x)).

The programs for A212027, there is no canonical definition to state claims against.
-/

/-! ## A212027.P9581989487232149694

`A057356(A202236(n+1)+3)`
-/

namespace A212027.P9581989487232149694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A202236 (n + 1) + 3).toNat

end

end A212027.P9581989487232149694

/-! ## A212027.P5069383515284207451

`A103221(A030928(n+1)+A000266(n))`
-/

namespace A212027.P5069383515284207451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A030928 (n + 1) + A000266 n).toNat

end

end A212027.P5069383515284207451

/-! ## A212027.P13730237235592172818

`A117399(n+1)+A025442(A003149(n))`
-/

namespace A212027.P13730237235592172818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117399 (n + 1) + A025442 (A003149 n).toNat

end

end A212027.P13730237235592172818

/-!
# A212028: G.f. satisfies: A(x) = 1 + x*A(x*A(x)^3)^2.

The programs for A212028, there is no canonical definition to state claims against.
-/

/-! ## A212028.P7540054511914587087

`A171088(A039899(n²))`
-/

namespace A212028.P7540054511914587087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 (A039899 (n ^ 2)).toNat

end

end A212028.P7540054511914587087

/-! ## A212028.P15472399422473290244

`A008350(∑[A212105(n)])`
-/

namespace A212028.P15472399422473290244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212028.P15472399422473290244

/-!
# A212029: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x)^3)^3.

The programs for A212029, there is no canonical definition to state claims against.
-/

/-! ## A212029.P18373182269002652618

`A278055(∑[A387244(n)])`
-/

namespace A212029.P18373182269002652618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212029.P18373182269002652618

/-! ## A212029.P11091264938423424408

`A070752(∏[A109794(n)])`
-/

namespace A212029.P11091264938423424408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212029.P11091264938423424408

/-!
# A212030: G.f. satisfies: A(x) = 1 + x*A(x*A(x)^2)^3.

The programs for A212030, there is no canonical definition to state claims against.
-/

/-! ## A212030.P13411740760018543433

`ceil(A121615(A121586(n))/2)`
-/

namespace A212030.P13411740760018543433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121615 (A121586 n).toNat : ℚ) / 2⌉

end

end A212030.P13411740760018543433

/-! ## A212030.P6380723333962412020

`A300068(A211794(n+1))+1`
-/

namespace A212030.P6380723333962412020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A211794 (n + 1)).toNat + 1

end

end A212030.P6380723333962412020

/-!
# A212031: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element at a city block distance of two, and containing the value n(n+1)/2-2.

The programs for A212031, the canonical program `A212031.P4479818957124244928` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212031 has offset 1).

The definition of A212031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212031.P4479818957124244928

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=31, a(4)=78, a(5)=166`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212031

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4479818957124244928.Spec : Prop :=
  ∀ n, P4479818957124244928.a n = A212031 (n + 1)

theorem P4479818957124244928.correct : P4479818957124244928.Spec := by
  intro n
  simp only [A212031, Nat.add_sub_cancel]

end A212031

/-! ## A212031.P10468793759828047230

`A211911(n+1)+2*n`
-/

namespace A212031.P10468793759828047230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (2 * n : ℤ)

end

end A212031.P10468793759828047230

namespace A212031

/-- `A211911(n+1)+2*n` -/
def P10468793759828047230.Spec : Prop :=
  ∀ n, P10468793759828047230.a n = A212031 (n + 1)

end A212031

/-! ## A212031.P692923148963174412

`A212039(n+1)+∑[2*n]`
-/

namespace A212031.P692923148963174412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212039 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212031.P692923148963174412

namespace A212031

/-- `A212039(n+1)+∑[2*n]` -/
def P692923148963174412.Spec : Prop :=
  ∀ n, P692923148963174412.a n = A212031 (n + 1)

end A212031

/-! ## A212031.P709607284892032520

`A211958(n+1)+n-n²`
-/

namespace A212031.P709607284892032520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A212031.P709607284892032520

namespace A212031

/-- `A211958(n+1)+n-n²` -/
def P709607284892032520.Spec : Prop :=
  ∀ n, P709607284892032520.a n = A212031 (n + 1)

end A212031

/-! ## A212031.P10229945718362130282

`A211905(n+1)-n*(n-2)`
-/

namespace A212031.P10229945718362130282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211905 (n + 1) - (n : ℤ) * ((n : ℤ) - 2)

end

end A212031.P10229945718362130282

namespace A212031

/-- `A211905(n+1)-n*(n-2)` -/
def P10229945718362130282.Spec : Prop :=
  ∀ n, P10229945718362130282.a n = A212031 (n + 1)

end A212031

/-! ## A212031.P13815776380068004990

`A211924(n+1)+n-A161680(n)`
-/

namespace A212031.P13815776380068004990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211924 (n + 1) + ((n : ℤ) - A161680 n)

end

end A212031.P13815776380068004990

namespace A212031

/-- `A211924(n+1)+n-A161680(n)` -/
def P13815776380068004990.Spec : Prop :=
  ∀ n, P13815776380068004990.a n = A212031 (n + 1)

end A212031

/-! ## A212031.P14098766667256049060

`A212039(n+1)+A211958(n+1)-A211911(n+1)`
-/

namespace A212031.P14098766667256049060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212039 (n + 1) + A211958 (n + 1) - A211911 (n + 1)

end

end A212031.P14098766667256049060

namespace A212031

/-- `A212039(n+1)+A211958(n+1)-A211911(n+1)` -/
def P14098766667256049060.Spec : Prop :=
  ∀ n, P14098766667256049060.a n = A212031 (n + 1)

end A212031

/-!
# A212032: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element at a city block distance of two, and containing the value n(n+1)/2-3.

The programs for A212032, there is no canonical definition to state claims against.
-/

/-! ## A212032.P9153095331027062827

`A212036(∑[n+2])`
-/

namespace A212032.P9153095331027062827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212032.P9153095331027062827

/-! ## A212032.P18310417993158150226

`A212036(A000096(n+1))%A017466(n)`
-/

namespace A212032.P18310417993158150226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212036 (A000096 (n + 1)).toNat) (A017466 n)

end

end A212032.P18310417993158150226

/-! ## A212032.P12403805593164889128

`record[A212036(A013580(n))]`
-/

namespace A212032.P12403805593164889128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (A013580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212032.P12403805593164889128

/-!
# A212033: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element at a city block distance of two, and containing the value n(n+1)/2-4.

The programs for A212033, there is no canonical definition to state claims against.
-/

/-! ## A212033.P14036587765689032134

`A212036(∑[n+3]+1)`
-/

namespace A212033.P14036587765689032134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212033.P14036587765689032134

/-!
# A212034: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element at a city block distance of two, and containing the value n(n+1)/2-5.

The programs for A212034, there is no canonical definition to state claims against.
-/

/-! ## A212034.P7608290182900697529

`A212036(A141214(n+1))`
-/

namespace A212034.P7608290182900697529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (A141214 (n + 1)).toNat

end

end A212034.P7608290182900697529

/-! ## A212034.P9928239545224297728

`A212036(A055998(n+2))`
-/

namespace A212034.P9928239545224297728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (A055998 (n + 2)).toNat

end

end A212034.P9928239545224297728

/-! ## A212034.P12023463376658158417

`A212036(A155212(n)+5)`
-/

namespace A212034.P12023463376658158417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (A155212 n + 5).toNat

end

end A212034.P12023463376658158417

/-! ## A212034.P1118504891399567027

`A212036(A056000(n)+7)`
-/

namespace A212034.P1118504891399567027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (A056000 n + 7).toNat

end

end A212034.P1118504891399567027

/-!
# A212035: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element at a city block distance of two, and containing the value n(n+1)/2-6.

The programs for A212035, there is no canonical definition to state claims against.
-/

/-! ## A212035.P13092344926127451244

`A212036(Δ[A264443(n)])`
-/

namespace A212035.P13092344926127451244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (f1 (n + 1) - f1 n).toNat

end

end A212035.P13092344926127451244

/-! ## A212035.P2850641085019057088

`A212036(A056115(n)+11)`
-/

namespace A212035.P2850641085019057088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (A056115 n + 11).toNat

end

end A212035.P2850641085019057088

/-! ## A212035.P12086032979457268339

`A212036(eq[4, A193592(n)])`
-/

namespace A212035.P12086032979457268339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212035.P12086032979457268339

/-!
# A212039: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element within a city block distance of two, and containing the value n(n+1)/2-2.

The programs for A212039, the canonical program `A212039.P15670500703928229936` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212039 has offset 1).

The definition of A212039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212039.P15670500703928229936

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=19, a(4)=58, a(5)=136`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212039

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15670500703928229936.Spec : Prop :=
  ∀ n, P15670500703928229936.a n = A212039 (n + 1)

theorem P15670500703928229936.correct : P15670500703928229936.Spec := by
  intro n
  simp only [A212039, Nat.add_sub_cancel]

end A212039

/-! ## A212039.P17740625418004167022

`A211958(n+1)-2*n²`
-/

namespace A212039.P17740625418004167022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) - (2 * n ^ 2 : ℤ)

end

end A212039.P17740625418004167022

namespace A212039

/-- `A211958(n+1)-2*n²` -/
def P17740625418004167022.Spec : Prop :=
  ∀ n, P17740625418004167022.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P14791417231219497225

`A212031(n+1)-∑[2*n]`
-/

namespace A212039.P14791417231219497225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212031 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212039.P14791417231219497225

namespace A212039

/-- `A212031(n+1)-∑[2*n]` -/
def P14791417231219497225.Spec : Prop :=
  ∀ n, P14791417231219497225.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P2703925150567375391

`A211911(n+1)+n-n²`
-/

namespace A212039.P2703925150567375391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A212039.P2703925150567375391

namespace A212039

/-- `A211911(n+1)+n-n²` -/
def P2703925150567375391.Spec : Prop :=
  ∀ n, P2703925150567375391.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P5004748120376098459

`A211924(n+1)-A000326(n)`
-/

namespace A212039.P5004748120376098459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211924 (n + 1) - A000326 n

end

end A212039.P5004748120376098459

namespace A212039

/-- `A211924(n+1)-A000326(n)` -/
def P5004748120376098459.Spec : Prop :=
  ∀ n, P5004748120376098459.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P9460317708909029514

`A211905(n+1)-A000384(n)`
-/

namespace A212039.P9460317708909029514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211905 (n + 1) - A000384 n

end

end A212039.P9460317708909029514

namespace A212039

/-- `A211905(n+1)-A000384(n)` -/
def P9460317708909029514.Spec : Prop :=
  ∀ n, P9460317708909029514.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P8033059082794817114

`A211911(n+1)+n-A000290(n)`
-/

namespace A212039.P8033059082794817114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (n : ℤ) - A000290 n

end

end A212039.P8033059082794817114

namespace A212039

/-- `A211911(n+1)+n-A000290(n)` -/
def P8033059082794817114.Spec : Prop :=
  ∀ n, P8033059082794817114.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P11393849784382311225

`A211924(n+1)-(A161680(n)+n²)`
-/

namespace A212039.P11393849784382311225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211924 (n + 1) - (A161680 n + (n ^ 2 : ℤ))

end

end A212039.P11393849784382311225

namespace A212039

/-- `A211924(n+1)-(A161680(n)+n²)` -/
def P11393849784382311225.Spec : Prop :=
  ∀ n, P11393849784382311225.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P11980481139397759508

`A211911(n+1)-A161680(n)-A161680(n)`
-/

namespace A212039.P11980481139397759508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) - A161680 n - A161680 n

end

end A212039.P11980481139397759508

namespace A212039

/-- `A211911(n+1)-A161680(n)-A161680(n)` -/
def P11980481139397759508.Spec : Prop :=
  ∀ n, P11980481139397759508.a n = A212039 (n + 1)

end A212039

/-! ## A212039.P13213320871265144483

`A211905(n+1)-A161680(2*n)`
-/

namespace A212039.P13213320871265144483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211905 (n + 1) - A161680 (2 * n)

end

end A212039.P13213320871265144483

namespace A212039

/-- `A211905(n+1)-A161680(2*n)` -/
def P13213320871265144483.Spec : Prop :=
  ∀ n, P13213320871265144483.a n = A212039 (n + 1)

end A212039

/-!
# A212040: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element within a city block distance of two, and containing the value n(n+1)/2-3.

The programs for A212040, there is no canonical definition to state claims against.
-/

/-! ## A212040.P3532293261063529212

`A212044(∑[n+2])`
-/

namespace A212040.P3532293261063529212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212040.P3532293261063529212

/-! ## A212040.P7402900947209906479

`record[char[A034856(n+1)]*A212044(n+1)]`
-/

namespace A212040.P7402900947209906479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212040.P7402900947209906479

/-! ## A212040.P7186057595366127617

`A071625(n+1)*A212044(A101881(2*n+1))`
-/

namespace A212040.P7186057595366127617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) * A212044 (A101881 (2 * n + 1)).toNat

end

end A212040.P7186057595366127617

/-!
# A212041: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element within a city block distance of two, and containing the value n(n+1)/2-4.

The programs for A212041, there is no canonical definition to state claims against.
-/

/-! ## A212041.P4314212016595135812

`A212044(∑[n+3]+1)`
-/

namespace A212041.P4314212016595135812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212041.P4314212016595135812

/-!
# A212042: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element within a city block distance of two, and containing the value n(n+1)/2-5.

The programs for A212042, there is no canonical definition to state claims against.
-/

/-! ## A212042.P1402268270064253112

`A212044(A141214(n+1))`
-/

namespace A212042.P1402268270064253112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (A141214 (n + 1)).toNat

end

end A212042.P1402268270064253112

/-! ## A212042.P6685749300755889028

`A212044(A155212(n)+5)`
-/

namespace A212042.P6685749300755889028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (A155212 n + 5).toNat

end

end A212042.P6685749300755889028

/-! ## A212042.P5082685073911282517

`A212044(A056000(n)+7)`
-/

namespace A212042.P5082685073911282517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (A056000 n + 7).toNat

end

end A212042.P5082685073911282517

/-! ## A212042.P13237356334267097774

`A212044(eq[2, A054123(n)])`
-/

namespace A212042.P13237356334267097774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212042.P13237356334267097774

/-! ## A212042.P9585120431740768386

`A212044(eq[2, A319453(n)])`
-/

namespace A212042.P9585120431740768386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212042.P9585120431740768386

/-!
# A212043: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element within a city block distance of two, and containing the value n(n+1)/2-6.

The programs for A212043, there is no canonical definition to state claims against.
-/

/-! ## A212043.P17914663823781162198

`A212044(∑[n+5]+6)`
-/

namespace A212043.P17914663823781162198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A212043.P17914663823781162198

/-!
# A212044: T(n,k)=Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any element within a city block distance of two, and containing the value n(n+1)/2-k-1.

The programs for A212044, there is no canonical definition to state claims against.
-/

/-! ## A212044.P9770879836012242561

`∑{d}[A211916(n+1), A329329(#)]`
-/

namespace A212044.P9770879836012242561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329329 d

end

end A212044.P9770879836012242561

/-! ## A212044.P15846335209107949141

`A083861(n)-A324832(A285606(n))`
-/

namespace A212044.P15846335209107949141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 n - A324832 (A285606 n).toNat

end

end A212044.P15846335209107949141

/-! ## A212044.P4077069155463832886

`A083861(n)-A342753(A061026(n+4))`
-/

namespace A212044.P4077069155463832886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 n - A342753 (A061026 (n + 4)).toNat

end

end A212044.P4077069155463832886

/-! ## A212044.P17369556903921047485

`and(A083861(n), A242734(A007765(n+1)))`
-/

namespace A212044.P17369556903921047485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083861 n) (A242734 (A007765 (n + 1)).toNat)

end

end A212044.P17369556903921047485

/-!
# A212046: Denominators in the resistance triangle: T(k,n)=b, where b/c is the resistance distance R(k,n) for k resistors in an n-dimensional cube.

The programs for A212046, there is no canonical definition to state claims against.
-/

/-! ## A212046.P9932800204077946427

`A237271(A128567(3*n+5))*A239537(n+1)`
-/

namespace A212046.P9932800204077946427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A128567 (3 * n + 5)).toNat * A239537 (n + 1)

end

end A212046.P9932800204077946427

/-!
# A212049: Number of (w,x,y,z) with all terms in {1,...,n} and w*x=5*y*z.

The programs for A212049, there is no canonical definition to state claims against.
-/

/-! ## A212049.P12986572065958994432

`A344853(A240443(n+1)%A000108(n))`
-/

namespace A212049.P12986572065958994432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 (Int.tmod (A240443 (n + 1)) (A000108 n)).toNat

end

end A212049.P12986572065958994432

/-! ## A212049.P3869227674184356230

`record[A269387(A059268(2*n))+1]*A002266(n)`
-/

namespace A212049.P3869227674184356230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A059268 (2 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002266 n

end

end A212049.P3869227674184356230

/-! ## A212049.P5339716670023063169

`A212052(n)-A241469(A325683(n))`
-/

namespace A212049.P5339716670023063169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212052 n - A241469 (A325683 n).toNat

end

end A212049.P5339716670023063169

/-! ## A212049.P13038585901532841282

`A161116(A007689(n))*A262505(n)`
-/

namespace A212049.P13038585901532841282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 (A007689 n).toNat * A262505 n

end

end A212049.P13038585901532841282

/-!
# A212050: Number of (w,x,y,z) with all terms in {1,...,n} and 2w*x=5*y*z.

The programs for A212050, there is no canonical definition to state claims against.
-/

/-! ## A212050.P9598723864203099956

`A007290(A242522(n+1))%A034856(n+1)`
-/

namespace A212050.P9598723864203099956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007290 (A242522 (n + 1)).toNat) (A034856 (n + 1))

end

end A212050.P9598723864203099956

/-!
# A212051: Number of (w,x,y,z) with all terms in {1,...,n} and 3w*x=5*y*z.

The programs for A212051, there is no canonical definition to state claims against.
-/

/-! ## A212051.P17932536850698367013

`4*A234615(A005437(n))`
-/

namespace A212051.P17932536850698367013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A234615 (A005437 n).toNat

end

end A212051.P17932536850698367013

/-! ## A212051.P2714135307856478540

`and(A258645(A094033(n)), A315916(n))`
-/

namespace A212051.P2714135307856478540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258645 (A094033 n).toNat) (A315916 n)

end

end A212051.P2714135307856478540

/-! ## A212051.P16915983205755726221

`4*A285099(A000431(n))`
-/

namespace A212051.P16915983205755726221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A285099 (A000431 n).toNat

end

end A212051.P16915983205755726221

/-! ## A212051.P10434839002818991458

`and(5*n, A005843(A217665(n)))`
-/

namespace A212051.P10434839002818991458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n : ℤ) (A005843 (A217665 n).toNat)

end

end A212051.P10434839002818991458

/-! ## A212051.P1774486026790092702

`and(A005835(n+1), A270339(A001037(n)))`
-/

namespace A212051.P1774486026790092702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005835 (n + 1)) (A270339 (A001037 n).toNat)

end

end A212051.P1774486026790092702

/-!
# A212052: Number of (w,x,y,z) with all terms in {1,...,n} and 4w*x=5*y*z.

The programs for A212052, there is no canonical definition to state claims against.
-/

/-! ## A212052.P5775306776096775559

`A272619(A359181(n+2))`
-/

namespace A212052.P5775306776096775559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272619 (A359181 (n + 2)).toNat

end

end A212052.P5775306776096775559

/-! ## A212052.P8675074639246484175

`∑[A183063(∑[A049311(n+2)])]`
-/

namespace A212052.P8675074639246484175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212052.P8675074639246484175

/-! ## A212052.P6767950812277288497

`A241469(A325683(n))+A212049(n)`
-/

namespace A212052.P6767950812277288497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241469 (A325683 n).toNat + A212049 n

end

end A212052.P6767950812277288497

/-! ## A212052.P7583350125105977331

`A154257(lcm(A000568(n), A015112(n+2)))`
-/

namespace A212052.P7583350125105977331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154257 (Int.lcm (A000568 n) (A015112 (n + 2)))

end

end A212052.P7583350125105977331

/-!
# A212053: Number of (w,x,y,z) with all terms in {1,...,n} and w*x<=y*z+1.

The programs for A212053, the canonical program `A212053.P4014316363866120723` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212053 has offset 0).

The definition of A212053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212053.P16660450471983400837

`n^4-A212056(n)-A197168(n)`
-/

namespace A212053.P16660450471983400837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212056 n - A197168 n

end

end A212053.P16660450471983400837

namespace A212053

/-- `n^4-A212056(n)-A197168(n)` -/
def P16660450471983400837.Spec : Prop :=
  ∀ n, P16660450471983400837.a n = A212053 n

end A212053

/-! ## A212053.P7161243430674136997

`A212055(n)-A197168(n)`
-/

namespace A212053.P7161243430674136997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n - A197168 n

end

end A212053.P7161243430674136997

namespace A212053

/-- `A212055(n)-A197168(n)` -/
def P7161243430674136997.Spec : Prop :=
  ∀ n, P7161243430674136997.a n = A212053 n

end A212053

/-! ## A212053.P2850380193624144918

`A212055(n)-2*A209980(n)`
-/

namespace A212053.P2850380193624144918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n - 2 * A209980 n

end

end A212053.P2850380193624144918

namespace A212053

/-- `A212055(n)-2*A209980(n)` -/
def P2850380193624144918.Spec : Prop :=
  ∀ n, P2850380193624144918.a n = A212053 n

end A212053

/-! ## A212053.P4014316363866120723

`n^4-A212054(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A212053

/-- `n^4-A212054(n)` -/
def P4014316363866120723.Spec : Prop :=
  ∀ n, P4014316363866120723.a n = A212053 n

theorem P4014316363866120723.correct : P4014316363866120723.Spec := by
  intro n
  simp only [A212053]

end A212053

/-! ## A212053.P6657124482477018631

`abs(A000583(n)-A212054(n))`
-/

namespace A212053.P6657124482477018631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212054 n|

end

end A212053.P6657124482477018631

namespace A212053

/-- `abs(A000583(n)-A212054(n))` -/
def P6657124482477018631.Spec : Prop :=
  ∀ n, P6657124482477018631.a n = A212053 n

end A212053

/-! ## A212053.P10843637197188963757

`A211787(n)+A211797(n)-A212054(n)`
-/

namespace A212053.P10843637197188963757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212054 n)

end

end A212053.P10843637197188963757

namespace A212053

/-- `A211787(n)+A211797(n)-A212054(n)` -/
def P10843637197188963757.Spec : Prop :=
  ∀ n, P10843637197188963757.a n = A212053 n

end A212053

/-! ## A212053.P17364935631111352274

`A212055(n)+A212056(n)-A212054(n)`
-/

namespace A212053.P17364935631111352274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A212054 n)

end

end A212053.P17364935631111352274

namespace A212053

/-- `A212055(n)+A212056(n)-A212054(n)` -/
def P17364935631111352274.Spec : Prop :=
  ∀ n, P17364935631111352274.a n = A212053 n

end A212053

/-! ## A212053.P12539892319807261167

`A212057(n)+A212058(n)-A212054(n)`
-/

namespace A212053.P12539892319807261167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212057 n + (A212058 n - A212054 n)

end

end A212053.P12539892319807261167

namespace A212053

/-- `A212057(n)+A212058(n)-A212054(n)` -/
def P12539892319807261167.Spec : Prop :=
  ∀ n, P12539892319807261167.a n = A212053 n

end A212053

/-! ## A212053.P1845125376742538635

`A212092(n)+A212095(n)-A212054(n)`
-/

namespace A212053.P1845125376742538635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212054 n)

end

end A212053.P1845125376742538635

namespace A212053

/-- `A212092(n)+A212095(n)-A212054(n)` -/
def P1845125376742538635.Spec : Prop :=
  ∀ n, P1845125376742538635.a n = A212053 n

end A212053

/-! ## A212053.P7313694298856497691

`A000007(n+1)+A000583(n)-A212054(n)`
-/

namespace A212053.P7313694298856497691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A212054 n)

end

end A212053.P7313694298856497691

namespace A212053

/-- `A000007(n+1)+A000583(n)-A212054(n)` -/
def P7313694298856497691.Spec : Prop :=
  ∀ n, P7313694298856497691.a n = A212053 n

end A212053

/-! ## A212053.P11572312386151210750

`A000038(n+1)+A000583(n)-A212054(n)`
-/

namespace A212053.P11572312386151210750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A212054 n)

end

end A212053.P11572312386151210750

namespace A212053

/-- `A000038(n+1)+A000583(n)-A212054(n)` -/
def P11572312386151210750.Spec : Prop :=
  ∀ n, P11572312386151210750.a n = A212053 n

end A212053

/-! ## A212053.P1806569315910928236

`(A000583(n)-A212054(n))*A007318(C(2, n))`
-/

namespace A212053.P1806569315910928236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212054 n) * A007318 (Nat.choose 2 n)

end

end A212053.P1806569315910928236

namespace A212053

/-- `(A000583(n)-A212054(n))*A007318(C(2, n))` -/
def P1806569315910928236.Spec : Prop :=
  ∀ n, P1806569315910928236.a n = A212053 n

end A212053

/-! ## A212053.P16182256885661652246

`(A000583(n)-A212054(n))*(A000041(n)%2)!`
-/

namespace A212053.P16182256885661652246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212054 n) * (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A212053.P16182256885661652246

namespace A212053

/-- `(A000583(n)-A212054(n))*(A000041(n)%2)!` -/
def P16182256885661652246.Spec : Prop :=
  ∀ n, P16182256885661652246.a n = A212053 n

end A212053

/-! ## A212053.P1383096947837634843

`A008683(4*(n+1))+A000583(n)-A212054(n)`
-/

namespace A212053.P1383096947837634843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A212054 n)

end

end A212053.P1383096947837634843

namespace A212053

/-- `A008683(4*(n+1))+A000583(n)-A212054(n)` -/
def P1383096947837634843.Spec : Prop :=
  ∀ n, P1383096947837634843.a n = A212053 n

end A212053

/-! ## A212053.P1070155199916508181

`(A000583(n)-A212054(n))*A000041(C(2, n+2))`
-/

namespace A212053.P1070155199916508181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212054 n) * A000041 (Nat.choose 2 (n + 2))

end

end A212053.P1070155199916508181

namespace A212053

/-- `(A000583(n)-A212054(n))*A000041(C(2, n+2))` -/
def P1070155199916508181.Spec : Prop :=
  ∀ n, P1070155199916508181.a n = A212053 n

end A212053

/-! ## A212053.P5201190813494584458

`A000583(n)-A001222(A008578(n+1))*A212054(n)`
-/

namespace A212053.P5201190813494584458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A001222 (A008578 (n + 1)).toNat * A212054 n

end

end A212053.P5201190813494584458

namespace A212053

/-- `A000583(n)-A001222(A008578(n+1))*A212054(n)` -/
def P5201190813494584458.Spec : Prop :=
  ∀ n, P5201190813494584458.a n = A212053 n

end A212053

/-! ## A212053.P6641634144181615144

`A000583(n)-A001222(A022005(n+1))*A212054(n)`
-/

namespace A212053.P6641634144181615144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A001222 (A022005 (n + 1)).toNat * A212054 n

end

end A212053.P6641634144181615144

namespace A212053

/-- `A000583(n)-A001222(A022005(n+1))*A212054(n)` -/
def P6641634144181615144.Spec : Prop :=
  ∀ n, P6641634144181615144.a n = A212053 n

end A212053

/-! ## A212053.P6180068084110409972

`A000583(n)-A001222(A104887(n+1))*A212054(n)`
-/

namespace A212053.P6180068084110409972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A001222 (A104887 (n + 1)).toNat * A212054 n

end

end A212053.P6180068084110409972

namespace A212053

/-- `A000583(n)-A001222(A104887(n+1))*A212054(n)` -/
def P6180068084110409972.Spec : Prop :=
  ∀ n, P6180068084110409972.a n = A212053 n

end A212053

/-! ## A212053.P11833552631963467556

`(A000583(n)-A212054(n))/A001222(A022005(n+2))`
-/

namespace A212053.P11833552631963467556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212054 n : ℚ) / (A001222 (A022005 (n + 2)).toNat : ℚ)

end

end A212053.P11833552631963467556

namespace A212053

/-- `(A000583(n)-A212054(n))/A001222(A022005(n+2))` -/
def P11833552631963467556.Spec : Prop :=
  ∀ n, P11833552631963467556.a n = (A212053 n : ℚ)

end A212053

/-! ## A212053.P13816364516700856560

`A212054(n)+A209994(n)`
-/

namespace A212053.P13816364516700856560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212054 n + A209994 n

end

end A212053.P13816364516700856560

namespace A212053

/-- `A212054(n)+A209994(n)` -/
def P13816364516700856560.Spec : Prop :=
  ∀ n, P13816364516700856560.a n = A212053 n

end A212053

/-!
# A212054: Number of (w,x,y,z) with all terms in {1,...,n} and w*x>y*z+1.

The programs for A212054, the canonical program `A212054.P6228339497904547609` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212054 has offset 0).

The definition of A212054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212054.P15497416883646856589

`n^4-A212053(n)`
-/

namespace A212054.P15497416883646856589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212053 n

end

end A212054.P15497416883646856589

namespace A212054

/-- `n^4-A212053(n)` -/
def P15497416883646856589.Spec : Prop :=
  ∀ n, P15497416883646856589.a n = A212054 n

end A212054

/-! ## A212054.P14950997326439351034

`A212056(n)+A197168(n)`
-/

namespace A212054.P14950997326439351034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212056 n + A197168 n

end

end A212054.P14950997326439351034

namespace A212054

/-- `A212056(n)+A197168(n)` -/
def P14950997326439351034.Spec : Prop :=
  ∀ n, P14950997326439351034.a n = A212054 n

end A212054

/-! ## A212054.P10163237397219468076

`abs(A000583(n)-A212053(n))`
-/

namespace A212054.P10163237397219468076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212053 n|

end

end A212054.P10163237397219468076

namespace A212054

/-- `abs(A000583(n)-A212053(n))` -/
def P10163237397219468076.Spec : Prop :=
  ∀ n, P10163237397219468076.a n = A212054 n

end A212054

/-! ## A212054.P1437013227048422065

`A212056(n)+2*A209980(n)`
-/

namespace A212054.P1437013227048422065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212056 n + 2 * A209980 n

end

end A212054.P1437013227048422065

namespace A212054

/-- `A212056(n)+2*A209980(n)` -/
def P1437013227048422065.Spec : Prop :=
  ∀ n, P1437013227048422065.a n = A212054 n

end A212054

/-! ## A212054.P15289156206560554923

`A197168(n)+n^4-A212055(n)`
-/

namespace A212054.P15289156206560554923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197168 n + ((n ^ 4 : ℤ) - A212055 n)

end

end A212054.P15289156206560554923

namespace A212054

/-- `A197168(n)+n^4-A212055(n)` -/
def P15289156206560554923.Spec : Prop :=
  ∀ n, P15289156206560554923.a n = A212054 n

end A212054

/-! ## A212054.P6228339497904547609

`A211059(A028310(n))-A196227(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A212054

/-- `A211059(A028310(n))-A196227(n)` -/
def P6228339497904547609.Spec : Prop :=
  ∀ n, P6228339497904547609.a n = A212054 n

theorem P6228339497904547609.correct : P6228339497904547609.Spec := by
  intro n
  simp only [A212054]

end A212054

/-! ## A212054.P3369853091422739140

`A212056(A028310(n))+lcm(2, A209980(n))`
-/

namespace A212054.P3369853091422739140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212056 (A028310 n).toNat + (Int.lcm 2 (A209980 n) : ℤ)

end

end A212054.P3369853091422739140

namespace A212054

/-- `A212056(A028310(n))+lcm(2, A209980(n))` -/
def P3369853091422739140.Spec : Prop :=
  ∀ n, P3369853091422739140.a n = A212054 n

end A212054

/-! ## A212054.P16094149462432901760

`A211059(A000007(n)+n)-A196227(n)`
-/

namespace A212054.P16094149462432901760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (A000007 n + (n : ℤ)).toNat - A196227 n

end

end A212054.P16094149462432901760

namespace A212054

/-- `A211059(A000007(n)+n)-A196227(n)` -/
def P16094149462432901760.Spec : Prop :=
  ∀ n, P16094149462432901760.a n = A212054 n

end A212054

/-! ## A212054.P9595104152704758696

`A211787(n)+A211797(n)-A212053(n)`
-/

namespace A212054.P9595104152704758696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212053 n)

end

end A212054.P9595104152704758696

namespace A212054

/-- `A211787(n)+A211797(n)-A212053(n)` -/
def P9595104152704758696.Spec : Prop :=
  ∀ n, P9595104152704758696.a n = A212054 n

end A212054

/-! ## A212054.P11076806917489332243

`A212055(n)+A212056(n)-A212053(n)`
-/

namespace A212054.P11076806917489332243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A212053 n)

end

end A212054.P11076806917489332243

namespace A212054

/-- `A212055(n)+A212056(n)-A212053(n)` -/
def P11076806917489332243.Spec : Prop :=
  ∀ n, P11076806917489332243.a n = A212054 n

end A212054

/-! ## A212054.P11826007423581453842

`A212063(n)+A212064(n)-A212053(n)`
-/

namespace A212054.P11826007423581453842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212053 n)

end

end A212054.P11826007423581453842

namespace A212054

/-- `A212063(n)+A212064(n)-A212053(n)` -/
def P11826007423581453842.Spec : Prop :=
  ∀ n, P11826007423581453842.a n = A212054 n

end A212054

/-! ## A212054.P14313466876109447536

`A000583(n)-(A212055(n)-2*A209980(n))`
-/

namespace A212054.P14313466876109447536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212055 n - 2 * A209980 n)

end

end A212054.P14313466876109447536

namespace A212054

/-- `A000583(n)-(A212055(n)-2*A209980(n))` -/
def P14313466876109447536.Spec : Prop :=
  ∀ n, P14313466876109447536.a n = A212054 n

end A212054

/-! ## A212054.P17589547529698744681

`C(2, A000203(n+2))+A000583(n)-A212053(n)`
-/

namespace A212054.P17589547529698744681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ) + (A000583 n - A212053 n)

end

end A212054.P17589547529698744681

namespace A212054

/-- `C(2, A000203(n+2))+A000583(n)-A212053(n)` -/
def P17589547529698744681.Spec : Prop :=
  ∀ n, P17589547529698744681.a n = A212054 n

end A212054

/-! ## A212054.P905933031938056413

`A209980(A028310(n))+A212056(n)+A209980(n)`
-/

namespace A212054.P905933031938056413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209980 (A028310 n).toNat + (A212056 n + A209980 n)

end

end A212054.P905933031938056413

namespace A212054

/-- `A209980(A028310(n))+A212056(n)+A209980(n)` -/
def P905933031938056413.Spec : Prop :=
  ∀ n, P905933031938056413.a n = A212054 n

end A212054

/-! ## A212054.P9218113408947765679

`A209973(n)+A212056(n)-A163300(A267872(n))`
-/

namespace A212054.P9218113408947765679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209973 n + (A212056 n - A163300 (A267872 n).toNat)

end

end A212054.P9218113408947765679

namespace A212054

/-- `A209973(n)+A212056(n)-A163300(A267872(n))` -/
def P9218113408947765679.Spec : Prop :=
  ∀ n, P9218113408947765679.a n = A212054 n

end A212054

/-! ## A212054.P9703202734768859850

`A212053(n)-A209994(n)`
-/

namespace A212054.P9703202734768859850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n - A209994 n

end

end A212054.P9703202734768859850

namespace A212054

/-- `A212053(n)-A209994(n)` -/
def P9703202734768859850.Spec : Prop :=
  ∀ n, P9703202734768859850.a n = A212054 n

end A212054

/-!
# A212055: Number of (w,x,y,z) with all terms in {1,...,n} and w*x<=y*z+2.

The programs for A212055, there is no canonical definition to state claims against.
-/

/-! ## A212055.P9877919266656272349

`n^4-A212056(n)`
-/

namespace A212055.P9877919266656272349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212056 n

end

end A212055.P9877919266656272349

/-! ## A212055.P466872890393764342

`A212053(n)+A197168(n)`
-/

namespace A212055.P466872890393764342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + A197168 n

end

end A212055.P466872890393764342

/-! ## A212055.P18410722930089810043

`abs(A000583(n)-A212056(n))`
-/

namespace A212055.P18410722930089810043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212056 n|

end

end A212055.P18410722930089810043

/-! ## A212055.P13772669043094243303

`A211787(n)+A211797(n)-A212056(n)`
-/

namespace A212055.P13772669043094243303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212056 n)

end

end A212055.P13772669043094243303

/-! ## A212055.P12961642819591398544

`A212057(n)+A212058(n)-A212056(n)`
-/

namespace A212055.P12961642819591398544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212057 n + (A212058 n - A212056 n)

end

end A212055.P12961642819591398544

/-! ## A212055.P16454432718107538529

`A212063(n)+A212064(n)-A212056(n)`
-/

namespace A212055.P16454432718107538529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212056 n)

end

end A212055.P16454432718107538529

/-! ## A212055.P5639115691608367487

`A212065(n)+A212066(n)-A212056(n)`
-/

namespace A212055.P5639115691608367487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A212056 n)

end

end A212055.P5639115691608367487

/-! ## A212055.P12752198912654008366

`A000583(n)+A057428(n)*A212056(n)`
-/

namespace A212055.P12752198912654008366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A057428 n * A212056 n

end

end A212055.P12752198912654008366

/-! ## A212055.P16046387500062046861

`A000583(n)-lcm(A033999(n), A212056(n))`
-/

namespace A212055.P16046387500062046861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (Int.lcm (A033999 n) (A212056 n) : ℤ)

end

end A212055.P16046387500062046861

/-! ## A212055.P9651692080315019429

`(A000583(n)-A212056(n))%A010017(n)²`
-/

namespace A212055.P9651692080315019429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212056 n) (A010017 n ^ 2)

end

end A212055.P9651692080315019429

/-! ## A212055.P1451242019882106503

`(A000583(n)-A212056(n))*A007318(C(2, n))`
-/

namespace A212055.P1451242019882106503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n) * A007318 (Nat.choose 2 n)

end

end A212055.P1451242019882106503

/-! ## A212055.P12682566505901133282

`(A000583(n)-A212056(n))/A007318(C(3, n))`
-/

namespace A212055.P12682566505901133282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A212055.P12682566505901133282

/-! ## A212055.P3973572152487609061

`(A000583(n)-A212056(n))*A000041(C(n, n²))`
-/

namespace A212055.P3973572152487609061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n) * A000041 (Nat.choose n (n ^ 2))

end

end A212055.P3973572152487609061

/-! ## A212055.P5246449593333463142

`(A000583(n)-A212056(n))*A014963(6*(n+1))`
-/

namespace A212055.P5246449593333463142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n) * A014963 (6 * (n + 1))

end

end A212055.P5246449593333463142

/-! ## A212055.P5626638970896932175

`(A000583(n)-A212056(n))*A000040(n+1)%2`
-/

namespace A212055.P5626638970896932175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n) * Int.tmod (A000040 (n + 1)) 2

end

end A212055.P5626638970896932175

/-! ## A212055.P13888228533455962318

`(A000583(n)-A212056(n))/A320039(n+1)%2`
-/

namespace A212055.P13888228533455962318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n : ℚ) / (Int.tmod (A320039 (n + 1)) 2 : ℚ)

end

end A212055.P13888228533455962318

/-! ## A212055.P5091306077527884229

`(A000583(n)-A212056(n))*A000108(C(2, n+2))`
-/

namespace A212055.P5091306077527884229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n) * A000108 (Nat.choose 2 (n + 2))

end

end A212055.P5091306077527884229

/-! ## A212055.P10293417717759164468

`(A000583(n)-A212056(n))/A000041(C(2, n+2))`
-/

namespace A212055.P10293417717759164468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212056 n : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A212055.P10293417717759164468

/-! ## A212055.P3289121507857463696

`A000583(n)-A001222(A008578(n+1))*A212056(n)`
-/

namespace A212055.P3289121507857463696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A001222 (A008578 (n + 1)).toNat * A212056 n

end

end A212055.P3289121507857463696

/-! ## A212055.P14811186716555454276

`A000583(n)-A001222(A040992(n+1))*A212056(n)`
-/

namespace A212055.P14811186716555454276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A001222 (A040992 (n + 1)).toNat * A212056 n

end

end A212055.P14811186716555454276

/-!
# A212056: Number of (w,x,y,z) with all terms in {1,...,n} and w*x>y*z+2.

The programs for A212056, there is no canonical definition to state claims against.
-/

/-! ## A212056.P8103198619813973773

`n^4-A212055(n)`
-/

namespace A212056.P8103198619813973773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212055 n

end

end A212056.P8103198619813973773

/-! ## A212056.P5926801493521896122

`abs(A000583(n)-A212055(n))`
-/

namespace A212056.P5926801493521896122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212055 n|

end

end A212056.P5926801493521896122

/-! ## A212056.P5971148197973075879

`A002523(n)-(A212055(n)+1)`
-/

namespace A212056.P5971148197973075879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212055 n + 1)

end

end A212056.P5971148197973075879

/-! ## A212056.P7354095994389550509

`(n^4)%(A212055(n)+A000038(n))`
-/

namespace A212056.P7354095994389550509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 4 : ℤ) (A212055 n + A000038 n)

end

end A212056.P7354095994389550509

/-! ## A212056.P12194572207469992988

`A211787(n)+A211797(n)-A212055(n)`
-/

namespace A212056.P12194572207469992988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212055 n)

end

end A212056.P12194572207469992988

/-! ## A212056.P7509523721089443733

`A212057(n)+A212058(n)-A212055(n)`
-/

namespace A212056.P7509523721089443733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212057 n + (A212058 n - A212055 n)

end

end A212056.P7509523721089443733

/-! ## A212056.P16518623076816412767

`A212063(n)+A212064(n)-A212055(n)`
-/

namespace A212056.P16518623076816412767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212055 n)

end

end A212056.P16518623076816412767

/-! ## A212056.P5967637905409944039

`(A000583(n)-A212055(n))%A106648(n)²`
-/

namespace A212056.P5967637905409944039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212055 n) (A106648 n ^ 2)

end

end A212056.P5967637905409944039

/-! ## A212056.P13769244950172177635

`A000583(n)-char[A026741(n)]*A212055(n)`
-/

namespace A212056.P13769244950172177635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212055 n

end

end A212056.P13769244950172177635

/-! ## A212056.P13782703446144212108

`(A000583(n)-A212055(n))*A007318(C(2, n))`
-/

namespace A212056.P13782703446144212108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212055 n) * A007318 (Nat.choose 2 n)

end

end A212056.P13782703446144212108

/-! ## A212056.P11226506687763134549

`A000583(n)-char[A305800(n+1)]*A212055(n)`
-/

namespace A212056.P11226506687763134549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212055 n

end

end A212056.P11226506687763134549

/-! ## A212056.P11210366055914980392

`(A000583(n)-A212055(n))/A014963(4*n+2)`
-/

namespace A212056.P11210366055914980392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212055 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A212056.P11210366055914980392

/-! ## A212056.P569934605857401778

`A008683(9*(n+1))+A000583(n)-A212055(n)`
-/

namespace A212056.P569934605857401778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (9 * (n + 1)) + (A000583 n - A212055 n)

end

end A212056.P569934605857401778

/-! ## A212056.P412079863709679449

`(A000583(n)-A212055(n))*A000040(n+1)%2`
-/

namespace A212056.P412079863709679449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212055 n) * Int.tmod (A000040 (n + 1)) 2

end

end A212056.P412079863709679449

/-! ## A212056.P16212988078867546167

`(A000583(n)-A212055(n))*A000041(C(2, n+2))`
-/

namespace A212056.P16212988078867546167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212055 n) * A000041 (Nat.choose 2 (n + 2))

end

end A212056.P16212988078867546167

/-! ## A212056.P17365445065383373775

`(A000583(n)-A212055(n))*A007318(and(2, 1-n))`
-/

namespace A212056.P17365445065383373775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212055 n) * A007318 (Int.land 2 (1 - (n : ℤ))).toNat

end

end A212056.P17365445065383373775

/-! ## A212056.P239082168159316780

`A000583(n)-A001222(A048848(n+1))*A212055(n)`
-/

namespace A212056.P239082168159316780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A001222 (A048848 (n + 1)).toNat * A212055 n

end

end A212056.P239082168159316780

/-! ## A212056.P8599397843789817399

`A212054(n)-A197168(n)`
-/

namespace A212056.P8599397843789817399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212054 n - A197168 n

end

end A212056.P8599397843789817399

/-! ## A212056.P15293537956112517646

`A212053(n)+A212054(n)-A212055(n)`
-/

namespace A212056.P15293537956112517646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + (A212054 n - A212055 n)

end

end A212056.P15293537956112517646

/-! ## A212056.P14215122550344327654

`(A000583(n)-A212055(n))*A014963(∑[n+1])`
-/

namespace A212056.P14215122550344327654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212055 n) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212056.P14215122550344327654

/-!
# A212057: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212057, the canonical program `A212057.P1990269898064689927` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212057 has offset 0).

The definition of A212057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212057.P1990269898064689927

`n^4-∑[∑[∏{e}[n, C(#+2, 2)]]-1]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212057

/-- `n^4-∑[∑[∏{e}[n, C(#+2, 2)]]-1]` -/
def P1990269898064689927.Spec : Prop :=
  ∀ n, P1990269898064689927.a n = A212057 n

theorem P1990269898064689927.correct : P1990269898064689927.Spec := by
  intro n
  simp only [A212057]

end A212057

/-! ## A212057.P8376236541847400156

`n^4-A212058(n)`
-/

namespace A212057.P8376236541847400156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212058 n

end

end A212057.P8376236541847400156

namespace A212057

/-- `n^4-A212058(n)` -/
def P8376236541847400156.Spec : Prop :=
  ∀ n, P8376236541847400156.a n = A212057 n

end A212057

/-! ## A212057.P4996212894841089498

`n^4-∑[∑[∑{d}[n, A000005(#)]]]`
-/

namespace A212057.P4996212894841089498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A000005 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212057.P4996212894841089498

namespace A212057

/-- `n^4-∑[∑[∑{d}[n, A000005(#)]]]` -/
def P4996212894841089498.Spec : Prop :=
  ∀ n, P4996212894841089498.a n = A212057 n

end A212057

/-! ## A212057.P13010236966214682151

`n²²-∑[∑[∑{d}[n, A032741(#)+1]]]`
-/

namespace A212057.P13010236966214682151
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (A032741 d + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212057.P13010236966214682151

namespace A212057

/-- `n²²-∑[∑[∑{d}[n, A032741(#)+1]]]` -/
def P13010236966214682151.Spec : Prop :=
  ∀ n, P13010236966214682151.a n = A212057 n

end A212057

/-! ## A212057.P2216326583711032110

`abs(A000583(n)-A212058(n))`
-/

namespace A212057.P2216326583711032110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212058 n|

end

end A212057.P2216326583711032110

namespace A212057

/-- `abs(A000583(n)-A212058(n))` -/
def P2216326583711032110.Spec : Prop :=
  ∀ n, P2216326583711032110.a n = A212057 n

end A212057

/-! ## A212057.P9032793774796252372

`A002523(n)-(A212058(n)+1)`
-/

namespace A212057.P9032793774796252372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212058 n + 1)

end

end A212057.P9032793774796252372

namespace A212057

/-- `A002523(n)-(A212058(n)+1)` -/
def P9032793774796252372.Spec : Prop :=
  ∀ n, P9032793774796252372.a n = A212057 n

end A212057

/-! ## A212057.P6629301820552983676

`A000583(n)-A057427(n)*A212058(n)`
-/

namespace A212057.P6629301820552983676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A212058 n

end

end A212057.P6629301820552983676

namespace A212057

/-- `A000583(n)-A057427(n)*A212058(n)` -/
def P6629301820552983676.Spec : Prop :=
  ∀ n, P6629301820552983676.a n = A212057 n

end A212057

/-! ## A212057.P9934972912162252672

`A000038(n+1)+A000583(n)-A212058(n)`
-/

namespace A212057.P9934972912162252672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A212058 n)

end

end A212057.P9934972912162252672

namespace A212057

/-- `A000038(n+1)+A000583(n)-A212058(n)` -/
def P9934972912162252672.Spec : Prop :=
  ∀ n, P9934972912162252672.a n = A212057 n

end A212057

/-! ## A212057.P7314542141239405395

`(A000583(n)-A212058(n))*A000034(2*n)`
-/

namespace A212057.P7314542141239405395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * A000034 (2 * n)

end

end A212057.P7314542141239405395

namespace A212057

/-- `(A000583(n)-A212058(n))*A000034(2*n)` -/
def P7314542141239405395.Spec : Prop :=
  ∀ n, P7314542141239405395.a n = A212057 n

end A212057

/-! ## A212057.P17164663448626119767

`(A000583(n)-A212058(n))%A123921(n+1)`
-/

namespace A212057.P17164663448626119767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212058 n) (A123921 (n + 1))

end

end A212057.P17164663448626119767

namespace A212057

/-- `(A000583(n)-A212058(n))%A123921(n+1)` -/
def P17164663448626119767.Spec : Prop :=
  ∀ n, P17164663448626119767.a n = A212057 n

end A212057

/-! ## A212057.P13097147970356996412

`(A000583(n)-A212058(n))*A000108(C(2, n))`
-/

namespace A212057.P13097147970356996412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * A000108 (Nat.choose 2 n)

end

end A212057.P13097147970356996412

namespace A212057

/-- `(A000583(n)-A212058(n))*A000108(C(2, n))` -/
def P13097147970356996412.Spec : Prop :=
  ∀ n, P13097147970356996412.a n = A212057 n

end A212057

/-! ## A212057.P13796829962393956477

`(A000583(n)-A212058(n))*A007318(C(2, n))`
-/

namespace A212057.P13796829962393956477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * A007318 (Nat.choose 2 n)

end

end A212057.P13796829962393956477

namespace A212057

/-- `(A000583(n)-A212058(n))*A007318(C(2, n))` -/
def P13796829962393956477.Spec : Prop :=
  ∀ n, P13796829962393956477.a n = A212057 n

end A212057

/-! ## A212057.P10915390836976622746

`(A000583(n)-A212058(n))*A009001(2*n)²`
-/

namespace A212057.P10915390836976622746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * A009001 (2 * n) ^ 2

end

end A212057.P10915390836976622746

namespace A212057

/-- `(A000583(n)-A212058(n))*A009001(2*n)²` -/
def P10915390836976622746.Spec : Prop :=
  ∀ n, P10915390836976622746.a n = A212057 n

end A212057

/-! ## A212057.P6063009411895529374

`(A000583(n)-A212058(n))*(A007318(n)%2)!`
-/

namespace A212057.P6063009411895529374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ)

end

end A212057.P6063009411895529374

namespace A212057

/-- `(A000583(n)-A212058(n))*(A007318(n)%2)!` -/
def P6063009411895529374.Spec : Prop :=
  ∀ n, P6063009411895529374.a n = A212057 n

end A212057

/-! ## A212057.P8655118368210940954

`A008683(4*(n+4))+A000583(n)-A212058(n)`
-/

namespace A212057.P8655118368210940954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 4)) + (A000583 n - A212058 n)

end

end A212057.P8655118368210940954

namespace A212057

/-- `A008683(4*(n+4))+A000583(n)-A212058(n)` -/
def P8655118368210940954.Spec : Prop :=
  ∀ n, P8655118368210940954.a n = A212057 n

end A212057

/-! ## A212057.P11482617587652917903

`(A000583(n)-A212058(n))*A000041(C(2, n+1))`
-/

namespace A212057.P11482617587652917903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * A000041 (Nat.choose 2 (n + 1))

end

end A212057.P11482617587652917903

namespace A212057

/-- `(A000583(n)-A212058(n))*A000041(C(2, n+1))` -/
def P11482617587652917903.Spec : Prop :=
  ∀ n, P11482617587652917903.a n = A212057 n

end A212057

/-! ## A212057.P12287559292012668644

`A212063(n)+A212064(n)-A212058(n)`
-/

namespace A212057.P12287559292012668644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212058 n)

end

end A212057.P12287559292012668644

namespace A212057

/-- `A212063(n)+A212064(n)-A212058(n)` -/
def P12287559292012668644.Spec : Prop :=
  ∀ n, P12287559292012668644.a n = A212057 n

end A212057

/-! ## A212057.P6277163238143818598

`A212065(n)+A212066(n)-A212058(n)`
-/

namespace A212057.P6277163238143818598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A212058 n)

end

end A212057.P6277163238143818598

namespace A212057

/-- `A212065(n)+A212066(n)-A212058(n)` -/
def P6277163238143818598.Spec : Prop :=
  ∀ n, P6277163238143818598.a n = A212057 n

end A212057

/-! ## A212057.P14919603412910360350

`(A000583(n)-A212058(n))*A014963(∑[n+1])`
-/

namespace A212057.P14919603412910360350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212058 n) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212057.P14919603412910360350

namespace A212057

/-- `(A000583(n)-A212058(n))*A014963(∑[n+1])` -/
def P14919603412910360350.Spec : Prop :=
  ∀ n, P14919603412910360350.a n = A212057 n

end A212057

/-!
# A212058: Number of (w,x,y,z) with all terms in {1,...,n} and w>=x*y*z.

The programs for A212058, the canonical program `A212058.P16751206237449678368` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212058 has offset 0).

The definition of A212058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212058.P16751206237449678368

`∑[∑[∏{e}[n, C(#+2, 2)]]-1]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212058

/-- `∑[∑[∏{e}[n, C(#+2, 2)]]-1]` -/
def P16751206237449678368.Spec : Prop :=
  ∀ n, P16751206237449678368.a n = A212058 n

theorem P16751206237449678368.correct : P16751206237449678368.Spec := by
  intro n
  simp only [A212058]

end A212058

/-! ## A212058.P11043851798333470942

`∑[∑[∏{e}[n, C(#+2, 2)]%(2*n+1)]]`
-/

namespace A212058.P11043851798333470942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), Nat.choose (Nat.factorization (f3 n) p + 2) 2) % (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P11043851798333470942

namespace A212058

/-- `∑[∑[∏{e}[n, C(#+2, 2)]%(2*n+1)]]` -/
def P11043851798333470942.Spec : Prop :=
  ∀ n, (P11043851798333470942.a n : ℤ) = A212058 n

end A212058

/-! ## A212058.P13336730885713669715

`∑[∑[∑{d}[n, A000005(#)]]]`
-/

namespace A212058.P13336730885713669715
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A000005 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P13336730885713669715

namespace A212058

/-- `∑[∑[∑{d}[n, A000005(#)]]]` -/
def P13336730885713669715.Spec : Prop :=
  ∀ n, P13336730885713669715.a n = A212058 n

end A212058

/-! ## A212058.P7566105919244859323

`A061201(n)+a(n-1)` with `a(0)=0`
-/

namespace A212058.P7566105919244859323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061201 n + a (n - 1)

end

end A212058.P7566105919244859323

namespace A212058

/-- `A061201(n)+a(n-1)` -/
def P7566105919244859323.Spec : Prop :=
  ∀ n, P7566105919244859323.a n = A212058 n

end A212058

/-! ## A212058.P15341830470238668141

`∑[∑[∑{d}[n, A032741(#)+1]]]`
-/

namespace A212058.P15341830470238668141
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (A032741 d + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P15341830470238668141

namespace A212058

/-- `∑[∑[∑{d}[n, A032741(#)+1]]]` -/
def P15341830470238668141.Spec : Prop :=
  ∀ n, P15341830470238668141.a n = A212058 n

end A212058

/-! ## A212058.P6698360501992478220

`∑[∑[∑{d}[n, #-A049820(#)]]]`
-/

namespace A212058.P6698360501992478220
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - A049820 d)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P6698360501992478220

namespace A212058

/-- `∑[∑[∑{d}[n, #-A049820(#)]]]` -/
def P6698360501992478220.Spec : Prop :=
  ∀ n, P6698360501992478220.a n = A212058 n

end A212058

/-! ## A212058.P7242180459910083849

`∑[∑[∑{d}[n, A038040(#)/#]]]`
-/

namespace A212058.P7242180459910083849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (A038040 d : ℚ) / (d : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P7242180459910083849

namespace A212058

/-- `∑[∑[∑{d}[n, A038040(#)/#]]]` -/
def P7242180459910083849.Spec : Prop :=
  ∀ n, P7242180459910083849.a n = (A212058 n : ℚ)

end A212058

/-! ## A212058.P10220527921673213802

`∑[A061201(n+1)-A007425(n+1)]`
-/

namespace A212058.P10220527921673213802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1) - A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P10220527921673213802

namespace A212058

/-- `∑[A061201(n+1)-A007425(n+1)]` -/
def P10220527921673213802.Spec : Prop :=
  ∀ n, P10220527921673213802.a n = A212058 n

end A212058

/-! ## A212058.P13771593966179410959

`n^4-A212057(n)`
-/

namespace A212058.P13771593966179410959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212057 n

end

end A212058.P13771593966179410959

namespace A212058

/-- `n^4-A212057(n)` -/
def P13771593966179410959.Spec : Prop :=
  ∀ n, P13771593966179410959.a n = A212058 n

end A212058

/-! ## A212058.P14810543836200973112

`∑[∑[A077592(A034856(n+1))]-1]`
-/

namespace A212058.P14810543836200973112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A034856 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212058.P14810543836200973112

namespace A212058

/-- `∑[∑[A077592(A034856(n+1))]-1]` -/
def P14810543836200973112.Spec : Prop :=
  ∀ n, P14810543836200973112.a n = A212058 n

end A212058

/-!
# A212059: Number of (w,x,y,z) with all terms in {1,...,n} and w=x*y*z-1.

The programs for A212059, the canonical program `A212059.P15981081819103451387` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212059 has offset 0).

The definition of A212059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212059.P15981081819103451387

`∑[∏{e}[n+1, C(#+2, 2)]%Δ[n²]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212059

/-- `∑[∏{e}[n+1, C(#+2, 2)]%Δ[n²]]` -/
def P15981081819103451387.Spec : Prop :=
  ∀ n, P15981081819103451387.a n = A212059 n

theorem P15981081819103451387.correct : P15981081819103451387.Spec := by
  intro n
  simp only [A212059]

end A212059

/-! ## A212059.P15596263027534744220

`∑[floor(atan(n))*∏{e}[n+1, C(#+2, 2)]]`
-/

namespace A212059.P15596263027534744220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P15596263027534744220

namespace A212059

/-- `∑[floor(atan(n))*∏{e}[n+1, C(#+2, 2)]]` -/
def P15596263027534744220.Spec : Prop :=
  ∀ n, P15596263027534744220.a n = A212059 n

end A212059

/-! ## A212059.P13002855683336877746

`∑[lcm(floor(atan(n)), ∏{e}[n+1, C(#+2, 2)])]`
-/

namespace A212059.P13002855683336877746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊Real.arctan (n : ℝ)⌋ ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P13002855683336877746

namespace A212059

/-- `∑[lcm(floor(atan(n)), ∏{e}[n+1, C(#+2, 2)])]` -/
def P13002855683336877746.Spec : Prop :=
  ∀ n, (P13002855683336877746.a n : ℤ) = A212059 n

end A212059

/-! ## A212059.P13478326608563997442

`∑[∏{e}[n+1, C(#+2, 2)]-C(3, n²)]`
-/

namespace A212059.P13478326608563997442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℤ) - (Nat.choose 3 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P13478326608563997442

namespace A212059

/-- `∑[∏{e}[n+1, C(#+2, 2)]-C(3, n²)]` -/
def P13478326608563997442.Spec : Prop :=
  ∀ n, P13478326608563997442.a n = A212059 n

end A212059

/-! ## A212059.P316396974299565265

`∑[A007425(n+1)%Δ[n²]]`
-/

namespace A212059.P316396974299565265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007425 (n + 1)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P316396974299565265

namespace A212059

/-- `∑[A007425(n+1)%Δ[n²]]` -/
def P316396974299565265.Spec : Prop :=
  ∀ n, P316396974299565265.a n = A212059 n

end A212059

/-! ## A212059.P8338403564459906847

`∑[sqrt(A097988(n+1))%Δ[n²]]`
-/

namespace A212059.P8338403564459906847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A097988 (n + 1) : ℝ))) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P8338403564459906847

namespace A212059

/-- `∑[sqrt(A097988(n+1))%Δ[n²]]` -/
def P8338403564459906847.Spec : Prop :=
  ∀ n, P8338403564459906847.a n = A212059 n

end A212059

/-! ## A212059.P16656383467708876352

`(A061201(n+1)-4)%(n+1)²`
-/

namespace A212059.P16656383467708876352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061201 (n + 1) - 4) ((n + 1) ^ 2 : ℤ)

end

end A212059.P16656383467708876352

namespace A212059

/-- `(A061201(n+1)-4)%(n+1)²` -/
def P16656383467708876352.Spec : Prop :=
  ∀ n, P16656383467708876352.a n = A212059 n

end A212059

/-! ## A212059.P6075946072546265548

`∑[∑{d}[1-C(2, n)+n, A000005(#)]]`
-/

namespace A212059.P6075946072546265548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P6075946072546265548

namespace A212059

/-- `∑[∑{d}[1-C(2, n)+n, A000005(#)]]` -/
def P6075946072546265548.Spec : Prop :=
  ∀ n, P6075946072546265548.a n = A212059 n

end A212059

/-! ## A212059.P3553687311879090426

`∑[(A211437(n+1)/4)%(2*n+1)]`
-/

namespace A212059.P3553687311879090426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A211437 (n + 1) : ℚ) / 4)) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P3553687311879090426

namespace A212059

/-- `∑[(A211437(n+1)/4)%(2*n+1)]` -/
def P3553687311879090426.Spec : Prop :=
  ∀ n, P3553687311879090426.a n = A212059 n

end A212059

/-! ## A212059.P10072794223269070663

`A061201(n+1)-A123932(n)`
-/

namespace A212059.P10072794223269070663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1) - A123932 n

end

end A212059.P10072794223269070663

namespace A212059

/-- `A061201(n+1)-A123932(n)` -/
def P10072794223269070663.Spec : Prop :=
  ∀ n, P10072794223269070663.a n = A212059 n

end A212059

/-! ## A212059.P2737926192005299468

`∑[A007425(n+1)]-A123932(n)`
-/

namespace A212059.P2737926192005299468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123932 n

end

end A212059.P2737926192005299468

namespace A212059

/-- `∑[A007425(n+1)]-A123932(n)` -/
def P2737926192005299468.Spec : Prop :=
  ∀ n, P2737926192005299468.a n = A212059 n

end A212059

/-! ## A212059.P2110583499793553029

`∑[A007425(n+1)*A157928(n)]`
-/

namespace A212059.P2110583499793553029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P2110583499793553029

namespace A212059

/-- `∑[A007425(n+1)*A157928(n)]` -/
def P2110583499793553029.Spec : Prop :=
  ∀ n, P2110583499793553029.a n = A212059 n

end A212059

/-! ## A212059.P13587213910506717541

`A061201(n+1)-(A057427(n)+1)²`
-/

namespace A212059.P13587213910506717541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1) - (A057427 n + 1) ^ 2

end

end A212059.P13587213910506717541

namespace A212059

/-- `A061201(n+1)-(A057427(n)+1)²` -/
def P13587213910506717541.Spec : Prop :=
  ∀ n, P13587213910506717541.a n = A212059 n

end A212059

/-! ## A212059.P8991881247035316633

`∑[∑{d}[n+1, A000005(#)]*A157928(n)]`
-/

namespace A212059.P8991881247035316633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A000005 d) * A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P8991881247035316633

namespace A212059

/-- `∑[∑{d}[n+1, A000005(#)]*A157928(n)]` -/
def P8991881247035316633.Spec : Prop :=
  ∀ n, P8991881247035316633.a n = A212059 n

end A212059

/-! ## A212059.P8529980413492929022

`∑[∑{d}[n+1, A000005(#)]%A005408(n)]`
-/

namespace A212059.P8529980413492929022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f2 n), A000005 d) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P8529980413492929022

namespace A212059

/-- `∑[∑{d}[n+1, A000005(#)]%A005408(n)]` -/
def P8529980413492929022.Spec : Prop :=
  ∀ n, P8529980413492929022.a n = A212059 n

end A212059

/-! ## A212059.P5816383188955507777

`∑[∑{d}[n+1, A000005(#)]]-A040001(2*n)²`
-/

namespace A212059.P5816383188955507777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040001 (2 * n) ^ 2

end

end A212059.P5816383188955507777

namespace A212059

/-- `∑[∑{d}[n+1, A000005(#)]]-A040001(2*n)²` -/
def P5816383188955507777.Spec : Prop :=
  ∀ n, P5816383188955507777.a n = A212059 n

end A212059

/-! ## A212059.P3004609293283529837

`∑[A000027(∑{d}[n+1, A000005(#)])%(2*n+1)]`
-/

namespace A212059.P3004609293283529837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∑ d ∈ Nat.divisors (f2 n), A000005 d).toNat) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212059.P3004609293283529837

namespace A212059

/-- `∑[A000027(∑{d}[n+1, A000005(#)])%(2*n+1)]` -/
def P3004609293283529837.Spec : Prop :=
  ∀ n, P3004609293283529837.a n = A212059 n

end A212059

/-!
# A212060: Number of (w,x,y,z) with all terms in {1,...,n} and w=x*y*z-2.

The programs for A212060, the canonical program `A212060.P8765471735473838760` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212060 has offset 0).

The definition of A212060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212060.P8765471735473838760

`A007425(n+2)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212060

/-- `A007425(n+2)+a(n-1)` -/
def P8765471735473838760.Spec : Prop :=
  ∀ n, P8765471735473838760.a n = A212060 n

theorem P8765471735473838760.correct : P8765471735473838760.Spec := by
  intro n
  simp only [A212060]

end A212060

/-! ## A212060.P3278063188230809018

`a(n-1)+sqrt(A097988(n+2))` with `a(0)=0, a(1)=0, a(2)=3, a(3)=6`
-/

namespace A212060.P3278063188230809018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 3, 6] fun n a =>
  a (n - 1) + Real.sqrt (A097988 (n + 2) : ℝ)

end

end A212060.P3278063188230809018

namespace A212060

/-- `a(n-1)+sqrt(A097988(n+2))` -/
def P3278063188230809018.Spec : Prop :=
  ∀ n, P3278063188230809018.a n = (A212060 n : ℝ)

end A212060

/-!
# A212062: Number of (w,x,y,z) with all terms in {1,...,n} and w^2 = x*y*z.

The programs for A212062, there is no canonical definition to state claims against.
-/

/-! ## A212062.P18253432423409173901

`n^4-A212063(n)-A212066(n)`
-/

namespace A212062.P18253432423409173901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212063 n - A212066 n

end

end A212062.P18253432423409173901

/-! ## A212062.P1486863466939547706

`A000583(n)-(A212066(n)+A212063(n))`
-/

namespace A212062.P1486863466939547706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212066 n + A212063 n)

end

end A212062.P1486863466939547706

/-! ## A212062.P12304670036848045235

`A002523(n)-(A212063(n)+1)-A212066(n)`
-/

namespace A212062.P12304670036848045235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212063 n + 1) - A212066 n

end

end A212062.P12304670036848045235

/-! ## A212062.P13137727980308501425

`(A000583(n)-A212066(n))/(A000041(n)%2)!-A212063(n)`
-/

namespace A212062.P13137727980308501425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n : ℚ) / (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℚ) - (A212063 n : ℚ)

end

end A212062.P13137727980308501425

/-! ## A212062.P4862568460693078156

`A212064(n)-A212066(n)`
-/

namespace A212062.P4862568460693078156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n - A212066 n

end

end A212062.P4862568460693078156

/-! ## A212062.P6414338296984400350

`A212064(n)+A212066(n)*A316441(A007491(n+1))`
-/

namespace A212062.P6414338296984400350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n + A212066 n * A316441 (A007491 (n + 1)).toNat

end

end A212062.P6414338296984400350

/-! ## A212062.P13326096940535768662

`A212065(n)-A212063(n)`
-/

namespace A212062.P13326096940535768662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n - A212063 n

end

end A212062.P13326096940535768662

/-! ## A212062.P16394384090537404664

`A212064(n)-(n^4-A212065(n))`
-/

namespace A212062.P16394384090537404664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n - ((n ^ 4 : ℤ) - A212065 n)

end

end A212062.P16394384090537404664

/-! ## A212062.P69559842858899717

`A212065(n)%A212063(round(acot(n)+n))`
-/

namespace A212062.P69559842858899717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212065 n) (A212063 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A212062.P69559842858899717

/-! ## A212062.P6023131094551509784

`A212065(n)%A212063(A233583(n+1))`
-/

namespace A212062.P6023131094551509784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212065 n) (A212063 (A233583 (n + 1)).toNat)

end

end A212062.P6023131094551509784

/-! ## A212062.P16225053393472336055

`A212064(n)+A212065(n)-A000583(n)`
-/

namespace A212062.P16225053393472336055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n + (A212065 n - A000583 n)

end

end A212062.P16225053393472336055

/-!
# A212063: Number of (w,x,y,z) with all terms in {1,...,n} and w^2

The programs for A212063, there is no canonical definition to state claims against.
-/

/-! ## A212063.P17232099129944844965

`n^4-A212066(n)-A212062(n)`
-/

namespace A212063.P17232099129944844965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212066 n - A212062 n

end

end A212063.P17232099129944844965

/-! ## A212063.P11489517082216394981

`A000583(n)-(A212066(n)+A212062(n))`
-/

namespace A212063.P11489517082216394981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212066 n + A212062 n)

end

end A212063.P11489517082216394981

/-! ## A212063.P10209266738574189765

`A000290(n)²-(A212066(n)+A212062(n))`
-/

namespace A212063.P10209266738574189765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A212066 n + A212062 n)

end

end A212063.P10209266738574189765

/-! ## A212063.P17700922025918653189

`n^4-A212064(n)`
-/

namespace A212063.P17700922025918653189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212064 n

end

end A212063.P17700922025918653189

/-! ## A212063.P18053235604261500851

`abs(A000583(n)-A212064(n))`
-/

namespace A212063.P18053235604261500851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212064 n|

end

end A212063.P18053235604261500851

/-! ## A212063.P12450491955282743785

`A002523(n)-(A212064(n)+1)`
-/

namespace A212063.P12450491955282743785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212064 n + 1)

end

end A212063.P12450491955282743785

/-! ## A212063.P12566956487235144770

`A000583(n)-A057427(n)*A212064(n)`
-/

namespace A212063.P12566956487235144770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A212064 n

end

end A212063.P12566956487235144770

/-! ## A212063.P6018492800057211673

`(A000583(n)-A212064(n))%A008355(n)`
-/

namespace A212063.P6018492800057211673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212064 n) (A008355 n)

end

end A212063.P6018492800057211673

/-! ## A212063.P17295349339239394057

`A000007(n+1)+A000583(n)-A212064(n)`
-/

namespace A212063.P17295349339239394057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A212064 n)

end

end A212063.P17295349339239394057

/-! ## A212063.P7046915583863140131

`A000038(n+1)+A000583(n)-A212064(n)`
-/

namespace A212063.P7046915583863140131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A212064 n)

end

end A212063.P7046915583863140131

/-! ## A212063.P3682391947538767487

`(A000583(n)-A212064(n))*A019426(2*n)`
-/

namespace A212063.P3682391947538767487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212064 n) * A019426 (2 * n)

end

end A212063.P3682391947538767487

/-! ## A212063.P735052354558943443

`(A000583(n)-A212064(n))*A000041(C(2, n))`
-/

namespace A212063.P735052354558943443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212064 n) * A000041 (Nat.choose 2 n)

end

end A212063.P735052354558943443

/-! ## A212063.P16389091612036286805

`(A000583(n)-A212064(n))*A007318(C(2, n))`
-/

namespace A212063.P16389091612036286805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212064 n) * A007318 (Nat.choose 2 n)

end

end A212063.P16389091612036286805

/-! ## A212063.P15617740019277563681

`A008683(4*(n+1))+A000583(n)-A212064(n)`
-/

namespace A212063.P15617740019277563681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A212064 n)

end

end A212063.P15617740019277563681

/-! ## A212063.P1295115547113187659

`(A000583(n)-A212064(n))*A007318(val(n+2, 7))`
-/

namespace A212063.P1295115547113187659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212064 n) * A007318 (SequenceMachineLib.valuation (n + 2) 7)

end

end A212063.P1295115547113187659

/-! ## A212063.P17363642243320147217

`(A000583(n)-A212064(n))*gcd(43, A001222(n+1)²)`
-/

namespace A212063.P17363642243320147217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212064 n) * (Int.gcd 43 (A001222 (n + 1) ^ 2) : ℤ)

end

end A212063.P17363642243320147217

/-! ## A212063.P11042094587171215359

`(A000583(n)-A212064(n))*A018252(C(2, n+1)+1)`
-/

namespace A212063.P11042094587171215359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212064 n) * A018252 (Nat.choose 2 (n + 1) + 1)

end

end A212063.P11042094587171215359

/-! ## A212063.P15131287444667096081

`A212065(n)-A212062(n)`
-/

namespace A212063.P15131287444667096081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n - A212062 n

end

end A212063.P15131287444667096081

/-!
# A212064: Number of (w,x,y,z) with all terms in {1,...,n} and w^2>=x*y*z.

The programs for A212064, there is no canonical definition to state claims against.
-/

/-! ## A212064.P6153761949053232738

`n^4-A212063(n)`
-/

namespace A212064.P6153761949053232738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212063 n

end

end A212064.P6153761949053232738

/-! ## A212064.P7712654722496659978

`A212066(n)+A212062(n)`
-/

namespace A212064.P7712654722496659978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212066 n + A212062 n

end

end A212064.P7712654722496659978

/-! ## A212064.P9941576861105362915

`abs(A000583(n)-A212063(n))`
-/

namespace A212064.P9941576861105362915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212063 n|

end

end A212064.P9941576861105362915

/-! ## A212064.P10335525048027010781

`A002523(n)-(A212063(n)+1)`
-/

namespace A212064.P10335525048027010781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212063 n + 1)

end

end A212064.P10335525048027010781

/-! ## A212064.P5493048042651643811

`A212092(n)+A212095(n)-A212063(n)`
-/

namespace A212064.P5493048042651643811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212063 n)

end

end A212064.P5493048042651643811

/-! ## A212064.P10307667569529687229

`(A000583(n)-A212063(n))*A007318(C(2, n))`
-/

namespace A212064.P10307667569529687229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212063 n) * A007318 (Nat.choose 2 n)

end

end A212064.P10307667569529687229

/-! ## A212064.P3204622692783627220

`(A000583(n)-A212063(n))*ceil(1/A007318(n))`
-/

namespace A212064.P3204622692783627220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212063 n) * ⌈1 / (A007318 n : ℚ)⌉

end

end A212064.P3204622692783627220

/-! ## A212064.P4585600939319642007

`char[A100502(n+1)]+A000583(n)-A212063(n)`
-/

namespace A212064.P4585600939319642007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100502 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212063 n)

end

end A212064.P4585600939319642007

/-! ## A212064.P5601426862758106206

`A051516(2*n+1)+A000583(n)-A212063(n)`
-/

namespace A212064.P5601426862758106206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * n + 1) + (A000583 n - A212063 n)

end

end A212064.P5601426862758106206

/-! ## A212064.P10813900019267365748

`A008683(8*n+4)+A000583(n)-A212063(n)`
-/

namespace A212064.P10813900019267365748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) + (A000583 n - A212063 n)

end

end A212064.P10813900019267365748

/-! ## A212064.P583925335894375865

`(A000583(n)-A212063(n))*A014963(12*(n+1))`
-/

namespace A212064.P583925335894375865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212063 n) * A014963 (12 * (n + 1))

end

end A212064.P583925335894375865

/-! ## A212064.P2212219693410957095

`(A000583(n)-A212063(n))*A000041(C(2, n+2))`
-/

namespace A212064.P2212219693410957095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212063 n) * A000041 (Nat.choose 2 (n + 2))

end

end A212064.P2212219693410957095

/-! ## A212064.P12887626705272598133

`(A000583(n)-A212063(n))*A000108(C(2, n+2))`
-/

namespace A212064.P12887626705272598133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212063 n) * A000108 (Nat.choose 2 (n + 2))

end

end A212064.P12887626705272598133

/-! ## A212064.P12485957510113477624

`2*n-(A005843(n)-A212066(n)-A212062(n))`
-/

namespace A212064.P12485957510113477624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A005843 n - A212066 n - A212062 n)

end

end A212064.P12485957510113477624

/-! ## A212064.P18162230224848366676

`A000583(n)-(n^4-A212066(n)-A212062(n))`
-/

namespace A212064.P18162230224848366676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((n ^ 4 : ℤ) - A212066 n - A212062 n)

end

end A212064.P18162230224848366676

/-! ## A212064.P16191785158110667104

`A001221(gcd(n, n+1))+A000583(n)-A212063(n)`
-/

namespace A212064.P16191785158110667104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.gcd n (n + 1)) + (A000583 n - A212063 n)

end

end A212064.P16191785158110667104

/-! ## A212064.P6502438576737737189

`(A000583(n)-A212063(n))%A000040(n+1)²²`
-/

namespace A212064.P6502438576737737189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212063 n) ((A000040 (n + 1) ^ 2) ^ 2)

end

end A212064.P6502438576737737189

/-! ## A212064.P11429169034600907668

`A000290(n)²-(n^4-A212066(n)-A212062(n))`
-/

namespace A212064.P11429169034600907668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - ((n ^ 4 : ℤ) - A212066 n - A212062 n)

end

end A212064.P11429169034600907668

/-! ## A212064.P17101969888756183779

`(A000583(n)-A212063(n))*A007318(A020639(2*(n+1)))`
-/

namespace A212064.P17101969888756183779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212063 n) * A007318 (A020639 (2 * (n + 1))).toNat

end

end A212064.P17101969888756183779

/-!
# A212065: Number of (w,x,y,z) with all terms in {1,...,n} and w^2<=x*y*z.

The programs for A212065, there is no canonical definition to state claims against.
-/

/-! ## A212065.P16644966769361359181

`n^4-A212066(n)`
-/

namespace A212065.P16644966769361359181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212066 n

end

end A212065.P16644966769361359181

/-! ## A212065.P46786643425305242

`A212063(n)+A212062(n)`
-/

namespace A212065.P46786643425305242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + A212062 n

end

end A212065.P46786643425305242

/-! ## A212065.P15032915486834496160

`abs(A000583(n)-A212066(n))`
-/

namespace A212065.P15032915486834496160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212066 n|

end

end A212065.P15032915486834496160

/-! ## A212065.P3658433612834657181

`A002523(n)-(A212066(n)+1)`
-/

namespace A212065.P3658433612834657181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212066 n + 1)

end

end A212065.P3658433612834657181

/-! ## A212065.P14971934968939438205

`1-(A212066(n)+A024002(n))`
-/

namespace A212065.P14971934968939438205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A212066 n + A024002 n)

end

end A212065.P14971934968939438205

/-! ## A212065.P5737961283375540256

`abs(A000290(n)²-A212066(n))`
-/

namespace A212065.P5737961283375540256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A212066 n|

end

end A212065.P5737961283375540256

/-! ## A212065.P17617060590170121954

`A212057(n)+A212058(n)-A212066(n)`
-/

namespace A212065.P17617060590170121954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212057 n + (A212058 n - A212066 n)

end

end A212065.P17617060590170121954

/-! ## A212065.P2983666543505652366

`A212063(n)+A212064(n)-A212066(n)`
-/

namespace A212065.P2983666543505652366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212066 n)

end

end A212065.P2983666543505652366

/-! ## A212065.P14126670773237570188

`(A000583(n)-A212066(n))%Δ[A046023(n)]`
-/

namespace A212065.P14126670773237570188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212066 n) (f1 (n + 1) - f1 n)

end

end A212065.P14126670773237570188

/-! ## A212065.P12714837323893945153

`(A000583(n)-A212066(n))*A007318(C(2, n))`
-/

namespace A212065.P12714837323893945153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n) * A007318 (Nat.choose 2 n)

end

end A212065.P12714837323893945153

/-! ## A212065.P404560691043381401

`(A000583(n)-A212066(n))/(A000041(n)%2)!`
-/

namespace A212065.P404560691043381401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n : ℚ) / (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℚ)

end

end A212065.P404560691043381401

/-! ## A212065.P6095839417285651672

`(A000583(n)-A212066(n))*A014963(6*(n+1))`
-/

namespace A212065.P6095839417285651672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n) * A014963 (6 * (n + 1))

end

end A212065.P6095839417285651672

/-! ## A212065.P10301564597896738652

`(A000583(n)-A212066(n))/A007318(C(2, n+2))`
-/

namespace A212065.P10301564597896738652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A212065.P10301564597896738652

/-! ## A212065.P10918921680500829516

`(A000583(n)-A212066(n))*A000041(round(1/(n+1)))`
-/

namespace A212065.P10918921680500829516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n) * A000041 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat

end

end A212065.P10918921680500829516

/-! ## A212065.P17761965652467936976

`A000122(A046027(n+1))+A000583(n)-A212066(n)`
-/

namespace A212065.P17761965652467936976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046027 (n + 1)).toNat + (A000583 n - A212066 n)

end

end A212065.P17761965652467936976

/-! ## A212065.P12535755872041220125

`A000122(A046028(n+1))+A000583(n)-A212066(n)`
-/

namespace A212065.P12535755872041220125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046028 (n + 1)).toNat + (A000583 n - A212066 n)

end

end A212065.P12535755872041220125

/-! ## A212065.P13239371263762097775

`A000122(A046044(n+1))+A000583(n)-A212066(n)`
-/

namespace A212065.P13239371263762097775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046044 (n + 1)).toNat + (A000583 n - A212066 n)

end

end A212065.P13239371263762097775

/-! ## A212065.P14540356704379841517

`A000122(A046045(n+1))+A000583(n)-A212066(n)`
-/

namespace A212065.P14540356704379841517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046045 (n + 1)).toNat + (A000583 n - A212066 n)

end

end A212065.P14540356704379841517

/-! ## A212065.P14344633141067235576

`A000122(A046046(n+1))+A000583(n)-A212066(n)`
-/

namespace A212065.P14344633141067235576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046046 (n + 1)).toNat + (A000583 n - A212066 n)

end

end A212065.P14344633141067235576

/-! ## A212065.P879663044984884777

`(A000583(n)-A212066(n))*A008683(2*A000040(n+1))`
-/

namespace A212065.P879663044984884777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212066 n) * A008683 (2 * A000040 (n + 1)).toNat

end

end A212065.P879663044984884777

/-!
# A212066: Number of (w,x,y,z) with all terms in {1,...,n} and w^2>x*y*z.

The programs for A212066, there is no canonical definition to state claims against.
-/

/-! ## A212066.P18326534342944486965

`n^4-A212063(n)-A212062(n)`
-/

namespace A212066.P18326534342944486965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212063 n - A212062 n

end

end A212066.P18326534342944486965

/-! ## A212066.P13393414198060178810

`A000583(n)-(A212063(n)+A212062(n))`
-/

namespace A212066.P13393414198060178810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212063 n + A212062 n)

end

end A212066.P13393414198060178810

/-! ## A212066.P712325417659539962

`A002523(n)-(A212063(n)+A212062(n)+1)`
-/

namespace A212066.P712325417659539962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212063 n + A212062 n + 1)

end

end A212066.P712325417659539962

/-! ## A212066.P8833168325783929621

`A212064(n)-A212062(n)`
-/

namespace A212066.P8833168325783929621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n - A212062 n

end

end A212066.P8833168325783929621

/-! ## A212066.P12868143834307448422

`A212064(n)+A057428(n)*A212062(n)`
-/

namespace A212066.P12868143834307448422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n + A057428 n * A212062 n

end

end A212066.P12868143834307448422

/-! ## A212066.P15581906737273271910

`A212064(n)+A212062(n)*A316441(A007491(n+1))`
-/

namespace A212066.P15581906737273271910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212064 n + A212062 n * A316441 (A007491 (n + 1)).toNat

end

end A212066.P15581906737273271910

/-! ## A212066.P7258029165195619278

`n^4-A212065(n)`
-/

namespace A212066.P7258029165195619278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212065 n

end

end A212066.P7258029165195619278

/-! ## A212066.P12722660719468822352

`abs(A000583(n)-A212065(n))`
-/

namespace A212066.P12722660719468822352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212065 n|

end

end A212066.P12722660719468822352

/-! ## A212066.P11630450348296699318

`-((A212065(n)-A000583(n))%A008416(n))`
-/

namespace A212066.P11630450348296699318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A212065 n - A000583 n) (A008416 n)

end

end A212066.P11630450348296699318

/-! ## A212066.P10109941344149196032

`A061858(∏{e}[n, #])-(A212065(n)-A000583(n))`
-/

namespace A212066.P10109941344149196032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - (A212065 n - A000583 n)

end

end A212066.P10109941344149196032

/-! ## A212066.P3016436816148364997

`char[A186600(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P3016436816148364997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186600 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P3016436816148364997

/-! ## A212066.P4301791772292847075

`char[A186601(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P4301791772292847075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186601 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P4301791772292847075

/-! ## A212066.P14299334337897705882

`char[A186602(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P14299334337897705882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P14299334337897705882

/-! ## A212066.P12572449871194696679

`char[A186603(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P12572449871194696679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186603 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P12572449871194696679

/-! ## A212066.P4710875311785257654

`char[A186607(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P4710875311785257654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P4710875311785257654

/-! ## A212066.P9617961433822390785

`char[A186609(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P9617961433822390785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P9617961433822390785

/-! ## A212066.P1827994367003293580

`char[A215158(n+1)]+A000583(n)-A212065(n)`
-/

namespace A212066.P1827994367003293580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215158 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212065 n)

end

end A212066.P1827994367003293580

/-! ## A212066.P15189551542616535359

`(A212065(n)-A000583(n))*A033999(2*n+3)`
-/

namespace A212066.P15189551542616535359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212065 n - A000583 n) * A033999 (2 * n + 3)

end

end A212066.P15189551542616535359

/-! ## A212066.P597570775716987500

`A000583(n)+A008683(A141849(n+1))*A212065(n)`
-/

namespace A212066.P597570775716987500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A141849 (n + 1)).toNat * A212065 n

end

end A212066.P597570775716987500

/-!
# A212067: Number of (w,x,y,z) with all terms in {1,...,n} and w^3 = x*y*z.

The programs for A212067, there is no canonical definition to state claims against.
-/

/-! ## A212067.P1704370804953132524

`A212143(n)-A212141(n)`
-/

namespace A212067.P1704370804953132524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212143 n - A212141 n

end

end A212067.P1704370804953132524

/-! ## A212067.P18404392860373224380

`n^4-A212141(n)-A212144(n)`
-/

namespace A212067.P18404392860373224380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212141 n - A212144 n

end

end A212067.P18404392860373224380

/-! ## A212067.P3543187793190096486

`A212143(n)%A212141(A233583(n+1))`
-/

namespace A212067.P3543187793190096486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212143 n) (A212141 (A233583 (n + 1)).toNat)

end

end A212067.P3543187793190096486

/-! ## A212067.P9995373926146150672

`A000583(n)-(A212144(n)+A212141(n))`
-/

namespace A212067.P9995373926146150672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212144 n + A212141 n)

end

end A212067.P9995373926146150672

/-! ## A212067.P4974516025054568154

`A000290(n)²-(A212144(n)+A212141(n))`
-/

namespace A212067.P4974516025054568154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A212144 n + A212141 n)

end

end A212067.P4974516025054568154

/-! ## A212067.P4238418840056266968

`A002523(n)-(A212141(n)+1)-A212144(n)`
-/

namespace A212067.P4238418840056266968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212141 n + 1) - A212144 n

end

end A212067.P4238418840056266968

/-! ## A212067.P13594554071129816723

`A212142(n)-A212144(n)`
-/

namespace A212067.P13594554071129816723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212142 n - A212144 n

end

end A212067.P13594554071129816723

/-! ## A212067.P3015103609054616589

`A212142(n)-(n^4-A212143(n))`
-/

namespace A212067.P3015103609054616589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212142 n - ((n ^ 4 : ℤ) - A212143 n)

end

end A212067.P3015103609054616589

/-! ## A212067.P15597280274613845060

`A212142(n)%A212144(A233583(n+1))`
-/

namespace A212067.P15597280274613845060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212142 n) (A212144 (A233583 (n + 1)).toNat)

end

end A212067.P15597280274613845060

/-! ## A212067.P13474625943237075729

`A212142(n)+A212143(n)-A000583(n)`
-/

namespace A212067.P13474625943237075729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212142 n + (A212143 n - A000583 n)

end

end A212067.P13474625943237075729

/-! ## A212067.P13707516261171620530

`A212142(n)-(A002523(n)-(A212143(n)+1))`
-/

namespace A212067.P13707516261171620530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212142 n - (A002523 n - (A212143 n + 1))

end

end A212067.P13707516261171620530

/-!
# A212068: Number of (w,x,y,z) with all terms in {1,...,n} and 2w=x+y+z.

The programs for A212068, the canonical program `A212068.P10872774611145031444` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212068 has offset 0).

The definition of A212068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212068.P10872774611145031444

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=10, a(4)=25`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212068

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P10872774611145031444.Spec : Prop :=
  ∀ n, P10872774611145031444.a n = A212068 n

theorem P10872774611145031444.correct : P10872774611145031444.Spec := by
  intro n
  simp only [A212068]

end A212068

/-! ## A212068.P188342325666110002

`∑[∑[a(n-2)+5]]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4`
-/

namespace A212068.P188342325666110002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 4] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212068.P188342325666110002

namespace A212068

/-- `∑[∑[a(n-2)+5]]` -/
def P188342325666110002.Spec : Prop :=
  ∀ n, (P188342325666110002.a n : ℤ) = A212068 n

end A212068

/-! ## A212068.P18057850708830817428

`∑[∑[∑[5-a(n-1)]]]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1`
-/

namespace A212068.P18057850708830817428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 1] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212068.P18057850708830817428

namespace A212068

/-- `∑[∑[∑[5-a(n-1)]]]` -/
def P18057850708830817428.Spec : Prop :=
  ∀ n, P18057850708830817428.a n = A212068 n

end A212068

/-! ## A212068.P17312161982328248149

`A212685(n)+∑[floor((n/2)²)]`
-/

namespace A212068.P17312161982328248149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212685 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212068.P17312161982328248149

namespace A212068

/-- `A212685(n)+∑[floor((n/2)²)]` -/
def P17312161982328248149.Spec : Prop :=
  ∀ n, P17312161982328248149.a n = A212068 n

end A212068

/-! ## A212068.P3305411083060531593

`∑[∑[A008851(n+1)]]-n²`
-/

namespace A212068.P3305411083060531593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A212068.P3305411083060531593

namespace A212068

/-- `∑[∑[A008851(n+1)]]-n²` -/
def P3305411083060531593.Spec : Prop :=
  ∀ n, P3305411083060531593.a n = A212068 n

end A212068

/-! ## A212068.P17019353143460122062

`∑[∑[A028242(n)+2*n-3]+3]-1`
-/

namespace A212068.P17019353143460122062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + (2 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A212068.P17019353143460122062

namespace A212068

/-- `∑[∑[A028242(n)+2*n-3]+3]-1` -/
def P17019353143460122062.Spec : Prop :=
  ∀ n, P17019353143460122062.a n = A212068 n

end A212068

/-! ## A212068.P6120570595363142023

`A006003(n)-A175287(n)`
-/

namespace A212068.P6120570595363142023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - A175287 n

end

end A212068.P6120570595363142023

namespace A212068

/-- `A006003(n)-A175287(n)` -/
def P6120570595363142023.Spec : Prop :=
  ∀ n, P6120570595363142023.a n = A212068 n

end A212068

/-! ## A212068.P7907904136749665614

`A036487(n)-A173196(n)`
-/

namespace A212068.P7907904136749665614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n - A173196 n

end

end A212068.P7907904136749665614

namespace A212068

/-- `A036487(n)-A173196(n)` -/
def P7907904136749665614.Spec : Prop :=
  ∀ n, P7907904136749665614.a n = A212068 n

end A212068

/-! ## A212068.P17953650638209668266

`A004068(n)-A212247(n)`
-/

namespace A212068.P17953650638209668266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n - A212247 n

end

end A212068.P17953650638209668266

namespace A212068

/-- `A004068(n)-A212247(n)` -/
def P17953650638209668266.Spec : Prop :=
  ∀ n, P17953650638209668266.a n = A212068 n

end A212068

/-! ## A212068.P10289962873374446087

`A212247(n)-A004652(n)`
-/

namespace A212068.P10289962873374446087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212247 n - A004652 n

end

end A212068.P10289962873374446087

namespace A212068

/-- `A212247(n)-A004652(n)` -/
def P10289962873374446087.Spec : Prop :=
  ∀ n, P10289962873374446087.a n = A212068 n

end A212068

/-! ## A212068.P16870436096370262509

`A158842(n)-A361272(n)`
-/

namespace A212068.P16870436096370262509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n - A361272 n

end

end A212068.P16870436096370262509

namespace A212068

/-- `A158842(n)-A361272(n)` -/
def P16870436096370262509.Spec : Prop :=
  ∀ n, P16870436096370262509.a n = A212068 n

end A212068

/-! ## A212068.P2297406498226386404

`A212980(n+1)-A077043(n)`
-/

namespace A212068.P2297406498226386404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) - A077043 n

end

end A212068.P2297406498226386404

namespace A212068

/-- `A212980(n+1)-A077043(n)` -/
def P2297406498226386404.Spec : Prop :=
  ∀ n, P2297406498226386404.a n = A212068 n

end A212068

/-! ## A212068.P5113490734621854718

`A212980(n+1)+n-A001859(n)`
-/

namespace A212068.P5113490734621854718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) + ((n : ℤ) - A001859 n)

end

end A212068.P5113490734621854718

namespace A212068

/-- `A212980(n+1)+n-A001859(n)` -/
def P5113490734621854718.Spec : Prop :=
  ∀ n, P5113490734621854718.a n = A212068 n

end A212068

/-! ## A212068.P3417506864565978358

`A212980(n+1)+A002620(n)-n²`
-/

namespace A212068.P3417506864565978358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) + (A002620 n - (n ^ 2 : ℤ))

end

end A212068.P3417506864565978358

namespace A212068

/-- `A212980(n+1)+A002620(n)-n²` -/
def P3417506864565978358.Spec : Prop :=
  ∀ n, P3417506864565978358.a n = A212068 n

end A212068

/-! ## A212068.P12512043723143784760

`A002717(n)+A004006(n)-A001859(n)`
-/

namespace A212068.P12512043723143784760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n + (A004006 n - A001859 n)

end

end A212068.P12512043723143784760

namespace A212068

/-- `A002717(n)+A004006(n)-A001859(n)` -/
def P12512043723143784760.Spec : Prop :=
  ∀ n, P12512043723143784760.a n = A212068 n

end A212068

/-! ## A212068.P7880411853618853029

`A212981(n)-A054925(2*n+1)`
-/

namespace A212068.P7880411853618853029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n - A054925 (2 * n + 1)

end

end A212068.P7880411853618853029

namespace A212068

/-- `A212981(n)-A054925(2*n+1)` -/
def P7880411853618853029.Spec : Prop :=
  ∀ n, P7880411853618853029.a n = A212068 n

end A212068

/-! ## A212068.P13205391840961250367

`A173722(3*n)-(A173722(n+1)+A173196(2*n))`
-/

namespace A212068.P13205391840961250367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (3 * n) - (A173722 (n + 1) + A173196 (2 * n))

end

end A212068.P13205391840961250367

namespace A212068

/-- `A173722(3*n)-(A173722(n+1)+A173196(2*n))` -/
def P13205391840961250367.Spec : Prop :=
  ∀ n, P13205391840961250367.a n = A212068 n

end A212068

/-! ## A212068.P16712392085846040658

`A175826(4*n)-(A175287(3*n)+n)`
-/

namespace A212068.P16712392085846040658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 (4 * n) - (A175287 (3 * n) + (n : ℤ))

end

end A212068.P16712392085846040658

namespace A212068

/-- `A175826(4*n)-(A175287(3*n)+n)` -/
def P16712392085846040658.Spec : Prop :=
  ∀ n, P16712392085846040658.a n = A212068 n

end A212068

/-! ## A212068.P7276669733857150579

`∑[∑[A028242(5*n)-3]+3]-1`
-/

namespace A212068.P7276669733857150579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (5 * n) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A212068.P7276669733857150579

namespace A212068

/-- `∑[∑[A028242(5*n)-3]+3]-1` -/
def P7276669733857150579.Spec : Prop :=
  ∀ n, P7276669733857150579.a n = A212068 n

end A212068

/-!
# A212069: Number of (w,x,y,z) with all terms in {1,...,n} and 3*w = x+y+z.

The programs for A212069, the canonical program `A212069.P12673359104387505985` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212069 has offset 0).

The definition of A212069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212069.P12673359104387505985

`Δ[ceil(C(n, 2)²/3)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212069

/-- `Δ[ceil(C(n, 2)²/3)]` -/
def P12673359104387505985.Spec : Prop :=
  ∀ n, P12673359104387505985.a n = A212069 n

theorem P12673359104387505985.correct : P12673359104387505985.Spec := by
  intro n
  simp only [A212069]

end A212069

/-! ## A212069.P222618570114496238

`Δ[round((C(n, 2)²+1)/3)]`
-/

namespace A212069.P222618570114496238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 ^ 2 + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212069.P222618570114496238

namespace A212069

/-- `Δ[round((C(n, 2)²+1)/3)]` -/
def P222618570114496238.Spec : Prop :=
  ∀ n, P222618570114496238.a n = A212069 n

end A212069

/-! ## A212069.P14513029898181739487

`∑[∑[6*floor(n/3)]]+n`
-/

namespace A212069.P14513029898181739487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A212069.P14513029898181739487

namespace A212069

/-- `∑[∑[6*floor(n/3)]]+n` -/
def P14513029898181739487.Spec : Prop :=
  ∀ n, P14513029898181739487.a n = A212069 n

end A212069

/-! ## A212069.P9041148659400858234

`floor(∑[n]%3+n^3/3)`
-/

namespace A212069.P9041148659400858234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℚ) + (n ^ 3 : ℚ) / 3⌋

end

end A212069.P9041148659400858234

namespace A212069

/-- `floor(∑[n]%3+n^3/3)` -/
def P9041148659400858234.Spec : Prop :=
  ∀ n, P9041148659400858234.a n = A212069 n

end A212069

/-! ## A212069.P17674627592641797471

`Δ[ceil((n-A000217(n))²/3)]`
-/

namespace A212069.P17674627592641797471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - A000217 n) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212069.P17674627592641797471

namespace A212069

/-- `Δ[ceil((n-A000217(n))²/3)]` -/
def P17674627592641797471.Spec : Prop :=
  ∀ n, P17674627592641797471.a n = A212069 n

end A212069

/-! ## A212069.P13213380821680351632

`∑[∑[6*floor(n/3)]-A057428(n)]`
-/

namespace A212069.P13213380821680351632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212069.P13213380821680351632

namespace A212069

/-- `∑[∑[6*floor(n/3)]-A057428(n)]` -/
def P13213380821680351632.Spec : Prop :=
  ∀ n, P13213380821680351632.a n = A212069 n

end A212069

/-! ## A212069.P9543208851631036548

`abs(A212088(n)-A212089(n))`
-/

namespace A212069.P9543208851631036548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212088 n - A212089 n|

end

end A212069.P9543208851631036548

namespace A212069

/-- `abs(A212088(n)-A212089(n))` -/
def P9543208851631036548.Spec : Prop :=
  ∀ n, P9543208851631036548.a n = A212069 n

end A212069

/-! ## A212069.P9922461260098066671

`Δ[A008810(C(n, 2))]`
-/

namespace A212069.P9922461260098066671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212069.P9922461260098066671

namespace A212069

/-- `Δ[A008810(C(n, 2))]` -/
def P9922461260098066671.Spec : Prop :=
  ∀ n, P9922461260098066671.a n = A212069 n

end A212069

/-! ## A212069.P13615279773536814789

`Δ[A008810(∑[n]-n)]`
-/

namespace A212069.P13615279773536814789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212069.P13615279773536814789

namespace A212069

/-- `Δ[A008810(∑[n]-n)]` -/
def P13615279773536814789.Spec : Prop :=
  ∀ n, P13615279773536814789.a n = A212069 n

end A212069

/-!
# A212070: G.f. satisfies: A(x) = (1+x*A(x))*(1+x*A(x)^2)*(1+x*A(x)^3).

The programs for A212070, there is no canonical definition to state claims against.
-/

/-! ## A212070.P13715831175311646633

`A050292(A276316(n+1)-floor(n/sqrt(8)))`
-/

namespace A212070.P13715831175311646633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A276316 (n + 1) - ⌊(n : ℝ) / Real.sqrt (8 : ℝ)⌋).toNat

end

end A212070.P13715831175311646633

/-!
# A212071: G.f. satisfies: A(x) = (1 + x*A(x)^3)^2.

The programs for A212071, the canonical program `A212071.P17939307357073625001` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212071 has offset 0).

The definition of A212071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212071.P17939307357073625001

`2*C(6*n+2, n)/(6*n+2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212071

/-- `2*C(6*n+2, n)/(6*n+2)` -/
def P17939307357073625001.Spec : Prop :=
  ∀ n, P17939307357073625001.a n = (A212071 n : ℚ)

end A212071

/-! ## A212071.P7566935988606393075

`A386379(A016861(n))`
-/

namespace A212071.P7566935988606393075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A016861 n).toNat

end

end A212071.P7566935988606393075

namespace A212071

/-- `A386379(A016861(n))` -/
def P7566935988606393075.Spec : Prop :=
  ∀ n, P7566935988606393075.a n = A212071 n

end A212071

/-! ## A212071.P1470258038684735548

`A004355(n)/A000217(A016861(n))*A016921(n)`
-/

namespace A212071.P1470258038684735548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (A000217 (A016861 n).toNat : ℚ) * (A016921 n : ℚ)

end

end A212071.P1470258038684735548

namespace A212071

/-- `A004355(n)/A000217(A016861(n))*A016921(n)` -/
def P1470258038684735548.Spec : Prop :=
  ∀ n, P1470258038684735548.a n = (A212071 n : ℚ)

end A212071

/-! ## A212071.P443176517507203183

`A016861(n)/A000217(A016861(n))*A079590(n)`
-/

namespace A212071.P443176517507203183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 n : ℚ) / (A000217 (A016861 n).toNat : ℚ) * (A079590 n : ℚ)

end

end A212071.P443176517507203183

namespace A212071

/-- `A016861(n)/A000217(A016861(n))*A079590(n)` -/
def P443176517507203183.Spec : Prop :=
  ∀ n, P443176517507203183.a n = (A212071 n : ℚ)

end A212071

/-! ## A212071.P16607214155734854029

`A090969(n)/A000217(A016861(n))`
-/

namespace A212071.P16607214155734854029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090969 n : ℚ) / (A000217 (A016861 n).toNat : ℚ)

end

end A212071.P16607214155734854029

namespace A212071

/-- `A090969(n)/A000217(A016861(n))` -/
def P16607214155734854029.Spec : Prop :=
  ∀ n, P16607214155734854029.a n = (A212071 n : ℚ)

end A212071

/-! ## A212071.P9943494537502618434

`lcm(A004355(n), A079590(n))/A000217(A016861(n))`
-/

namespace A212071.P9943494537502618434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004355 n) (A079590 n) : ℚ) / (A000217 (A016861 n).toNat : ℚ)

end

end A212071.P9943494537502618434

namespace A212071

/-- `lcm(A004355(n), A079590(n))/A000217(A016861(n))` -/
def P9943494537502618434.Spec : Prop :=
  ∀ n, P9943494537502618434.a n = (A212071 n : ℚ)

end A212071

/-!
# A212072: G.f. satisfies: A(x) = (1 + x*A(x)^2)^3.

The programs for A212072, the canonical program `A212072.P13555447225154921571` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212072 has offset 0).

The definition of A212072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212072.P13555447225154921571

`3*C(6*n+3, n)/(6*n+3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212072

/-- `3*C(6*n+3, n)/(6*n+3)` -/
def P13555447225154921571.Spec : Prop :=
  ∀ n, P13555447225154921571.a n = (A212072 n : ℚ)

end A212072

/-! ## A212072.P5708503486504690066

`A386379(A016873(n))`
-/

namespace A212072.P5708503486504690066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A016873 n).toNat

end

end A212072.P5708503486504690066

namespace A212072

/-- `A386379(A016873(n))` -/
def P5708503486504690066.Spec : Prop :=
  ∀ n, P5708503486504690066.a n = A212072 n

end A212072

/-! ## A212072.P17244998280300744449

`A051053(6*n+3)/A005408(n)`
-/

namespace A212072.P17244998280300744449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051053 (6 * n + 3) : ℚ) / (A005408 n : ℚ)

end

end A212072.P17244998280300744449

namespace A212072

/-- `A051053(6*n+3)/A005408(n)` -/
def P17244998280300744449.Spec : Prop :=
  ∀ n, P17244998280300744449.a n = (A212072 n : ℚ)

end A212072

/-! ## A212072.P18425470690485170134

`A051053(A016945(n))/A004442(2*n)`
-/

namespace A212072.P18425470690485170134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051053 (A016945 n).toNat : ℚ) / (A004442 (2 * n) : ℚ)

end

end A212072.P18425470690485170134

namespace A212072

/-- `A051053(A016945(n))/A004442(2*n)` -/
def P18425470690485170134.Spec : Prop :=
  ∀ n, P18425470690485170134.a n = (A212072 n : ℚ)

end A212072

/-! ## A212072.P8476486762312854942

`C(6*n+3, n)/(2*n+1)`
-/

namespace A212072.P8476486762312854942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n + 3) n : ℚ) / (2 * n + 1 : ℚ)

end

end A212072.P8476486762312854942

namespace A212072

/-- `C(6*n+3, n)/(2*n+1)` -/
def P8476486762312854942.Spec : Prop :=
  ∀ n, P8476486762312854942.a n = (A212072 n : ℚ)

end A212072

/-! ## A212072.P16559592173210125626

`A064282(∑[4*n])/(n+1)`
-/

namespace A212072.P16559592173210125626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064282 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A212072.P16559592173210125626

namespace A212072

/-- `A064282(∑[4*n])/(n+1)` -/
def P16559592173210125626.Spec : Prop :=
  ∀ n, P16559592173210125626.a n = (A212072 n : ℚ)

end A212072

/-! ## A212072.P3459975760600445607

`A127898(∑[4*n])/(n+1)`
-/

namespace A212072.P3459975760600445607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127898 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A212072.P3459975760600445607

namespace A212072

/-- `A127898(∑[4*n])/(n+1)` -/
def P3459975760600445607.Spec : Prop :=
  ∀ n, P3459975760600445607.a n = (A212072 n : ℚ)

end A212072

/-!
# A212073: G.f. satisfies: A(x) = (1 + x*A(x)^(3/2))^4.

The programs for A212073, the canonical program `A212073.P9598420999987206170` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212073 has offset 0).

The definition of A212073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212073.P9598420999987206170

`4*C(6*n+4, n)/(6*n+4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212073

/-- `4*C(6*n+4, n)/(6*n+4)` -/
def P9598420999987206170.Spec : Prop :=
  ∀ n, P9598420999987206170.a n = (A212073 n : ℚ)

end A212073

/-! ## A212073.P7523248894095487183

`A386379(A016885(n))`
-/

namespace A212073.P7523248894095487183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A016885 n).toNat

end

end A212073.P7523248894095487183

namespace A212073

/-- `A386379(A016885(n))` -/
def P7523248894095487183.Spec : Prop :=
  ∀ n, P7523248894095487183.a n = A212073 n

end A212073

/-! ## A212073.P2891026886979734162

`A386379(A016861(n)+2)`
-/

namespace A212073.P2891026886979734162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A016861 n + 2).toNat

end

end A212073.P2891026886979734162

namespace A212073

/-- `A386379(A016861(n)+2)` -/
def P2891026886979734162.Spec : Prop :=
  ∀ n, P2891026886979734162.a n = A212073 n

end A212073

/-!
# A212084: Triangle T(n,k), n>=0, 0<=k<=2n, read by rows: row n gives the coefficients of the chromatic polynomial of the complete bipartite graph K_(n,n), highest powers first.

The programs for A212084, there is no canonical definition to state claims against.
-/

/-! ## A212084.P8025881508700379496

`A266972(A161983(n))`
-/

namespace A212084.P8025881508700379496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266972 (A161983 n).toNat

end

end A212084.P8025881508700379496

/-! ## A212084.P7348656329797631851

`A266972(A007606(n+1)-1)`
-/

namespace A212084.P7348656329797631851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266972 (A007606 (n + 1) - 1).toNat

end

end A212084.P7348656329797631851

/-!
# A212085: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) is the number of n-colorings of the complete bipartite graph K_(k,k).

The programs for A212085, there is no canonical definition to state claims against.
-/

/-! ## A212085.P11748825212390280352

`A001414(∏{d}[A199335(n), #])`
-/

namespace A212085.P11748825212390280352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A212085.P11748825212390280352

/-! ## A212085.P13729225531266956955

`A028710(A079474(n+1)²)`
-/

namespace A212085.P13729225531266956955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A079474 (n + 1) ^ 2).toNat

end

end A212085.P13729225531266956955

/-! ## A212085.P6337840230043833334

`A294609(n)*A325273(A322730(n))`
-/

namespace A212085.P6337840230043833334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n * A325273 (A322730 n).toNat

end

end A212085.P6337840230043833334

/-!
# A212086: Number of free poly-IH5-tiles (holes allowed) with n cells.

The programs for A212086, there is no canonical definition to state claims against.
-/

/-! ## A212086.P14074635080491959252

`(A197958(n+1)+A001207(n+1))/2`
-/

namespace A212086.P14074635080491959252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197958 (n + 1) + A001207 (n + 1) : ℚ) / 2

end

end A212086.P14074635080491959252

/-! ## A212086.P6387599724208794317

`A001207(n+1)+A197959(n+1)-A197553(n+1)`
-/

namespace A212086.P6387599724208794317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) + (A197959 (n + 1) - A197553 (n + 1))

end

end A212086.P6387599724208794317

/-! ## A212086.P3462836079589554850

`A004526(A197958(n+1)-A001207(n+1))+A001207(n+1)`
-/

namespace A212086.P3462836079589554850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A197958 (n + 1) - A001207 (n + 1)).toNat + A001207 (n + 1)

end

end A212086.P3462836079589554850

/-!
# A212087: Number of (w,x,y,z) with all terms in {1,...,n} and w^2+x^2=y^2+z^2.

The programs for A212087, there is no canonical definition to state claims against.
-/

/-! ## A212087.P920898028951821045

`∑[record[A309214(A319611(n))]]`
-/

namespace A212087.P920898028951821045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A319611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212087.P920898028951821045

/-! ## A212087.P10722755406588067619

`∑[lt[A328461(3*n+1), A116571(n)]]`
-/

namespace A212087.P10722755406588067619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116571 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212087.P10722755406588067619

/-! ## A212087.P8191337590227293405

`∑[eq[A251072(n), A339059(n)]]`
-/

namespace A212087.P8191337590227293405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212087.P8191337590227293405

/-! ## A212087.P3369351424182305857

`∑[eq[A184240(n+1), A339059(n)]]`
-/

namespace A212087.P3369351424182305857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212087.P3369351424182305857

/-! ## A212087.P12341438453653814759

`∑[record[A327263(n+1)-A003991(n+4)]]`
-/

namespace A212087.P12341438453653814759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327263 (n + 1) - A003991 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212087.P12341438453653814759

/-!
# A212088: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212088, the canonical program `A212088.P11123097717644683192` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212088 has offset 0).

The definition of A212088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212088.P11123097717644683192

`round((n-1/3)/2*n^3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212088

/-- `round((n-1/3)/2*n^3)` -/
def P11123097717644683192.Spec : Prop :=
  ∀ n, P11123097717644683192.a n = A212088 n

theorem P11123097717644683192.correct : P11123097717644683192.Spec := by
  intro n
  simp only [A212088]

end A212088

/-! ## A212088.P5155221537021763568

`n^4-A212089(n)`
-/

namespace A212088.P5155221537021763568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212089 n

end

end A212088.P5155221537021763568

namespace A212088

/-- `n^4-A212089(n)` -/
def P5155221537021763568.Spec : Prop :=
  ∀ n, P5155221537021763568.a n = A212088 n

end A212088

/-! ## A212088.P6652578713848713447

`A212089(n)-A212069(n)`
-/

namespace A212088.P6652578713848713447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212089 n - A212069 n

end

end A212088.P6652578713848713447

namespace A212088

/-- `A212089(n)-A212069(n)` -/
def P6652578713848713447.Spec : Prop :=
  ∀ n, P6652578713848713447.a n = A212088 n

end A212088

/-! ## A212088.P6921741988895041396

`abs(A000583(n)-A212089(n))`
-/

namespace A212088.P6921741988895041396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212089 n|

end

end A212088.P6921741988895041396

namespace A212088

/-- `abs(A000583(n)-A212089(n))` -/
def P6921741988895041396.Spec : Prop :=
  ∀ n, P6921741988895041396.a n = A212088 n

end A212088

/-! ## A212088.P9337411160837007701

`A002523(n)-(A212089(n)+1)`
-/

namespace A212088.P9337411160837007701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212089 n + 1)

end

end A212088.P9337411160837007701

namespace A212088

/-- `A002523(n)-(A212089(n)+1)` -/
def P9337411160837007701.Spec : Prop :=
  ∀ n, P9337411160837007701.a n = A212088 n

end A212088

/-! ## A212088.P8046485299653940302

`A212673(n)+A212674(n)-A212089(n)`
-/

namespace A212088.P8046485299653940302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A212089 n)

end

end A212088.P8046485299653940302

namespace A212088

/-- `A212673(n)+A212674(n)-A212089(n)` -/
def P8046485299653940302.Spec : Prop :=
  ∀ n, P8046485299653940302.a n = A212088 n

end A212088

/-! ## A212088.P15855082122746943001

`A212098(n)+A212099(n)-A212089(n)`
-/

namespace A212088.P15855082122746943001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212089 n)

end

end A212088.P15855082122746943001

namespace A212088

/-- `A212098(n)+A212099(n)-A212089(n)` -/
def P15855082122746943001.Spec : Prop :=
  ∀ n, P15855082122746943001.a n = A212088 n

end A212088

/-! ## A212088.P14395469175984532334

`A211795(n)+A211809(n)-A212089(n)`
-/

namespace A212088.P14395469175984532334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212089 n)

end

end A212088.P14395469175984532334

namespace A212088

/-- `A211795(n)+A211809(n)-A212089(n)` -/
def P14395469175984532334.Spec : Prop :=
  ∀ n, P14395469175984532334.a n = A212088 n

end A212088

/-!
# A212089: Number of (w,x,y,z) with all terms in {1,...,n} and w>=average{x,y,z}.

The programs for A212089, the canonical program `A212089.P14895209242657521808` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212089 has offset 0).

The definition of A212089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212089.P14895209242657521808

`round((∑[n]-n/3)*n²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212089

/-- `round((∑[n]-n/3)*n²)` -/
def P14895209242657521808.Spec : Prop :=
  ∀ n, P14895209242657521808.a n = A212089 n

theorem P14895209242657521808.correct : P14895209242657521808.Spec := by
  intro n
  simp only [A212089]

end A212089

/-! ## A212089.P14637173149994411836

`n^4-A212088(n)`
-/

namespace A212089.P14637173149994411836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212088 n

end

end A212089.P14637173149994411836

namespace A212089

/-- `n^4-A212088(n)` -/
def P14637173149994411836.Spec : Prop :=
  ∀ n, P14637173149994411836.a n = A212089 n

end A212089

/-! ## A212089.P3894661833181979680

`A212088(n)+A212069(n)`
-/

namespace A212089.P3894661833181979680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + A212069 n

end

end A212089.P3894661833181979680

namespace A212089

/-- `A212088(n)+A212069(n)` -/
def P3894661833181979680.Spec : Prop :=
  ∀ n, P3894661833181979680.a n = A212089 n

end A212089

/-! ## A212089.P15640988202698564169

`A212568(n)+A212675(n)-A212088(n)`
-/

namespace A212089.P15640988202698564169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212568 n + (A212675 n - A212088 n)

end

end A212089.P15640988202698564169

namespace A212089

/-- `A212568(n)+A212675(n)-A212088(n)` -/
def P15640988202698564169.Spec : Prop :=
  ∀ n, P15640988202698564169.a n = A212089 n

end A212089

/-! ## A212089.P7293171231457917023

`A000332(n+1)+A212090(n)-A212088(n)`
-/

namespace A212089.P7293171231457917023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A212090 n - A212088 n)

end

end A212089.P7293171231457917023

namespace A212089

/-- `A000332(n+1)+A212090(n)-A212088(n)` -/
def P7293171231457917023.Spec : Prop :=
  ∀ n, P7293171231457917023.a n = A212089 n

end A212089

/-!
# A212090: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212090, the canonical program `A212090.P14385314295040635438` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212090 has offset 0).

The definition of A212090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212090.P14385314295040635438

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=80, a(4)=251`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212090

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14385314295040635438.Spec : Prop :=
  ∀ n, P14385314295040635438.a n = A212090 n

theorem P14385314295040635438.correct : P14385314295040635438.Spec := by
  intro n
  simp only [A212090]

end A212090

/-! ## A212090.P1319952588409902207

`n^4-∑[C(n, 3)]`
-/

namespace A212090.P1319952588409902207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212090.P1319952588409902207

namespace A212090

/-- `n^4-∑[C(n, 3)]` -/
def P1319952588409902207.Spec : Prop :=
  ∀ n, P1319952588409902207.a n = A212090 n

end A212090

/-! ## A212090.P16878952569285742677

`n^4-C(n+1, 4)`
-/

namespace A212090.P16878952569285742677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (Nat.choose (n + 1) 4 : ℤ)

end

end A212090.P16878952569285742677

namespace A212090

/-- `n^4-C(n+1, 4)` -/
def P16878952569285742677.Spec : Prop :=
  ∀ n, P16878952569285742677.a n = A212090 n

end A212090

/-! ## A212090.P10109353292180575222

`abs(C(n+1, 4)-n²²)`
-/

namespace A212090.P10109353292180575222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 1) 4 : ℤ) - ((n ^ 2) ^ 2 : ℤ)|

end

end A212090.P10109353292180575222

namespace A212090

/-- `abs(C(n+1, 4)-n²²)` -/
def P10109353292180575222.Spec : Prop :=
  ∀ n, P10109353292180575222.a n = A212090 n

end A212090

/-! ## A212090.P18334432472269850953

`n²²-Δ[C(n+1, 5)]`
-/

namespace A212090.P18334432472269850953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212090.P18334432472269850953

namespace A212090

/-- `n²²-Δ[C(n+1, 5)]` -/
def P18334432472269850953.Spec : Prop :=
  ∀ n, P18334432472269850953.a n = A212090 n

end A212090

/-! ## A212090.P16920252912563880080

`∑[n²-∑[∑[n]]]+n^4`
-/

namespace A212090.P16920252912563880080
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 4 : ℤ)

end

end A212090.P16920252912563880080

namespace A212090

/-- `∑[n²-∑[∑[n]]]+n^4` -/
def P16920252912563880080.Spec : Prop :=
  ∀ n, P16920252912563880080.a n = A212090 n

end A212090

/-! ## A212090.P6799338047705132306

`(A346637(n)+A346636(n))/(n+1)`
-/

namespace A212090.P6799338047705132306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346637 n + A346636 n : ℚ) / (n + 1 : ℚ)

end

end A212090.P6799338047705132306

namespace A212090

/-- `(A346637(n)+A346636(n))/(n+1)` -/
def P6799338047705132306.Spec : Prop :=
  ∀ n, P6799338047705132306.a n = (A212090 n : ℚ)

end A212090

/-! ## A212090.P12546296323148535828

`abs(A000332(n+1)-A000583(n))`
-/

namespace A212090.P12546296323148535828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000332 (n + 1) - A000583 n|

end

end A212090.P12546296323148535828

namespace A212090

/-- `abs(A000332(n+1)-A000583(n))` -/
def P12546296323148535828.Spec : Prop :=
  ∀ n, P12546296323148535828.a n = A212090 n

end A212090

/-!
# A212091: Number of (w,x,y,z) with all terms in {1,...,n} and w^2=x^2+y^2+z^2.

The programs for A212091, there is no canonical definition to state claims against.
-/

/-! ## A212091.P13754876443873109985

`∑[A181787(n)]`
-/

namespace A212091.P13754876443873109985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212091.P13754876443873109985

/-! ## A212091.P4632344335296413926

`∑[A110657(A016725(n))-A181788(n)]`
-/

namespace A212091.P4632344335296413926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A016725 n).toNat - A181788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212091.P4632344335296413926

/-! ## A212091.P9107061940710907732

`A212093(n)-A212092(n)`
-/

namespace A212091.P9107061940710907732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n - A212092 n

end

end A212091.P9107061940710907732

/-! ## A212091.P6874727534465385684

`A212093(n)-(n²²-∑[A253663(n)])`
-/

namespace A212091.P6874727534465385684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n - (((n ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212091.P6874727534465385684

/-! ## A212091.P11456114355402780217

`A212093(n)%A212092(A028310(n))`
-/

namespace A212091.P11456114355402780217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212093 n) (A212092 (A028310 n).toNat)

end

end A212091.P11456114355402780217

/-! ## A212091.P7228669319625805465

`A212095(n)-A212094(n)`
-/

namespace A212091.P7228669319625805465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212095 n - A212094 n

end

end A212091.P7228669319625805465

/-! ## A212091.P3613582437706969919

`∑[A253663(n)]-A212094(n)`
-/

namespace A212091.P3613582437706969919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212094 n

end

end A212091.P3613582437706969919

/-! ## A212091.P12448838030038951987

`n^4-A212092(n)-A212094(n)`
-/

namespace A212091.P12448838030038951987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212092 n - A212094 n

end

end A212091.P12448838030038951987

/-! ## A212091.P17152081771578938378

`A212095(n)%A212094(A233583(n+1))`
-/

namespace A212091.P17152081771578938378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212095 n) (A212094 (A233583 (n + 1)).toNat)

end

end A212091.P17152081771578938378

/-! ## A212091.P12750884841009927913

`A000583(n)-(A212094(n)+A212092(n))`
-/

namespace A212091.P12750884841009927913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212094 n + A212092 n)

end

end A212091.P12750884841009927913

/-! ## A212091.P8763630253552744106

`∑[A063691(n²)]`
-/

namespace A212091.P8763630253552744106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212091.P8763630253552744106

/-! ## A212091.P8277278219153973126

`∑[lcm(3, A063691(n*n))]`
-/

namespace A212091.P8277278219153973126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A063691 (n * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212091.P8277278219153973126

/-!
# A212092: Number of (w,x,y,z) with all terms in {1,...,n} and w^2

The programs for A212092, there is no canonical definition to state claims against.
-/

/-! ## A212092.P6472299415274093973

`n^4-A212095(n)`
-/

namespace A212092.P6472299415274093973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212095 n

end

end A212092.P6472299415274093973

/-! ## A212092.P4221233164534595937

`n²²-∑[A253663(n)]`
-/

namespace A212092.P4221233164534595937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212092.P4221233164534595937

/-! ## A212092.P7083932711067764887

`A212093(n)-A212091(n)`
-/

namespace A212092.P7083932711067764887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n - A212091 n

end

end A212092.P7083932711067764887

/-! ## A212092.P3515810424730961782

`abs(A000583(n)-A212095(n))`
-/

namespace A212092.P3515810424730961782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212095 n|

end

end A212092.P3515810424730961782

/-! ## A212092.P4936183619367475576

`abs(A000583(n)-∑[A253663(n)])`
-/

namespace A212092.P4936183619367475576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A212092.P4936183619367475576

/-! ## A212092.P7594192480635902321

`A212098(n)+A212099(n)-A212095(n)`
-/

namespace A212092.P7594192480635902321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212095 n)

end

end A212092.P7594192480635902321

/-! ## A212092.P4104397381031119679

`A212249(n)+A212250(n)-A212095(n)`
-/

namespace A212092.P4104397381031119679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 n + (A212250 n - A212095 n)

end

end A212092.P4104397381031119679

/-! ## A212092.P15485469235659544720

`A212568(n)+A212675(n)-A212095(n)`
-/

namespace A212092.P15485469235659544720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212568 n + (A212675 n - A212095 n)

end

end A212092.P15485469235659544720

/-! ## A212092.P16306017057182643790

`A212673(n)+A212674(n)-A212095(n)`
-/

namespace A212092.P16306017057182643790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A212095 n)

end

end A212092.P16306017057182643790

/-! ## A212092.P7903285063305866356

`A212681(n)+A212682(n)-A212095(n)`
-/

namespace A212092.P7903285063305866356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + (A212682 n - A212095 n)

end

end A212092.P7903285063305866356

/-! ## A212092.P11500895602019810093

`(A000583(n)-∑[A253663(n)])*A057427(n)`
-/

namespace A212092.P11500895602019810093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A212092.P11500895602019810093

/-! ## A212092.P7837628276488537627

`A008683(4*(n+1))+A000583(n)-∑[A253663(n)]`
-/

namespace A212092.P7837628276488537627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212092.P7837628276488537627

/-! ## A212092.P5886088061120526940

`(A000583(n)-∑[A253663(n)])%(A252815(n+1)+1)`
-/

namespace A212092.P5886088061120526940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A252815 (n + 1) + 1)

end

end A212092.P5886088061120526940

/-! ## A212092.P4603704653655511332

`(A000583(n)-∑[A253663(n)])*A050530(n+1)%2`
-/

namespace A212092.P4603704653655511332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - ∑ j ∈ Finset.range (n + 1), f1 j) * Int.tmod (A050530 (n + 1)) 2

end

end A212092.P4603704653655511332

/-! ## A212092.P12431579669056270514

`n^4-∑[A253663(n)-A181787(n)]-A212091(n)`
-/

namespace A212092.P12431579669056270514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n - A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j - A212091 n

end

end A212092.P12431579669056270514

/-! ## A212092.P15656882613416413337

`A000583(n)-∑[A253663(n)]+1-A000040(n+2)%2`
-/

namespace A212092.P15656882613416413337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ∑ j ∈ Finset.range (n + 1), f1 j + 1 - Int.tmod (A000040 (n + 2)) 2

end

end A212092.P15656882613416413337

/-! ## A212092.P12007729294726403652

`A211787(n)+A211797(n)-A212095(n)`
-/

namespace A212092.P12007729294726403652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212095 n)

end

end A212092.P12007729294726403652

/-! ## A212092.P9801637422247698029

`A212136(n)+A212150(n)-A212095(n)`
-/

namespace A212092.P9801637422247698029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212136 n + (A212150 n - A212095 n)

end

end A212092.P9801637422247698029

/-! ## A212092.P980853368356554221

`A212143(n)+A212144(n)-A212095(n)`
-/

namespace A212092.P980853368356554221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212143 n + (A212144 n - A212095 n)

end

end A212092.P980853368356554221

/-! ## A212092.P12196948265178127287

`n^4-A212094(n)-A212091(n)`
-/

namespace A212092.P12196948265178127287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212094 n - A212091 n

end

end A212092.P12196948265178127287

/-!
# A212093: Number of (w,x,y,z) with all terms in {1,...,n} and w^2<=x^2+y^2+z^2.

The programs for A212093, there is no canonical definition to state claims against.
-/

/-! ## A212093.P5630543376099193903

`A212092(n)+A212091(n)`
-/

namespace A212093.P5630543376099193903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + A212091 n

end

end A212093.P5630543376099193903

/-! ## A212093.P2471813290198538190

`A212092(n)+∑[A181787(n)]`
-/

namespace A212093.P2471813290198538190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212093.P2471813290198538190

/-! ## A212093.P13017572398724768918

`n^4-∑[A253663(n)-A181787(n)]`
-/

namespace A212093.P13017572398724768918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n - A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212093.P13017572398724768918

/-! ## A212093.P11205779506699596474

`∑[A181787(2*n)]+n²²-∑[A253663(n)]`
-/

namespace A212093.P11205779506699596474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212093.P11205779506699596474

/-! ## A212093.P7810646129480335726

`n^4-A212094(n)`
-/

namespace A212093.P7810646129480335726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212094 n

end

end A212093.P7810646129480335726

/-! ## A212093.P10781227558351617870

`abs(A000583(n)-A212094(n))`
-/

namespace A212093.P10781227558351617870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212094 n|

end

end A212093.P10781227558351617870

/-! ## A212093.P16404542327229447599

`1-(A212094(n)+A024002(n))`
-/

namespace A212093.P16404542327229447599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A212094 n + A024002 n)

end

end A212093.P16404542327229447599

/-! ## A212093.P8400702921944069131

`A212088(n)+A212089(n)-A212094(n)`
-/

namespace A212093.P8400702921944069131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212094 n)

end

end A212093.P8400702921944069131

/-! ## A212093.P6058461977109708211

`A000583(n)-A158388(n)*A212094(n)`
-/

namespace A212093.P6058461977109708211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A158388 n * A212094 n

end

end A212093.P6058461977109708211

/-! ## A212093.P5315242599309988091

`(A000583(n)-A212094(n))*A000038(n)!`
-/

namespace A212093.P5315242599309988091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n) * (Nat.factorial (A000038 n).toNat : ℤ)

end

end A212093.P5315242599309988091

/-! ## A212093.P1359715495360686647

`A000583(n)-char[A001057(n)]*A212094(n)`
-/

namespace A212093.P1359715495360686647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212094 n

end

end A212093.P1359715495360686647

/-! ## A212093.P1404196908999067275

`(A000583(n)-A212094(n))*A007318(C(2, n²))`
-/

namespace A212093.P1404196908999067275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n) * A007318 (Nat.choose 2 (n ^ 2))

end

end A212093.P1404196908999067275

/-! ## A212093.P13163625510604167160

`(A000583(n)-A212094(n))*A014963(15*(n+1))`
-/

namespace A212093.P13163625510604167160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n) * A014963 (15 * (n + 1))

end

end A212093.P13163625510604167160

/-! ## A212093.P16334044307576099470

`(A000583(n)-A212094(n))/A000041(C(2, n+2))`
-/

namespace A212093.P16334044307576099470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A212093.P16334044307576099470

/-! ## A212093.P11538428893252722993

`(A000583(n)-A212094(n))*A000041(C(2, 2*n))`
-/

namespace A212093.P11538428893252722993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n) * A000041 (Nat.choose 2 (2 * n))

end

end A212093.P11538428893252722993

/-! ## A212093.P5622063396295153256

`(A000583(n)-A212094(n))/A014963(gcd(n, n+1))`
-/

namespace A212093.P5622063396295153256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n : ℚ) / (A014963 (Nat.gcd n (n + 1)) : ℚ)

end

end A212093.P5622063396295153256

/-! ## A212093.P6868346028037843840

`(A000583(n)-A212094(n))*A007318(A112316(n))`
-/

namespace A212093.P6868346028037843840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n) * A007318 (A112316 n).toNat

end

end A212093.P6868346028037843840

/-! ## A212093.P1257592325369548690

`(A000583(n)-A212094(n))*A007318(A020639(2*(n+1)))`
-/

namespace A212093.P1257592325369548690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212094 n) * A007318 (A020639 (2 * (n + 1))).toNat

end

end A212093.P1257592325369548690

/-! ## A212093.P17652811436932723185

`A212097(n)+A212100(n)-A212094(n)`
-/

namespace A212093.P17652811436932723185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + (A212100 n - A212094 n)

end

end A212093.P17652811436932723185

/-! ## A212093.P16092484135100951596

`A212141(n)+A212142(n)-A212094(n)`
-/

namespace A212093.P16092484135100951596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212141 n + (A212142 n - A212094 n)

end

end A212093.P16092484135100951596

/-!
# A212094: Number of (w,x,y,z) with all terms in {1,...,n} and w^2>x^2+y^2+z^2.

The programs for A212094, there is no canonical definition to state claims against.
-/

/-! ## A212094.P10474789670757320461

`n^4-A212093(n)`
-/

namespace A212094.P10474789670757320461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212093 n

end

end A212094.P10474789670757320461

/-! ## A212094.P10085151761116195173

`A212095(n)-A212091(n)`
-/

namespace A212094.P10085151761116195173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212095 n - A212091 n

end

end A212094.P10085151761116195173

/-! ## A212094.P2161324277616332173

`abs(A000583(n)-A212093(n))`
-/

namespace A212094.P2161324277616332173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212093 n|

end

end A212094.P2161324277616332173

/-! ## A212094.P13714645097351897355

`A212095(n)-∑[A181787(n)]`
-/

namespace A212094.P13714645097351897355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212095 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212094.P13714645097351897355

/-! ## A212094.P6582383011223673753

`∑[A253663(n)-A181787(n)]`
-/

namespace A212094.P6582383011223673753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n - A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212094.P6582383011223673753

/-! ## A212094.P8709035434205442632

`∑[A253663(n)]-A212091(n)`
-/

namespace A212094.P8709035434205442632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212091 n

end

end A212094.P8709035434205442632

/-! ## A212094.P7081517188710111773

`A002523(n)-(A212093(n)+1)`
-/

namespace A212094.P7081517188710111773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212093 n + 1)

end

end A212094.P7081517188710111773

/-! ## A212094.P7630865421471736248

`1-(A212093(n)+A024002(n))`
-/

namespace A212094.P7630865421471736248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A212093 n + A024002 n)

end

end A212094.P7630865421471736248

/-! ## A212094.P10530806887784961931

`abs(A212093(n)-A000290(n)²)`
-/

namespace A212094.P10530806887784961931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212093 n - A000290 n ^ 2|

end

end A212094.P10530806887784961931

/-! ## A212094.P2892641715551956593

`n²²%A212093(A028310(n))`
-/

namespace A212094.P2892641715551956593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A212093 (A028310 n).toNat)

end

end A212094.P2892641715551956593

/-! ## A212094.P1345956775770772222

`n^4-A212092(n)-A212091(n)`
-/

namespace A212094.P1345956775770772222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212092 n - A212091 n

end

end A212094.P1345956775770772222

/-! ## A212094.P14436946846774324133

`n²²-(A212092(n)+∑[A181787(n)])`
-/

namespace A212094.P14436946846774324133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (A212092 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212094.P14436946846774324133

/-! ## A212094.P1992119492435465055

`A000583(n)-(A212092(n)+A212091(n))`
-/

namespace A212094.P1992119492435465055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212092 n + A212091 n)

end

end A212094.P1992119492435465055

/-! ## A212094.P1786733469940936879

`A212063(n)+A212064(n)-A212093(n)`
-/

namespace A212094.P1786733469940936879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212093 n)

end

end A212094.P1786733469940936879

/-! ## A212094.P13953206912907975885

`A212681(n)+A212682(n)-A212093(n)`
-/

namespace A212094.P13953206912907975885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + (A212682 n - A212093 n)

end

end A212094.P13953206912907975885

/-! ## A212094.P165158873118456765

`A212098(n)+A212099(n)-A212092(n)-A212091(n)`
-/

namespace A212094.P165158873118456765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212092 n) - A212091 n

end

end A212094.P165158873118456765

/-! ## A212094.P1321786858988106016

`A212689(n)+A212690(n)-A212092(n)-A212091(n)`
-/

namespace A212094.P1321786858988106016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + (A212690 n - A212092 n) - A212091 n

end

end A212094.P1321786858988106016

/-! ## A212094.P4656846594794934931

`A212065(n)+A212066(n)-A212093(n)`
-/

namespace A212094.P4656846594794934931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A212093 n)

end

end A212094.P4656846594794934931

/-! ## A212094.P2135618654059126886

`A211795(n)+A211809(n)-A212093(n)`
-/

namespace A212094.P2135618654059126886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212093 n)

end

end A212094.P2135618654059126886

/-! ## A212094.P10420550726328503326

`∑[A211638(n²)]`
-/

namespace A212094.P10420550726328503326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212094.P10420550726328503326

/-!
# A212095: Number of (w,x,y,z) with all terms in {1,...,n} and w^2>=x^2+y^2+z^2.

The programs for A212095, there is no canonical definition to state claims against.
-/

/-! ## A212095.P6981723840893123623

`∑[A253663(n)]`
-/

namespace A212095.P6981723840893123623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212095.P6981723840893123623

/-! ## A212095.P2923623954168286607

`n^4-A212092(n)`
-/

namespace A212095.P2923623954168286607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212092 n

end

end A212095.P2923623954168286607

/-! ## A212095.P8043134534257663962

`abs(A000583(n)-A212092(n))`
-/

namespace A212095.P8043134534257663962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212092 n|

end

end A212095.P8043134534257663962

/-! ## A212095.P10559267209934284944

`A212088(n)+A212089(n)-A212092(n)`
-/

namespace A212095.P10559267209934284944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212092 n)

end

end A212095.P10559267209934284944

/-! ## A212095.P13798932548233873085

`A212098(n)+A212099(n)-A212092(n)`
-/

namespace A212095.P13798932548233873085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212092 n)

end

end A212095.P13798932548233873085

/-! ## A212095.P15264951462060799580

`A212689(n)+A212690(n)-A212092(n)`
-/

namespace A212095.P15264951462060799580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + (A212690 n - A212092 n)

end

end A212095.P15264951462060799580

/-! ## A212095.P13111357283800529126

`(A000583(n)-A212092(n))*A007318(C(2, n))`
-/

namespace A212095.P13111357283800529126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212092 n) * A007318 (Nat.choose 2 n)

end

end A212095.P13111357283800529126

/-! ## A212095.P14349808723510969707

`(A000583(n)-A212092(n))%∑[A000041(n+15)]`
-/

namespace A212095.P14349808723510969707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212092 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212095.P14349808723510969707

/-! ## A212095.P16610270444344200859

`(A000583(n)-A212092(n))*A014963(2*A000040(n+1))`
-/

namespace A212095.P16610270444344200859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212092 n) * A014963 (2 * A000040 (n + 1)).toNat

end

end A212095.P16610270444344200859

/-! ## A212095.P7210553668613149192

`A211787(n)+A211797(n)-A212092(n)`
-/

namespace A212095.P7210553668613149192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212092 n)

end

end A212095.P7210553668613149192

/-! ## A212095.P8259469488306630080

`A212094(n)+A212091(n)`
-/

namespace A212095.P8259469488306630080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212094 n + A212091 n

end

end A212095.P8259469488306630080

/-! ## A212095.P14268221211850626848

`A212094(n)+∑[A181787(n)]`
-/

namespace A212095.P14268221211850626848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212094 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212095.P14268221211850626848

/-! ## A212095.P8824592275899374990

`A212093(n)+A212094(n)-A212092(n)`
-/

namespace A212095.P8824592275899374990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212092 n)

end

end A212095.P8824592275899374990

/-! ## A212095.P8113059455984178540

`A212053(n)+A212054(n)-A212092(n)`
-/

namespace A212095.P8113059455984178540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + (A212054 n - A212092 n)

end

end A212095.P8113059455984178540

/-! ## A212095.P12871382022252812856

`A211795(n)+A211809(n)-A212092(n)`
-/

namespace A212095.P12871382022252812856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212092 n)

end

end A212095.P12871382022252812856

/-! ## A212095.P2778472891866238252

`∑[A000604(n)-A016777(A036698(n))]`
-/

namespace A212095.P2778472891866238252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000604 n - A016777 (A036698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212095.P2778472891866238252

/-! ## A212095.P1887997454109873065

`A212094(n)+∑[A063691(n²)]`
-/

namespace A212095.P1887997454109873065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212094 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212095.P1887997454109873065

/-! ## A212095.P9877251880271227799

`∑[A211638(n²+1)]`
-/

namespace A212095.P9877251880271227799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212095.P9877251880271227799

/-!
# A212096: Number of (w,x,y,z) with all terms in {1,...,n} and w^3=x^3+y^3+z^3.

The programs for A212096, there is no canonical definition to state claims against.
-/

/-! ## A212096.P2599146065417819829

`A212100(n)-A212099(n)`
-/

namespace A212096.P2599146065417819829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212100 n - A212099 n

end

end A212096.P2599146065417819829

/-! ## A212096.P12659428954331213738

`∑[6*A316359(A028310(n))]`
-/

namespace A212096.P12659428954331213738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A316359 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212096.P12659428954331213738

/-! ## A212096.P531823425113883349

`∑[6*A316359(A233583(n+1))]`
-/

namespace A212096.P531823425113883349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A316359 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212096.P531823425113883349

/-! ## A212096.P15056920890790075712

`A212098(n)-(n^4-A212100(n))`
-/

namespace A212096.P15056920890790075712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n - ((n ^ 4 : ℤ) - A212100 n)

end

end A212096.P15056920890790075712

/-! ## A212096.P1642918158847592250

`A212100(n)%A212099(A233583(n+1))`
-/

namespace A212096.P1642918158847592250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212100 n) (A212099 (A233583 (n + 1)).toNat)

end

end A212096.P1642918158847592250

/-! ## A212096.P15408176488632671361

`A212098(n)+A212100(n)-A000583(n)`
-/

namespace A212096.P15408176488632671361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212100 n - A000583 n)

end

end A212096.P15408176488632671361

/-! ## A212096.P5469828401648348134

`A212100(n)+A057428(n)*A212099(n)`
-/

namespace A212096.P5469828401648348134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212100 n + A057428 n * A212099 n

end

end A212096.P5469828401648348134

/-! ## A212096.P18003879344451460939

`A212100(n)-(A002523(n)-(A212098(n)+1))`
-/

namespace A212096.P18003879344451460939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212100 n - (A002523 n - (A212098 n + 1))

end

end A212096.P18003879344451460939

/-! ## A212096.P18194243422536065886

`A212100(n)+A212099(n)/A057428(A023115(n+1))`
-/

namespace A212096.P18194243422536065886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212100 n : ℚ) + (A212099 n : ℚ) / (A057428 (A023115 (n + 1)).toNat : ℚ)

end

end A212096.P18194243422536065886

/-! ## A212096.P6850860900388640658

`A212098(n)-A212097(n)`
-/

namespace A212096.P6850860900388640658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n - A212097 n

end

end A212096.P6850860900388640658

/-!
# A212097: Number of (w,x,y,z) with all terms in {1,...,n} and w^3

The programs for A212097, there is no canonical definition to state claims against.
-/

/-! ## A212097.P9386064717185038815

`n^4-A212100(n)`
-/

namespace A212097.P9386064717185038815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212100 n

end

end A212097.P9386064717185038815

/-! ## A212097.P10782597831809393186

`A212098(n)-A212096(n)`
-/

namespace A212097.P10782597831809393186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n - A212096 n

end

end A212097.P10782597831809393186

/-! ## A212097.P8653540869925392787

`abs(A000583(n)-A212100(n))`
-/

namespace A212097.P8653540869925392787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212100 n|

end

end A212097.P8653540869925392787

/-! ## A212097.P10565573766401021642

`A002523(n)-(A212100(n)+1)`
-/

namespace A212097.P10565573766401021642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212100 n + 1)

end

end A212097.P10565573766401021642

/-! ## A212097.P1249703202469604754

`1-(A212100(n)+A024002(n))`
-/

namespace A212097.P1249703202469604754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A212100 n + A024002 n)

end

end A212097.P1249703202469604754

/-! ## A212097.P4452965291553543824

`abs(A000290(n)²-A212100(n))`
-/

namespace A212097.P4452965291553543824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A212100 n|

end

end A212097.P4452965291553543824

/-! ## A212097.P810358930997454681

`A212065(n)+A212066(n)-A212100(n)`
-/

namespace A212097.P810358930997454681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A212100 n)

end

end A212097.P810358930997454681

/-! ## A212097.P18165613658865516540

`A212088(n)+A212089(n)-A212100(n)`
-/

namespace A212097.P18165613658865516540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212100 n)

end

end A212097.P18165613658865516540

/-! ## A212097.P14803077283428353782

`A212098(n)+A212099(n)-A212100(n)`
-/

namespace A212097.P14803077283428353782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212100 n)

end

end A212097.P14803077283428353782

/-! ## A212097.P10013839892625356505

`A000583(n)+A057428(n)*A212100(n)`
-/

namespace A212097.P10013839892625356505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A057428 n * A212100 n

end

end A212097.P10013839892625356505

/-! ## A212097.P11522380924755365797

`-((A212100(n)-A000583(n))%A017379(n))`
-/

namespace A212097.P11522380924755365797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A212100 n - A000583 n) (A017379 n)

end

end A212097.P11522380924755365797

/-! ## A212097.P12170933637655651698

`A000007(n+1)+A000583(n)-A212100(n)`
-/

namespace A212097.P12170933637655651698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A212100 n)

end

end A212097.P12170933637655651698

/-! ## A212097.P9961521492941464894

`(A000038(n)-1)*(A212100(n)-A000583(n))`
-/

namespace A212097.P9961521492941464894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) * (A212100 n - A000583 n)

end

end A212097.P9961521492941464894

/-! ## A212097.P17475188461087050694

`lcm(1-A000007(n), A212100(n)-A000583(n))`
-/

namespace A212097.P17475188461087050694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A000007 n) (A212100 n - A000583 n)

end

end A212097.P17475188461087050694

/-! ## A212097.P13894616089410229015

`(A000583(n)-A212100(n))*A007318(C(2, n))`
-/

namespace A212097.P13894616089410229015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212100 n) * A007318 (Nat.choose 2 n)

end

end A212097.P13894616089410229015

/-! ## A212097.P14549576134608098949

`A008683(4*(n+1))-(A212100(n)-A000583(n))`
-/

namespace A212097.P14549576134608098949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - (A212100 n - A000583 n)

end

end A212097.P14549576134608098949

/-! ## A212097.P11914412753565331095

`(A000583(n)-A212100(n))*A000040(n+1)%2`
-/

namespace A212097.P11914412753565331095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212100 n) * Int.tmod (A000040 (n + 1)) 2

end

end A212097.P11914412753565331095

/-! ## A212097.P17239320164700166837

`A001222(gcd(n, n+1))-(A212100(n)-A000583(n))`
-/

namespace A212097.P17239320164700166837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - (A212100 n - A000583 n)

end

end A212097.P17239320164700166837

/-! ## A212097.P7696938883346477809

`A000583(n)+A008683(A008578(n+1))*A212100(n)`
-/

namespace A212097.P7696938883346477809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A008578 (n + 1)).toNat * A212100 n

end

end A212097.P7696938883346477809

/-!
# A212098: Number of (w,x,y,z) with all terms in {1,...,n} and w^3<=x^3+y^3+z^3.

The programs for A212098, there is no canonical definition to state claims against.
-/

/-! ## A212098.P10502288345207833417

`n²²-A212099(n)`
-/

namespace A212098.P10502288345207833417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212099 n

end

end A212098.P10502288345207833417

/-! ## A212098.P12964656104475414006

`abs(A000583(n)-A212099(n))`
-/

namespace A212098.P12964656104475414006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212099 n|

end

end A212098.P12964656104475414006

/-! ## A212098.P17526102965789936815

`A212088(n)+A212089(n)-A212099(n)`
-/

namespace A212098.P17526102965789936815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212099 n)

end

end A212098.P17526102965789936815

/-! ## A212098.P12286852160876051988

`(A000583(n)-A212099(n))*A054977(n)`
-/

namespace A212098.P12286852160876051988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212099 n) * A054977 n

end

end A212098.P12286852160876051988

/-! ## A212098.P11973888329995455507

`(A000583(n)-A212099(n))%A016949(n)`
-/

namespace A212098.P11973888329995455507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212099 n) (A016949 n)

end

end A212098.P11973888329995455507

/-! ## A212098.P2732072824252240755

`A000035(2*n)+A000583(n)-A212099(n)`
-/

namespace A212098.P2732072824252240755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (A000583 n - A212099 n)

end

end A212098.P2732072824252240755

/-! ## A212098.P12137634695932007845

`(A000583(n)-A212099(n))*A014963(A115421(2*n+1))`
-/

namespace A212098.P12137634695932007845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212099 n) * A014963 (A115421 (2 * n + 1)).toNat

end

end A212098.P12137634695932007845

/-! ## A212098.P11813362136708418379

`(A000583(n)-A212099(n))*A014963(A139249(n+1))`
-/

namespace A212098.P11813362136708418379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212099 n) * A014963 (A139249 (n + 1)).toNat

end

end A212098.P11813362136708418379

/-! ## A212098.P9608699511729917292

`A212092(n)+A212095(n)-A212099(n)`
-/

namespace A212098.P9608699511729917292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212099 n)

end

end A212098.P9608699511729917292

/-! ## A212098.P581482052818288012

`A212093(n)+A212094(n)-A212099(n)`
-/

namespace A212098.P581482052818288012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212099 n)

end

end A212098.P581482052818288012

/-! ## A212098.P13093995608182068258

`A000583(n)+A212096(n)-A212100(n)`
-/

namespace A212098.P13093995608182068258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (A212096 n - A212100 n)

end

end A212098.P13093995608182068258

/-! ## A212098.P12223645937504847094

`A212097(n)+A212096(n)`
-/

namespace A212098.P12223645937504847094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + A212096 n

end

end A212098.P12223645937504847094

/-! ## A212098.P14967472210789717260

`A212097(n)+A212100(n)-A212099(n)`
-/

namespace A212098.P14967472210789717260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + (A212100 n - A212099 n)

end

end A212098.P14967472210789717260

/-! ## A212098.P16762884796805858342

`A212053(n)+A212054(n)-A212099(n)`
-/

namespace A212098.P16762884796805858342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + (A212054 n - A212099 n)

end

end A212098.P16762884796805858342

/-! ## A212098.P11365217913018204074

`(A000583(n)-A212099(n))*A014963(2*A191180(n+1))`
-/

namespace A212098.P11365217913018204074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212099 n) * A014963 (2 * A191180 (n + 1)).toNat

end

end A212098.P11365217913018204074

/-!
# A212099: Number of (w,x,y,z) with all terms in {1,...,n} and w^3>x^3+y^3+z^3.

The programs for A212099, there is no canonical definition to state claims against.
-/

/-! ## A212099.P7747059806197518332

`n^4-A212098(n)`
-/

namespace A212099.P7747059806197518332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212098 n

end

end A212099.P7747059806197518332

/-! ## A212099.P2710297746732718706

`abs(A000583(n)-A212098(n))`
-/

namespace A212099.P2710297746732718706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212098 n|

end

end A212099.P2710297746732718706

/-! ## A212099.P2229482282433829972

`A002523(n)-(A212098(n)+1)`
-/

namespace A212099.P2229482282433829972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212098 n + 1)

end

end A212099.P2229482282433829972

/-! ## A212099.P4373544503878442258

`n²²%A212098(A000007(n)+n)`
-/

namespace A212099.P4373544503878442258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A212098 (A000007 n + (n : ℤ)).toNat)

end

end A212099.P4373544503878442258

/-! ## A212099.P10221240769679937266

`A212088(n)+A212089(n)-A212098(n)`
-/

namespace A212099.P10221240769679937266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212098 n)

end

end A212099.P10221240769679937266

/-! ## A212099.P18071537882045018315

`A000583(n)-A014963(A075818(n+1))*A212098(n)`
-/

namespace A212099.P18071537882045018315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A014963 (A075818 (n + 1)).toNat * A212098 n

end

end A212099.P18071537882045018315

/-! ## A212099.P14620055877192975271

`A212092(n)+A212095(n)-A212098(n)`
-/

namespace A212099.P14620055877192975271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212098 n)

end

end A212099.P14620055877192975271

/-! ## A212099.P6196403650608088058

`A212093(n)+A212094(n)-A212098(n)`
-/

namespace A212099.P6196403650608088058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212098 n)

end

end A212099.P6196403650608088058

/-! ## A212099.P16975195668188353169

`A212100(n)-A212096(n)`
-/

namespace A212099.P16975195668188353169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212100 n - A212096 n

end

end A212099.P16975195668188353169

/-! ## A212099.P14777290652732691559

`A212097(n)+A212100(n)-A212098(n)`
-/

namespace A212099.P14777290652732691559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + (A212100 n - A212098 n)

end

end A212099.P14777290652732691559

/-! ## A212099.P10516246888945733202

`A212104(n)+A212105(n)-A212098(n)`
-/

namespace A212099.P10516246888945733202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n + (A212105 n - A212098 n)

end

end A212099.P10516246888945733202

/-! ## A212099.P13571048446565490426

`A212106(n)+A212107(n)-A212098(n)`
-/

namespace A212099.P13571048446565490426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A212098 n)

end

end A212099.P13571048446565490426

/-! ## A212099.P16439359101027080499

`(A000583(n)-A212098(n))*A014963(∑[n+1])`
-/

namespace A212099.P16439359101027080499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212098 n) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212099.P16439359101027080499

/-! ## A212099.P4247950985867396724

`(A000583(n)-A212098(n))/A014963(A027379(n+4))`
-/

namespace A212099.P4247950985867396724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212098 n : ℚ) / (A014963 (A027379 (n + 4)).toNat : ℚ)

end

end A212099.P4247950985867396724

