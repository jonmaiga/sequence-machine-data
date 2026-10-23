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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277700: a(n) = A000120(A264977(n)); number of odd terms on row n of A125184.

The programs for A277700, there is no canonical definition to state claims against.
-/

/-! ## A277700.P12437773902170784938

`A000120(A264977(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277700.P12437773902170784938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A264977 n).toNat

end

end A277700.P12437773902170784938

/-! ## A277700.P7029784147702206891

`A001221(A277330(n))`
-/

namespace A277700.P7029784147702206891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277330 n).toNat

end

end A277700.P7029784147702206891

/-! ## A277700.P12723050419436503112

`A000120(n-A265397(n))`
-/

namespace A277700.P12723050419436503112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A265397 n).toNat

end

end A277700.P12723050419436503112

/-! ## A277700.P7404335493925113371

`A002487(n)-2*A284264(n)`
-/

namespace A277700.P7404335493925113371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - 2 * A284264 n

end

end A277700.P7404335493925113371

/-! ## A277700.P15251923406383333545

`A000120(-(A265397(n)+A001489(n)))`
-/

namespace A277700.P15251923406383333545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (-(A265397 n + A001489 n)).toNat

end

end A277700.P15251923406383333545

/-! ## A277700.P14348869945729632266

`A001222(∏{e}[A277330(n), #+1])`
-/

namespace A277700.P14348869945729632266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A277700.P14348869945729632266

/-! ## A277700.P10182702415192907485

`A001222(A277330(n/gcd(32, n)))`
-/

namespace A277700.P10182702415192907485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277330 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 32 n : ℚ))).toNat).toNat

end

end A277700.P10182702415192907485

/-! ## A277700.P4636456160390376138

`A001222(A019565(n-A265397(n)))`
-/

namespace A277700.P4636456160390376138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 ((n : ℤ) - A265397 n).toNat).toNat

end

end A277700.P4636456160390376138

/-! ## A277700.P5577687254545541479

`A001222(A260443(n)/A283989(n))`
-/

namespace A277700.P5577687254545541479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A260443 n : ℚ) / (A283989 n : ℚ))).toNat

end

end A277700.P5577687254545541479

/-! ## A277700.P5818582997576680601

`A001221(A260443(n)/A283983(n)²)`
-/

namespace A277700.P5818582997576680601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A260443 n : ℚ) / (A283983 n ^ 2 : ℚ))).toNat

end

end A277700.P5818582997576680601

/-! ## A277700.P188731756715954244

`∑{p}[A277330(2*n), A297108(A297108(#))]`
-/

namespace A277700.P188731756715954244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 (A297108 p).toNat

end

end A277700.P188731756715954244

/-!
# A277701: Positions of ones in A264977; positions of twos in A277330.

The programs for A277701, there is no canonical definition to state claims against.
-/

/-! ## A277701.P10624198407428391788

`A277816(a(n-1))` with `a(0)=1`
-/

namespace A277701.P10624198407428391788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277816 (a (n - 1)).toNat

end

end A277701.P10624198407428391788

/-! ## A277701.P16337142724880283690

`eq[1, A277826(n)]`
-/

namespace A277701.P16337142724880283690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277701.P16337142724880283690

/-! ## A277701.P9603564075348559346

`eq[1, A277884(n)]`
-/

namespace A277701.P9603564075348559346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277701.P9603564075348559346

/-! ## A277701.P4041262131862176652

`A277712(n+1)/2`
-/

namespace A277701.P4041262131862176652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277712 (n + 1) : ℚ) / 2

end

end A277701.P4041262131862176652

/-! ## A277701.P4056442001855920363

`A000265(A277712(n+1))`
-/

namespace A277701.P4056442001855920363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A277712 (n + 1)).toNat

end

end A277701.P4056442001855920363

/-! ## A277701.P3857251882932640023

`record[A005408(n)/A283975(n)]`
-/

namespace A277701.P3857251882932640023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A283975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277701.P3857251882932640023

/-! ## A277701.P3136255464817633734

`eq[1, A264977(n)]`
-/

namespace A277701.P3136255464817633734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277701.P3136255464817633734

/-! ## A277701.P5547930206505077551

`eq[2, A277330(n)]`
-/

namespace A277701.P5547930206505077551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277701.P5547930206505077551

/-! ## A277701.P9911801670829040572

`eq[n-1, A265397(n)]`
-/

namespace A277701.P9911801670829040572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277701.P9911801670829040572

/-!
# A277702: Positions of records in A260443.

The programs for A277702, there is no canonical definition to state claims against.
-/

/-! ## A277702.P5272665317704589806

`record[A260443(n)+n]-record[A260443(n)]`
-/

namespace A277702.P5272665317704589806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A277702.P5272665317704589806

/-! ## A277702.P17996295132303709377

`A279516(n+1)%A157036(n)`
-/

namespace A277702.P17996295132303709377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279516 (n + 1)) (A157036 n)

end

end A277702.P17996295132303709377

/-! ## A277702.P2610307437190166820

`A335884(A000079(n))+A279516(n+1)`
-/

namespace A277702.P2610307437190166820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (A000079 n).toNat + A279516 (n + 1)

end

end A277702.P2610307437190166820

/-! ## A277702.P15830514914031495808

`A002487(A101656(2*n+1))*A279516(n+1)`
-/

namespace A277702.P15830514914031495808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A101656 (2 * n + 1)).toNat * A279516 (n + 1)

end

end A277702.P15830514914031495808

/-! ## A277702.P3542314825087630889

`A279516(n+1)/A001055(A193507(3*n+4))`
-/

namespace A277702.P3542314825087630889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279516 (n + 1) : ℚ) / (A001055 (A193507 (3 * n + 4)).toNat : ℚ)

end

end A277702.P3542314825087630889

/-!
# A277703: Record values in A260443.

The programs for A277703, there is no canonical definition to state claims against.
-/

/-! ## A277703.P5816572648484067498

`A260443(A277702(n+1))`
-/

namespace A277703.P5816572648484067498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A277702 (n + 1)).toNat

end

end A277703.P5816572648484067498

/-! ## A277703.P6557277857851861410

`record[A260443(n)]`
-/

namespace A277703.P6557277857851861410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277703.P6557277857851861410

/-! ## A277703.P11810347848172280182

`record[A277330(n)*A283989(n)]`
-/

namespace A277703.P11810347848172280182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n * A283989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277703.P11810347848172280182

/-! ## A277703.P9612343865236837170

`record[A284553(n)*A284554(n)]`
-/

namespace A277703.P9612343865236837170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 n * A284554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277703.P9612343865236837170

/-! ## A277703.P10335610025633433729

`record[A283983(n)²*A277330(n)]`
-/

namespace A277703.P10335610025633433729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 n ^ 2 * A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277703.P10335610025633433729

/-!
# A277704: Positions of squares in A277699.

The programs for A277704, there is no canonical definition to state claims against.
-/

/-! ## A277704.P1633438285757698729

`eq[A284272(n), A331749(A140472(n)²)]`
-/

namespace A277704.P1633438285757698729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 (A140472 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277704.P1633438285757698729

/-! ## A277704.P9669984828347889241

`record[gcd(n, A008486(A048678(n)))]`
-/

namespace A277704.P9669984828347889241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A008486 (A048678 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277704.P9669984828347889241

/-! ## A277704.P9139154895450447229

`eq[0, A146326(A277699(n+1))]+1`
-/

namespace A277704.P9139154895450447229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A277699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277704.P9139154895450447229

/-! ## A277704.P2403205264454707779

`eq[A069010(n), A304042(A007318(n))]`
-/

namespace A277704.P2403205264454707779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277704.P2403205264454707779

/-! ## A277704.P15063215846027822010

`record[gcd(A007494(A124108(n)), A028310(n))]`
-/

namespace A277704.P15063215846027822010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007494 (A124108 n).toNat) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277704.P15063215846027822010

/-!
# A277705: Number of divisors in A260443(n).

The programs for A277705, there is no canonical definition to state claims against.
-/

/-! ## A277705.P4806179938984358102

`A106737(A277020(n))`
-/

namespace A277705.P4806179938984358102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A277020 n).toNat

end

end A277705.P4806179938984358102

/-! ## A277705.P1047356238563750932

`A000005(A260443(n))`
-/

namespace A277705.P1047356238563750932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A260443 n).toNat

end

end A277705.P1047356238563750932

/-! ## A277705.P17745520320546487435

`A000005(A284553(n))*A000005(A284554(n))`
-/

namespace A277705.P17745520320546487435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284553 n).toNat * A000005 (A284554 n).toNat

end

end A277705.P17745520320546487435

/-! ## A277705.P5905564813737307364

`∏{e}[A278243(n), #+1]`
-/

namespace A277705.P5905564813737307364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A277705.P5905564813737307364

/-! ## A277705.P1895961310926399425

`∑{d}[A278243(n), A115364(2*n+1)%#]+1`
-/

namespace A277705.P1895961310926399425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A115364 (2 * n + 1)) (d : ℤ) + 1

end

end A277705.P1895961310926399425

/-! ## A277705.P1125260474233959298

`∑{d}[A278243(n), A007318(A278243(n)%#)]`
-/

namespace A277705.P1125260474233959298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.tmod (A278243 n) (d : ℤ)).toNat

end

end A277705.P1125260474233959298

/-!
# A277706: Positions of nonsquares in A277699.

The programs for A277706, there is no canonical definition to state claims against.
-/

/-! ## A277706.P11640151507770921114

`comp[A277704(n+1)-1]+1`
-/

namespace A277706.P11640151507770921114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A277706.P11640151507770921114

/-! ## A277706.P14427387969024807161

`comp[∪[A023758(n+1), A277704(n+1)]]`
-/

namespace A277706.P14427387969024807161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A277706.P14427387969024807161

/-! ## A277706.P2362088105513511187

`A020725(comp[A277704(n+1)-1])`
-/

namespace A277706.P2362088105513511187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A277706.P2362088105513511187

/-! ## A277706.P13529819604772284694

`A065475(comp[A277704(n+1)-1])`
-/

namespace A277706.P13529819604772284694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277704 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A277706.P13529819604772284694

/-! ## A277706.P10614122772951961786

`eq[gcd(19, A087734(n)), A178334(n)]`
-/

namespace A277706.P10614122772951961786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 19 (A087734 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277706.P10614122772951961786

/-! ## A277706.P10895856724510239011

`eq[A073424(A002618(n+1)), A341509(n)]`
-/

namespace A277706.P10895856724510239011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A002618 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277706.P10895856724510239011

/-! ## A277706.P9237436005763353370

`eq[A073424(A253644(n+1)), A341509(n)]`
-/

namespace A277706.P9237436005763353370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A253644 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277706.P9237436005763353370

/-!
# A277707: a(n) = index of the least prime divisor of n which has an odd exponent, or 0 if n is a perfect square.

The programs for A277707, there is no canonical definition to state claims against.
-/

/-! ## A277707.P18055627547774342447

`A055396(A007913(n+1))`
-/

namespace A277707.P18055627547774342447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007913 (n + 1)).toNat

end

end A277707.P18055627547774342447

/-! ## A277707.P1263725431229840679

`A055396(Δ[A069891(n)])`
-/

namespace A277707.P1263725431229840679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (n + 1) - f1 n).toNat

end

end A277707.P1263725431229840679

/-! ## A277707.P6092888413654062106

`A055396(A071975(n+1))`
-/

namespace A277707.P6092888413654062106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A071975 (n + 1)).toNat

end

end A277707.P6092888413654062106

/-! ## A277707.P17126433209088395072

`A000720(A277708(n+1))`
-/

namespace A277707.P17126433209088395072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A277708 (n + 1)).toNat

end

end A277707.P17126433209088395072

/-! ## A277707.P4749594209187807800

`A277697(A038387(n+1))`
-/

namespace A277707.P4749594209187807800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A038387 (n + 1)).toNat

end

end A277707.P4749594209187807800

/-! ## A277707.P7821767735576905240

`A277697(A066990(n+1))`
-/

namespace A277707.P7821767735576905240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A066990 (n + 1)).toNat

end

end A277707.P7821767735576905240

/-! ## A277707.P16302079731485946736

`A055396(A335423(n+1))`
-/

namespace A277707.P16302079731485946736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A335423 (n + 1)).toNat

end

end A277707.P16302079731485946736

/-! ## A277707.P7673325177540793390

`A055396(A350389(n+1))`
-/

namespace A277707.P7673325177540793390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A350389 (n + 1)).toNat

end

end A277707.P7673325177540793390

/-! ## A277707.P13621692124449535367

`A277697(A365296(n+1))`
-/

namespace A277707.P13621692124449535367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A365296 (n + 1)).toNat

end

end A277707.P13621692124449535367

/-! ## A277707.P16758258404587154143

`A055396(sqrt(A055491(n+1)))`
-/

namespace A277707.P16758258404587154143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A277707.P16758258404587154143

/-! ## A277707.P4278672223212610817

`∑{d}[A277708(n+1), A277697(#)]`
-/

namespace A277707.P4278672223212610817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A277697 d

end

end A277707.P4278672223212610817

/-! ## A277707.P11001658873588535906

`A061395(∏{d}[A277708(n+1), #])`
-/

namespace A277707.P11001658873588535906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A277707.P11001658873588535906

/-! ## A277707.P16306311965200800457

`A277697(∏{p}[A007913(n+1), #])`
-/

namespace A277707.P16306311965200800457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A277707.P16306311965200800457

/-! ## A277707.P6973223772976802033

`A277697(∏{p}[A277708(n+1), #])`
-/

namespace A277707.P6973223772976802033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A277707.P6973223772976802033

/-! ## A277707.P8877385734001634393

`A055396((n+1)/A008833(n+1))`
-/

namespace A277707.P8877385734001634393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A277707.P8877385734001634393

/-! ## A277707.P17061443845866746570

`A277697(A007913(2*n+1-n))`
-/

namespace A277707.P17061443845866746570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A007913 (2 * n + 1 - n)).toNat

end

end A277707.P17061443845866746570

/-! ## A277707.P11131350273775111942

`A277697(A277708(2*n+1-n))`
-/

namespace A277707.P11131350273775111942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A277708 (2 * n + 1 - n)).toNat

end

end A277707.P11131350273775111942

/-! ## A277707.P9603657495493154666

`A055396(A069891(n+1)-A069891(n))`
-/

namespace A277707.P9603657495493154666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A069891 (n + 1) - A069891 n).toNat

end

end A277707.P9603657495493154666

/-! ## A277707.P12634146054204525263

`A055396(2*A277708(n+1)-A277708(n+1))`
-/

namespace A277707.P12634146054204525263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A277708 (n + 1) - A277708 (n + 1)).toNat

end

end A277707.P12634146054204525263

/-! ## A277707.P15499261730021746100

`A061395(A277708(n+1)²)`
-/

namespace A277707.P15499261730021746100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A277708 (n + 1) ^ 2).toNat

end

end A277707.P15499261730021746100

/-!
# A277708: a(n) = Least prime divisor of n with an odd exponent, or 1 if n is a perfect square.

The programs for A277708, there is no canonical definition to state claims against.
-/

/-! ## A277708.P5236734216448343602

`A020639(A007913(n+1))`
-/

namespace A277708.P5236734216448343602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007913 (n + 1)).toNat

end

end A277708.P5236734216448343602

/-! ## A277708.P2858229004027512855

`A008578(1+A277707(n+1))`
-/

namespace A277708.P2858229004027512855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A277707 (n + 1)).toNat

end

end A277708.P2858229004027512855

/-! ## A277708.P15954985195738014116

`A020639(Δ[A069891(n)])`
-/

namespace A277708.P15954985195738014116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A277708.P15954985195738014116

/-! ## A277708.P7200882421387528865

`A020639(A071975(n+1))`
-/

namespace A277708.P7200882421387528865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071975 (n + 1)).toNat

end

end A277708.P7200882421387528865

/-! ## A277708.P9178568892697113059

`A277698(A038387(n+1))`
-/

namespace A277708.P9178568892697113059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A038387 (n + 1)).toNat

end

end A277708.P9178568892697113059

/-! ## A277708.P2188031651197690730

`A277698(A066990(n+1))`
-/

namespace A277708.P2188031651197690730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A066990 (n + 1)).toNat

end

end A277708.P2188031651197690730

/-! ## A277708.P14552477141179367645

`A020639(A335423(n+1))`
-/

namespace A277708.P14552477141179367645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A335423 (n + 1)).toNat

end

end A277708.P14552477141179367645

/-! ## A277708.P10044884327636153888

`A020639(A350389(n+1))`
-/

namespace A277708.P10044884327636153888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A350389 (n + 1)).toNat

end

end A277708.P10044884327636153888

/-! ## A277708.P14109378548666930436

`A277698(A365296(n+1))`
-/

namespace A277708.P14109378548666930436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A365296 (n + 1)).toNat

end

end A277708.P14109378548666930436

/-! ## A277708.P10062114452630090584

`A020639(sqrt(A055491(n+1)))`
-/

namespace A277708.P10062114452630090584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A277708.P10062114452630090584

/-! ## A277708.P9481951144536980229

`A028233(∏{p}[A007913(n+1), #])`
-/

namespace A277708.P9481951144536980229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A277708.P9481951144536980229

/-! ## A277708.P9379465424495563536

`A020639(1-A326128(n+1)+n)`
-/

namespace A277708.P9379465424495563536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - A326128 (n + 1) + (n : ℤ)).toNat

end

end A277708.P9379465424495563536

/-! ## A277708.P13097784457288871764

`A020639((n+1)/A008833(n+1))`
-/

namespace A277708.P13097784457288871764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A277708.P13097784457288871764

/-! ## A277708.P10457132036177049907

`A028233((n+1)/A008833(n+1))`
-/

namespace A277708.P10457132036177049907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A277708.P10457132036177049907

/-! ## A277708.P1816332908420605104

`A020639(A053143(n+1)/(n+1))`
-/

namespace A277708.P1816332908420605104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A277708.P1816332908420605104

/-! ## A277708.P14041738069328265857

`A020639((n+1)/A056623(n+1))`
-/

namespace A277708.P14041738069328265857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056623 (n + 1) : ℚ))).toNat

end

end A277708.P14041738069328265857

/-! ## A277708.P1544042258285371334

`A020639((n+1)/A350388(n+1))`
-/

namespace A277708.P1544042258285371334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A277708.P1544042258285371334

/-! ## A277708.P1793456320137991853

`A028233(A007913(2*n+1-n))`
-/

namespace A277708.P1793456320137991853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A007913 (2 * n + 1 - n)).toNat

end

end A277708.P1793456320137991853

/-! ## A277708.P9990079034399558188

`A020639(gcd(n+1, A055491(n+1)))`
-/

namespace A277708.P9990079034399558188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 1 : ℤ) (A055491 (n + 1)))

end

end A277708.P9990079034399558188

/-! ## A277708.P10118585593082919664

`A020639((n+1)/A000188(n+1)²)`
-/

namespace A277708.P10118585593082919664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ))).toNat

end

end A277708.P10118585593082919664

/-!
# A277709: Transpose of square array A277710.

The programs for A277709, there is no canonical definition to state claims against.
-/

/-! ## A277709.P17633262993776791457

`A277710(A038722(n+1))`
-/

namespace A277709.P17633262993776791457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277710 (A038722 (n + 1)).toNat

end

end A277709.P17633262993776791457

/-! ## A277709.P15643477645302089452

`A277710(A061579(n)+1)`
-/

namespace A277709.P15643477645302089452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277710 (A061579 n + 1).toNat

end

end A277709.P15643477645302089452

/-! ## A277709.P10212780633823800407

`A277710(A114327(n)+1+n)`
-/

namespace A277709.P10212780633823800407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277710 (A114327 n + 1 + (n : ℤ)).toNat

end

end A277709.P10212780633823800407

/-! ## A277709.P207944542340149272

`A277710(A002024(n+1)²-n)`
-/

namespace A277709.P207944542340149272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277710 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277709.P207944542340149272

/-! ## A277709.P8812787159167435869

`A277710(A000194(2*(n+1))²-n)`
-/

namespace A277709.P8812787159167435869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277710 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A277709.P8812787159167435869

/-! ## A277709.P15385663665398858596

`A277710(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A277709.P15385663665398858596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277710 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A277709.P15385663665398858596

/-!
# A277710: Square array A(r,c), where each row r lists all numbers k for which A264977(k) = r, read by downwards antidiagonals: A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277710, there is no canonical definition to state claims against.
-/

/-! ## A277710.P16800960998249591085

`A277709(A038722(n+1))`
-/

namespace A277710.P16800960998249591085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A038722 (n + 1)).toNat

end

end A277710.P16800960998249591085

/-! ## A277710.P800233274471478729

`A277709(A061579(n)+1)`
-/

namespace A277710.P800233274471478729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A061579 n + 1).toNat

end

end A277710.P800233274471478729

/-! ## A277710.P12073553276102670861

`A277709(A002024(n+1)²-n)`
-/

namespace A277710.P12073553276102670861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277710.P12073553276102670861

/-! ## A277710.P13978918513164085377

`A277709(A099375(n)+A083920(n))`
-/

namespace A277710.P13978918513164085377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A099375 n + A083920 n).toNat

end

end A277710.P13978918513164085377

/-! ## A277710.P15002678772247357026

`A277709(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A277710.P15002678772247357026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A277710.P15002678772247357026

/-!
# A277711: a(n) = position of the first occurrence of n in A264977.

The programs for A277711, there is no canonical definition to state claims against.
-/

/-! ## A277711.P17264115046551631592

`A277709(A152947(n+1))-floor(acot(n))`
-/

namespace A277711.P17264115046551631592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A152947 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A277711.P17264115046551631592

/-! ## A277711.P11275307322142745405

`A277709(∑[n-1]+2)-∏{d}[n, A001222(#)]`
-/

namespace A277711.P11275307322142745405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - ∏ d ∈ Nat.divisors (f2 n), A001222 d

end

end A277711.P11275307322142745405

/-! ## A277711.P15069986285549217509

`A277709(A152947(a((2*n)%n)+n+1))` with `a(0)=0`
-/

namespace A277711.P15069986285549217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A277709 (A152947 (a (2 * n % n) + (n : ℤ) + 1).toNat).toNat

end

end A277711.P15069986285549217509

/-! ## A277711.P12482409378188961503

`A277709(A152947(n+1))-A000007(n)`
-/

namespace A277711.P12482409378188961503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A152947 (n + 1)).toNat - A000007 n

end

end A277711.P12482409378188961503

/-! ## A277711.P13821896961338884249

`A277709(A152947(n+1))%A016756(n)`
-/

namespace A277711.P13821896961338884249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277709 (A152947 (n + 1)).toNat) (A016756 n)

end

end A277711.P13821896961338884249

/-! ## A277711.P6717032027932996116

`A000040(n+1)%2*A277709(A152947(n+1))`
-/

namespace A277711.P6717032027932996116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A277709 (A152947 (n + 1)).toNat

end

end A277711.P6717032027932996116

/-! ## A277711.P1896882764779147984

`A277709(A152947(n+1))-A000045(C(2, n+2))`
-/

namespace A277711.P1896882764779147984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A152947 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A277711.P1896882764779147984

/-! ## A277711.P6306430044972026505

`∑{e}[A006530(n+1), A277709(#*A152947(n+1))]`
-/

namespace A277711.P6306430044972026505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277709 ((Nat.factorization (f1 n).natAbs p : ℤ) * A152947 (n + 1)).toNat

end

end A277711.P6306430044972026505

/-! ## A277711.P8858517574326437182

`∑{e}[A020639(n+1), A277709(#*A152947(n+1))]`
-/

namespace A277711.P8858517574326437182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277709 ((Nat.factorization (f1 n).natAbs p : ℤ) * A152947 (n + 1)).toNat

end

end A277711.P8858517574326437182

/-! ## A277711.P10566668826692621132

`∑{e}[A006530(n+1), A277709(A152947(n+1)/#)]`
-/

namespace A277711.P10566668826692621132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277709 (SequenceMachineLib.roundAway ((A152947 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A277711.P10566668826692621132

/-!
# A277712: Positions of 2's in A264977; positions of 3's in A277330.

The programs for A277712, there is no canonical definition to state claims against.
-/

/-! ## A277712.P5990355382702076494

`2*A277701(n+1)`
-/

namespace A277712.P5990355382702076494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277701 (n + 1)

end

end A277712.P5990355382702076494

/-! ## A277712.P1523214999922632944

`lcm(2, A277701(A000027(n+1)))`
-/

namespace A277712.P1523214999922632944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A277701 (A000027 (n + 1)).toNat)

end

end A277712.P1523214999922632944

/-! ## A277712.P338137333401309798

`lcm(A000005(A079375(n)), A277701(n+1))`
-/

namespace A277712.P338137333401309798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A079375 n).toNat) (A277701 (n + 1))

end

end A277712.P338137333401309798

/-! ## A277712.P7621451621243767256

`A277701(A000027(n+1))+A277701(n+1)`
-/

namespace A277712.P7621451621243767256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277701 (A000027 (n + 1)).toNat + A277701 (n + 1)

end

end A277712.P7621451621243767256

/-! ## A277712.P1779978064489659685

`A277701(A130446(n+1))+A277701(n+1)`
-/

namespace A277712.P1779978064489659685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277701 (A130446 (n + 1)).toNat + A277701 (n + 1)

end

end A277712.P1779978064489659685

/-! ## A277712.P3719387489126339072

`A277816(a(n-1))` with `a(0)=2`
-/

namespace A277712.P3719387489126339072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A277816 (a (n - 1)).toNat

end

end A277712.P3719387489126339072

/-! ## A277712.P1245029990425562958

`eq[2, A277826(n)]`
-/

namespace A277712.P1245029990425562958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277712.P1245029990425562958

/-! ## A277712.P16564399166106421879

`eq[2, A277884(n)]`
-/

namespace A277712.P16564399166106421879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277712.P16564399166106421879

/-! ## A277712.P3723126088870279188

`record[2*A005408(n)/A283975(n)]`
-/

namespace A277712.P3723126088870279188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A005408 n : ℚ) / (A283975 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277712.P3723126088870279188

/-!
# A277713: Positions of 3's in A264977; positions of 6's in A277330.

The programs for A277713, there is no canonical definition to state claims against.
-/

/-! ## A277713.P13361536809431150830

`3*A277714(n+1)`
-/

namespace A277713.P13361536809431150830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277714 (n + 1)

end

end A277713.P13361536809431150830

/-! ## A277713.P18338965556117187493

`A277714(n+1)/3^(A278482(A000096(n))-1)`
-/

namespace A277713.P18338965556117187493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277714 (n + 1) : ℚ) / (3 : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ)

end

end A277713.P18338965556117187493

/-! ## A277713.P13970932850515477570

`A269379(A277714(n+1)+1)`
-/

namespace A277713.P13970932850515477570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A277714 (n + 1) + 1).toNat

end

end A277713.P13970932850515477570

/-! ## A277713.P8149219427807033539

`A277816(a(n-1))` with `a(0)=3`
-/

namespace A277713.P8149219427807033539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A277816 (a (n - 1)).toNat

end

end A277713.P8149219427807033539

/-! ## A277713.P17539844390431623392

`A269360(A277714(n+1)+1)-1`
-/

namespace A277713.P17539844390431623392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A277714 (n + 1) + 1).toNat - 1

end

end A277713.P17539844390431623392

/-! ## A277713.P16280756776216661397

`A277709(∑[n+3]+1)`
-/

namespace A277713.P16280756776216661397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277713.P16280756776216661397

/-! ## A277713.P14301158634682275106

`A277709(Δ[A008778(n)])%A017043(n)`
-/

namespace A277713.P14301158634682275106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277709 (f1 (n + 1) - f1 n).toNat) (A017043 n)

end

end A277713.P14301158634682275106

/-! ## A277713.P3781573906705494282

`A020985(n)²*A277709(Δ[A008778(n)])`
-/

namespace A277713.P3781573906705494282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A277709 (f1 (n + 1) - f1 n).toNat

end

end A277713.P3781573906705494282

/-! ## A277713.P14196071837409269747

`A033999(n)²*A277709(Δ[A008778(n)])`
-/

namespace A277713.P14196071837409269747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A277709 (f1 (n + 1) - f1 n).toNat

end

end A277713.P14196071837409269747

/-! ## A277713.P11763275227940312962

`A277709(A027379(n+4)-2)/2`
-/

namespace A277713.P11763275227940312962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277709 (A027379 (n + 4) - 2).toNat : ℚ) / 2

end

end A277713.P11763275227940312962

/-!
# A277714: a(n) = A277713(n)/3.

The programs for A277714, there is no canonical definition to state claims against.
-/

/-! ## A277714.P7694806640628720632

`A277713(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277714.P7694806640628720632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277713 (n + 1) : ℚ) / 3

end

end A277714.P7694806640628720632

/-! ## A277714.P11679459100420288189

`ceil(A277713(Δ[n²]-n)/3)`
-/

namespace A277714.P11679459100420288189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277713 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3⌉

end

end A277714.P11679459100420288189

/-! ## A277714.P2496506188473675915

`3^A008683(A031927(n))*A277713(n+1)`
-/

namespace A277714.P2496506188473675915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ) * (A277713 (n + 1) : ℚ)

end

end A277714.P2496506188473675915

/-! ## A277714.P10110822783492230189

`3^A008683(A000040(n+1))*A277713(n+1)`
-/

namespace A277714.P10110822783492230189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A277713 (n + 1) : ℚ)

end

end A277714.P10110822783492230189

/-! ## A277714.P9118555623588486297

`3^A008683(A199218(n+1))*A277713(n+1)`
-/

namespace A277714.P9118555623588486297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A199218 (n + 1)).toNat : ℤ) * (A277713 (n + 1) : ℚ)

end

end A277714.P9118555623588486297

/-! ## A277714.P16792954858779227430

`3^A008683(A006530(n+5))*A277713(n+1)`
-/

namespace A277714.P16792954858779227430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A006530 (n + 5)).toNat : ℤ) * (A277713 (n + 1) : ℚ)

end

end A277714.P16792954858779227430

/-! ## A277714.P5544537721204739010

`3^(A278482(A000096(n))-1)*A277713(n+1)`
-/

namespace A277714.P5544537721204739010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ) * (A277713 (n + 1) : ℚ)

end

end A277714.P5544537721204739010

/-! ## A277714.P10341145686799084233

`3^A008683(A261184(n+1))*A277713(n+1)`
-/

namespace A277714.P10341145686799084233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A261184 (n + 1)).toNat : ℤ) * (A277713 (n + 1) : ℚ)

end

end A277714.P10341145686799084233

/-! ## A277714.P11607273139061577094

`A277816(3*a(n-1))/3` with `a(0)=1`
-/

namespace A277714.P11607273139061577094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A277816 (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat : ℚ) / 3

end

end A277714.P11607273139061577094

/-! ## A277714.P12921989440462665142

`A277709(∑[n+3]+1)/3`
-/

namespace A277714.P12921989440462665142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277709 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A277714.P12921989440462665142

/-!
# A277715: Row 5 of A277710: Positions of 5's in A264977; positions of 10's in A277330.

The programs for A277715, there is no canonical definition to state claims against.
-/

/-! ## A277715.P8746884701965209668

`3*A277716(n+1)`
-/

namespace A277715.P8746884701965209668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277716 (n + 1)

end

end A277715.P8746884701965209668

/-! ## A277715.P17837508122186506395

`A277716(n+1)/3^A008683(A031927(n))`
-/

namespace A277715.P17837508122186506395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277716 (n + 1) : ℚ) / (3 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ)

end

end A277715.P17837508122186506395

/-! ## A277715.P11883621743137429534

`A277716(n+1)/3^(A278482(A000096(n))-1)`
-/

namespace A277715.P11883621743137429534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277716 (n + 1) : ℚ) / (3 : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ)

end

end A277715.P11883621743137429534

/-! ## A277715.P11175507527406066691

`A269379(A277716(n+1)+1)`
-/

namespace A277715.P11175507527406066691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A277716 (n + 1) + 1).toNat

end

end A277715.P11175507527406066691

/-! ## A277715.P8617484846821514739

`A000265(A277716(n+1)+A277716(n+1)+A277716(n+1))`
-/

namespace A277715.P8617484846821514739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A277716 (n + 1) + (A277716 (n + 1) + A277716 (n + 1))).toNat

end

end A277715.P8617484846821514739

/-! ## A277715.P9203122148469268645

`A277816(a(n-1))` with `a(0)=9`
-/

namespace A277715.P9203122148469268645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A277816 (a (n - 1)).toNat

end

end A277715.P9203122148469268645

/-! ## A277715.P8527954249593812165

`A277709(Δ[A023545(n+1)])`
-/

namespace A277715.P8527954249593812165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (f1 (n + 1) - f1 n).toNat

end

end A277715.P8527954249593812165

/-! ## A277715.P16837314876126599898

`A277709(A000096(n+4)-3)`
-/

namespace A277715.P16837314876126599898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A000096 (n + 4) - 3).toNat

end

end A277715.P16837314876126599898

/-! ## A277715.P2356084722860623675

`A277709(A000217(n+5)-4)`
-/

namespace A277715.P2356084722860623675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277709 (A000217 (n + 5) - 4).toNat

end

end A277715.P2356084722860623675

/-!
# A277716: a(n) = A277715(n) / 3.

The programs for A277716, there is no canonical definition to state claims against.
-/

/-! ## A277716.P1680939417470588421

`A277715(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277716.P1680939417470588421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277715 (n + 1) : ℚ) / 3

end

end A277716.P1680939417470588421

/-! ## A277716.P2147354551722635442

`floor(A277715(1-A001489(n))/3)`
-/

namespace A277716.P2147354551722635442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277715 (1 - A001489 n).toNat : ℚ) / 3⌋

end

end A277716.P2147354551722635442

/-! ## A277716.P1846217785392324749

`or(A277715(1-A001489(n))/3, A000122(n))`
-/

namespace A277716.P1846217785392324749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A277715 (1 - A001489 n).toNat : ℚ) / 3)) (A000122 n)

end

end A277716.P1846217785392324749

/-! ## A277716.P9004042714353236019

`A277715(1-A001489(n))/3*A079978(3*n)`
-/

namespace A277716.P9004042714353236019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277715 (1 - A001489 n).toNat : ℚ) / 3 * (A079978 (3 * n) : ℚ)

end

end A277716.P9004042714353236019

/-! ## A277716.P1239534890193031044

`3^(A278482(A000096(n))-1)*A277715(n+1)`
-/

namespace A277716.P1239534890193031044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ) * (A277715 (n + 1) : ℚ)

end

end A277716.P1239534890193031044

/-! ## A277716.P2822856797165479773

`A277816(3*a(n-1))/3` with `a(0)=3`
-/

namespace A277716.P2822856797165479773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A277816 (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat : ℚ) / 3

end

end A277716.P2822856797165479773

/-! ## A277716.P7306175133321440928

`A277709(A046691(n+3))/3`
-/

namespace A277716.P7306175133321440928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277709 (A046691 (n + 3)).toNat : ℚ) / 3

end

end A277716.P7306175133321440928

/-! ## A277716.P14672614131830999792

`A277709(Δ[A023545(n+1)])/3`
-/

namespace A277716.P14672614131830999792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277709 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A277716.P14672614131830999792

/-! ## A277716.P374001092798195812

`A277709(A000096(n+4)-3)/3`
-/

namespace A277716.P374001092798195812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277709 (A000096 (n + 4) - 3).toNat : ℚ) / 3

end

end A277716.P374001092798195812

/-! ## A277716.P6745647371777881189

`A277709(A000217(n+5)-4)/3`
-/

namespace A277716.P6745647371777881189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277709 (A000217 (n + 5) - 4).toNat : ℚ) / 3

end

end A277716.P6745647371777881189

/-!
# A277717: Primes that only occur once in A094877.

The programs for A277717, there is no canonical definition to state claims against.
-/

/-! ## A277717.P17337579899708994287

`p?[A328335(A333227(n+1))]`
-/

namespace A277717.P17337579899708994287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A333227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277717.P17337579899708994287

/-! ## A277717.P9025935624911225191

`p?[A328335(comp[A335239(n+1)])]`
-/

namespace A277717.P9025935624911225191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277717.P9025935624911225191

/-! ## A277717.P2703757970039768618

`∩[A000040(n+1), A328335(A333227(n+1))]`
-/

namespace A277717.P2703757970039768618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A333227 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277717.P2703757970039768618

/-! ## A277717.P18315964537515769785

`∩[A065091(n+1), A328335(A333227(n+1))]`
-/

namespace A277717.P18315964537515769785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A333227 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277717.P18315964537515769785

/-! ## A277717.P9294402004402764771

`∩[A160656(n+1), A328335(A333227(n+1))]`
-/

namespace A277717.P9294402004402764771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A333227 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277717.P9294402004402764771

/-!
# A277718: Bounding prime for the first k-Ramanujan prime.

The programs for A277718, there is no canonical definition to state claims against.
-/

/-! ## A277718.P7318908226609164105

`A000040(A277719(n+1))`
-/

namespace A277718.P7318908226609164105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A277719 (n + 1)).toNat

end

end A277718.P7318908226609164105

/-! ## A277718.P2278049310087291881

`A151800(A209407(n+1))`
-/

namespace A277718.P2278049310087291881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A209407 (n + 1)).toNat

end

end A277718.P2278049310087291881

/-! ## A277718.P16453167523106594017

`A008578(A277719(n+1)+1)`
-/

namespace A277718.P16453167523106594017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A277719 (n + 1) + 1).toNat

end

end A277718.P16453167523106594017

/-! ## A277718.P17787318808705476275

`A045344(A277719(n+1)-1)`
-/

namespace A277718.P17787318808705476275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A277719 (n + 1) - 1).toNat

end

end A277718.P17787318808705476275

/-! ## A277718.P10713898128819466962

`A046022(A277719(n+1)+2)`
-/

namespace A277718.P10713898128819466962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A277719 (n + 1) + 2).toNat

end

end A277718.P10713898128819466962

/-!
# A277719: Index for the bound for the first k-Ramanujan prime.

The programs for A277719, there is no canonical definition to state claims against.
-/

/-! ## A277719.P8977794909562760396

`A000720(A277718(n+1))`
-/

namespace A277719.P8977794909562760396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A277718 (n + 1)).toNat

end

end A277719.P8977794909562760396

/-! ## A277719.P18342958449141766377

`A304106(A209407(n+1))`
-/

namespace A277719.P18342958449141766377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A209407 (n + 1)).toNat

end

end A277719.P18342958449141766377

/-! ## A277719.P6145455722516976282

`A061395(p?[A277718(n+1)])`
-/

namespace A277719.P6145455722516976282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A277719.P6145455722516976282

/-! ## A277719.P8451339672665586237

`A061395(or(1, A277718(n+1)))`
-/

namespace A277719.P8451339672665586237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A277718 (n + 1))).toNat

end

end A277719.P8451339672665586237

/-! ## A277719.P13659948308350098062

`∑{d}[A277718(n+1), A061395(#)]`
-/

namespace A277719.P13659948308350098062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A277719.P13659948308350098062

/-!
# A277721: a(n) = floor(n*t^3) - A003146(n), where t = 1.8392867... is the tribonacci constant A058265.

The programs for A277721, there is no canonical definition to state claims against.
-/

/-! ## A277721.P5494754011683168894

`A277723(n+1)-A003146(n+1)`
-/

namespace A277721.P5494754011683168894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) - A003146 (n + 1)

end

end A277721.P5494754011683168894

/-! ## A277721.P5763686744998521981

`A277723(n+1)-(A278041(n)+1)`
-/

namespace A277721.P5763686744998521981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) - (A278041 n + 1)

end

end A277721.P5763686744998521981

/-! ## A277721.P15031244028194147286

`A277723(n+1)-(A319967(n+1)+2)`
-/

namespace A277721.P15031244028194147286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) - (A319967 (n + 1) + 2)

end

end A277721.P15031244028194147286

/-! ## A277721.P4139066591034141746

`A277723(n+1)-(A140100(A003145(n+1)+1)+n)`
-/

namespace A277721.P4139066591034141746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) - (A140100 (A003145 (n + 1) + 1).toNat + (n : ℤ))

end

end A277721.P4139066591034141746

/-! ## A277721.P159694887188213425

`A277723(n+1)-(A140101(n+1)+A003145(n+1))`
-/

namespace A277721.P159694887188213425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) - (A140101 (n + 1) + A003145 (n + 1))

end

end A277721.P159694887188213425

/-! ## A277721.P4913170658292953889

`A277723(n+1)-(A140103(n+1)+A003144(n+1))`
-/

namespace A277721.P4913170658292953889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) - (A140103 (n + 1) + A003144 (n + 1))

end

end A277721.P4913170658292953889

/-! ## A277721.P16967775435439676578

`A277723(n+1)+2-A003145(A003144(n+1)+1)`
-/

namespace A277721.P16967775435439676578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (n + 1) + (2 - A003145 (A003144 (n + 1) + 1).toNat)

end

end A277721.P16967775435439676578

/-!
# A277722: a(n) = floor(n*tau^2) where tau is the tribonacci constant (A058265).

The programs for A277722, the canonical program `A277722.P12636272293561228807` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277722 has offset 0).

The definition of A277722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277722.P12636272293561228807

`floor(n*(1/3*(1+(19-3*sqrt(33))^(1/3)+(19+3*sqrt(33))^(1/3)))²)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277722

/-- `floor(n*(1/3*(1+(19-3*sqrt(33))^(1/3)+(19+3*sqrt(33))^(1/3)))²)` -/
def P12636272293561228807.Spec : Prop :=
  ∀ n, P12636272293561228807.a n = A277722 n

theorem P12636272293561228807.correct : P12636272293561228807.Spec := by
  intro n
  simp only [A277722]

end A277722

/-! ## A277722.P15777277408528812288

`A289207(A108173(n+1))`
-/

namespace A277722.P15777277408528812288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A108173 (n + 1)).toNat

end

end A277722.P15777277408528812288

namespace A277722

/-- `A289207(A108173(n+1))` -/
def P15777277408528812288.Spec : Prop :=
  ∀ n, P15777277408528812288.a n = A277722 n

end A277722

/-!
# A277723: a(n) = floor(n*tau^3) where tau is the tribonacci constant (A058265).

The programs for A277723, there is no canonical definition to state claims against.
-/

/-! ## A277723.P16268448410847977339

`A006368(4*n)+A002264(A002264(2*n))`
-/

namespace A277723.P16268448410847977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (4 * n) + A002264 (A002264 (2 * n)).toNat

end

end A277723.P16268448410847977339

/-! ## A277723.P3300447568832083284

`A007494(4*n)+A002264(A002264(2*n))`
-/

namespace A277723.P3300447568832083284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (4 * n) + A002264 (A002264 (2 * n)).toNat

end

end A277723.P3300447568832083284

/-! ## A277723.P8081812671221248112

`A032766(4*n)+A002264(A002264(2*n))`
-/

namespace A277723.P8081812671221248112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (4 * n) + A002264 (A002264 (2 * n)).toNat

end

end A277723.P8081812671221248112

/-! ## A277723.P7689771509679641117

`A085268(4*n)+4*n`
-/

namespace A277723.P7689771509679641117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (4 * n + 32) + (4 * n : ℤ)

end

end A277723.P7689771509679641117

/-! ## A277723.P10114075974755525565

`A008618(4*n)+6*n-1`
-/

namespace A277723.P10114075974755525565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (4 * n) + ((6 * n : ℤ) - 1)

end

end A277723.P10114075974755525565

/-! ## A277723.P5651722029487566875

`A244953(4*n)+A002264(A002264(2*n))`
-/

namespace A277723.P5651722029487566875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244953 (4 * n) + A002264 (A002264 (2 * n)).toNat

end

end A277723.P5651722029487566875

/-! ## A277723.P15348030176502028281

`A004773(5*n)-A004523(A004396(n+1))`
-/

namespace A277723.P15348030176502028281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (5 * n) - A004523 (A004396 (n + 1)).toNat

end

end A277723.P15348030176502028281

/-! ## A277723.P9809724510954423572

`A004523(A004772(4*n+1))+A004523(4*n)`
-/

namespace A277723.P9809724510954423572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004772 (4 * n + 1)).toNat + A004523 (4 * n)

end

end A277723.P9809724510954423572

/-! ## A277723.P11231987882896696094

`A004523(A047517(4*n+1))+A004523(4*n)`
-/

namespace A277723.P11231987882896696094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A047517 (4 * n + 1)).toNat + A004523 (4 * n)

end

end A277723.P11231987882896696094

/-! ## A277723.P9351846649814646847

`A004523(n)+A004523(A008591(n)-A004523(n))`
-/

namespace A277723.P9351846649814646847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + A004523 (A008591 n - A004523 n).toNat

end

end A277723.P9351846649814646847

/-! ## A277723.P16565904323028070937

`A057355(A008587(2*n))+A002264(A002264(2*n))`
-/

namespace A277723.P16565904323028070937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A008587 (2 * n)).toNat + A002264 (A002264 (2 * n)).toNat

end

end A277723.P16565904323028070937

/-! ## A277723.P14430247054481938661

`A002264(A002264(2*n))+A002264(A008591(2*n))`
-/

namespace A277723.P14430247054481938661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (2 * n)).toNat + A002264 (A008591 (2 * n)).toNat

end

end A277723.P14430247054481938661

/-! ## A277723.P5808356576133982272

`A002264(A002264(2*n))+A002264(A016921(3*n))`
-/

namespace A277723.P5808356576133982272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (2 * n)).toNat + A002264 (A016921 (3 * n)).toNat

end

end A277723.P5808356576133982272

/-! ## A277723.P18361180689233370570

`A002264(A008600(n)+A002264(2*n))`
-/

namespace A277723.P18361180689233370570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008600 n + A002264 (2 * n)).toNat

end

end A277723.P18361180689233370570

/-! ## A277723.P11347413258224882845

`A002264(A008591(2*n)+A002264(2*n))`
-/

namespace A277723.P11347413258224882845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008591 (2 * n) + A002264 (2 * n)).toNat

end

end A277723.P11347413258224882845

/-! ## A277723.P3223359245497224683

`floor(log2(A094975(n)))+5*n`
-/

namespace A277723.P3223359245497224683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A094975 n).toNat + 5 * n

end

end A277723.P3223359245497224683

/-!
# A277724: Intersection of A158919 and A277722.

The programs for A277724, there is no canonical definition to state claims against.
-/

/-! ## A277724.P8803814285351441207

`∩[A158919(n), A277722(n)]`
-/

namespace A277724.P8803814285351441207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277724.P8803814285351441207

/-!
# A277725: Intersection of A158919 and A277723.

The programs for A277725, there is no canonical definition to state claims against.
-/

/-! ## A277725.P10226182244296858002

`∩[A158919(n), A277723(n)]`
-/

namespace A277725.P10226182244296858002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277725.P10226182244296858002

/-!
# A277726: Intersection of A277722 and A277723.

The programs for A277726, there is no canonical definition to state claims against.
-/

/-! ## A277726.P17895935416724209827

`∩[A277722(n), A277723(n)]`
-/

namespace A277726.P17895935416724209827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277726.P17895935416724209827

/-!
# A277727: Union of A158919, A277722, A277723.

The programs for A277727, there is no canonical definition to state claims against.
-/

/-! ## A277727.P16436999612555295384

`comp[A277728(n+1)]`
-/

namespace A277727.P16436999612555295384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277727.P16436999612555295384

/-! ## A277727.P4390616105112687690

`comp[record[A277728(A028920(n))]]`
-/

namespace A277727.P4390616105112687690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277727.P4390616105112687690

/-! ## A277727.P7579070301167792466

`comp[record[A277728(A193592(n))]]`
-/

namespace A277727.P7579070301167792466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277727.P7579070301167792466

/-! ## A277727.P17370171843315916043

`eq[0, char[A277728(A277750(n+1))]]`
-/

namespace A277727.P17370171843315916043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (A277750 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277727.P17370171843315916043

/-! ## A277727.P17283177441529372307

`eq[0, char[A277728(A289626(n+1))]]`
-/

namespace A277727.P17283177441529372307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (A289626 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277727.P17283177441529372307

/-! ## A277727.P4300040305762845101

`eq[char[A277728(n+1)], A000038(n+1)]`
-/

namespace A277727.P4300040305762845101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A277727.P4300040305762845101

/-! ## A277727.P5097163549332154030

`eq[char[A277728(n+1)], A007814(2*n+1)]`
-/

namespace A277727.P5097163549332154030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277728 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A277727.P5097163549332154030

/-!
# A277728: Numbers not in any of A158919, A277722, A277723.

The programs for A277728, there is no canonical definition to state claims against.
-/

/-! ## A277728.P1205649027400333539

`comp[A277727(n+1)]`
-/

namespace A277728.P1205649027400333539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277728.P1205649027400333539

/-!
# A277729: Irregular triangle read by rows: T(n,k) = number of times a gap of k occurs between the first n successive primes.

The programs for A277729, there is no canonical definition to state claims against.
-/

/-! ## A277729.P4070000126075058759

`A220968(A220946(n))%((-1)^n+3)`
-/

namespace A277729.P4070000126075058759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220968 (A220946 n).toNat) ((-1) ^ n + 3)

end

end A277729.P4070000126075058759

/-! ## A277729.P953179623107196727

`A342084(n+2)-A011661(A001405(n))`
-/

namespace A277729.P953179623107196727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342084 (n + 2) - A011661 (A001405 n).toNat

end

end A277729.P953179623107196727

/-! ## A277729.P7014468254622923490

`A038711(2*n+1)%A166237(A275778(n))`
-/

namespace A277729.P7014468254622923490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038711 (2 * n + 1)) (A166237 (A275778 n).toNat)

end

end A277729.P7014468254622923490

/-! ## A277729.P14980594794799142137

`A027414(A090597(n+4))`
-/

namespace A277729.P14980594794799142137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (A090597 (n + 4)).toNat

end

end A277729.P14980594794799142137

/-!
# A277730: Irregular triangle read by rows: T(n,k) = number of times a gap of 2k occurs between the first n successive odd primes.

The programs for A277730, there is no canonical definition to state claims against.
-/

/-! ## A277730.P2368608808333288882

`A277729(2*(n+2))`
-/

namespace A277730.P2368608808333288882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277729 (2 * (n + 2))

end

end A277730.P2368608808333288882

/-! ## A277730.P11992615232796668767

`∑{d}[A277729(A005843(n+2)), A000010(#)]`
-/

namespace A277730.P11992615232796668767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277729 (A005843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A277730.P11992615232796668767

/-! ## A277730.P15438059157884502475

`abs(A277729(A005843(n+2))/A087960(n))`
-/

namespace A277730.P15438059157884502475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A277729 (A005843 (n + 2)).toNat : ℚ) / (A087960 n : ℚ)|

end

end A277730.P15438059157884502475

/-! ## A277730.P652564130432078745

`abs(A277729(A005843(n+2))/A008836(n+1))`
-/

namespace A277730.P652564130432078745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A277729 (A005843 (n + 2)).toNat : ℚ) / (A008836 (n + 1) : ℚ)|

end

end A277730.P652564130432078745

/-! ## A277730.P2966639621699559611

`A277729(A005843(n+2))+A000045(C(n, n+1))`
-/

namespace A277730.P2966639621699559611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277729 (A005843 (n + 2)).toNat + A000045 (Nat.choose n (n + 1))

end

end A277730.P2966639621699559611

/-! ## A277730.P770769697261862145

`A280508(A280508(n))+A277729(A005843(n+2))`
-/

namespace A277730.P770769697261862145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (A280508 n).toNat + A277729 (A005843 (n + 2)).toNat

end

end A277730.P770769697261862145

/-!
# A277731: Fixed point of the morphism 0 -> 01, 1 -> 012, 2 -> 0; starting with a(1) = 0.

The programs for A277731, there is no canonical definition to state claims against.
-/

/-! ## A277731.P14875182135415900317

`A277721(Δ[A277732(n+1)]²)`
-/

namespace A277731.P14875182135415900317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277721 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A277731.P14875182135415900317

/-! ## A277731.P4546932755301083612

`A043642(Δ[A277732(n+1)]+1)%3`
-/

namespace A277731.P4546932755301083612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043642 (f1 (n + 1) - f1 n + 1).toNat) 3

end

end A277731.P4546932755301083612

/-! ## A277731.P15874616992797272730

`(A247681(n+1)+Δ[A277732(n+1)])%3`
-/

namespace A277731.P15874616992797272730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247681 (n + 1) + (f1 (n + 1) - f1 n)) 3

end

end A277731.P15874616992797272730

/-! ## A277731.P2539801942893321915

`A080843(A277732(n+2)+2-A277732(n+1))`
-/

namespace A277731.P2539801942893321915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A277732 (n + 2) + (2 - A277732 (n + 1))).toNat

end

end A277731.P2539801942893321915

/-! ## A277731.P6313564772352404301

`A114206((A277732(n+1)+3)%A277732(n+2)+2)`
-/

namespace A277731.P6313564772352404301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114206 (Int.tmod (A277732 (n + 1) + 3) (A277732 (n + 2)) + 2).toNat

end

end A277731.P6313564772352404301

/-!
# A277732: Positions of 0's in A277731.

The programs for A277732, there is no canonical definition to state claims against.
-/

/-! ## A277732.P2206153751113557720

`eq[1, A277731(n+1)+1]+1`
-/

namespace A277732.P2206153751113557720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277732.P2206153751113557720

/-! ## A277732.P11900095235470955106

`record[n+1-a(A277731(n))]` with `a(0)=1, a(1)=3`
-/

namespace A277732.P11900095235470955106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n + 1 : ℤ) - f1 (A277731 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277732.P11900095235470955106

/-! ## A277732.P6076161248626765510

`record[n+1-A277731(n+1)*A298792(n)]`
-/

namespace A277732.P6076161248626765510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A277731 (n + 1) * A298792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277732.P6076161248626765510

/-! ## A277732.P4192010417341328406

`record[n+1-A124518(n+1)*A277731(n+1)]`
-/

namespace A277732.P4192010417341328406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A124518 (n + 1) * A277731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277732.P4192010417341328406

/-! ## A277732.P10567510535639283533

`eq[n, A277731(A028310(n))+A028310(n)]`
-/

namespace A277732.P10567510535639283533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (A028310 n).toNat + A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277732.P10567510535639283533

/-! ## A277732.P16868189802330157990

`record[n+1-A137687(n*A277731(n+1))]`
-/

namespace A277732.P16868189802330157990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A137687 ((n : ℤ) * A277731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277732.P16868189802330157990

/-! ## A277732.P14685124313722462442

`record[(n+1)/A298792(n*A277731(n+1))]`
-/

namespace A277732.P14685124313722462442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A298792 ((n : ℤ) * A277731 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277732.P14685124313722462442

/-!
# A277733: Positions of 1's in A277731.

The programs for A277733, there is no canonical definition to state claims against.
-/

/-! ## A277733.P3851803172650117647

`record[(A277732(n+1)+1)%A277732(n+2)]`
-/

namespace A277733.P3851803172650117647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277732 (n + 1) + 1) (A277732 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277733.P3851803172650117647

/-! ## A277733.P3667803825003412416

`eq[1, A277731(n+1)]+1`
-/

namespace A277733.P3667803825003412416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277733.P3667803825003412416

/-! ## A277733.P17452440327957461110

`record[n/a(A277731(n))]` with `a(0)=2, a(1)=1`
-/

namespace A277733.P17452440327957461110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A277731 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277733.P17452440327957461110

/-! ## A277733.P6777935645083756094

`eq[1, A277731(gcd(n, a(n-1)))]` with `a(0)=2`
-/

namespace A277733.P6777935645083756094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A277731 (Int.gcd (n : ℤ) (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277733.P6777935645083756094

/-! ## A277733.P5222685944435801901

`eq[n*A277731(A028310(n)), A028310(n)]`
-/

namespace A277733.P5222685944435801901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277731 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277733.P5222685944435801901

/-! ## A277733.P14455178937618746600

`A055396(p?[A277731(n+1)+A006093(n+1)])`
-/

namespace A277733.P14455178937618746600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A277733.P14455178937618746600

/-!
# A277734: Positions of 2's in A277731.

The programs for A277734, there is no canonical definition to state claims against.
-/

/-! ## A277734.P4482471445810358777

`A277732(A277733(n+1))+2`
-/

namespace A277734.P4482471445810358777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277732 (A277733 (n + 1)).toNat + 2

end

end A277734.P4482471445810358777

/-! ## A277734.P17564597931409917409

`record[n/a(A277731(n))]` with `a(0)=5, a(1)=2, a(2)=1`
-/

namespace A277734.P17564597931409917409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 2, 1] fun n f1 =>
  (n : ℚ) / f1 (A277731 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277734.P17564597931409917409

/-! ## A277734.P4302600295754815413

`eq[2, A277731(n-A179285(a(n-1)+1)+1)]` with `a(0)=1`
-/

namespace A277734.P4302600295754815413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A277731 ((n : ℤ) - A179285 (f2 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277734.P4302600295754815413

/-! ## A277734.P9371270721316434094

`eq[2, A277731(A028310(n))]`
-/

namespace A277734.P9371270721316434094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277734.P9371270721316434094

/-! ## A277734.P1427613095689773445

`eq[2, A277731(A233583(n+1))]`
-/

namespace A277734.P1427613095689773445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277734.P1427613095689773445

/-!
# A277735: Unique fixed point of the morphism 0 -> 01, 1 -> 20, 2 -> 0.

The programs for A277735, there is no canonical definition to state claims against.
-/

/-! ## A277735.P8896241408840429326

`A100619(n+1)-1`
-/

namespace A277735.P8896241408840429326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100619 (n + 1) - 1

end

end A277735.P8896241408840429326

/-! ## A277735.P3533829289822046164

`A001513(n)%A100619(n+1)`
-/

namespace A277735.P3533829289822046164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A100619 (n + 1))

end

end A277735.P3533829289822046164

/-! ## A277735.P14621149175145651746

`A001538(n)%A100619(n+1)`
-/

namespace A277735.P14621149175145651746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A100619 (n + 1))

end

end A277735.P14621149175145651746

/-! ## A277735.P3024640861105732099

`A002146(n)%A100619(n+1)`
-/

namespace A277735.P3024640861105732099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A100619 (n + 1))

end

end A277735.P3024640861105732099

/-! ## A277735.P5663981728143293418

`A002148(n)%A100619(n+1)`
-/

namespace A277735.P5663981728143293418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A100619 (n + 1))

end

end A277735.P5663981728143293418

/-! ## A277735.P7670709571569955575

`A004538(n)%A100619(n+1)`
-/

namespace A277735.P7670709571569955575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A100619 (n + 1))

end

end A277735.P7670709571569955575

/-! ## A277735.P6481937084401559635

`A016969(n)%A100619(n+1)`
-/

namespace A277735.P6481937084401559635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A100619 (n + 1))

end

end A277735.P6481937084401559635

/-! ## A277735.P816457723181304880

`A016971(n)%A100619(n+1)`
-/

namespace A277735.P816457723181304880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A100619 (n + 1))

end

end A277735.P816457723181304880

/-! ## A277735.P3356920726247299376

`A016973(n)%A100619(n+1)`
-/

namespace A277735.P3356920726247299376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A100619 (n + 1))

end

end A277735.P3356920726247299376

/-! ## A277735.P1869034959177190620

`A016975(n)%A100619(n+1)`
-/

namespace A277735.P1869034959177190620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A100619 (n + 1))

end

end A277735.P1869034959177190620

/-! ## A277735.P15235212643771725244

`A017581(n)%A100619(n+1)`
-/

namespace A277735.P15235212643771725244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A100619 (n + 1))

end

end A277735.P15235212643771725244

/-! ## A277735.P16020893685703399896

`A017583(n)%A100619(n+1)`
-/

namespace A277735.P16020893685703399896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A100619 (n + 1))

end

end A277735.P16020893685703399896

/-! ## A277735.P651909858705493355

`A017585(n)%A100619(n+1)`
-/

namespace A277735.P651909858705493355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A100619 (n + 1))

end

end A277735.P651909858705493355

/-! ## A277735.P17025417222952041813

`A017653(n)%A100619(n+1)`
-/

namespace A277735.P17025417222952041813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A100619 (n + 1))

end

end A277735.P17025417222952041813

/-! ## A277735.P15492816036591809114

`A017655(n)%A100619(n+1)`
-/

namespace A277735.P15492816036591809114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A100619 (n + 1))

end

end A277735.P15492816036591809114

/-! ## A277735.P4579975848239549030

`A017657(n)%A100619(n+1)`
-/

namespace A277735.P4579975848239549030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A100619 (n + 1))

end

end A277735.P4579975848239549030

/-! ## A277735.P5734995782012864060

`A031929(n)%A100619(n+1)`
-/

namespace A277735.P5734995782012864060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031929 n) (A100619 (n + 1))

end

end A277735.P5734995782012864060

/-! ## A277735.P10272153605714149774

`A031935(n)%A100619(n+1)`
-/

namespace A277735.P10272153605714149774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 n) (A100619 (n + 1))

end

end A277735.P10272153605714149774

/-! ## A277735.P9345085499565653973

`A038867(n)%A100619(n+1)`
-/

namespace A277735.P9345085499565653973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038867 n) (A100619 (n + 1))

end

end A277735.P9345085499565653973

/-!
# A277736: Positions of 0's in A277735.

The programs for A277736, there is no canonical definition to state claims against.
-/

/-! ## A277736.P17161733364038923882

`eq[0, A277735(n+1)]+1`
-/

namespace A277736.P17161733364038923882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277736.P17161733364038923882

/-! ## A277736.P4916985602612057106

`record[(n+1)/A033686(n*A277735(n+1))]`
-/

namespace A277736.P4916985602612057106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033686 ((n : ℤ) * A277735 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277736.P4916985602612057106

/-! ## A277736.P1063928357608278842

`eq[1, A100619(n+1)]+1`
-/

namespace A277736.P1063928357608278842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277736.P1063928357608278842

/-! ## A277736.P13183496421080954852

`lt[A100619(n+1), A165063(n+1)]+1`
-/

namespace A277736.P13183496421080954852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277736.P13183496421080954852

/-!
# A277737: Positions of 1's in A277735.

The programs for A277737, there is no canonical definition to state claims against.
-/

/-! ## A277737.P12196139716534177247

`A277736(A277736(n+1))+1`
-/

namespace A277737.P12196139716534177247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277736 (A277736 (n + 1)).toNat + 1

end

end A277737.P12196139716534177247

/-! ## A277737.P10868955066778899074

`eq[1, A277735(n+1)]+1`
-/

namespace A277737.P10868955066778899074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277737.P10868955066778899074

/-! ## A277737.P9367291787048260204

`eq[2, A086961(a(A277735(n)))]` with `a(0)=1`
-/

namespace A277737.P9367291787048260204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A086961 (f2 (A277735 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277737.P9367291787048260204

/-! ## A277737.P14749285137207257940

`eq[2, A100619(n+1)]+1`
-/

namespace A277737.P14749285137207257940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277737.P14749285137207257940

/-! ## A277737.P3242100469983638284

`eq[1, A277735(A028310(n))]`
-/

namespace A277737.P3242100469983638284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277737.P3242100469983638284

/-! ## A277737.P18254173809271346937

`eq[1, A277735(A000007(n)+n)]`
-/

namespace A277737.P18254173809271346937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277737.P18254173809271346937

/-!
# A277738: Positions of 2's in A277735.

The programs for A277738, there is no canonical definition to state claims against.
-/

/-! ## A277738.P11708034144023287261

`A277737(A277736(n+1))+1`
-/

namespace A277738.P11708034144023287261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277737 (A277736 (n + 1)).toNat + 1

end

end A277738.P11708034144023287261

/-! ## A277738.P12615417192027648363

`lt[1, A277735(n+1)]+1`
-/

namespace A277738.P12615417192027648363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A277738.P12615417192027648363

/-! ## A277738.P4376366859305998132

`eq[2, A086961(a(A277735(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A277738.P4376366859305998132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A086961 (f2 (A277735 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277738.P4376366859305998132

/-! ## A277738.P8470857094278762141

`lt[2, A100619(n+1)]+1`
-/

namespace A277738.P8470857094278762141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A277738.P8470857094278762141

/-! ## A277738.P18208550171044331890

`eq[2, A277735(A028310(n))]`
-/

namespace A277738.P18208550171044331890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277738.P18208550171044331890

/-! ## A277738.P15334438336294986961

`eq[2, A277735(A000007(n)+n)]`
-/

namespace A277738.P15334438336294986961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277738.P15334438336294986961

/-!
# A277739: Number of isomorphism classes of connected plane 4-regular multigraphs.

The programs for A277739, there is no canonical definition to state claims against.
-/

/-! ## A277739.P9907476737905294464

`or(A164699(n+1)!, A086636(2*n+1))`
-/

namespace A277739.P9907476737905294464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A164699 (n + 1)).toNat : ℤ) (A086636 (2 * n + 1))

end

end A277739.P9907476737905294464

/-!
# A277740: Knot diagrams with n crossings.

The programs for A277740, there is no canonical definition to state claims against.
-/

/-! ## A277740.P4117430464178387316

`A152451(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A277740.P4117430464178387316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A152451 (a (n - 1)).toNat - 1

end

end A277740.P4117430464178387316

/-!
# A277741: Array read by antidiagonals: A(n,k) is the number of unsensed planar maps with n vertices and k faces, n >= 1, k >= 1.

The programs for A277741, there is no canonical definition to state claims against.
-/

/-! ## A277741.P14934764556839451867

`A302042(A379431(n+1)+A379430(n+1))`
-/

namespace A277741.P14934764556839451867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A379431 (n + 1) + A379430 (n + 1)).toNat

end

end A277741.P14934764556839451867

/-! ## A277741.P324511593080852429

`A006370(A379431(n+1)+A379430(n+1))`
-/

namespace A277741.P324511593080852429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A379431 (n + 1) + A379430 (n + 1)).toNat

end

end A277741.P324511593080852429

/-! ## A277741.P13422667487203993872

`A058224(A241108(n+1))`
-/

namespace A277741.P13422667487203993872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058224 (A241108 (n + 1)).toNat

end

end A277741.P13422667487203993872

/-! ## A277741.P9589473493379596538

`A261226(A004741(A124860(n)²))`
-/

namespace A277741.P9589473493379596538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A004741 (A124860 n ^ 2).toNat).toNat

end

end A277741.P9589473493379596538

/-! ## A277741.P618462269374260523

`A000196(A198715(n+1)^A255270(n))`
-/

namespace A277741.P618462269374260523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A198715 (n + 1) : ℚ) ^ (A255270 n : ℤ))).toNat

end

end A277741.P618462269374260523

/-!
# A277742: Number of ancestor secondary classes with respect to non-ancestors.

The programs for A277742, there is no canonical definition to state claims against.
-/

/-! ## A277742.P13535989333012075721

`A096692(n+1)*A276872(A014137(n))`
-/

namespace A277742.P13535989333012075721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096692 (n + 1) * A276872 (A014137 n).toNat

end

end A277742.P13535989333012075721

/-!
# A277743: Number of ancestor secondary classes with respect to splittings S_{2,2}.

The programs for A277743, there is no canonical definition to state claims against.
-/

/-! ## A277743.P18168988940898774939

`A323790(n)+2-A072047(n+1)`
-/

namespace A277743.P18168988940898774939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323790 n + (2 - A072047 (n + 1))

end

end A277743.P18168988940898774939

/-! ## A277743.P12568063266527467114

`A069935(comp[∑[n]])+A056335(n+1)`
-/

namespace A277743.P12568063266527467114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A056335 (n + 1)

end

end A277743.P12568063266527467114

/-! ## A277743.P13720851393006043020

`A134408(n+1)+A323790(n)+1-n`
-/

namespace A277743.P13720851393006043020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (n + 1) + (A323790 n + (1 - (n : ℤ)))

end

end A277743.P13720851393006043020

/-!
# A277745: Trajectory of 1 under repeated application of the morphism 1 -> 1232, 2 -> 1232232, 3 -> 123232.

The programs for A277745, the canonical program `A277745.P5748524634217669141` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277745 has offset 1).

The definition of A277745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277745.P9495039221429260567

`A276790(n)+1`
-/

namespace A277745.P9495039221429260567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276790 n + 1

end

end A277745.P9495039221429260567

namespace A277745

/-- `A276790(n)+1` -/
def P9495039221429260567.Spec : Prop :=
  ∀ n, P9495039221429260567.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P5748524634217669141

`and(3, -A275925(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A277745

/-- `and(3, -A275925(n+1))` -/
def P5748524634217669141.Spec : Prop :=
  ∀ n, P5748524634217669141.a n = A277745 (n + 1)

theorem P5748524634217669141.correct : P5748524634217669141.Spec := by
  intro n
  simp only [A277745, Nat.add_sub_cancel]

end A277745

/-! ## A277745.P5217325062047217130

`a(A080843(A003144(n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A277745.P5217325062047217130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (A080843 (A003144 n).toNat).toNat

end

end A277745.P5217325062047217130

namespace A277745

/-- `a(A080843(A003144(n)))` -/
def P5217325062047217130.Spec : Prop :=
  ∀ n, (P5217325062047217130.a n : ℤ) = A277745 (n + 1)

end A277745

/-! ## A277745.P15390427260303668713

`A105083(a(A092782(n)-1))` with `a(0)=1`
-/

namespace A277745.P15390427260303668713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105083 (a (A092782 n - 1).toNat).toNat

end

end A277745.P15390427260303668713

namespace A277745

/-- `A105083(a(A092782(n)-1))` -/
def P15390427260303668713.Spec : Prop :=
  ∀ n, P15390427260303668713.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P4287165230519477528

`A080843(A140101(n)-n)+1`
-/

namespace A277745.P4287165230519477528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A140101 n - (n : ℤ)).toNat + 1

end

end A277745.P4287165230519477528

namespace A277745

/-- `A080843(A140101(n)-n)+1` -/
def P4287165230519477528.Spec : Prop :=
  ∀ n, P4287165230519477528.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P6070223063652130008

`A092782(A140101(n)+1-n)`
-/

namespace A277745.P6070223063652130008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A140101 n + (1 - (n : ℤ))).toNat

end

end A277745.P6070223063652130008

namespace A277745

/-- `A092782(A140101(n)+1-n)` -/
def P6070223063652130008.Spec : Prop :=
  ∀ n, P6070223063652130008.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P3325633567430474516

`A092782(1-(n-A140101(n)))`
-/

namespace A277745.P3325633567430474516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (1 - ((n : ℤ) - A140101 n)).toNat

end

end A277745.P3325633567430474516

namespace A277745

/-- `A092782(1-(n-A140101(n)))` -/
def P3325633567430474516.Spec : Prop :=
  ∀ n, P3325633567430474516.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P17892384700058098413

`A276794(n)+2-A276791(n)`
-/

namespace A277745.P17892384700058098413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 n + (2 - A276791 n)

end

end A277745.P17892384700058098413

namespace A277745

/-- `A276794(n)+2-A276791(n)` -/
def P17892384700058098413.Spec : Prop :=
  ∀ n, P17892384700058098413.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P5815376042756532885

`Δ[A140102(n)]-A276791(n)+1`
-/

namespace A277745.P5815376042756532885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276791 n + 1

end

end A277745.P5815376042756532885

namespace A277745

/-- `Δ[A140102(n)]-A276791(n)+1` -/
def P5815376042756532885.Spec : Prop :=
  ∀ n, P5815376042756532885.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P8643034995128292854

`(5%(A275925(n+1)-2))^A317193(n+1)+1`
-/

namespace A277745.P8643034995128292854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 5 (A275925 (n + 1) - 2) : ℚ) ^ (A317193 (n + 1) : ℤ) + 1

end

end A277745.P8643034995128292854

namespace A277745

/-- `(5%(A275925(n+1)-2))^A317193(n+1)+1` -/
def P8643034995128292854.Spec : Prop :=
  ∀ n, P8643034995128292854.a n = (A277745 (n + 1) : ℚ)

end A277745

/-! ## A277745.P2844827483595738494

`A092782(A278039(n)+A000007(n))`
-/

namespace A277745.P2844827483595738494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A278039 n + A000007 n).toNat

end

end A277745.P2844827483595738494

namespace A277745

/-- `A092782(A278039(n)+A000007(n))` -/
def P2844827483595738494.Spec : Prop :=
  ∀ n, P2844827483595738494.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P857154530927899828

`A092782(A278039(n)+A276791(n))`
-/

namespace A277745.P857154530927899828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A278039 n + A276791 n).toNat

end

end A277745.P857154530927899828

namespace A277745

/-- `A092782(A278039(n)+A276791(n))` -/
def P857154530927899828.Spec : Prop :=
  ∀ n, P857154530927899828.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P17334640611044752433

`A092782(or(A000007(n), A278039(n)))`
-/

namespace A277745.P17334640611044752433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (Int.lor (A000007 n) (A278039 n)).toNat

end

end A277745.P17334640611044752433

namespace A277745

/-- `A092782(or(A000007(n), A278039(n)))` -/
def P17334640611044752433.Spec : Prop :=
  ∀ n, P17334640611044752433.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P10714587685484416433

`A092782(or(A276791(n), A278039(n)))`
-/

namespace A277745.P10714587685484416433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (Int.lor (A276791 n) (A278039 n)).toNat

end

end A277745.P10714587685484416433

namespace A277745

/-- `A092782(or(A276791(n), A278039(n)))` -/
def P10714587685484416433.Spec : Prop :=
  ∀ n, P10714587685484416433.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P6393393830978090439

`A092782(xor(A000007(n), A278039(n)))`
-/

namespace A277745.P6393393830978090439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (Int.xor (A000007 n) (A278039 n)).toNat

end

end A277745.P6393393830978090439

namespace A277745

/-- `A092782(xor(A000007(n), A278039(n)))` -/
def P6393393830978090439.Spec : Prop :=
  ∀ n, P6393393830978090439.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P1196762464105460252

`A022293(Δ[A140102(n)]-A276791(n))`
-/

namespace A277745.P1196762464105460252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022293 (f1 (n + 1) - f1 n - A276791 n).toNat

end

end A277745.P1196762464105460252

namespace A277745

/-- `A022293(Δ[A140102(n)]-A276791(n))` -/
def P1196762464105460252.Spec : Prop :=
  ∀ n, P1196762464105460252.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P10508186510937337051

`A022306(Δ[A140102(n)]-A276791(n))`
-/

namespace A277745.P10508186510937337051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022306 (f1 (n + 1) - f1 n - A276791 n).toNat

end

end A277745.P10508186510937337051

namespace A277745

/-- `A022306(Δ[A140102(n)]-A276791(n))` -/
def P10508186510937337051.Spec : Prop :=
  ∀ n, P10508186510937337051.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P7228543794787715806

`A020639(A275925(n+1)-A020639(2*(n+1)))`
-/

namespace A277745.P7228543794787715806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275925 (n + 1) - A020639 (2 * (n + 1))).toNat

end

end A277745.P7228543794787715806

namespace A277745

/-- `A020639(A275925(n+1)-A020639(2*(n+1)))` -/
def P7228543794787715806.Spec : Prop :=
  ∀ n, P7228543794787715806.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P4140290649106559213

`A317193(A278040(n))+5%(A275925(n+1)-2)`
-/

namespace A277745.P4140290649106559213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (A278040 n).toNat + Int.tmod 5 (A275925 (n + 1) - 2)

end

end A277745.P4140290649106559213

namespace A277745

/-- `A317193(A278040(n))+5%(A275925(n+1)-2)` -/
def P4140290649106559213.Spec : Prop :=
  ∀ n, P4140290649106559213.a n = A277745 (n + 1)

end A277745

/-! ## A277745.P12101502547487756548

`A059835(Δ[A305373(n)])+1`
-/

namespace A277745.P12101502547487756548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 (f1 (n + 1) - f1 n).toNat + 1

end

end A277745.P12101502547487756548

namespace A277745

/-- `A059835(Δ[A305373(n)])+1` -/
def P12101502547487756548.Spec : Prop :=
  ∀ n, P12101502547487756548.a n = A277745 (n + 1)

end A277745

/-!
# A277746: Number of n X n QR matrix classes.

The programs for A277746, there is no canonical definition to state claims against.
-/

/-! ## A277746.P9964691666123595826

`A122082(n+1)-A000666(n)`
-/

namespace A277746.P9964691666123595826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122082 (n + 1) - A000666 n

end

end A277746.P9964691666123595826

/-!
# A277747: Number of ancestor secondary classes with respect to splittings S_{1,1}.

The programs for A277747, there is no canonical definition to state claims against.
-/

/-! ## A277747.P7484719217995366007

`Δ[Δ[A213172(A129847(n))]]`
-/

namespace A277747.P7484719217995366007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 (A129847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277747.P7484719217995366007

/-!
# A277748: Number of n X n QR matrices.

The programs for A277748, there is no canonical definition to state claims against.
-/

/-! ## A277748.P12337414192821101215

`(∑[2^n]-n)*2^∑[n]`
-/

namespace A277748.P12337414192821101215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (2 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A277748.P12337414192821101215

/-! ## A277748.P7974456301585955152

`record[2^n*A323954(n+1)]`
-/

namespace A277748.P7974456301585955152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A323954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277748.P7974456301585955152

/-! ## A277748.P1541024421230092507

`∏[A008353(n)/(2^n-n)]`
-/

namespace A277748.P1541024421230092507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008353 n : ℚ) / ((2 ^ n : ℤ) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277748.P1541024421230092507

/-!
# A277749: Numerators of rationals R_n associated with an analog of Stern's diatomic sequence for Z[sqrt(2)].

The programs for A277749, there is no canonical definition to state claims against.
-/

/-! ## A277749.P13548015184352865596

`gcd(2, n)*A277750(n+2)`
-/

namespace A277749.P13548015184352865596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A277750 (n + 2)

end

end A277749.P13548015184352865596

/-! ## A277749.P8291152567187624889

`A277750(3*n+5)-A277750(n+1)`
-/

namespace A277749.P8291152567187624889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277750 (3 * n + 5) - A277750 (n + 1)

end

end A277749.P8291152567187624889

/-! ## A277749.P11694966796242624388

`A000034(A277750(2*(n+1)))*A277750(n+2)`
-/

namespace A277749.P11694966796242624388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A277750 (2 * (n + 1))).toNat * A277750 (n + 2)

end

end A277749.P11694966796242624388

/-! ## A277749.P16487441542455236580

`(A277750(n+2)+A277750(n+2))/A000034(n)`
-/

namespace A277749.P16487441542455236580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277750 (n + 2) + A277750 (n + 2) : ℚ) / (A000034 n : ℚ)

end

end A277749.P16487441542455236580

/-! ## A277749.P8278682492455299839

`A000034(n+1)*A277750(n+2)`
-/

namespace A277749.P8278682492455299839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A277750 (n + 2)

end

end A277749.P8278682492455299839

/-!
# A277750: Denominators of rationals R_n associated with an analog of Stern's diatomic sequence for Z[sqrt(2)].

The programs for A277750, there is no canonical definition to state claims against.
-/

/-! ## A277750.P7345558715290980416

`A026741(A277749(3*n+2))`
-/

namespace A277750.P7345558715290980416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A277749 (3 * n + 2)).toNat

end

end A277750.P7345558715290980416

/-! ## A277750.P16551048740142087437

`A277749(A016789(n))/A000034(n)`
-/

namespace A277750.P16551048740142087437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277749 (A016789 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A277750.P16551048740142087437

/-! ## A277750.P7904322890268339104

`A277749(A016789(n))/Δ[A265428(2*n)]`
-/

namespace A277750.P7904322890268339104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277749 (A016789 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A277750.P7904322890268339104

/-! ## A277750.P16373589905441638172

`A277749(3*n+2)/A277749(A060680(3*(n+1)))`
-/

namespace A277750.P16373589905441638172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277749 (3 * n + 2) : ℚ) / (A277749 (A060680 (3 * (n + 1))).toNat : ℚ)

end

end A277750.P16373589905441638172

/-! ## A277750.P5015105514283883359

`A002487(∑[A120880(A004526(n))])`
-/

namespace A277750.P5015105514283883359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277750.P5015105514283883359

/-! ## A277750.P1028043993869697120

`A002487(∑[A120880(A007494(n))])`
-/

namespace A277750.P1028043993869697120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (A007494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277750.P1028043993869697120

/-!
# A277751: Number T(n,k) of binary words of length n containing exactly k (possibly overlapping) occurrences of the subword 01101; triangle T(n,k), n>=0, k=0..max(0,floor((n-2)/3)), read by rows.

The programs for A277751, there is no canonical definition to state claims against.
-/

/-! ## A277751.P18350275442372805328

`xor(A185284(A049225(n+1)), A277678(n))`
-/

namespace A277751.P18350275442372805328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A049225 (n + 1)).toNat) (A277678 n)

end

end A277751.P18350275442372805328

/-! ## A277751.P814413556380972367

`xor(A185284(A165249(n+1)), A277678(n))`
-/

namespace A277751.P814413556380972367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A165249 (n + 1)).toNat) (A277678 n)

end

end A277751.P814413556380972367

/-! ## A277751.P18300182039973828677

`A277678(n)-A085974(A011782(n))`
-/

namespace A277751.P18300182039973828677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277678 n - A085974 (A011782 n).toNat

end

end A277751.P18300182039973828677

/-! ## A277751.P14933330175534617774

`A085701(A277678(n))`
-/

namespace A277751.P14933330175534617774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A277678 n).toNat

end

end A277751.P14933330175534617774

/-! ## A277751.P17550843879960095929

`A277678(n)%A096763(n+1)`
-/

namespace A277751.P17550843879960095929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277678 n) (A096763 (n + 1))

end

end A277751.P17550843879960095929

/-!
# A277752: a(n) = Sum_{k=0..n} (-1)^k*floor(phi^k), where phi is the golden ratio (A001622).

The programs for A277752, the canonical program `A277752.P9708679396871834845` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277752 has offset 0).

The definition of A277752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277752.P9708679396871834845

`3*a(n-2)-a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=-2, a(4)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277752

/-- `3*a(n-2)-a(n-3)-2*a(n-4)+a(n-5)` -/
def P9708679396871834845.Spec : Prop :=
  ∀ n, P9708679396871834845.a n = A277752 n

theorem P9708679396871834845.correct : P9708679396871834845.Spec := by
  intro n
  simp only [A277752]

end A277752

/-! ## A277752.P16341622415359943238

`∑[(-1)^n*A014217(n)]`
-/

namespace A277752.P16341622415359943238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277752.P16341622415359943238

namespace A277752

/-- `∑[(-1)^n*A014217(n)]` -/
def P16341622415359943238.Spec : Prop :=
  ∀ n, P16341622415359943238.a n = A277752 n

end A277752

/-! ## A277752.P9843029695136422395

`∑[A061084(n+1)-(n+1)%2]`
-/

namespace A277752.P9843029695136422395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277752.P9843029695136422395

namespace A277752

/-- `∑[A061084(n+1)-(n+1)%2]` -/
def P9843029695136422395.Spec : Prop :=
  ∀ n, P9843029695136422395.a n = A277752 n

end A277752

/-! ## A277752.P15706659771501196847

`∑[A000032(n)/(-1)^n-and(1, n+1)]`
-/

namespace A277752.P15706659771501196847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / ((-1) ^ n : ℚ) - (Nat.land 1 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277752.P15706659771501196847

namespace A277752

/-- `∑[A000032(n)/(-1)^n-and(1, n+1)]` -/
def P15706659771501196847.Spec : Prop :=
  ∀ n, P15706659771501196847.a n = (A277752 n : ℚ)

end A277752

/-! ## A277752.P5829982317379870110

`∑[A014217(n)*A033999(n)]`
-/

namespace A277752.P5829982317379870110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277752.P5829982317379870110

namespace A277752

/-- `∑[A014217(n)*A033999(n)]` -/
def P5829982317379870110.Spec : Prop :=
  ∀ n, P5829982317379870110.a n = A277752 n

end A277752

/-! ## A277752.P7860247670579107032

`3-A061084(n)-A008619(n)`
-/

namespace A277752.P7860247670579107032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A061084 n - A008619 n

end

end A277752.P7860247670579107032

namespace A277752

/-- `3-A061084(n)-A008619(n)` -/
def P7860247670579107032.Spec : Prop :=
  ∀ n, P7860247670579107032.a n = A277752 n

end A277752

/-! ## A277752.P7156927988019941762

`∑[A000032(n)/(-1)^n]-A008619(n)`
-/

namespace A277752.P7156927988019941762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A008619 n : ℚ)

end

end A277752.P7156927988019941762

namespace A277752

/-- `∑[A000032(n)/(-1)^n]-A008619(n)` -/
def P7156927988019941762.Spec : Prop :=
  ∀ n, P7156927988019941762.a n = (A277752 n : ℚ)

end A277752

/-!
# A277753: Number of partitions p of n that contain a proper partition of the number of parts of p.

The programs for A277753, there is no canonical definition to state claims against.
-/

/-! ## A277753.P18214632815617384847

`A167934(n)-A228720(A000837(n))`
-/

namespace A277753.P18214632815617384847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n - A228720 (A000837 n).toNat

end

end A277753.P18214632815617384847

/-! ## A277753.P3979041591352567271

`A026815(n+3)+A240302(n)%A029518(3*n+4)`
-/

namespace A277753.P3979041591352567271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 3) + Int.tmod (A240302 n) (A029518 (3 * n + 4))

end

end A277753.P3979041591352567271

/-! ## A277753.P11672203639746364022

`A373811(A048088(n+1))`
-/

namespace A277753.P11672203639746364022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A048088 (n + 1)).toNat

end

end A277753.P11672203639746364022

/-! ## A277753.P4962094398680715394

`A003002(∑[∑[A049285(n+1)]])`
-/

namespace A277753.P4962094398680715394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049285 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277753.P4962094398680715394

/-! ## A277753.P10852800626351180667

`A248333(A325789(3*n+5)+A167934(n))`
-/

namespace A277753.P10852800626351180667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A325789 (3 * n + 5) + A167934 n).toNat

end

end A277753.P10852800626351180667

/-!
# A277756: Total number of nodes summed over all self-avoiding planar walks starting at (0,0), ending at (n,n), remaining in the first quadrant and using steps (0,1) and (1,0) on or below the diagonal and using steps (1,1), (-1,1), and (1,-1) on or above the diagonal.

The programs for A277756, there is no canonical definition to state claims against.
-/

/-! ## A277756.P16425847724891294207

`A144146(A214377(n))`
-/

namespace A277756.P16425847724891294207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (A214377 n).toNat

end

end A277756.P16425847724891294207

/-!
# A277757: a(n) = 2^(6*n + 1).

The programs for A277757, the canonical program `A277757.P901115211932356891` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277757 has offset 0).

The definition of A277757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(6*n+1)` (program `A277757.P901115211932356891`, by `A277757.P901115211932356891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277757.P901115211932356891

`2^(6*n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277757

/-- `2^(6*n+1)` -/
def P901115211932356891.Spec : Prop :=
  ∀ n, (P901115211932356891.a n : ℤ) = A277757 n

theorem P901115211932356891.correct : P901115211932356891.Spec := by
  intro n
  simp only [A277757]

end A277757

/-! ## A277757.P9111264826167495793

`64*a(n-1)` with `a(0)=2`
-/

namespace A277757.P9111264826167495793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  64 * a (n - 1)

end

end A277757.P9111264826167495793

namespace A277757

/-- `64*a(n-1)` -/
def P9111264826167495793.Spec : Prop :=
  ∀ n, (P9111264826167495793.a n : ℤ) = A277757 n

theorem P9111264826167495793.correct : P9111264826167495793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A277757, Nat.add_sub_cancel, A277757.P9111264826167495793.a, A277757.P901115211932356891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A277757, Nat.add_sub_cancel, A277757.P9111264826167495793.a, A277757.P901115211932356891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A277757

/-! ## A277757.P1446079567072670044

`2*A089357(n)`
-/

namespace A277757.P1446079567072670044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089357 n

end

end A277757.P1446079567072670044

namespace A277757

/-- `2*A089357(n)` -/
def P1446079567072670044.Spec : Prop :=
  ∀ n, P1446079567072670044.a n = A277757 n

end A277757

/-! ## A277757.P12912037745458809703

`A000079(A016921(n))`
-/

namespace A277757.P12912037745458809703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016921 n).toNat

end

end A277757.P12912037745458809703

namespace A277757

/-- `A000079(A016921(n))` -/
def P12912037745458809703.Spec : Prop :=
  ∀ n, P12912037745458809703.a n = A277757 n

end A277757

/-! ## A277757.P14916721107967864954

`A013730(2*n)`
-/

namespace A277757.P14916721107967864954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013730 (2 * n)

end

end A277757.P14916721107967864954

namespace A277757

/-- `A013730(2*n)` -/
def P14916721107967864954.Spec : Prop :=
  ∀ n, P14916721107967864954.a n = A277757 n

end A277757

/-! ## A277757.P106835526044548658

`A004171(3*n)`
-/

namespace A277757.P106835526044548658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (3 * n)

end

end A277757.P106835526044548658

namespace A277757

/-- `A004171(3*n)` -/
def P106835526044548658.Spec : Prop :=
  ∀ n, P106835526044548658.a n = A277757 n

end A277757

/-! ## A277757.P15250277577824242411

`A013734(n)/2`
-/

namespace A277757.P15250277577824242411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013734 n : ℚ) / 2

end

end A277757.P15250277577824242411

namespace A277757

/-- `A013734(n)/2` -/
def P15250277577824242411.Spec : Prop :=
  ∀ n, P15250277577824242411.a n = (A277757 n : ℚ)

end A277757

/-! ## A277757.P14996088073710055743

`A130752(6*n)`
-/

namespace A277757.P14996088073710055743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 (6 * n)

end

end A277757.P14996088073710055743

namespace A277757

/-- `A130752(6*n)` -/
def P14996088073710055743.Spec : Prop :=
  ∀ n, P14996088073710055743.a n = A277757 n

end A277757

/-! ## A277757.P10101573288510870549

`A135520(6*n)`
-/

namespace A277757.P10101573288510870549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 (6 * n)

end

end A277757.P10101573288510870549

namespace A277757

/-- `A135520(6*n)` -/
def P10101573288510870549.Spec : Prop :=
  ∀ n, P10101573288510870549.a n = A277757 n

end A277757

/-! ## A277757.P16518253896220516495

`A198850(2*n)+1`
-/

namespace A277757.P16518253896220516495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198850 (2 * n) + 1

end

end A277757.P16518253896220516495

namespace A277757

/-- `A198850(2*n)+1` -/
def P16518253896220516495.Spec : Prop :=
  ∀ n, P16518253896220516495.a n = A277757 n

end A277757

/-!
# A277759: a(n) equals the coefficient of x^n in n!*(1 - log(1-x))^n.

The programs for A277759, there is no canonical definition to state claims against.
-/

/-! ## A277759.P3439420414058442217

`A347323(A142983(n+1))+A211828(n+1)`
-/

namespace A277759.P3439420414058442217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (A142983 (n + 1)).toNat + A211828 (n + 1)

end

end A277759.P3439420414058442217

/-!
# A277760: The number of highly composite numbers between 2^n and 2^(n+1).

The programs for A277760, there is no canonical definition to state claims against.
-/

/-! ## A277760.P7662952028173804649

`A090822(A363645(n+1)+A156755(n))`
-/

namespace A277760.P7662952028173804649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A363645 (n + 1) + A156755 n).toNat

end

end A277760.P7662952028173804649

/-! ## A277760.P11493264750880047139

`A090822(A363645(n+1)+A090822(n+1))`
-/

namespace A277760.P11493264750880047139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A363645 (n + 1) + A090822 (n + 1)).toNat

end

end A277760.P11493264750880047139

/-! ## A277760.P349544325574204749

`A082370(A327920(n+1)+n)`
-/

namespace A277760.P349544325574204749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082370 (A327920 (n + 1) + (n : ℤ)).toNat

end

end A277760.P349544325574204749

/-! ## A277760.P12794798310834652264

`gcd(A003269(A008795(n)), A147916(n+1))`
-/

namespace A277760.P12794798310834652264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003269 (A008795 n).toNat) (A147916 (n + 1))

end

end A277760.P12794798310834652264

/-!
# A277761: Number of n X 2 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277761, the canonical program `A277761.P526281693554340786` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277761 has offset 1).

The definition of A277761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277761.P526281693554340786

`4*a(n-1)+6*a(n-2)-12*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277761

/-- `4*a(n-1)+6*a(n-2)-12*a(n-3)` -/
def P526281693554340786.Spec : Prop :=
  ∀ n, P526281693554340786.a n = A277761 (n + 1)

theorem P526281693554340786.correct : P526281693554340786.Spec := by
  intro n
  simp only [A277761, Nat.add_sub_cancel]

end A277761

/-! ## A277761.P6658464698704035095

`Δ[A094433(n)]-2*a(n-1)` with `a(0)=0`
-/

namespace A277761.P6658464698704035095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - 2 * a (n - 1)

end

end A277761.P6658464698704035095

namespace A277761

/-- `Δ[A094433(n)]-2*a(n-1)` -/
def P6658464698704035095.Spec : Prop :=
  ∀ n, P6658464698704035095.a n = A277761 (n + 1)

end A277761

/-! ## A277761.P5697843765721697433

`A277767(∑[n+2])`
-/

namespace A277761.P5697843765721697433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277761.P5697843765721697433

namespace A277761

/-- `A277767(∑[n+2])` -/
def P5697843765721697433.Spec : Prop :=
  ∀ n, P5697843765721697433.a n = A277761 (n + 1)

end A277761

/-! ## A277761.P9385853922751548313

`record[A277767(∑[A152271(n)])]`
-/

namespace A277761.P9385853922751548313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277761.P9385853922751548313

namespace A277761

/-- `record[A277767(∑[A152271(n)])]` -/
def P9385853922751548313.Spec : Prop :=
  ∀ n, P9385853922751548313.a n = A277761 (n + 1)

end A277761

/-! ## A277761.P76253999849444515

`record[A277767(record[A185180(n+1)])]`
-/

namespace A277761.P76253999849444515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277761.P76253999849444515

namespace A277761

/-- `record[A277767(record[A185180(n+1)])]` -/
def P76253999849444515.Spec : Prop :=
  ∀ n, P76253999849444515.a n = A277761 (n + 1)

end A277761

/-!
# A277762: Number of n X 3 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277762, there is no canonical definition to state claims against.
-/

/-! ## A277762.P3394645975537964629

`A277767(∑[n+3]+1)`
-/

namespace A277762.P3394645975537964629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277762.P3394645975537964629

/-! ## A277762.P11036745855866625377

`record[and(A106467(n), A277767(n+1))]`
-/

namespace A277762.P11036745855866625377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A277767 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277762.P11036745855866625377

/-! ## A277762.P1226288561662750479

`A277767(A034856(n+2))%A251868(n+2)`
-/

namespace A277762.P1226288561662750479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277767 (A034856 (n + 2)).toNat) (A251868 (n + 2))

end

end A277762.P1226288561662750479

/-! ## A277762.P4798676533622928452

`(A008683(A008574(n))+1)²*A277767(A034856(n+2))`
-/

namespace A277762.P4798676533622928452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (A008574 n).toNat + 1) ^ 2 * A277767 (A034856 (n + 2)).toNat

end

end A277762.P4798676533622928452

/-!
# A277763: Number of nX4 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277763, there is no canonical definition to state claims against.
-/

/-! ## A277763.P8078076402443793698

`A277767(A141214(n+1))`
-/

namespace A277763.P8078076402443793698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A141214 (n + 1)).toNat

end

end A277763.P8078076402443793698

/-! ## A277763.P7462168599727568323

`A277767(A027379(n+2))`
-/

namespace A277763.P7462168599727568323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A027379 (n + 2)).toNat

end

end A277763.P7462168599727568323

/-! ## A277763.P15759679446748695638

`A277767(A155212(n)+5)`
-/

namespace A277763.P15759679446748695638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A155212 n + 5).toNat

end

end A277763.P15759679446748695638

/-! ## A277763.P7595560430073486902

`A277767(eq[4, A209434(n)])`
-/

namespace A277763.P7595560430073486902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277763.P7595560430073486902

/-! ## A277763.P2738539281034162516

`A277767(A052905(n+1)+2)`
-/

namespace A277763.P2738539281034162516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A052905 (n + 1) + 2).toNat

end

end A277763.P2738539281034162516

/-!
# A277764: Number of nX5 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277764, there is no canonical definition to state claims against.
-/

/-! ## A277764.P203000043293808881

`A277767(eq[4, A193592(n)])`
-/

namespace A277764.P203000043293808881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277764.P203000043293808881

/-! ## A277764.P7284205887336120563

`A277767(eq[8, A209434(n)])`
-/

namespace A277764.P7284205887336120563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277764.P7284205887336120563

/-! ## A277764.P17746948187306559846

`A277767(Δ[A023545(n+1)])`
-/

namespace A277764.P17746948187306559846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (f1 (n + 1) - f1 n).toNat

end

end A277764.P17746948187306559846

/-! ## A277764.P17163609799503636407

`A277767(eq[8, A057728(n+1)])`
-/

namespace A277764.P17163609799503636407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277764.P17163609799503636407

/-! ## A277764.P8943926454107330293

`A277767(Δ[A023551(n+1)-A052905(n)])`
-/

namespace A277764.P8943926454107330293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (f1 (n + 1) - f1 n).toNat

end

end A277764.P8943926454107330293

/-!
# A277765: Number of nX6 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277765, there is no canonical definition to state claims against.
-/

/-! ## A277765.P10290222494393558093

`A277767(A052905(n+3))`
-/

namespace A277765.P10290222494393558093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A052905 (n + 3)).toNat

end

end A277765.P10290222494393558093

/-! ## A277765.P4045797178285962923

`A277767(eq[3, A219347(n)])`
-/

namespace A277765.P4045797178285962923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277765.P4045797178285962923

/-! ## A277765.P1703738019378490756

`A277767(eq[5, A193592(n)])`
-/

namespace A277765.P1703738019378490756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277765.P1703738019378490756

/-! ## A277765.P2389870928930445328

`A277767(A046691(n+4)-1)`
-/

namespace A277765.P2389870928930445328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A046691 (n + 4) - 1).toNat

end

end A277765.P2389870928930445328

/-! ## A277765.P181916544422139807

`A277767(eq[6, A200370(n+1)])`
-/

namespace A277765.P181916544422139807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277765.P181916544422139807

/-!
# A277766: Number of nX7 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277766, there is no canonical definition to state claims against.
-/

/-! ## A277766.P1660822570299550437

`A277767(Δ[A023551(n+2)])`
-/

namespace A277766.P1660822570299550437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (f1 (n + 1) - f1 n).toNat

end

end A277766.P1660822570299550437

/-! ## A277766.P17193481619385829383

`A277767(eq[2, A219347(n)-2])`
-/

namespace A277766.P17193481619385829383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277766.P17193481619385829383

/-! ## A277766.P6124078413011143184

`A277767(eq[32, A057728(n+1)])`
-/

namespace A277766.P6124078413011143184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277766.P6124078413011143184

/-!
# A277768: Number of 3Xn 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277768, there is no canonical definition to state claims against.
-/

/-! ## A277768.P14517102722328963287

`A277767(∑[n+2]+4)`
-/

namespace A277768.P14517102722328963287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A277768.P14517102722328963287

/-! ## A277768.P2510805996361072039

`A277767(A167614(n+1))+A184945(n)`
-/

namespace A277768.P2510805996361072039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A167614 (n + 1)).toNat + A184945 n

end

end A277768.P2510805996361072039

/-! ## A277768.P3384398793891296309

`A057427(n)*A277767(A167614(n+1))`
-/

namespace A277768.P3384398793891296309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A277767 (A167614 (n + 1)).toNat

end

end A277768.P3384398793891296309

/-! ## A277768.P15506774680520901488

`A262681(n)*A277767(A167614(n+1))`
-/

namespace A277768.P15506774680520901488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A277767 (A167614 (n + 1)).toNat

end

end A277768.P15506774680520901488

/-! ## A277768.P1291264727798916075

`A277767(A167614(n+1))%A075183(n)`
-/

namespace A277768.P1291264727798916075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277767 (A167614 (n + 1)).toNat) (A075183 n)

end

end A277768.P1291264727798916075

/-!
# A277769: Number of 4Xn 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277769, there is no canonical definition to state claims against.
-/

/-! ## A277769.P5623144155780363835

`A277767(A141214(n)+7)`
-/

namespace A277769.P5623144155780363835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A141214 n + 7).toNat

end

end A277769.P5623144155780363835

/-! ## A277769.P9520072314205886854

`A277767(A052905(n)+9)`
-/

namespace A277769.P9520072314205886854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A052905 n + 9).toNat

end

end A277769.P9520072314205886854

/-! ## A277769.P5822198602610367625

`A277767(A055999(n)+10)`
-/

namespace A277769.P5822198602610367625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A055999 n + 10).toNat

end

end A277769.P5822198602610367625

/-! ## A277769.P10940987711497394036

`A277767(A167614(n+2)+1)`
-/

namespace A277769.P10940987711497394036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A167614 (n + 2) + 1).toNat

end

end A277769.P10940987711497394036

/-! ## A277769.P9913910908265970789

`A277767(A166136(n+2)-2)`
-/

namespace A277769.P9913910908265970789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A166136 (n + 2) - 2).toNat

end

end A277769.P9913910908265970789

/-!
# A277770: Number of 5Xn 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277770, there is no canonical definition to state claims against.
-/

/-! ## A277770.P1658604836535985051

`A277767(A167499(n+3))`
-/

namespace A277770.P1658604836535985051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A167499 (n + 3)).toNat

end

end A277770.P1658604836535985051

/-! ## A277770.P3948727417157259945

`A277767(A155212(n)+13)`
-/

namespace A277770.P3948727417157259945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A155212 n + 13).toNat

end

end A277770.P3948727417157259945

/-! ## A277770.P14148874729757645641

`A277767(eq[7, A066657(n)])`
-/

namespace A277770.P14148874729757645641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277770.P14148874729757645641

/-! ## A277770.P4476937670754476278

`A277767(A253145(n+3)+5)`
-/

namespace A277770.P4476937670754476278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A253145 (n + 3) + 5).toNat

end

end A277770.P4476937670754476278

/-! ## A277770.P13979482027498513743

`A277767(eq[6, A131818(n+1)])`
-/

namespace A277770.P13979482027498513743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277770.P13979482027498513743

/-!
# A277771: Number of 6Xn 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277771, there is no canonical definition to state claims against.
-/

/-! ## A277771.P5170531361027143287

`A277767(A167499(n+4)+1)`
-/

namespace A277771.P5170531361027143287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A167499 (n + 4) + 1).toNat

end

end A277771.P5170531361027143287

/-! ## A277771.P11277099602021105580

`A277767(A161680(n+6)+6)`
-/

namespace A277771.P11277099602021105580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A161680 (n + 6) + 6).toNat

end

end A277771.P11277099602021105580

/-! ## A277771.P6062380476871678542

`A277767(eq[7, A131818(n+1)])`
-/

namespace A277771.P6062380476871678542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277771.P6062380476871678542

/-! ## A277771.P12212358527999519561

`A277767(A000124(n+6)-(n+1))`
-/

namespace A277771.P12212358527999519561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A277771.P12212358527999519561

/-! ## A277771.P2871594795871784031

`A277767(eq[6, A025581(n)]-2*n)`
-/

namespace A277771.P2871594795871784031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A277771.P2871594795871784031

/-!
# A277772: Number of 7Xn 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277772, there is no canonical definition to state claims against.
-/

/-! ## A277772.P6233765498924338305

`A277767(A166136(n+5)+1)`
-/

namespace A277772.P6233765498924338305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (A166136 (n + 5) + 1).toNat

end

end A277772.P6233765498924338305

/-! ## A277772.P15009743436744189117

`A277767(eq[8, A131818(n+1)])`
-/

namespace A277772.P15009743436744189117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277772.P15009743436744189117

/-!
# A277773: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A277773, there is no canonical definition to state claims against.
-/

/-! ## A277773.P10109223441517381182

`and(A051049(n), A278346(n))`
-/

namespace A277773.P10109223441517381182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A278346 n)

end

end A277773.P10109223441517381182

/-! ## A277773.P7888558715471860102

`and(A277800(n), A278346(n))`
-/

namespace A277773.P7888558715471860102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277800 n) (A278346 n)

end

end A277773.P7888558715471860102

/-! ## A277773.P1128793406455272585

`and(A278346(n), A280293(n))`
-/

namespace A277773.P1128793406455272585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278346 n) (A280293 n)

end

end A277773.P1128793406455272585

/-! ## A277773.P13836572862446675951

`and(A278346(n), A282005(n))`
-/

namespace A277773.P13836572862446675951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278346 n) (A282005 n)

end

end A277773.P13836572862446675951

/-! ## A277773.P3903855449720048039

`and(A278346(n), A282659(n))`
-/

namespace A277773.P3903855449720048039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278346 n) (A282659 n)

end

end A277773.P3903855449720048039

/-! ## A277773.P5777967172038102725

`and(A278346(n), A285646(n))`
-/

namespace A277773.P5777967172038102725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278346 n) (A285646 n)

end

end A277773.P5777967172038102725

/-! ## A277773.P15354221934926845238

`and(A278346(n), A288763(n))`
-/

namespace A277773.P15354221934926845238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278346 n) (A288763 n)

end

end A277773.P15354221934926845238

/-! ## A277773.P14697869816937479311

`and(A265721(n), A278346(n))`
-/

namespace A277773.P14697869816937479311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265721 n) (A278346 n)

end

end A277773.P14697869816937479311

/-! ## A277773.P12990673702315114978

`and(A266668(n), A278346(n))`
-/

namespace A277773.P12990673702315114978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266668 n) (A278346 n)

end

end A277773.P12990673702315114978

/-! ## A277773.P2882841130988151900

`and(A267351(n), A278346(n))`
-/

namespace A277773.P2882841130988151900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267351 n) (A278346 n)

end

end A277773.P2882841130988151900

/-!
# A277776: Triangle T(n,k) in which the n-th row contains the increasing list of nontrivial square roots of unity mod n; n>=1.

The programs for A277776, there is no canonical definition to state claims against.
-/

/-! ## A277776.P16697773622553494467

`A128227(eq[A102057(n+1), A173541(n+1)])`
-/

namespace A277776.P16697773622553494467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277776.P16697773622553494467

/-! ## A277776.P2012006694855649228

`A193738(eq[A102057(n+1), A173541(n+1)])`
-/

namespace A277776.P2012006694855649228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277776.P2012006694855649228

/-! ## A277776.P17396509104322451279

`A102057(eq[A102057(n+1), A173541(n+1)]+1)`
-/

namespace A277776.P17396509104322451279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A277776.P17396509104322451279

/-!
# A277777: Largest nontrivial square root of unity modulo the n-th positive integer that does not have a primitive root (A033949).

The programs for A277777, there is no canonical definition to state claims against.
-/

/-! ## A277777.P13604972675409329767

`A033949(n+1)-A082568(n+1)`
-/

namespace A277777.P13604972675409329767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1) - A082568 (n + 1)

end

end A277777.P13604972675409329767

/-! ## A277777.P15111261977462832918

`A180634(n+3)-A082568(n+1)`
-/

namespace A277777.P15111261977462832918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 3) - A082568 (n + 1)

end

end A277777.P15111261977462832918

/-! ## A277777.P5355399042647198284

`A358016(A033949(n+1))`
-/

namespace A277777.P5355399042647198284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358016 (A033949 (n + 1)).toNat

end

end A277777.P5355399042647198284

/-! ## A277777.P8056079487723435345

`A358016(A175594(n+2))`
-/

namespace A277777.P8056079487723435345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358016 (A175594 (n + 2)).toNat

end

end A277777.P8056079487723435345

/-! ## A277777.P13009443256441641375

`A033949(A000027(n+1))-A215653(A033949(n+1))`
-/

namespace A277777.P13009443256441641375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (A000027 (n + 1)).toNat - A215653 (A033949 (n + 1)).toNat

end

end A277777.P13009443256441641375

/-! ## A277777.P15966748011332897276

`eq[A045534(n), A046145(n)]-A082568(n+1)`
-/

namespace A277777.P15966748011332897276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A082568 (n + 1)

end

end A277777.P15966748011332897276

/-! ## A277777.P4242817376960821497

`eq[A045534(n), A046146(n)]-A082568(n+1)`
-/

namespace A277777.P4242817376960821497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A082568 (n + 1)

end

end A277777.P4242817376960821497

/-! ## A277777.P11412137515177217851

`eq[A045534(n), A103309(n)]-A082568(n+1)`
-/

namespace A277777.P11412137515177217851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A082568 (n + 1)

end

end A277777.P11412137515177217851

/-! ## A277777.P7320086166855425548

`eq[A033327(n+1), A046145(n)]-A082568(n+1)`
-/

namespace A277777.P7320086166855425548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A082568 (n + 1)

end

end A277777.P7320086166855425548

/-! ## A277777.P9773585917532145020

`eq[A033327(n+1), A046146(n)]-A082568(n+1)`
-/

namespace A277777.P9773585917532145020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A082568 (n + 1)

end

end A277777.P9773585917532145020

/-! ## A277777.P3819075668156516002

`A277915(∑[n+1])-A082568(n+1)`
-/

namespace A277777.P3819075668156516002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277915 (∑ j ∈ Finset.range (n + 1), f1 j) - A082568 (n + 1)

end

end A277777.P3819075668156516002

/-!
# A277778: If n is even, a(n) = a(n/2-1), and if n is odd, a(n) = a((n-1)/2) - a((n+1)/2), with a(1) = a(2) = 1.

The programs for A277778, there is no canonical definition to state claims against.
-/

/-! ## A277778.P4295838223958764263

`A200244(A134522(n))+A030618(n+1)`
-/

namespace A277778.P4295838223958764263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 (A134522 n).toNat + A030618 (n + 1)

end

end A277778.P4295838223958764263

/-! ## A277778.P15596757152990033544

`A003982(n)-A291137(A229064(n+1))`
-/

namespace A277778.P15596757152990033544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n - A291137 (A229064 (n + 1)).toNat

end

end A277778.P15596757152990033544

/-! ## A277778.P12176862909961376235

`A225542(A152398(n))-A051065(2*n)`
-/

namespace A277778.P12176862909961376235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225542 (A152398 n).toNat - A051065 (2 * n)

end

end A277778.P12176862909961376235

/-! ## A277778.P882076764566343289

`A330262(A330262(3*n+1)+A000295(n))`
-/

namespace A277778.P882076764566343289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330262 (A330262 (3 * n + 1) + A000295 n).toNat

end

end A277778.P882076764566343289

/-!
# A277779: Numbers k that only contain a 0 in bases that divide k.

The programs for A277779, there is no canonical definition to state claims against.
-/

/-! ## A277779.P11260633604288036069

`lt[A077268(n+1), Δ[A006218(n)]]+1`
-/

namespace A277779.P11260633604288036069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077268 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277779.P11260633604288036069

/-! ## A277779.P14819877245274965348

`lt[A077268(n+1), A000005(n+1)]+1`
-/

namespace A277779.P14819877245274965348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277779.P14819877245274965348

/-!
# A277780: a(n) is the least k > n such that n*k^2 is a cube.

The programs for A277780, the canonical program `A277780.P4452864541001446991` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277780 has offset 1).

The definition of A277780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277780.P4452864541001446991

`A050985(n+1)*A000578(1+A048766(A008834(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A277780

/-- `A050985(n+1)*A000578(1+A048766(A008834(n+1)))` -/
def P4452864541001446991.Spec : Prop :=
  ∀ n, P4452864541001446991.a n = A277780 (n + 1)

theorem P4452864541001446991.correct : P4452864541001446991.Spec := by
  intro n
  simp only [A277780, Nat.add_sub_cancel]

end A277780

/-! ## A277780.P13537540942641134957

`A050985(n+1)*A277781(A008834(n+1))`
-/

namespace A277780.P13537540942641134957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A277781 (A008834 (n + 1)).toNat

end

end A277780.P13537540942641134957

namespace A277780

/-- `A050985(n+1)*A277781(A008834(n+1))` -/
def P13537540942641134957.Spec : Prop :=
  ∀ n, P13537540942641134957.a n = A277780 (n + 1)

end A277780

/-! ## A277780.P2487689349922905685

`A000578(A053150(n+1)+1)*A050985(n+1)`
-/

namespace A277780.P2487689349922905685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053150 (n + 1) + 1).toNat * A050985 (n + 1)

end

end A277780.P2487689349922905685

namespace A277780

/-- `A000578(A053150(n+1)+1)*A050985(n+1)` -/
def P2487689349922905685.Spec : Prop :=
  ∀ n, P2487689349922905685.a n = A277780 (n + 1)

end A277780

/-! ## A277780.P3487639334883133717

`A050985(n+1)*A277781((n+1)/A050985(n+1))`
-/

namespace A277780.P3487639334883133717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A277781 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A050985 (n + 1) : ℚ))).toNat

end

end A277780.P3487639334883133717

namespace A277780

/-- `A050985(n+1)*A277781((n+1)/A050985(n+1))` -/
def P3487639334883133717.Spec : Prop :=
  ∀ n, P3487639334883133717.a n = A277780 (n + 1)

end A277780

/-! ## A277780.P12885367455017840070

`A050985(n+1)*A254767(A053150(n+1)^3)`
-/

namespace A277780.P12885367455017840070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A254767 (A053150 (n + 1) ^ 3).toNat

end

end A277780.P12885367455017840070

namespace A277780

/-- `A050985(n+1)*A254767(A053150(n+1)^3)` -/
def P12885367455017840070.Spec : Prop :=
  ∀ n, P12885367455017840070.a n = A277780 (n + 1)

end A277780

/-!
# A277781: a(n) is the least k > n such that n*k or n*k^2 is a cube.

The programs for A277781, there is no canonical definition to state claims against.
-/

/-! ## A277781.P17391869541858476034

`A343881(C(n+3, 2))`
-/

namespace A277781.P17391869541858476034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343881 (Nat.choose (n + 3) 2)

end

end A277781.P17391869541858476034

/-! ## A277781.P3926961130431034075

`A343881(∑[n+2]+1)`
-/

namespace A277781.P3926961130431034075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343881 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277781.P3926961130431034075

/-! ## A277781.P8617135428909220876

`A343881(A000217(n+2))+A326590(n)`
-/

namespace A277781.P8617135428909220876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343881 (A000217 (n + 2)).toNat + A326590 n

end

end A277781.P8617135428909220876

/-! ## A277781.P11637995015035915773

`A343881(A000217(n+2))%A030514(n+1)`
-/

namespace A277781.P11637995015035915773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343881 (A000217 (n + 2)).toNat) (A030514 (n + 1))

end

end A277781.P11637995015035915773

/-!
# A277782: Number of n X 2 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277782, the canonical program `A277782.P916476625149193323` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277782 has offset 1).

The definition of A277782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277782.P16367231154381991866

`ogf((3x-3x^2)/(1-5x-8x^2+6x^3))`
-/

namespace A277782.P16367231154381991866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -3] [1, -5, -8, 6] n

end

end A277782.P16367231154381991866

namespace A277782

/-- `ogf((3x-3x^2)/(1-5x-8x^2+6x^3))` -/
def P16367231154381991866.Spec : Prop :=
  ∀ n, P16367231154381991866.a n = A277782 (n + 1)

end A277782

/-! ## A277782.P916476625149193323

`5*a(n-1)+8*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277782

/-- `5*a(n-1)+8*a(n-2)-6*a(n-3)` -/
def P916476625149193323.Spec : Prop :=
  ∀ n, P916476625149193323.a n = A277782 (n + 1)

theorem P916476625149193323.correct : P916476625149193323.Spec := by
  intro n
  simp only [A277782, Nat.add_sub_cancel]

end A277782

/-! ## A277782.P1099903951632253661

`A277788(∑[n+1]+2)`
-/

namespace A277782.P1099903951632253661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A277782.P1099903951632253661

namespace A277782

/-- `A277788(∑[n+1]+2)` -/
def P1099903951632253661.Spec : Prop :=
  ∀ n, P1099903951632253661.a n = A277782 (n + 1)

end A277782

/-! ## A277782.P12371269886772716962

`record[A277788(n+1)/A187783(n)]`
-/

namespace A277782.P12371269886772716962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277788 (n + 1) : ℚ) / (A187783 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277782.P12371269886772716962

namespace A277782

/-- `record[A277788(n+1)/A187783(n)]` -/
def P12371269886772716962.Spec : Prop :=
  ∀ n, P12371269886772716962.a n = (A277782 (n + 1) : ℚ)

end A277782

/-! ## A277782.P10097248424837822867

`record[A277788(n+2)/A022173(n)]`
-/

namespace A277782.P10097248424837822867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277788 (n + 2) : ℚ) / (A022173 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277782.P10097248424837822867

namespace A277782

/-- `record[A277788(n+2)/A022173(n)]` -/
def P10097248424837822867.Spec : Prop :=
  ∀ n, P10097248424837822867.a n = (A277782 (n + 1) : ℚ)

end A277782

/-!
# A277783: Number of nX3 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277783, there is no canonical definition to state claims against.
-/

/-! ## A277783.P1113267309717083544

`A277788(∑[n+2]+4)`
-/

namespace A277783.P1113267309717083544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A277783.P1113267309717083544

/-! ## A277783.P17030496318497007734

`lcm(1-and(2, n+1), A277788(A016028(n+5)))`
-/

namespace A277783.P17030496318497007734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 (n + 1) : ℤ)) (A277788 (A016028 (n + 5)).toNat)

end

end A277783.P17030496318497007734

/-! ## A277783.P17930886095440750715

`lcm(A277788(A167614(n+1)), A324198(n))`
-/

namespace A277783.P17930886095440750715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A277788 (A167614 (n + 1)).toNat) (A324198 n)

end

end A277783.P17930886095440750715

/-! ## A277783.P7879553209865107334

`lcm(A033999(n), A277788(A016028(n+5)))`
-/

namespace A277783.P7879553209865107334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A277788 (A016028 (n + 5)).toNat)

end

end A277783.P7879553209865107334

/-! ## A277783.P13022637078957163737

`A326291(n+1)+A277788(A167614(n+1))`
-/

namespace A277783.P13022637078957163737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A277788 (A167614 (n + 1)).toNat

end

end A277783.P13022637078957163737

/-!
# A277784: Number of n X 4 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277784, there is no canonical definition to state claims against.
-/

/-! ## A277784.P6186115491253756681

`A277788(A374004(n+1))`
-/

namespace A277784.P6186115491253756681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A374004 (n + 1)).toNat

end

end A277784.P6186115491253756681

/-! ## A277784.P16953635150754499166

`A277788(A141214(n)+7)`
-/

namespace A277784.P16953635150754499166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A141214 n + 7).toNat

end

end A277784.P16953635150754499166

/-! ## A277784.P13145203114314465113

`A277788(A052905(n)+9)`
-/

namespace A277784.P13145203114314465113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A052905 n + 9).toNat

end

end A277784.P13145203114314465113

/-! ## A277784.P8288203190351899294

`A277788(A055999(n)+10)`
-/

namespace A277784.P8288203190351899294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A055999 n + 10).toNat

end

end A277784.P8288203190351899294

/-! ## A277784.P5534521191340420638

`A277788(A167614(n+2)+1)`
-/

namespace A277784.P5534521191340420638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A167614 (n + 2) + 1).toNat

end

end A277784.P5534521191340420638

/-!
# A277785: Number of nX5 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277785, there is no canonical definition to state claims against.
-/

/-! ## A277785.P5761762975981890057

`A277788(A374005(n+1))`
-/

namespace A277785.P5761762975981890057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A374005 (n + 1)).toNat

end

end A277785.P5761762975981890057

/-! ## A277785.P9653884704065464000

`A277788(eq[6, A131818(n+1)])`
-/

namespace A277785.P9653884704065464000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277785.P9653884704065464000

/-! ## A277785.P7772717692449287388

`A277788(Δ[A264443(n)])`
-/

namespace A277785.P7772717692449287388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (f1 (n + 1) - f1 n).toNat

end

end A277785.P7772717692449287388

/-! ## A277785.P10208761136932127057

`A277788(Δ[A023545(n+1)])`
-/

namespace A277785.P10208761136932127057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (f1 (n + 1) - f1 n).toNat

end

end A277785.P10208761136932127057

/-! ## A277785.P8262599376634856666

`A277788(eq[5, A200370(n+1)])`
-/

namespace A277785.P8262599376634856666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277785.P8262599376634856666

/-!
# A277786: Number of nX6 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277786, there is no canonical definition to state claims against.
-/

/-! ## A277786.P6929248193663379431

`A277788(A374007(n+1))`
-/

namespace A277786.P6929248193663379431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A374007 (n + 1)).toNat

end

end A277786.P6929248193663379431

/-! ## A277786.P14364541098629806336

`A277788(eq[6, A130270(n+1)])`
-/

namespace A277786.P14364541098629806336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277786.P14364541098629806336

/-! ## A277786.P16402793061022291510

`A277788(eq[7, A131818(n+1)])`
-/

namespace A277786.P16402793061022291510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277786.P16402793061022291510

/-! ## A277786.P1569900221131217675

`A277788(A052905(n+3))`
-/

namespace A277786.P1569900221131217675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A052905 (n + 3)).toNat

end

end A277786.P1569900221131217675

/-! ## A277786.P4682525562406138144

`A277788(eq[6, A200370(n+1)])`
-/

namespace A277786.P4682525562406138144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277786.P4682525562406138144

/-!
# A277787: Number of nX7 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277787, there is no canonical definition to state claims against.
-/

/-! ## A277787.P5977488056680225380

`A277788(A374008(n+1))`
-/

namespace A277787.P5977488056680225380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A374008 (n + 1)).toNat

end

end A277787.P5977488056680225380

/-! ## A277787.P9625761486186239208

`A277788(eq[8, A131818(n+1)])`
-/

namespace A277787.P9625761486186239208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277787.P9625761486186239208

/-! ## A277787.P1780749711033892286

`A277788(A055999(n+4))`
-/

namespace A277787.P1780749711033892286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (A055999 (n + 4)).toNat

end

end A277787.P1780749711033892286

/-! ## A277787.P5344204375065625845

`A277788(eq[10, A185782(n+1)])`
-/

namespace A277787.P5344204375065625845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277787.P5344204375065625845

/-!
# A277788: T(n,k)=Number of nXk 0..2 arrays with every element equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0) both plus 1 mod 3 and minus 1 mod 3, with new values introduced in order 0..2.

The programs for A277788, there is no canonical definition to state claims against.
-/

/-! ## A277788.P10113979529100398512

`A061893(A022184(n))`
-/

namespace A277788.P10113979529100398512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061893 (A022184 n).toNat

end

end A277788.P10113979529100398512

/-! ## A277788.P15788493079049354107

`A156875(A022182(n))`
-/

namespace A277788.P15788493079049354107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A022182 n).toNat

end

end A277788.P15788493079049354107

/-! ## A277788.P6478487216075642686

`A088528(A173043(n))`
-/

namespace A277788.P6478487216075642686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088528 (A173043 n).toNat

end

end A277788.P6478487216075642686

/-! ## A277788.P11353880997558517835

`A093366(A174411(n))`
-/

namespace A277788.P11353880997558517835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093366 (A174411 n).toNat

end

end A277788.P11353880997558517835

/-! ## A277788.P8460512347866509380

`A214120(A157192(n))`
-/

namespace A277788.P8460512347866509380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214120 (A157192 n).toNat

end

end A277788.P8460512347866509380

/-!
# A277789: a(n) = Sum_{k=0..n} (-1)^k*floor((1 + sqrt(2))^k).

The programs for A277789, the canonical program `A277789.P1199236273393294411` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277789 has offset 0).

The definition of A277789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277789.P1199236273393294411

`∑[xor(A002203(n)-1, -and(1, n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277789

/-- `∑[xor(A002203(n)-1, -and(1, n))]` -/
def P1199236273393294411.Spec : Prop :=
  ∀ n, P1199236273393294411.a n = A277789 n

theorem P1199236273393294411.correct : P1199236273393294411.Spec := by
  intro n
  simp only [A277789]

end A277789

/-! ## A277789.P12123958069638793584

`∑[A033999(n)*A080039(n)]`
-/

namespace A277789.P12123958069638793584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277789.P12123958069638793584

namespace A277789

/-- `∑[A033999(n)*A080039(n)]` -/
def P12123958069638793584.Spec : Prop :=
  ∀ n, P12123958069638793584.a n = A277789 n

end A277789

/-! ## A277789.P1709661483385970189

`∑[A056594(2*n)*A080039(n)]`
-/

namespace A277789.P1709661483385970189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A080039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277789.P1709661483385970189

namespace A277789

/-- `∑[A056594(2*n)*A080039(n)]` -/
def P1709661483385970189.Spec : Prop :=
  ∀ n, P1709661483385970189.a n = A277789 n

end A277789

/-! ## A277789.P5063547263680962872

`∑[A009531(2*n+1)*A080039(n)]`
-/

namespace A277789.P5063547263680962872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A080039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277789.P5063547263680962872

namespace A277789

/-- `∑[A009531(2*n+1)*A080039(n)]` -/
def P5063547263680962872.Spec : Prop :=
  ∀ n, P5063547263680962872.a n = A277789 n

end A277789

/-! ## A277789.P11472608667235073243

`∑[A080039(n)/A056594(A005843(n))]`
-/

namespace A277789.P11472608667235073243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080039 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277789.P11472608667235073243

namespace A277789

/-- `∑[A080039(n)/A056594(A005843(n))]` -/
def P11472608667235073243.Spec : Prop :=
  ∀ n, P11472608667235073243.a n = (A277789 n : ℚ)

end A277789

/-!
# A277790: Numerator of sum of reciprocals of proper divisors of n.

The programs for A277790, the canonical program `A277790.P4817800256069150675` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277790 has offset 1).

The definition of A277790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277790.P4817800256069150675

`lcm(n+1, A039653(n+1))/(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277790

/-- `lcm(n+1, A039653(n+1))/(n+1)` -/
def P4817800256069150675.Spec : Prop :=
  ∀ n, P4817800256069150675.a n = (A277790 (n + 1) : ℚ)

end A277790

/-! ## A277790.P13551458426815326973

`(A088580(n+1)-2)/gcd(n+1, A088580(n+1)-2)`
-/

namespace A277790.P13551458426815326973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (A088580 (n + 1) - 2) : ℚ)

end

end A277790.P13551458426815326973

namespace A277790

/-- `(A088580(n+1)-2)/gcd(n+1, A088580(n+1)-2)` -/
def P13551458426815326973.Spec : Prop :=
  ∀ n, P13551458426815326973.a n = (A277790 (n + 1) : ℚ)

end A277790

/-! ## A277790.P2048078948619025202

`A039653(n+1)/gcd(A000027(n+1), A039653(n+1))`
-/

namespace A277790.P2048078948619025202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A039653 (n + 1)) : ℚ)

end

end A277790.P2048078948619025202

namespace A277790

/-- `A039653(n+1)/gcd(A000027(n+1), A039653(n+1))` -/
def P2048078948619025202.Spec : Prop :=
  ∀ n, P2048078948619025202.a n = (A277790 (n + 1) : ℚ)

end A277790

/-! ## A277790.P7347203106172030095

`A116416(A247146(n+1))`
-/

namespace A277790.P7347203106172030095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A247146 (n + 1)).toNat

end

end A277790.P7347203106172030095

namespace A277790

/-- `A116416(A247146(n+1))` -/
def P7347203106172030095.Spec : Prop :=
  ∀ n, P7347203106172030095.a n = A277790 (n + 1)

end A277790

/-! ## A277790.P542268586080777818

`A072828(n+1)%A000005(A067911(n+1))`
-/

namespace A277790.P542268586080777818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A000005 (A067911 (n + 1)).toNat)

end

end A277790.P542268586080777818

namespace A277790

/-- `A072828(n+1)%A000005(A067911(n+1))` -/
def P542268586080777818.Spec : Prop :=
  ∀ n, P542268586080777818.a n = A277790 (n + 1)

end A277790

/-!
# A277791: Denominator of sum of reciprocals of proper divisors of n.

The programs for A277791, the canonical program `A277791.P6185971221703671631` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277791 has offset 1).

The definition of A277791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277791.P6185971221703671631

`(n+1)/gcd(A039653(n+1), n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277791

/-- `(n+1)/gcd(A039653(n+1), n+1)` -/
def P6185971221703671631.Spec : Prop :=
  ∀ n, P6185971221703671631.a n = (A277791 (n + 1) : ℚ)

end A277791

/-! ## A277791.P10060131789398289177

`(n+1)/gcd(A000027(n+1), A048050(n+1))`
-/

namespace A277791.P10060131789398289177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000027 (n + 1)) (A048050 (n + 1)) : ℚ)

end

end A277791.P10060131789398289177

namespace A277791

/-- `(n+1)/gcd(A000027(n+1), A048050(n+1))` -/
def P10060131789398289177.Spec : Prop :=
  ∀ n, P10060131789398289177.a n = (A277791 (n + 1) : ℚ)

end A277791

/-! ## A277791.P9538955338499209827

`lcm(n+1, A334136(n+1)+1)/(A334136(n+1)+1)`
-/

namespace A277791.P9538955338499209827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A334136 (n + 1) + 1) : ℚ) / (A334136 (n + 1) + 1 : ℚ)

end

end A277791.P9538955338499209827

namespace A277791

/-- `lcm(n+1, A334136(n+1)+1)/(A334136(n+1)+1)` -/
def P9538955338499209827.Spec : Prop :=
  ∀ n, P9538955338499209827.a n = (A277791 (n + 1) : ℚ)

end A277791

/-! ## A277791.P6153088923595936913

`A075119(A048050(n+1)+∑[A005408(n)])`
-/

namespace A277791.P6153088923595936913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A048050 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277791.P6153088923595936913

namespace A277791

/-- `A075119(A048050(n+1)+∑[A005408(n)])` -/
def P6153088923595936913.Spec : Prop :=
  ∀ n, P6153088923595936913.a n = A277791 (n + 1)

end A277791

/-! ## A277791.P15884965854498451640

`A116417(A247146(n+1))`
-/

namespace A277791.P15884965854498451640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A247146 (n + 1)).toNat

end

end A277791.P15884965854498451640

namespace A277791

/-- `A116417(A247146(n+1))` -/
def P15884965854498451640.Spec : Prop :=
  ∀ n, P15884965854498451640.a n = A277791 (n + 1)

end A277791

/-!
# A277792: Squares that are also pentagonal pyramidal numbers.

The programs for A277792, the canonical program `A277792.P14699028109570029481` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277792 has offset 0).

The definition of A277792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277792.P14699028109570029481

`n²*(2*n²-1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277792

/-- `n²*(2*n²-1)²` -/
def P14699028109570029481.Spec : Prop :=
  ∀ n, P14699028109570029481.a n = A277792 n

theorem P14699028109570029481.correct : P14699028109570029481.Spec := by
  intro n
  simp only [A277792]

end A277792

/-! ## A277792.P11834851475802686262

`A000290(A007588(n))`
-/

namespace A277792.P11834851475802686262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A007588 n).toNat

end

end A277792.P11834851475802686262

namespace A277792

/-- `A000290(A007588(n))` -/
def P11834851475802686262.Spec : Prop :=
  ∀ n, P11834851475802686262.a n = A277792 n

end A277792

/-! ## A277792.P11315392205138159228

`Δ[C(n²-n, 2)]^2`
-/

namespace A277792.P11315392205138159228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A277792.P11315392205138159228

namespace A277792

/-- `Δ[C(n²-n, 2)]^2` -/
def P11315392205138159228.Spec : Prop :=
  ∀ n, P11315392205138159228.a n = A277792 n

end A277792

/-! ## A277792.P3747842135266483405

`lcm(n, 1-2*n^2)^2`
-/

namespace A277792.P3747842135266483405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (2 * n ^ 2 : ℤ)) ^ 2

end

end A277792.P3747842135266483405

namespace A277792

/-- `lcm(n, 1-2*n^2)^2` -/
def P3747842135266483405.Spec : Prop :=
  ∀ n, (P3747842135266483405.a n : ℤ) = A277792 n

end A277792

/-! ## A277792.P4348708094141839330

`Δ[(1-n)²²-a(n-1)]²` with `a(0)=0`
-/

namespace A277792.P4348708094141839330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A277792.P4348708094141839330

namespace A277792

/-- `Δ[(1-n)²²-a(n-1)]²` -/
def P4348708094141839330.Spec : Prop :=
  ∀ n, P4348708094141839330.a n = A277792 n

end A277792

/-! ## A277792.P15135856801997313192

`(A144138(n)/4)²`
-/

namespace A277792.P15135856801997313192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A144138 n : ℚ) / 4) ^ 2

end

end A277792.P15135856801997313192

namespace A277792

/-- `(A144138(n)/4)²` -/
def P15135856801997313192.Spec : Prop :=
  ∀ n, P15135856801997313192.a n = (A277792 n : ℚ)

end A277792

/-! ## A277792.P17070558478692327037

`(n-A033431(n))²`
-/

namespace A277792.P17070558478692327037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A033431 n) ^ 2

end

end A277792.P17070558478692327037

namespace A277792

/-- `(n-A033431(n))²` -/
def P17070558478692327037.Spec : Prop :=
  ∀ n, P17070558478692327037.a n = A277792 n

end A277792

/-! ## A277792.P10223249367453041276

`(n*A056220(n))²`
-/

namespace A277792.P10223249367453041276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A056220 n) ^ 2

end

end A277792.P10223249367453041276

namespace A277792

/-- `(n*A056220(n))²` -/
def P10223249367453041276.Spec : Prop :=
  ∀ n, P10223249367453041276.a n = A277792 n

end A277792

/-! ## A277792.P4008818987043674653

`(n+1-A033562(n))²`
-/

namespace A277792.P4008818987043674653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A033562 n) ^ 2

end

end A277792.P4008818987043674653

namespace A277792

/-- `(n+1-A033562(n))²` -/
def P4008818987043674653.Spec : Prop :=
  ∀ n, P4008818987043674653.a n = A277792 n

end A277792

/-! ## A277792.P403282615854511624

`lcm(A000290(n), A239607(n))`
-/

namespace A277792.P403282615854511624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A239607 n)

end

end A277792.P403282615854511624

namespace A277792

/-- `lcm(A000290(n), A239607(n))` -/
def P403282615854511624.Spec : Prop :=
  ∀ n, (P403282615854511624.a n : ℤ) = A277792 n

end A277792

/-! ## A277792.P5199278864863597694

`A001105(n)*A002593(n)-A002593(n)`
-/

namespace A277792.P5199278864863597694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A002593 n - A002593 n

end

end A277792.P5199278864863597694

namespace A277792

/-- `A001105(n)*A002593(n)-A002593(n)` -/
def P5199278864863597694.Spec : Prop :=
  ∀ n, P5199278864863597694.a n = A277792 n

end A277792

/-! ## A277792.P11312649507784416607

`(n*Δ[A146298(n)])²`
-/

namespace A277792.P11312649507784416607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n)) ^ 2

end

end A277792.P11312649507784416607

namespace A277792

/-- `(n*Δ[A146298(n)])²` -/
def P11312649507784416607.Spec : Prop :=
  ∀ n, P11312649507784416607.a n = A277792 n

end A277792

/-! ## A277792.P5237581129814000546

`(A280058(n+1)+n)²`
-/

namespace A277792.P5237581129814000546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280058 (n + 1) + (n : ℤ)) ^ 2

end

end A277792.P5237581129814000546

namespace A277792

/-- `(A280058(n+1)+n)²` -/
def P5237581129814000546.Spec : Prop :=
  ∀ n, P5237581129814000546.a n = A277792 n

end A277792

/-! ## A277792.P18182537724944303518

`A387645(A004277(n))`
-/

namespace A277792.P18182537724944303518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387645 (A004277 n).toNat

end

end A277792.P18182537724944303518

namespace A277792

/-- `A387645(A004277(n))` -/
def P18182537724944303518.Spec : Prop :=
  ∀ n, P18182537724944303518.a n = A277792 n

end A277792

/-! ## A277792.P15854318655646727214

`A387645(A004275(n+1))`
-/

namespace A277792.P15854318655646727214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387645 (A004275 (n + 1)).toNat

end

end A277792.P15854318655646727214

namespace A277792

/-- `A387645(A004275(n+1))` -/
def P15854318655646727214.Spec : Prop :=
  ∀ n, P15854318655646727214.a n = A277792 n

end A277792

/-! ## A277792.P4670141227530193139

`A007588(A076411(A001597(n+1)))²`
-/

namespace A277792.P4670141227530193139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A076411 (A001597 (n + 1)).toNat).toNat ^ 2

end

end A277792.P4670141227530193139

namespace A277792

/-- `A007588(A076411(A001597(n+1)))²` -/
def P4670141227530193139.Spec : Prop :=
  ∀ n, P4670141227530193139.a n = A277792 n

end A277792

/-! ## A277792.P1897852541691037831

`(n*A004273(n²))²`
-/

namespace A277792.P1897852541691037831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A004273 (n ^ 2)) ^ 2

end

end A277792.P1897852541691037831

namespace A277792

/-- `(n*A004273(n²))²` -/
def P1897852541691037831.Spec : Prop :=
  ∀ n, P1897852541691037831.a n = A277792 n

end A277792

/-! ## A277792.P15885253623701434442

`(n*A060747(n²))²`
-/

namespace A277792.P15885253623701434442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A060747 (n ^ 2)) ^ 2

end

end A277792.P15885253623701434442

namespace A277792

/-- `(n*A060747(n²))²` -/
def P15885253623701434442.Spec : Prop :=
  ∀ n, P15885253623701434442.a n = A277792 n

end A277792

/-! ## A277792.P6088665068584150245

`(n*A163985(n²))²`
-/

namespace A277792.P6088665068584150245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A163985 (n ^ 2)) ^ 2

end

end A277792.P6088665068584150245

namespace A277792

/-- `(n*A163985(n²))²` -/
def P6088665068584150245.Spec : Prop :=
  ∀ n, P6088665068584150245.a n = A277792 n

end A277792

/-! ## A277792.P16505728092248273992

`(n*A165747(n²))²`
-/

namespace A277792.P16505728092248273992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A165747 (n ^ 2)) ^ 2

end

end A277792.P16505728092248273992

namespace A277792

/-- `(n*A165747(n²))²` -/
def P16505728092248273992.Spec : Prop :=
  ∀ n, P16505728092248273992.a n = A277792 n

end A277792

/-!
# A277793: Numbers k such that the arithmetic and geometric means of the divisors of k are both integers.

The programs for A277793, there is no canonical definition to state claims against.
-/

/-! ## A277793.P7612511757558450305

`∪[A107924(n+1), A107925(n+1)]²`
-/

namespace A277793.P7612511757558450305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A277793.P7612511757558450305

/-! ## A277793.P40212286855901472

`∩[A277553(n+1), n²]`
-/

namespace A277793.P40212286855901472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A277793.P40212286855901472

/-! ## A277793.P14137275255048850832

`∩[A000290(n), A277553(n+1)]`
-/

namespace A277793.P14137275255048850832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P14137275255048850832

/-! ## A277793.P963515804454773838

`∩[A002760(n+1), A277553(n+1)]`
-/

namespace A277793.P963515804454773838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P963515804454773838

/-! ## A277793.P7077071793341362247

`∩[A085960(n+1), A277553(n+1)]`
-/

namespace A277793.P7077071793341362247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P7077071793341362247

/-! ## A277793.P11107598266357916948

`A000290(∪[A107924(n+1), A107925(n+1)])`
-/

namespace A277793.P11107598266357916948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A277793.P11107598266357916948

/-! ## A277793.P3425971074032884728

`∩[A188915(n), A277553(n+1)]`
-/

namespace A277793.P3425971074032884728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P3425971074032884728

/-! ## A277793.P9244498720522995460

`∩[A266918(n+1), A277553(n+1)]`
-/

namespace A277793.P9244498720522995460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P9244498720522995460

/-! ## A277793.P1724475269868793022

`∩[A001597(n+1), A277553(n+1)]`
-/

namespace A277793.P1724475269868793022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P1724475269868793022

/-! ## A277793.P6965720208310221815

`∩[A213011(n+1), A277553(n+1)]`
-/

namespace A277793.P6965720208310221815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P6965720208310221815

/-! ## A277793.P13587895169304672019

`∩[A034793(n+1), A277553(n+1)]`
-/

namespace A277793.P13587895169304672019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P13587895169304672019

/-! ## A277793.P7728147822057282235

`∩[A272266(n+1), A277553(n+1)]`
-/

namespace A277793.P7728147822057282235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P7728147822057282235

/-! ## A277793.P9942502419152090639

`∩[A028982(n+1), A277553(n+1)]`
-/

namespace A277793.P9942502419152090639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P9942502419152090639

/-! ## A277793.P3255500897111449740

`∩[A135276(n), A277553(n+1)]`
-/

namespace A277793.P3255500897111449740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P3255500897111449740

/-! ## A277793.P2872789933496982458

`∩[A228012(n+2), A277553(n+1)]`
-/

namespace A277793.P2872789933496982458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P2872789933496982458

/-! ## A277793.P18032593395215562265

`∩[A083854(n), A277553(n+1)]`
-/

namespace A277793.P18032593395215562265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P18032593395215562265

/-! ## A277793.P14969260535904609466

`∩[A050271(n+1), A277553(n+1)]`
-/

namespace A277793.P14969260535904609466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277793.P14969260535904609466

/-!
# A277794: Numbers k such that the sum of proper divisors of k is a prime, and the sum of the numbers less than k that do not divide k is also a prime.

The programs for A277794, there is no canonical definition to state claims against.
-/

/-! ## A277794.P4742992727488146770

`∩[A037020(n+1), A200981(n+1)]`
-/

namespace A277794.P4742992727488146770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277794.P4742992727488146770

/-! ## A277794.P13802445012391894747

`A066888(A229524(n+1)+A055983(3*(n+1)))`
-/

namespace A277794.P13802445012391894747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A229524 (n + 1) + A055983 (3 * (n + 1))).toNat

end

end A277794.P13802445012391894747

/-!
# A277795: Number of trees with n unlabeled nodes such that all nodes with degree >2 lie on a single path with length equal to the tree's diameter.

The programs for A277795, there is no canonical definition to state claims against.
-/

/-! ## A277795.P4555664428370092284

`A000055(n)-A025442(A324372(n))`
-/

namespace A277795.P4555664428370092284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A025442 (A324372 n).toNat

end

end A277795.P4555664428370092284

/-! ## A277795.P10798466993440527303

`or(A020639(A001256(n)), A036653(n))`
-/

namespace A277795.P10798466993440527303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A001256 n).toNat) (A036653 n)

end

end A277795.P10798466993440527303

/-! ## A277795.P7072333898337201937

`or(A001221(A134063(n)), A036653(n))`
-/

namespace A277795.P7072333898337201937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A134063 n).toNat) (A036653 n)

end

end A277795.P7072333898337201937

/-! ## A277795.P2769201463481476208

`or(A001190(n), A051907(A357640(n)))`
-/

namespace A277795.P2769201463481476208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001190 n) (A051907 (A357640 n).toNat)

end

end A277795.P2769201463481476208

/-! ## A277795.P15660784313614584399

`or(A001222(A018305(n+1)), A036653(n))`
-/

namespace A277795.P15660784313614584399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A018305 (n + 1)).toNat) (A036653 n)

end

end A277795.P15660784313614584399

/-!
# A277796: Number of trees with n unlabeled nodes such that all nodes of degree >2 lie on a single path.

The programs for A277796, there is no canonical definition to state claims against.
-/

/-! ## A277796.P12606050458079720908

`xor(A307825(n), A359392(n))`
-/

namespace A277796.P12606050458079720908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A307825 n) (A359392 n)

end

end A277796.P12606050458079720908

/-! ## A277796.P13202041202147947798

`xor(A034398(n+1), A359392(n))`
-/

namespace A277796.P13202041202147947798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034398 (n + 1)) (A359392 n)

end

end A277796.P13202041202147947798

/-! ## A277796.P206359536214642275

`xor(A045888(n+1), A359392(n))`
-/

namespace A277796.P206359536214642275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045888 (n + 1)) (A359392 n)

end

end A277796.P206359536214642275

/-! ## A277796.P546583830861195766

`xor(A235924(n+1), A359392(n))`
-/

namespace A277796.P546583830861195766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235924 (n + 1)) (A359392 n)

end

end A277796.P546583830861195766

/-! ## A277796.P17345950722173530837

`xor(A236511(n+1), A359392(n))`
-/

namespace A277796.P17345950722173530837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A236511 (n + 1)) (A359392 n)

end

end A277796.P17345950722173530837

/-!
# A277797: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A277797, the canonical program `A277797.P17351685316325223803` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277797 has offset 0).

The definition of A277797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277797.P14959689136118077115

`A277864(n)-n%2`
-/

namespace A277797.P14959689136118077115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277864 n - ((n % 2 : ℕ) : ℤ)

end

end A277797.P14959689136118077115

namespace A277797

/-- `A277864(n)-n%2` -/
def P14959689136118077115.Spec : Prop :=
  ∀ n, P14959689136118077115.a n = A277797 n

end A277797

/-! ## A277797.P1420009028994542418

`(1-char[1])*A287194(n)`
-/

namespace A277797.P1420009028994542418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A287194 n

end

end A277797.P1420009028994542418

namespace A277797

/-- `(1-char[1])*A287194(n)` -/
def P1420009028994542418.Spec : Prop :=
  ∀ n, P1420009028994542418.a n = A277797 n

end A277797

/-! ## A277797.P11772071429235857798

`A283504(n*A000035(n))`
-/

namespace A277797.P11772071429235857798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283504 ((n : ℤ) * A000035 n).toNat

end

end A277797.P11772071429235857798

namespace A277797

/-- `A283504(n*A000035(n))` -/
def P11772071429235857798.Spec : Prop :=
  ∀ n, P11772071429235857798.a n = A277797 n

end A277797

/-! ## A277797.P4695639872460398857

`A283504(Δ[A004526(n)²])`
-/

namespace A277797.P4695639872460398857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283504 (f1 (n + 1) - f1 n).toNat

end

end A277797.P4695639872460398857

namespace A277797

/-- `A283504(Δ[A004526(n)²])` -/
def P4695639872460398857.Spec : Prop :=
  ∀ n, P4695639872460398857.a n = A277797 n

end A277797

/-! ## A277797.P1007892549784779380

`A287194(A254667(n))-char[1]`
-/

namespace A277797.P1007892549784779380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287194 (A254667 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277797.P1007892549784779380

namespace A277797

/-- `A287194(A254667(n))-char[1]` -/
def P1007892549784779380.Spec : Prop :=
  ∀ n, P1007892549784779380.a n = A277797 n

end A277797

/-! ## A277797.P10956428727710098391

`A277864(n)-Δ[A004526(n)]`
-/

namespace A277797.P10956428727710098391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277864 n - (f1 (n + 1) - f1 n)

end

end A277797.P10956428727710098391

namespace A277797

/-- `A277864(n)-Δ[A004526(n)]` -/
def P10956428727710098391.Spec : Prop :=
  ∀ n, P10956428727710098391.a n = A277797 n

end A277797

/-! ## A277797.P10429468624736574387

`A277864(n)-Δ[A008619(n)]`
-/

namespace A277797.P10429468624736574387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277864 n - (f1 (n + 1) - f1 n)

end

end A277797.P10429468624736574387

namespace A277797

/-- `A277864(n)-Δ[A008619(n)]` -/
def P10429468624736574387.Spec : Prop :=
  ∀ n, P10429468624736574387.a n = A277797 n

end A277797

/-! ## A277797.P10734738530544307085

`A283504(n*Δ[A004526(n)])`
-/

namespace A277797.P10734738530544307085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283504 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A277797.P10734738530544307085

namespace A277797

/-- `A283504(n*Δ[A004526(n)])` -/
def P10734738530544307085.Spec : Prop :=
  ∀ n, P10734738530544307085.a n = A277797 n

end A277797

/-! ## A277797.P11539821666497402569

`A277864(n)-char[A008619(4*n)]`
-/

namespace A277797.P11539821666497402569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277864 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277797.P11539821666497402569

namespace A277797

/-- `A277864(n)-char[A008619(4*n)]` -/
def P11539821666497402569.Spec : Prop :=
  ∀ n, P11539821666497402569.a n = A277797 n

end A277797

/-! ## A277797.P623139555734700637

`A280410(n)-A210283(Δ[A008619(n)])`
-/

namespace A277797.P623139555734700637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280410 n - A210283 (f1 (n + 1) - f1 n).toNat

end

end A277797.P623139555734700637

namespace A277797

/-- `A280410(n)-A210283(Δ[A008619(n)])` -/
def P623139555734700637.Spec : Prop :=
  ∀ n, P623139555734700637.a n = A277797 n

end A277797

/-! ## A277797.P555231090485690114

`A287194(n)%A287196(A026741(n+2))`
-/

namespace A277797.P555231090485690114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287194 n) (A287196 (A026741 (n + 2)).toNat)

end

end A277797.P555231090485690114

namespace A277797

/-- `A287194(n)%A287196(A026741(n+2))` -/
def P555231090485690114.Spec : Prop :=
  ∀ n, P555231090485690114.a n = A277797 n

end A277797

/-! ## A277797.P14772281956831916172

`A277798(n)+A287194(n)-A287196(n)`
-/

namespace A277797.P14772281956831916172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 n + (A287194 n - A287196 n)

end

end A277797.P14772281956831916172

namespace A277797

/-- `A277798(n)+A287194(n)-A287196(n)` -/
def P14772281956831916172.Spec : Prop :=
  ∀ n, P14772281956831916172.a n = A277797 n

end A277797

/-! ## A277797.P17351685316325223803

`A284351(n*A000035(n))-A000035(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277797

/-- `A284351(n*A000035(n))-A000035(n)` -/
def P17351685316325223803.Spec : Prop :=
  ∀ n, P17351685316325223803.a n = A277797 n

theorem P17351685316325223803.correct : P17351685316325223803.Spec := by
  intro n
  simp only [A277797]

end A277797

/-! ## A277797.P13331828779956787052

`A287194(n)/A287197(n)*A277799(n)`
-/

namespace A277797.P13331828779956787052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287194 n : ℚ) / (A287197 n : ℚ) * (A277799 n : ℚ)

end

end A277797.P13331828779956787052

namespace A277797

/-- `A287194(n)/A287197(n)*A277799(n)` -/
def P13331828779956787052.Spec : Prop :=
  ∀ n, P13331828779956787052.a n = (A277797 n : ℚ)

end A277797

/-! ## A277797.P6783223122084236562

`A287194(n)/A287199(n)*A277800(n)`
-/

namespace A277797.P6783223122084236562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287194 n : ℚ) / (A287199 n : ℚ) * (A277800 n : ℚ)

end

end A277797.P6783223122084236562

namespace A277797

/-- `A287194(n)/A287199(n)*A277800(n)` -/
def P6783223122084236562.Spec : Prop :=
  ∀ n, P6783223122084236562.a n = (A277797 n : ℚ)

end A277797

/-! ## A277797.P4293279901817400536

`A094026(2*n+1)-A094026(A265723(n))`
-/

namespace A277797.P4293279901817400536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (2 * n + 1) - A094026 (A265723 n).toNat

end

end A277797.P4293279901817400536

namespace A277797

/-- `A094026(2*n+1)-A094026(A265723(n))` -/
def P4293279901817400536.Spec : Prop :=
  ∀ n, P4293279901817400536.a n = A277797 n

end A277797

/-!
# A277798: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A277798, the canonical program `A277798.P12113487240279420772` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277798 has offset 0).

The definition of A277798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277798.P12427180259654829448

`(1-char[1])*A287196(n)`
-/

namespace A277798.P12427180259654829448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A287196 n

end

end A277798.P12427180259654829448

namespace A277798

/-- `(1-char[1])*A287196(n)` -/
def P12427180259654829448.Spec : Prop :=
  ∀ n, P12427180259654829448.a n = A277798 n

end A277798

/-! ## A277798.P10681639742063807324

`lcm(A123108(A048298(n)), A287196(n))`
-/

namespace A277798.P10681639742063807324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123108 (A048298 n).toNat) (A287196 n)

end

end A277798.P10681639742063807324

namespace A277798

/-- `lcm(A123108(A048298(n)), A287196(n))` -/
def P10681639742063807324.Spec : Prop :=
  ∀ n, (P10681639742063807324.a n : ℤ) = A277798 n

end A277798

/-! ## A277798.P3567741346707335067

`A277797(n)+A287196(n)-A287194(n)`
-/

namespace A277798.P3567741346707335067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + (A287196 n - A287194 n)

end

end A277798.P3567741346707335067

namespace A277798

/-- `A277797(n)+A287196(n)-A287194(n)` -/
def P3567741346707335067.Spec : Prop :=
  ∀ n, P3567741346707335067.a n = A277798 n

end A277798

/-! ## A277798.P12113487240279420772

`101*a(n-2)-100*a(n-4)` with `a(0)=1, a(1)=0, a(2)=100, a(3)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277798

/-- `101*a(n-2)-100*a(n-4)` -/
def P12113487240279420772.Spec : Prop :=
  ∀ n, P12113487240279420772.a n = A277798 n

theorem P12113487240279420772.correct : P12113487240279420772.Spec := by
  intro n
  simp only [A277798]

end A277798

/-! ## A277798.P12216950968385937614

`A287196(n)%A287196(n+2)`
-/

namespace A277798.P12216950968385937614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287196 n) (A287196 (n + 2))

end

end A277798.P12216950968385937614

namespace A277798

/-- `A287196(n)%A287196(n+2)` -/
def P12216950968385937614.Spec : Prop :=
  ∀ n, P12216950968385937614.a n = A277798 n

end A277798

/-! ## A277798.P13652082424251528656

`A277799(n)*A287196(n)/A287197(n)`
-/

namespace A277798.P13652082424251528656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277799 n * A287196 n : ℚ) / (A287197 n : ℚ)

end

end A277798.P13652082424251528656

namespace A277798

/-- `A277799(n)*A287196(n)/A287197(n)` -/
def P13652082424251528656.Spec : Prop :=
  ∀ n, P13652082424251528656.a n = (A277798 n : ℚ)

end A277798

/-! ## A277798.P15435896988171555654

`A277800(n)*A287196(n)/A287199(n)`
-/

namespace A277798.P15435896988171555654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277800 n * A287196 n : ℚ) / (A287199 n : ℚ)

end

end A277798.P15435896988171555654

namespace A277798

/-- `A277800(n)*A287196(n)/A287199(n)` -/
def P15435896988171555654.Spec : Prop :=
  ∀ n, P15435896988171555654.a n = (A277798 n : ℚ)

end A277798

/-!
# A277799: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

The programs for A277799, the canonical program `A277799.P10560706908825292983` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277799 has offset 0).

The definition of A277799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277799.P10560706908825292983

`gcd(1-a(n-1), 4*(a(n-2)+3))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277799

/-- `gcd(1-a(n-1), 4*(a(n-2)+3))` -/
def P10560706908825292983.Spec : Prop :=
  ∀ n, (P10560706908825292983.a n : ℤ) = A277799 n

theorem P10560706908825292983.correct : P10560706908825292983.Spec := by
  intro n
  simp only [A277799]

end A277799

/-! ## A277799.P16676492619305199748

`abs(2-A282004(n))`
-/

namespace A277799.P16676492619305199748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A282004 n|

end

end A277799.P16676492619305199748

namespace A277799

/-- `abs(2-A282004(n))` -/
def P16676492619305199748.Spec : Prop :=
  ∀ n, P16676492619305199748.a n = A277799 n

end A277799

/-! ## A277799.P4351016802167229217

`xor(1, A280412(n)-1)`
-/

namespace A277799.P4351016802167229217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A280412 n - 1)

end

end A277799.P4351016802167229217

namespace A277799

/-- `xor(1, A280412(n)-1)` -/
def P4351016802167229217.Spec : Prop :=
  ∀ n, P4351016802167229217.a n = A277799 n

end A277799

/-! ## A277799.P566695268460396018

`or(2, A285645(n))-2`
-/

namespace A277799.P566695268460396018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A285645 n) - 2

end

end A277799.P566695268460396018

namespace A277799

/-- `or(2, A285645(n))-2` -/
def P566695268460396018.Spec : Prop :=
  ∀ n, P566695268460396018.a n = A277799 n

end A277799

/-! ## A277799.P5679367927319766488

`or(2, A288762(n))-2`
-/

namespace A277799.P5679367927319766488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A288762 n) - 2

end

end A277799.P5679367927319766488

namespace A277799

/-- `or(2, A288762(n))-2` -/
def P5679367927319766488.Spec : Prop :=
  ∀ n, P5679367927319766488.a n = A277799 n

end A277799

/-! ## A277799.P11241594139467406709

`A283506(lcm(2, n)-n)`
-/

namespace A277799.P11241594139467406709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 (Nat.lcm 2 n - n)

end

end A277799.P11241594139467406709

namespace A277799

/-- `A283506(lcm(2, n)-n)` -/
def P11241594139467406709.Spec : Prop :=
  ∀ n, P11241594139467406709.a n = A277799 n

end A277799

/-! ## A277799.P10605980764746645627

`A277866(n)-and(1, n)`
-/

namespace A277799.P10605980764746645627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n - (Nat.land 1 n : ℤ)

end

end A277799.P10605980764746645627

namespace A277799

/-- `A277866(n)-and(1, n)` -/
def P10605980764746645627.Spec : Prop :=
  ∀ n, P10605980764746645627.a n = A277799 n

end A277799

/-! ## A277799.P17167775493711393538

`A283506(n*and(1, n))`
-/

namespace A277799.P17167775493711393538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 (n * Nat.land 1 n)

end

end A277799.P17167775493711393538

namespace A277799

/-- `A283506(n*and(1, n))` -/
def P17167775493711393538.Spec : Prop :=
  ∀ n, P17167775493711393538.a n = A277799 n

end A277799

/-! ## A277799.P18294868259787254627

`A277866(n)-A000035(n)`
-/

namespace A277799.P18294868259787254627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n - A000035 n

end

end A277799.P18294868259787254627

namespace A277799

/-- `A277866(n)-A000035(n)` -/
def P18294868259787254627.Spec : Prop :=
  ∀ n, P18294868259787254627.a n = A277799 n

end A277799

/-! ## A277799.P1026806676802141203

`A280412(n)-A010673(n)`
-/

namespace A277799.P1026806676802141203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280412 n - A010673 n

end

end A277799.P1026806676802141203

namespace A277799

/-- `A280412(n)-A010673(n)` -/
def P1026806676802141203.Spec : Prop :=
  ∀ n, P1026806676802141203.a n = A277799 n

end A277799

/-! ## A277799.P11463004268232777836

`A060576(n)*A287197(n)`
-/

namespace A277799.P11463004268232777836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A287197 n

end

end A277799.P11463004268232777836

namespace A277799

/-- `A060576(n)*A287197(n)` -/
def P11463004268232777836.Spec : Prop :=
  ∀ n, P11463004268232777836.a n = A277799 n

end A277799

/-! ## A277799.P15252190441658489921

`lcm(A105609(n), A287197(n))`
-/

namespace A277799.P15252190441658489921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105609 n) (A287197 n)

end

end A277799.P15252190441658489921

namespace A277799

/-- `lcm(A105609(n), A287197(n))` -/
def P15252190441658489921.Spec : Prop :=
  ∀ n, (P15252190441658489921.a n : ℤ) = A277799 n

end A277799

/-! ## A277799.P6235277731185030165

`A283506(and(n, A033999(n)))`
-/

namespace A277799.P6235277731185030165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 (Int.land (n : ℤ) (A033999 n)).toNat

end

end A277799.P6235277731185030165

namespace A277799

/-- `A283506(and(n, A033999(n)))` -/
def P6235277731185030165.Spec : Prop :=
  ∀ n, P6235277731185030165.a n = A277799 n

end A277799

/-! ## A277799.P5155316083360629651

`and(A174971(n), A280412(n))`
-/

namespace A277799.P5155316083360629651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174971 n) (A280412 n)

end

end A277799.P5155316083360629651

namespace A277799

/-- `and(A174971(n), A280412(n))` -/
def P5155316083360629651.Spec : Prop :=
  ∀ n, P5155316083360629651.a n = A277799 n

end A277799

/-! ## A277799.P9947003140274913572

`and(A277866(n), A280412(n))`
-/

namespace A277799.P9947003140274913572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n) (A280412 n)

end

end A277799.P9947003140274913572

namespace A277799

/-- `and(A277866(n), A280412(n))` -/
def P9947003140274913572.Spec : Prop :=
  ∀ n, P9947003140274913572.a n = A277799 n

end A277799

/-! ## A277799.P8714213332125959331

`and(A277866(n), A282004(n))`
-/

namespace A277799.P8714213332125959331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n) (A282004 n)

end

end A277799.P8714213332125959331

namespace A277799

/-- `and(A277866(n), A282004(n))` -/
def P8714213332125959331.Spec : Prop :=
  ∀ n, P8714213332125959331.a n = A277799 n

end A277799

/-! ## A277799.P8171734390803270741

`and(A277866(n), A282658(n))`
-/

namespace A277799.P8171734390803270741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n) (A282658 n)

end

end A277799.P8171734390803270741

namespace A277799

/-- `and(A277866(n), A282658(n))` -/
def P8171734390803270741.Spec : Prop :=
  ∀ n, P8171734390803270741.a n = A277799 n

end A277799

/-! ## A277799.P10470990826506710590

`and(A277866(n), A285645(n))`
-/

namespace A277799.P10470990826506710590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n) (A285645 n)

end

end A277799.P10470990826506710590

namespace A277799

/-- `and(A277866(n), A285645(n))` -/
def P10470990826506710590.Spec : Prop :=
  ∀ n, P10470990826506710590.a n = A277799 n

end A277799

/-! ## A277799.P9571228550651251323

`and(A277866(n), A288762(n))`
-/

namespace A277799.P9571228550651251323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n) (A288762 n)

end

end A277799.P9571228550651251323

namespace A277799

/-- `and(A277866(n), A288762(n))` -/
def P9571228550651251323.Spec : Prop :=
  ∀ n, P9571228550651251323.a n = A277799 n

end A277799

/-! ## A277799.P17936839446804993722

`and(A277866(n), A288770(n))`
-/

namespace A277799.P17936839446804993722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n) (A288770 n)

end

end A277799.P17936839446804993722

namespace A277799

/-- `and(A277866(n), A288770(n))` -/
def P17936839446804993722.Spec : Prop :=
  ∀ n, P17936839446804993722.a n = A277799 n

end A277799

