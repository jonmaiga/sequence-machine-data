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
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112700: Partial sum of Catalan numbers A000108 multiplied by powers of 6.

The programs for A112700, there is no canonical definition to state claims against.
-/

/-! ## A112700.P10168084637258140374

`∑[6*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112700.P10168084637258140374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P10168084637258140374

/-! ## A112700.P15932171654261215446

`∑[3^n/(n+1)*C(2*n, n)*2^n]`
-/

namespace A112700.P15932171654261215446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) * (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P15932171654261215446

/-! ## A112700.P8443879909184574284

`∑[A156128(n)]`
-/

namespace A112700.P8443879909184574284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P8443879909184574284

/-! ## A112700.P11963028065279942998

`∑[2^n*A005159(n)]`
-/

namespace A112700.P11963028065279942998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P11963028065279942998

/-! ## A112700.P90507791085504708

`∑[6^n*A000108(n)]`
-/

namespace A112700.P90507791085504708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P90507791085504708

/-! ## A112700.P18360461762871420532

`∑[A000108(n)*A000400(n)]`
-/

namespace A112700.P18360461762871420532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P18360461762871420532

/-! ## A112700.P5682068317726203878

`∑[A000244(n)*A151374(n)]`
-/

namespace A112700.P5682068317726203878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P5682068317726203878

/-! ## A112700.P13847243024055191209

`∑[lcm(A005159(n), A151374(n))]`
-/

namespace A112700.P13847243024055191209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005159 n) (A151374 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P13847243024055191209

/-! ## A112700.P5026055122440334102

`∑[A000108(n)*A026549(2*n)]`
-/

namespace A112700.P5026055122440334102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A026549 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P5026055122440334102

/-! ## A112700.P15574287350848401832

`∑[6^n*A039599(A000217(n))]`
-/

namespace A112700.P15574287350848401832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A039599 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112700.P15574287350848401832

/-!
# A112701: Partial sum of Catalan numbers (A000108) multiplied by powers of 7.

The programs for A112701, there is no canonical definition to state claims against.
-/

/-! ## A112701.P5976092358626947189

`∑[C(2*n, n)/(n+1)*7^n]`
-/

namespace A112701.P5976092358626947189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (7 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P5976092358626947189

/-! ## A112701.P3354638258093830442

`∑[7*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112701.P3354638258093830442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P3354638258093830442

/-! ## A112701.P10748363744203397847

`∑[A156266(n)]`
-/

namespace A112701.P10748363744203397847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P10748363744203397847

/-! ## A112701.P14798065024639215422

`∑[7^n*A000108(n)]`
-/

namespace A112701.P14798065024639215422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P14798065024639215422

/-! ## A112701.P4070684860915571128

`∑[abs(A168491(n))*7^n]`
-/

namespace A112701.P4070684860915571128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P4070684860915571128

/-! ## A112701.P15637263680876758854

`∑[7^n*A120588(n+1)]`
-/

namespace A112701.P15637263680876758854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P15637263680876758854

/-! ## A112701.P15041191157090601479

`∑[7^n*A057977(2*n)]`
-/

namespace A112701.P15041191157090601479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A057977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P15041191157090601479

/-! ## A112701.P10512257323887951548

`∑[abs(A105523(2*n+1))*7^n]`
-/

namespace A112701.P10512257323887951548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (2 * n + 1)| * (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P10512257323887951548

/-! ## A112701.P14097830234536692501

`∑[A000108(n)*A000420(n)]`
-/

namespace A112701.P14097830234536692501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P14097830234536692501

/-! ## A112701.P2868486980243710260

`∑[A000108(n)*∑[A055272(n)]]`
-/

namespace A112701.P2868486980243710260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112701.P2868486980243710260

/-!
# A112702: Partial sum of Catalan numbers A000108 multiplied by powers of 8.

The programs for A112702, there is no canonical definition to state claims against.
-/

/-! ## A112702.P3732004869982864501

`∑[C(2*n, n)/(n+1)*8^n]`
-/

namespace A112702.P3732004869982864501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (8 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P3732004869982864501

/-! ## A112702.P2222402621037733271

`∑[8*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112702.P2222402621037733271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P2222402621037733271

/-! ## A112702.P15628144187318542379

`∑[A156270(n)]`
-/

namespace A112702.P15628144187318542379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P15628144187318542379

/-! ## A112702.P15605838154778475261

`∑[8^n*A000108(n)]`
-/

namespace A112702.P15605838154778475261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P15605838154778475261

/-! ## A112702.P12109590972521830381

`∑[abs(A168491(n))*8^n]`
-/

namespace A112702.P12109590972521830381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * (8 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P12109590972521830381

/-! ## A112702.P4444323582631672404

`∑[8^n*A039599(∑[n])]`
-/

namespace A112702.P4444323582631672404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P4444323582631672404

/-! ## A112702.P3868101391705544877

`∑[A000108(n)*A001018(n)]`
-/

namespace A112702.P3868101391705544877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P3868101391705544877

/-! ## A112702.P2883729350865167476

`∑[A000302(n)*A151374(n)]`
-/

namespace A112702.P2883729350865167476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P2883729350865167476

/-! ## A112702.P5268416838160010671

`∑[A122803(n)²*A151374(n)]`
-/

namespace A112702.P5268416838160010671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 * A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P5268416838160010671

/-! ## A112702.P11642831093267309254

`∑[A122803(2*n)*A151374(n)]`
-/

namespace A112702.P11642831093267309254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n) * A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112702.P11642831093267309254

/-!
# A112703: Partial sum of Catalan numbers A000108 multiplied by powers of 9.

The programs for A112703, there is no canonical definition to state claims against.
-/

/-! ## A112703.P8419954230416462255

`∑[9*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112703.P8419954230416462255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P8419954230416462255

/-! ## A112703.P11106893566451005872

`∑[3^n/(n+1)*C(2*n, n)*3^n]`
-/

namespace A112703.P11106893566451005872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) * (3 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P11106893566451005872

/-! ## A112703.P8595282902099395696

`∑[A156273(n)]`
-/

namespace A112703.P8595282902099395696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P8595282902099395696

/-! ## A112703.P1075217525442276737

`∑[3^n*A005159(n)]`
-/

namespace A112703.P1075217525442276737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A005159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P1075217525442276737

/-! ## A112703.P6710947744097055716

`∑[9^n*A000108(n)]`
-/

namespace A112703.P6710947744097055716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P6710947744097055716

/-! ## A112703.P14658627962944601223

`∑[abs(A168491(n))*9^n]`
-/

namespace A112703.P14658627962944601223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * (9 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P14658627962944601223

/-! ## A112703.P15958285142271130772

`∑[9^n*A039599(∑[n])]`
-/

namespace A112703.P15958285142271130772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P15958285142271130772

/-! ## A112703.P6915451255736611235

`∑[A000108(n)*A001019(n)]`
-/

namespace A112703.P6915451255736611235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P6915451255736611235

/-! ## A112703.P4471955402173767263

`∑[A000108(n)*A000244(n)²]`
-/

namespace A112703.P4471955402173767263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000244 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P4471955402173767263

/-! ## A112703.P1368351441326993383

`∑[A000108(n)*A000244(2*n)]`
-/

namespace A112703.P1368351441326993383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000244 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112703.P1368351441326993383

/-!
# A112704: Partial sum of Catalan numbers A000108 multiplied by powers of 10.

The programs for A112704, there is no canonical definition to state claims against.
-/

/-! ## A112704.P14656050571829439233

`∑[C(2*n, n)/(n+1)*10^n]`
-/

namespace A112704.P14656050571829439233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (10 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P14656050571829439233

/-! ## A112704.P12579600138963898662

`∑[10*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112704.P12579600138963898662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P12579600138963898662

/-! ## A112704.P6179751729134308786

`∑[A156275(n)]`
-/

namespace A112704.P6179751729134308786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P6179751729134308786

/-! ## A112704.P2159375242468426348

`∑[2^n*A156058(n)]`
-/

namespace A112704.P2159375242468426348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A156058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P2159375242468426348

/-! ## A112704.P12655591054091468318

`∑[10^n*A000108(n)]`
-/

namespace A112704.P12655591054091468318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P12655591054091468318

/-! ## A112704.P1491794862412843523

`∑[10^n*A039599(∑[n])]`
-/

namespace A112704.P1491794862412843523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P1491794862412843523

/-! ## A112704.P7523211700756591813

`∑[10^n*A028304(2*n)]`
-/

namespace A112704.P7523211700756591813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P7523211700756591813

/-! ## A112704.P18176901882018319545

`∑[10^n*A097331(Δ[n²])]`
-/

namespace A112704.P18176901882018319545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A097331 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P18176901882018319545

/-! ## A112704.P13161536791535704155

`∑[A000108(n)*A011557(n)]`
-/

namespace A112704.P13161536791535704155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P13161536791535704155

/-! ## A112704.P10220313801952830771

`∑[A000108(n)*Δ[A047855(n)]]`
-/

namespace A112704.P10220313801952830771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112704.P10220313801952830771

/-!
# A112705: Triangle built from partial sums of Catalan numbers A000108 multiplied by powers.

The programs for A112705, there is no canonical definition to state claims against.
-/

/-! ## A112705.P7776278116140090526

`A085735(A058730(n+2))`
-/

namespace A112705.P7776278116140090526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A058730 (n + 2)).toNat

end

end A112705.P7776278116140090526

/-! ## A112705.P6700611521930656850

`A356944(A058730(n+2))+A047967(A135767(n+1))`
-/

namespace A112705.P6700611521930656850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A058730 (n + 2)).toNat + A047967 (A135767 (n + 1)).toNat

end

end A112705.P6700611521930656850

/-! ## A112705.P6311866374319454711

`A356944(A058730(n+2))+A135767(A319151(n+1))`
-/

namespace A112705.P6311866374319454711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A058730 (n + 2)).toNat + A135767 (A319151 (n + 1)).toNat

end

end A112705.P6311866374319454711

/-! ## A112705.P3566748163020944097

`A356944(A058730(n+2))+A135767(A027748(3*(n+1)))`
-/

namespace A112705.P3566748163020944097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A058730 (n + 2)).toNat + A135767 (A027748 (3 * (n + 1))).toNat

end

end A112705.P3566748163020944097

/-! ## A112705.P12439867232371234878

`or(A058730(n+2), A272198(A146185(n+1)))`
-/

namespace A112705.P12439867232371234878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058730 (n + 2)) (A272198 (A146185 (n + 1)).toNat)

end

end A112705.P12439867232371234878

/-!
# A112706: Row sums of triangle A112705.

The programs for A112706, there is no canonical definition to state claims against.
-/

/-! ## A112706.P720184533813356982

`record[∑[A290605(n)]/A321624(n)]`
-/

namespace A112706.P720184533813356982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290605 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A321624 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112706.P720184533813356982

/-! ## A112706.P14294304686853783941

`∑[∑[A105519(11*n!)]+1]`
-/

namespace A112706.P14294304686853783941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (11 * Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112706.P14294304686853783941

/-! ## A112706.P16753618390977234832

`∑[∑[A054404(A236438(n))]]`
-/

namespace A112706.P16753618390977234832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A236438 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112706.P16753618390977234832

/-!
# A112709: Unsigned row sums of triangle A112707 (partial sums of Catalan numbers multiplied by powers of negative numbers).

The programs for A112709, there is no canonical definition to state claims against.
-/

/-! ## A112709.P14576017163883164625

`2-(a(n-1)-∑[A054404(A236438(n))])` with `a(0)=1`
-/

namespace A112709.P14576017163883164625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A236438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112709.P14576017163883164625

/-! ## A112709.P5353745995282444839

`A103221(A344262(n))+A002995(n)`
-/

namespace A112709.P5353745995282444839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A344262 n).toNat + A002995 n

end

end A112709.P5353745995282444839

/-! ## A112709.P12135872729722801265

`A008619(A000522(n))-A306511(n)`
-/

namespace A112709.P12135872729722801265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000522 n).toNat - A306511 n

end

end A112709.P12135872729722801265

/-!
# A112710: Partial sums of Catalan numbers A000108 multiplied by powers of -3.

The programs for A112710, there is no canonical definition to state claims against.
-/

/-! ## A112710.P389390048039335961

`∑[-3*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112710.P389390048039335961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(3 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P389390048039335961

/-! ## A112710.P6128493498202802574

`∑[3^n/(n+1)*C(2*n, n)*(-1)^n]`
-/

namespace A112710.P6128493498202802574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) * ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P6128493498202802574

/-! ## A112710.P10088358741550964962

`∑[3^n*A168491(n)]`
-/

namespace A112710.P10088358741550964962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P10088358741550964962

/-! ## A112710.P12182382654111106273

`∑[(-1)^n*A005159(n)]`
-/

namespace A112710.P12182382654111106273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A005159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P12182382654111106273

/-! ## A112710.P6532853187255519086

`∑[(-3)^n*A000108(n)]`
-/

namespace A112710.P6532853187255519086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P6532853187255519086

/-! ## A112710.P16194391835006741584

`∑[3^n*A182492(4*n+3)]`
-/

namespace A112710.P16194391835006741584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A182492 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P16194391835006741584

/-! ## A112710.P16404908770401612303

`∑[A005159(n)*A033999(n)]`
-/

namespace A112710.P16404908770401612303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005159 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P16404908770401612303

/-! ## A112710.P2945063390970070166

`∑[A000108(n)*A352779(n)]`
-/

namespace A112710.P2945063390970070166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A352779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P2945063390970070166

/-! ## A112710.P11434738610447820751

`∑[abs(A168491(n))*A352779(n)]`
-/

namespace A112710.P11434738610447820751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * A352779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P11434738610447820751

/-! ## A112710.P809286157628807451

`∑[A126120(2*n)*A352779(n)]`
-/

namespace A112710.P809286157628807451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) * A352779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112710.P809286157628807451

/-!
# A112711: Partial sums of Catalan numbers A000108 multiplied by powers of -4.

The programs for A112711, there is no canonical definition to state claims against.
-/

/-! ## A112711.P10987318776813421833

`∑[4^n*A168491(n)]`
-/

namespace A112711.P10987318776813421833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P10987318776813421833

/-! ## A112711.P17974074019976789407

`∑[(-1)^n*A151403(n)]`
-/

namespace A112711.P17974074019976789407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A151403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P17974074019976789407

/-! ## A112711.P17858553005497451851

`∑[(-4)^n*A000108(n)]`
-/

namespace A112711.P17858553005497451851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P17858553005497451851

/-! ## A112711.P6948927787582902945

`∑[abs(A115140(n+1))*(-4)^n]`
-/

namespace A112711.P6948927787582902945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)| * (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P6948927787582902945

/-! ## A112711.P7807713228557664506

`∑[abs(A090192(Δ[n²]))*(-4)^n]`
-/

namespace A112711.P7807713228557664506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat| * (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P7807713228557664506

/-! ## A112711.P1379289808387076655

`∑[A000108(n)*A262710(n)]`
-/

namespace A112711.P1379289808387076655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A262710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P1379289808387076655

/-! ## A112711.P16235874640551807159

`∑[A122803(n)*A151374(n)]`
-/

namespace A112711.P16235874640551807159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A151374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P16235874640551807159

/-! ## A112711.P7136267645434349655

`∑[A126120(2*n)*A262710(n)]`
-/

namespace A112711.P7136267645434349655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) * A262710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P7136267645434349655

/-! ## A112711.P15768256009469316461

`∑[4^n*A000108(n)/A033999(n)]`
-/

namespace A112711.P15768256009469316461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) * A000108 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P15768256009469316461

/-! ## A112711.P1352056766692409825

`∑[∑{d}[n+1, A034742(#)]*A262710(n)]`
-/

namespace A112711.P1352056766692409825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A034742 d) * A262710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112711.P1352056766692409825

/-!
# A112712: Expansion of x/(1 - x + 2*x^2 - 2*x^3 + 2*x^4 - x^5 + x^6).

The programs for A112712, the canonical program `A112712.P9166218734312221038` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112712 has offset 0).

The definition of A112712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112712.P9166218734312221038

`∑[1-and(2, n)-A099443(3*n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112712

/-- `∑[1-and(2, n)-A099443(3*n+1)]` -/
def P9166218734312221038.Spec : Prop :=
  ∀ n, P9166218734312221038.a n = A112712 n

theorem P9166218734312221038.correct : P9166218734312221038.Spec := by
  intro n
  simp only [A112712]

end A112712

/-!
# A112713: Expansion of x/(1 - x + x^5 - x^6).

The programs for A112713, the canonical program `A112713.P10672546406016115116` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112713 has offset 0).

The definition of A112713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112713.P10672546406016115116

`a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=0, a(7)=0, a(8)=0, a(9)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A112713

/-- `a(n-10)` -/
def P10672546406016115116.Spec : Prop :=
  ∀ n, (P10672546406016115116.a n : ℤ) = A112713 n

theorem P10672546406016115116.correct : P10672546406016115116.Spec := by
  intro n
  simp only [A112713]

end A112713

/-!
# A112714: Numbers of the form k*2^m-1 with k

The programs for A112714, the canonical program `A112714.P4485868673494609304` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112714 has offset 1).

The definition of A112714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080075, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112714.P4485868673494609304

`A080075(n+1)-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112714

/-- `A080075(n+1)-2` -/
def P4485868673494609304.Spec : Prop :=
  ∀ n, P4485868673494609304.a n = A112714 (n + 1)

theorem P4485868673494609304.correct : P4485868673494609304.Spec := by
  intro n
  simp only [A112714, Nat.add_sub_cancel]

end A112714

/-! ## A112714.P12544670173792914125

`∑[round((n+1)/a(n-1))*a(n-1)]` with `a(0)=1`
-/

namespace A112714.P12544670173792914125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (f1 (n - 1) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P12544670173792914125

namespace A112714

/-- `∑[round((n+1)/a(n-1))*a(n-1)]` -/
def P12544670173792914125.Spec : Prop :=
  ∀ n, P12544670173792914125.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P11772770920555888054

`2*A082662(n+1)-1`
-/

namespace A112714.P11772770920555888054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082662 (n + 1) - 1

end

end A112714.P11772770920555888054

namespace A112714

/-- `2*A082662(n+1)-1` -/
def P11772770920555888054.Spec : Prop :=
  ∀ n, P11772770920555888054.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P4723387339708920659

`∑[A003817(A004396(n+1))]+n`
-/

namespace A112714.P4723387339708920659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A004396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A112714.P4723387339708920659

namespace A112714

/-- `∑[A003817(A004396(n+1))]+n` -/
def P4723387339708920659.Spec : Prop :=
  ∀ n, P4723387339708920659.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P1308002316384824672

`∑[A003817(A006165(n+1))]+n`
-/

namespace A112714.P1308002316384824672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A006165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A112714.P1308002316384824672

namespace A112714

/-- `∑[A003817(A006165(n+1))]+n` -/
def P1308002316384824672.Spec : Prop :=
  ∀ n, P1308002316384824672.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P17499614730374318587

`∑[A062383(A004523(n+1))]`
-/

namespace A112714.P17499614730374318587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A004523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P17499614730374318587

namespace A112714

/-- `∑[A062383(A004523(n+1))]` -/
def P17499614730374318587.Spec : Prop :=
  ∀ n, P17499614730374318587.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P2157091434945107557

`∑[A053644(A053644(n)+A006165(n+1))]`
-/

namespace A112714.P2157091434945107557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A053644 n + A006165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P2157091434945107557

namespace A112714

/-- `∑[A053644(A053644(n)+A006165(n+1))]` -/
def P2157091434945107557.Spec : Prop :=
  ∀ n, P2157091434945107557.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P7589332055150543162

`A082662(n+1)+A082662(n+1)-A038712(A038712(n+1))`
-/

namespace A112714.P7589332055150543162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1) + (A082662 (n + 1) - A038712 (A038712 (n + 1)).toNat)

end

end A112714.P7589332055150543162

namespace A112714

/-- `A082662(n+1)+A082662(n+1)-A038712(A038712(n+1))` -/
def P7589332055150543162.Spec : Prop :=
  ∀ n, P7589332055150543162.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P15364879993494891175

`∑[A053644(A230709(n+2))]-1`
-/

namespace A112714.P15364879993494891175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A230709 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A112714.P15364879993494891175

namespace A112714

/-- `∑[A053644(A230709(n+2))]-1` -/
def P15364879993494891175.Spec : Prop :=
  ∀ n, P15364879993494891175.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P6530768675826658720

`A082662(A080637(n+1))-1`
-/

namespace A112714.P6530768675826658720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (A080637 (n + 1)).toNat - 1

end

end A112714.P6530768675826658720

namespace A112714

/-- `A082662(A080637(n+1))-1` -/
def P6530768675826658720.Spec : Prop :=
  ∀ n, P6530768675826658720.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P7046410176814574291

`∑[A053644(A004396(2*n)+1)]`
-/

namespace A112714.P7046410176814574291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004396 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P7046410176814574291

namespace A112714

/-- `∑[A053644(A004396(2*n)+1)]` -/
def P7046410176814574291.Spec : Prop :=
  ∀ n, P7046410176814574291.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P11024427577109259295

`∑[A053644(A006165(2*(n+1)))]`
-/

namespace A112714.P11024427577109259295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006165 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P11024427577109259295

namespace A112714

/-- `∑[A053644(A006165(2*(n+1)))]` -/
def P11024427577109259295.Spec : Prop :=
  ∀ n, P11024427577109259295.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P11635601433957931481

`∑[A053644(A078881(2*n+1))]`
-/

namespace A112714.P11635601433957931481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A078881 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P11635601433957931481

namespace A112714

/-- `∑[A053644(A078881(2*n+1))]` -/
def P11635601433957931481.Spec : Prop :=
  ∀ n, P11635601433957931481.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P14840545397286213609

`A082662(A144396(n+1))/2-1`
-/

namespace A112714.P14840545397286213609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (A144396 (n + 1)).toNat : ℚ) / 2 - 1

end

end A112714.P14840545397286213609

namespace A112714

/-- `A082662(A144396(n+1))/2-1` -/
def P14840545397286213609.Spec : Prop :=
  ∀ n, P14840545397286213609.a n = (A112714 (n + 1) : ℚ)

end A112714

/-! ## A112714.P538959448272542922

`∑[A072376(record[A093048(2*(n+2))])]`
-/

namespace A112714.P538959448272542922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112714.P538959448272542922

namespace A112714

/-- `∑[A072376(record[A093048(2*(n+2))])]` -/
def P538959448272542922.Spec : Prop :=
  ∀ n, P538959448272542922.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P12333778954680286070

`A116882(n+2)-1`
-/

namespace A112714.P12333778954680286070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 2) - 1

end

end A112714.P12333778954680286070

namespace A112714

/-- `A116882(n+2)-1` -/
def P12333778954680286070.Spec : Prop :=
  ∀ n, P12333778954680286070.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P16450777702210559829

`A209661(A209922(n+2))+A116882(n+2)`
-/

namespace A112714.P16450777702210559829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (A209922 (n + 2)).toNat + A116882 (n + 2)

end

end A112714.P16450777702210559829

namespace A112714

/-- `A209661(A209922(n+2))+A116882(n+2)` -/
def P16450777702210559829.Spec : Prop :=
  ∀ n, P16450777702210559829.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P3499576495153386768

`A000265(A082662(n+1)+A082662(n+1)-1)`
-/

namespace A112714.P3499576495153386768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A082662 (n + 1) + (A082662 (n + 1) - 1)).toNat

end

end A112714.P3499576495153386768

namespace A112714

/-- `A000265(A082662(n+1)+A082662(n+1)-1)` -/
def P3499576495153386768.Spec : Prop :=
  ∀ n, P3499576495153386768.a n = A112714 (n + 1)

end A112714

/-! ## A112714.P8992758375014731051

`lt[n+1, 4^val(n+1, 2)]`
-/

namespace A112714.P8992758375014731051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112714.P8992758375014731051

namespace A112714

/-- `lt[n+1, 4^val(n+1, 2)]` -/
def P8992758375014731051.Spec : Prop :=
  ∀ n, (P8992758375014731051.a n : ℤ) = A112714 (n + 1)

end A112714

/-! ## A112714.P6809599544445181211

`lt[n+1, (xor(n, n+1)/2)²]`
-/

namespace A112714.P6809599544445181211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A112714.P6809599544445181211

namespace A112714

/-- `lt[n+1, (xor(n, n+1)/2)²]` -/
def P6809599544445181211.Spec : Prop :=
  ∀ n, (P6809599544445181211.a n : ℤ) = A112714 (n + 1)

end A112714

/-!
# A112715: Primes in A112714.

The programs for A112715, the canonical program `A112715.P9692264855410737718` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112715 has offset 1).

The definition of A112715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112715.P15408595171335167741

`p?[A112714(n+1)]`
-/

namespace A112715.P15408595171335167741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P15408595171335167741

namespace A112715

/-- `p?[A112714(n+1)]` -/
def P15408595171335167741.Spec : Prop :=
  ∀ n, P15408595171335167741.a n = A112715 (n + 1)

end A112715

/-! ## A112715.P8434728773551626212

`p?[A080075(n+1)-2]`
-/

namespace A112715.P8434728773551626212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P8434728773551626212

namespace A112715

/-- `p?[A080075(n+1)-2]` -/
def P8434728773551626212.Spec : Prop :=
  ∀ n, P8434728773551626212.a n = A112715 (n + 1)

end A112715

/-! ## A112715.P9692264855410737718

`p?[2*A082662(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112715

/-- `p?[2*A082662(n+1)-1]` -/
def P9692264855410737718.Spec : Prop :=
  ∀ n, P9692264855410737718.a n = A112715 (n + 1)

theorem P9692264855410737718.correct : P9692264855410737718.Spec := by
  intro n
  simp only [A112715, Nat.add_sub_cancel]

end A112715

/-! ## A112715.P8519092105823271606

`p?[A082662(A080637(n+1))-1]`
-/

namespace A112715.P8519092105823271606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (A080637 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P8519092105823271606

namespace A112715

/-- `p?[A082662(A080637(n+1))-1]` -/
def P8519092105823271606.Spec : Prop :=
  ∀ n, P8519092105823271606.a n = A112715 (n + 1)

end A112715

/-! ## A112715.P8955349949937331497

`p?[A116882(n+1)-1]`
-/

namespace A112715.P8955349949937331497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P8955349949937331497

namespace A112715

/-- `p?[A116882(n+1)-1]` -/
def P8955349949937331497.Spec : Prop :=
  ∀ n, P8955349949937331497.a n = A112715 (n + 1)

end A112715

/-! ## A112715.P11711081802531428144

`p?[A209661(A209922(n+1))+A116882(n+1)]`
-/

namespace A112715.P11711081802531428144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (A209922 (n + 1)).toNat + A116882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112715.P11711081802531428144

namespace A112715

/-- `p?[A209661(A209922(n+1))+A116882(n+1)]` -/
def P11711081802531428144.Spec : Prop :=
  ∀ n, P11711081802531428144.a n = A112715 (n + 1)

end A112715

/-! ## A112715.P2995919823963183515

`∩[A112714(n+1), A225223(n+1)]`
-/

namespace A112715.P2995919823963183515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P2995919823963183515

namespace A112715

/-- `∩[A112714(n+1), A225223(n+1)]` -/
def P2995919823963183515.Spec : Prop :=
  ∀ n, (P2995919823963183515.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P1664169245257045138

`∩[A112714(n+1), A350577(n+1)]`
-/

namespace A112715.P1664169245257045138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P1664169245257045138

namespace A112715

/-- `∩[A112714(n+1), A350577(n+1)]` -/
def P1664169245257045138.Spec : Prop :=
  ∀ n, (P1664169245257045138.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P17419342652648161311

`∩[A002145(n+1), A112714(n+1)]`
-/

namespace A112715.P17419342652648161311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P17419342652648161311

namespace A112715

/-- `∩[A002145(n+1), A112714(n+1)]` -/
def P17419342652648161311.Spec : Prop :=
  ∀ n, (P17419342652648161311.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P13201377267576339683

`∩[A045326(n+1), A112714(n+1)]`
-/

namespace A112715.P13201377267576339683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P13201377267576339683

namespace A112715

/-- `∩[A045326(n+1), A112714(n+1)]` -/
def P13201377267576339683.Spec : Prop :=
  ∀ n, (P13201377267576339683.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P18223482542388540505

`∩[A085760(n+1), A112714(n+1)]`
-/

namespace A112715.P18223482542388540505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P18223482542388540505

namespace A112715

/-- `∩[A085760(n+1), A112714(n+1)]` -/
def P18223482542388540505.Spec : Prop :=
  ∀ n, (P18223482542388540505.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P16491348234601910648

`∩[A095286(n+1), A112714(n+1)]`
-/

namespace A112715.P16491348234601910648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P16491348234601910648

namespace A112715

/-- `∩[A095286(n+1), A112714(n+1)]` -/
def P16491348234601910648.Spec : Prop :=
  ∀ n, (P16491348234601910648.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P15353379548005136109

`∩[A112714(n+1), A285015(n+1)]`
-/

namespace A112715.P15353379548005136109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P15353379548005136109

namespace A112715

/-- `∩[A112714(n+1), A285015(n+1)]` -/
def P15353379548005136109.Spec : Prop :=
  ∀ n, (P15353379548005136109.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P12063570343162871408

`∩[A112714(n+1), A385221(n+1)]`
-/

namespace A112715.P12063570343162871408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P12063570343162871408

namespace A112715

/-- `∩[A112714(n+1), A385221(n+1)]` -/
def P12063570343162871408.Spec : Prop :=
  ∀ n, (P12063570343162871408.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P2765925981945100716

`∩[A095070(n+1), A112714(n+1)]`
-/

namespace A112715.P2765925981945100716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P2765925981945100716

namespace A112715

/-- `∩[A095070(n+1), A112714(n+1)]` -/
def P2765925981945100716.Spec : Prop :=
  ∀ n, (P2765925981945100716.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P1669754644551795737

`∩[A049098(n+1), A112714(n+1)]`
-/

namespace A112715.P1669754644551795737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P1669754644551795737

namespace A112715

/-- `∩[A049098(n+1), A112714(n+1)]` -/
def P1669754644551795737.Spec : Prop :=
  ∀ n, (P1669754644551795737.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P15357611867028149944

`∩[A112714(n+1), A164319(n+1)]`
-/

namespace A112715.P15357611867028149944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P15357611867028149944

namespace A112715

/-- `∩[A112714(n+1), A164319(n+1)]` -/
def P15357611867028149944.Spec : Prop :=
  ∀ n, (P15357611867028149944.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P9769090692747847205

`∩[A112714(n+1), A140409(n+1)]`
-/

namespace A112715.P9769090692747847205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P9769090692747847205

namespace A112715

/-- `∩[A112714(n+1), A140409(n+1)]` -/
def P9769090692747847205.Spec : Prop :=
  ∀ n, (P9769090692747847205.a n : ℤ) = A112715 (n + 1)

end A112715

/-! ## A112715.P17927988401627033309

`∩[A095074(n+1), A112714(n+1)]`
-/

namespace A112715.P17927988401627033309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112715.P17927988401627033309

namespace A112715

/-- `∩[A095074(n+1), A112714(n+1)]` -/
def P17927988401627033309.Spec : Prop :=
  ∀ n, (P17927988401627033309.a n : ℤ) = A112715 (n + 1)

end A112715

/-!
# A112718: Numbers m such that pi(m) = 1^d_1 + 2^d_2 + ... + k^d_k where d_1 d_2 ... d_k is the decimal expansion of m.

The programs for A112718, there is no canonical definition to state claims against.
-/

/-! ## A112718.P13192435278139568863

`A091850(A091776(n+1))+A091784(n+1)`
-/

namespace A112718.P13192435278139568863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091850 (A091776 (n + 1)).toNat + A091784 (n + 1)

end

end A112718.P13192435278139568863

/-!
# A112722: First n-digit number m such that sigma(m) is prime.

The programs for A112722, there is no canonical definition to state claims against.
-/

/-! ## A112722.P6073966265088746262

`A325436(A325452(n)+A180692(n+1))`
-/

namespace A112722.P6073966265088746262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325436 (A325452 n + A180692 (n + 1)).toNat

end

end A112722.P6073966265088746262

/-!
# A112723: a(n) is the smallest number m such that the first n primes is the set of all distinct prime divisors of m and for i=1, 2,...,n prime(i)*m-1 is prime.

The programs for A112723, there is no canonical definition to state claims against.
-/

/-! ## A112723.P2187671285862407883

`A002110(n+1)*A208126(A000166(n))`
-/

namespace A112723.P2187671285862407883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A208126 (A000166 n).toNat

end

end A112723.P2187671285862407883

/-!
# A112725: Smallest positive palindromic multiple of 3^n.

The programs for A112725, there is no canonical definition to state claims against.
-/

/-! ## A112725.P9966632427022324061

`A020485(3^n)`
-/

namespace A112725.P9966632427022324061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (3 ^ n)

end

end A112725.P9966632427022324061

/-! ## A112725.P9709139725605972967

`3^n*A050782(3^n)`
-/

namespace A112725.P9709139725605972967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A050782 (3 ^ n)

end

end A112725.P9709139725605972967

/-! ## A112725.P7003338788513216525

`3^n*A061906(3^n)`
-/

namespace A112725.P7003338788513216525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A061906 (3 ^ n)

end

end A112725.P7003338788513216525

/-! ## A112725.P5951443196314667995

`record[A020485(A048883(n))]`
-/

namespace A112725.P5951443196314667995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112725.P5951443196314667995

/-! ## A112725.P10975272106458777068

`record[A020485(A140303(n))]`
-/

namespace A112725.P10975272106458777068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A140303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112725.P10975272106458777068

/-!
# A112730: Numbers k such that the equation sigma(x)-phi(x)=k has at least one solution.

The programs for A112730, there is no canonical definition to state claims against.
-/

/-! ## A112730.P15133507826963750668

`lt[0, A071390(n+1)]+1`
-/

namespace A112730.P15133507826963750668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A112730.P15133507826963750668

/-! ## A112730.P18392795467491464990

`lt[0, A071390(A028310(n))]`
-/

namespace A112730.P18392795467491464990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112730.P18392795467491464990

/-! ## A112730.P397575899876407378

`A020725(lt[0, A071390(n+1)])`
-/

namespace A112730.P397575899876407378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112730.P397575899876407378

/-! ## A112730.P16491793244894317483

`lt[1, A071390(A000007(n)+n)]`
-/

namespace A112730.P16491793244894317483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112730.P16491793244894317483

/-! ## A112730.P2760849679235574230

`lt[1, A071390(or(n, A000007(n)))]`
-/

namespace A112730.P2760849679235574230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112730.P2760849679235574230

/-! ## A112730.P17026734044721498351

`lt[0, A071390(abs(n-and(1, 2^n)))]`
-/

namespace A112730.P17026734044721498351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 |(n : ℤ) - (Nat.land 1 (2 ^ n) : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112730.P17026734044721498351

/-! ## A112730.P5950273869326361482

`eq[char[A051612(n+1)], A178334(n)]`
-/

namespace A112730.P5950273869326361482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A112730.P5950273869326361482

/-! ## A112730.P16001484355933382366

`eq[char[A051612(n+1)], A011630(n²)]`
-/

namespace A112730.P16001484355933382366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011630 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A112730.P16001484355933382366

/-! ## A112730.P6094011690097163056

`eq[char[A051612(n+1)], A211666(n+1)]`
-/

namespace A112730.P6094011690097163056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A112730.P6094011690097163056

/-!
# A112732: Denominators of the convergents to the continued fraction for log_2(5)/4.

The programs for A112732, there is no canonical definition to state claims against.
-/

/-! ## A112732.P16227556335361637853

`record[A002487(round(sqrt(2^n)))]`
-/

namespace A112732.P16227556335361637853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway (Real.sqrt (2 ^ n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112732.P16227556335361637853

/-! ## A112732.P13084087002661385686

`record[ratio[A002487(A017911(n))]]`
-/

namespace A112732.P13084087002661385686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A017911 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112732.P13084087002661385686

/-!
# A112735: Exclusionary squares.

The programs for A112735, there is no canonical definition to state claims against.
-/

/-! ## A112735.P1294879436286530656

`A112736(n+1)²`
-/

namespace A112735.P1294879436286530656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (n + 1) ^ 2

end

end A112735.P1294879436286530656

/-! ## A112735.P13117396368341668009

`A112736(2*n-(n-1))^2`
-/

namespace A112735.P13117396368341668009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

end

end A112735.P13117396368341668009

/-! ## A112735.P12721790714431274757

`record[A112736(A126759(n))²]`
-/

namespace A112735.P12721790714431274757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112735.P12721790714431274757

/-! ## A112735.P14378229165929409433

`record[A112736(A133310(n))²]`
-/

namespace A112735.P14378229165929409433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112735.P14378229165929409433

/-! ## A112735.P18096357131995156579

`record[A112736(A290094(n))²]`
-/

namespace A112735.P18096357131995156579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A290094 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112735.P18096357131995156579

/-! ## A112735.P9885786197052572727

`record[A112736(A291766(n))²]`
-/

namespace A112735.P9885786197052572727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A291766 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112735.P9885786197052572727

/-! ## A112735.P18332111597853350193

`record[A112736(A291769(n))²]`
-/

namespace A112735.P18332111597853350193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112735.P18332111597853350193

/-! ## A112735.P9313022668758455015

`record[A112736(A324347(n))²]`
-/

namespace A112735.P9313022668758455015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112735.P9313022668758455015

/-! ## A112735.P18324073615575594925

`(A112736(n+1)^2)%A016793(n)`
-/

namespace A112735.P18324073615575594925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112736 (n + 1) ^ 2) (A016793 n)

end

end A112735.P18324073615575594925

/-! ## A112735.P15487344166312045026

`(A033999(n+1)*A112736(n+1))^2`
-/

namespace A112735.P15487344166312045026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) * A112736 (n + 1)) ^ 2

end

end A112735.P15487344166312045026

/-! ## A112735.P12850217698074848369

`(A112736(n+1)%A001248(n+1))^2`
-/

namespace A112735.P12850217698074848369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112736 (n + 1)) (A001248 (n + 1)) ^ 2

end

end A112735.P12850217698074848369

/-! ## A112735.P5972574972399086879

`(-A112736(n+1))^A020639(2*(n+1))`
-/

namespace A112735.P5972574972399086879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A112736 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A112735.P5972574972399086879

/-! ## A112735.P16326944968190950401

`A112736(n+1)^2*A000041(C(2, n+2))`
-/

namespace A112735.P16326944968190950401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (n + 1) ^ 2 * A000041 (Nat.choose 2 (n + 2))

end

end A112735.P16326944968190950401

/-! ## A112735.P7866512682035983003

`A112736(n+1)^2*A007318(C(2, n+2))`
-/

namespace A112735.P7866512682035983003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (n + 1) ^ 2 * A007318 (Nat.choose 2 (n + 2))

end

end A112735.P7866512682035983003

/-! ## A112735.P15500971827677996389

`A112736(2*n-(n-1))*A112736(n+1)`
-/

namespace A112735.P15500971827677996389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat * A112736 (n + 1)

end

end A112735.P15500971827677996389

/-! ## A112735.P4014675869474028051

`A112736(n+1)^2*gcd(n, A020639(n+1))`
-/

namespace A112735.P4014675869474028051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (n + 1) ^ 2 * (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℤ)

end

end A112735.P4014675869474028051

/-! ## A112735.P12321212240419545512

`A001222(3*n+2)^C(2, n+1)*A112736(n+1)^2`
-/

namespace A112735.P12321212240419545512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2) ^ Nat.choose 2 (n + 1) * A112736 (n + 1) ^ 2

end

end A112735.P12321212240419545512

/-! ## A112735.P9327788785098299516

`record[A112736(A126759(n))]*A112736(n+1)`
-/

namespace A112735.P9327788785098299516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A112736 (n + 1)

end

end A112735.P9327788785098299516

/-! ## A112735.P7396593986956541591

`record[A112736(A133310(n))]*A112736(n+1)`
-/

namespace A112735.P7396593986956541591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A112736 (n + 1)

end

end A112735.P7396593986956541591

/-! ## A112735.P12872744647405287509

`record[A112736(A290094(n))]*A112736(n+1)`
-/

namespace A112735.P12872744647405287509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112736 (A290094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A112736 (n + 1)

end

end A112735.P12872744647405287509

/-!
# A112736: Numbers whose square is exclusionary.

The programs for A112736, there is no canonical definition to state claims against.
-/

/-! ## A112736.P11705159585849373506

`sqrt(A112735(n+1))`
-/

namespace A112736.P11705159585849373506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A112735 (n + 1) : ℝ)

end

end A112736.P11705159585849373506

/-! ## A112736.P17717414484885045952

`floor(sqrt(A112735(Δ[n²]-n)))`
-/

namespace A112736.P17717414484885045952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A112735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A112736.P17717414484885045952

/-! ## A112736.P18338395495077713210

`A112735(C(n+1, n))^(1/2)`
-/

namespace A112736.P18338395495077713210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112735 (Nat.choose (n + 1) n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A112736.P18338395495077713210

/-! ## A112736.P5507773567746234659

`root(A112735(n+1), 2%A008888(n))`
-/

namespace A112736.P5507773567746234659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112735 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A008888 n) : ℝ))

end

end A112736.P5507773567746234659

/-! ## A112736.P3955130514433703134

`root(A112735(n+1), gcd(2, A005843(n)))`
-/

namespace A112736.P3955130514433703134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112735 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A112736.P3955130514433703134

/-! ## A112736.P14082884789027255188

`root(A112735(n+1), 4)²%A016958(n)`
-/

namespace A112736.P14082884789027255188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)) (A016958 n)

end

end A112736.P14082884789027255188

/-! ## A112736.P764008001156273199

`gcd(root(A112735(n+1), 4)², A000038(n))`
-/

namespace A112736.P764008001156273199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)) (A000038 n)

end

end A112736.P764008001156273199

/-! ## A112736.P18352560047706818255

`root(A112735(n+1), A020639(2*(n+1)))`
-/

namespace A112736.P18352560047706818255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112735 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A112736.P18352560047706818255

/-! ## A112736.P13578865231078498806

`(root(A112735(n+1), 4)*Δ[A002819(n)])²`
-/

namespace A112736.P13578865231078498806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ)) * (f1 (n + 1) - f1 n : ℝ)) ^ 2

end

end A112736.P13578865231078498806

/-! ## A112736.P8313959353850930775

`A000007(n+1)+root(A112735(n+1), 4)²`
-/

namespace A112736.P8313959353850930775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + ((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A112736.P8313959353850930775

/-! ## A112736.P8422149758572731427

`lcm(root(A112735(n+1), 4)², A014963(4*n+2))`
-/

namespace A112736.P8422149758572731427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)) (A014963 (4 * n + 2))

end

end A112736.P8422149758572731427

/-! ## A112736.P14532671180793957717

`(A000027(n+1)-n)*root(A112735(n+1), 4)²`
-/

namespace A112736.P14532671180793957717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ) : ℝ) * ((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A112736.P14532671180793957717

/-! ## A112736.P13360973024498957264

`root(A112735(n+1), 4)^A000005(A002146(n))`
-/

namespace A112736.P13360973024498957264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A112735 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ (A000005 (A002146 n).toNat : ℤ)

end

end A112736.P13360973024498957264

/-! ## A112736.P10727661099259096616

`∩[A010784(n+1), A029783(n+1)]`
-/

namespace A112736.P10727661099259096616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112736.P10727661099259096616

/-! ## A112736.P18259923862093730855

`eq[A076493(n), A321797(n)]`
-/

namespace A112736.P18259923862093730855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112736.P18259923862093730855

/-! ## A112736.P10793499398471640776

`filter[A029783(n+1), A178788(#)]`
-/

namespace A112736.P10793499398471640776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A112736.P10793499398471640776

/-! ## A112736.P6266237059266436489

`eq[n*A107846(n), A076493(n)]`
-/

namespace A112736.P6266237059266436489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112736.P6266237059266436489

/-! ## A112736.P13948931201700987700

`eq[A076493(n)/A055642(n), A107846(n)]`
-/

namespace A112736.P13948931201700987700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076493 n : ℚ) / (A055642 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A112736.P13948931201700987700

/-!
# A112737: On the standard 33-hole cross-shaped peg solitaire board, the number of distinct board positions after n jumps (starting with the center vacant).

The programs for A112737, there is no canonical definition to state claims against.
-/

/-! ## A112737.P7158770820109130107

`A151898(A215076(n)-A000567(n))`
-/

namespace A112737.P7158770820109130107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A215076 n - A000567 n).toNat

end

end A112737.P7158770820109130107

/-! ## A112737.P6226830465504230570

`A084617(A214083(n))+A056505(2*n+1)-A000079(n)`
-/

namespace A112737.P6226830465504230570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084617 (A214083 n).toNat + (A056505 (2 * n + 1) - A000079 n)

end

end A112737.P6226830465504230570

/-!
# A112738: On the standard 33-hole cross-shaped peg solitaire board, the number of distinct board positions after n jumps that can still be reduced to one peg at the center (starting with the center vacant).

The programs for A112738, there is no canonical definition to state claims against.
-/

/-! ## A112738.P1795382368200956030

`A160556(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A112738.P1795382368200956030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A160556 (a (n - 1)).toNat

end

end A112738.P1795382368200956030

/-! ## A112738.P6792728423124858198

`3*A167047(a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A112738.P6792728423124858198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * A167047 (a (n - 1)).toNat - 1

end

end A112738.P6792728423124858198

/-!
# A112739: Array counting nodes in rooted trees of height n in which the root and internal nodes have valency k (and the leaf nodes have valency one).

The programs for A112739, there is no canonical definition to state claims against.
-/

/-! ## A112739.P8029914561452947729

`A000005((2-char[∑[n]])^A210391(n))`
-/

namespace A112739.P8029914561452947729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A210391 n : ℤ))).toNat

end

end A112739.P8029914561452947729

/-! ## A112739.P11544435043484044002

`A000005(A016116(A266213(n)))`
-/

namespace A112739.P11544435043484044002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016116 (A266213 n).toNat).toNat

end

end A112739.P11544435043484044002

/-! ## A112739.P978633695728842570

`A303837(A013609(n))+A210391(n)`
-/

namespace A112739.P978633695728842570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A013609 n).toNat + A210391 n

end

end A112739.P978633695728842570

/-! ## A112739.P8779831881385535308

`A000005(A141020(n)^A081718(n))`
-/

namespace A112739.P8779831881385535308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A141020 n : ℚ) ^ (A081718 n : ℤ))).toNat

end

end A112739.P8779831881385535308

/-! ## A112739.P10141983497723398332

`A000005(A130321(n)^A145153(n))`
-/

namespace A112739.P10141983497723398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A130321 n : ℚ) ^ (A145153 n : ℤ))).toNat

end

end A112739.P10141983497723398332

/-!
# A112740: Row sums of number triangle A112739.

The programs for A112740, there is no canonical definition to state claims against.
-/

/-! ## A112740.P8296808708858058874

`∑[A325129(a(n-1))+and(n+1, -7)]` with `a(0)=1`
-/

namespace A112740.P8296808708858058874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A325129 (f1 (n - 1)).toNat + Int.land (n + 1 : ℤ) (-7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112740.P8296808708858058874

/-! ## A112740.P13452471448555015698

`A001462(∑[A374154(n)])`
-/

namespace A112740.P13452471448555015698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112740.P13452471448555015698

/-! ## A112740.P10423216507369095813

`∑[A334233(A277280(n))]`
-/

namespace A112740.P10423216507369095813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334233 (A277280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112740.P10423216507369095813

/-! ## A112740.P17794959524338609788

`A000006(A127055(n))+n`
-/

namespace A112740.P17794959524338609788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A127055 n).toNat + (n : ℤ)

end

end A112740.P17794959524338609788

/-!
# A112741: Primes p such that zeta(1-2p)/zeta(-1) is prime.

The programs for A112741, there is no canonical definition to state claims against.
-/

/-! ## A112741.P1592890409884496888

`record[A006530(A112548(n+4))]`
-/

namespace A112741.P1592890409884496888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112548 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112741.P1592890409884496888

/-! ## A112741.P621964906108814343

`A006530(13*A112548(2*n+3))`
-/

namespace A112741.P621964906108814343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (13 * A112548 (2 * n + 3)).toNat

end

end A112741.P621964906108814343

/-!
# A112742: a(n) = n^2*(n^2 - 1)/3.

The programs for A112742, the canonical program `A112742.P13190631675762347612` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112742 has offset 0).

The definition of A112742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112742.P12609535292182323237

`n²*(n²-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112742.P12609535292182323237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((n ^ 2 : ℤ) - 1 : ℚ) / 3)

end

end A112742.P12609535292182323237

namespace A112742

/-- `n²*(n²-1)/3` -/
def P12609535292182323237.Spec : Prop :=
  ∀ n, P12609535292182323237.a n = (A112742 n : ℚ)

end A112742

/-! ## A112742.P13190631675762347612

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=24, a(4)=80`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A112742

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13190631675762347612.Spec : Prop :=
  ∀ n, P13190631675762347612.a n = A112742 n

theorem P13190631675762347612.correct : P13190631675762347612.Spec := by
  intro n
  simp only [A112742]

end A112742

/-! ## A112742.P16774203060753801954

`∑[C(2*n, 3)]`
-/

namespace A112742.P16774203060753801954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112742.P16774203060753801954

namespace A112742

/-- `∑[C(2*n, 3)]` -/
def P16774203060753801954.Spec : Prop :=
  ∀ n, (P16774203060753801954.a n : ℤ) = A112742 n

end A112742

/-! ## A112742.P2751804931637388109

`2*C(n², 2)/3`
-/

namespace A112742.P2751804931637388109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A112742.P2751804931637388109

namespace A112742

/-- `2*C(n², 2)/3` -/
def P2751804931637388109.Spec : Prop :=
  ∀ n, P2751804931637388109.a n = (A112742 n : ℚ)

end A112742

/-! ## A112742.P11993792817939502022

`lcm(2, n*∑[n²-n])`
-/

namespace A112742.P11993792817939502022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112742.P11993792817939502022

namespace A112742

/-- `lcm(2, n*∑[n²-n])` -/
def P11993792817939502022.Spec : Prop :=
  ∀ n, (P11993792817939502022.a n : ℤ) = A112742 n

end A112742

/-! ## A112742.P9736021160656541042

`a(n-1)+C(2*n, 3)` with `a(0)=0`
-/

namespace A112742.P9736021160656541042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (2 * n) 3

end

end A112742.P9736021160656541042

namespace A112742

/-- `a(n-1)+C(2*n, 3)` -/
def P9736021160656541042.Spec : Prop :=
  ∀ n, (P9736021160656541042.a n : ℤ) = A112742 n

end A112742

/-! ## A112742.P13166722468974958137

`C(n², 2)-C(n², 2)/3`
-/

namespace A112742.P13166722468974958137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) - (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A112742.P13166722468974958137

namespace A112742

/-- `C(n², 2)-C(n², 2)/3` -/
def P13166722468974958137.Spec : Prop :=
  ∀ n, P13166722468974958137.a n = (A112742 n : ℚ)

end A112742

/-! ## A112742.P12977122301298223777

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A112742.P12977122301298223777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112742.P12977122301298223777

namespace A112742

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P12977122301298223777.Spec : Prop :=
  ∀ n, (P12977122301298223777.a n : ℤ) = A112742 n

end A112742

/-! ## A112742.P8909287798450345278

`and(2*n*C(n+1, 3), -2)`
-/

namespace A112742.P8909287798450345278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n * Nat.choose (n + 1) 3 : ℤ) (-2)

end

end A112742.P8909287798450345278

namespace A112742

/-- `and(2*n*C(n+1, 3), -2)` -/
def P8909287798450345278.Spec : Prop :=
  ∀ n, P8909287798450345278.a n = A112742 n

end A112742

/-! ## A112742.P11411094177676097835

`Δ[C(2*n+1, 5)]-n^4`
-/

namespace A112742.P11411094177676097835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 4 : ℤ)

end

end A112742.P11411094177676097835

namespace A112742

/-- `Δ[C(2*n+1, 5)]-n^4` -/
def P11411094177676097835.Spec : Prop :=
  ∀ n, P11411094177676097835.a n = A112742 n

end A112742

/-! ## A112742.P2989592291238482476

`sqrt((2*n)²*C(n+1, 3)²)`
-/

namespace A112742.P2989592291238482476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * n) ^ 2 * Nat.choose (n + 1) 3 ^ 2 : ℝ)

end

end A112742.P2989592291238482476

namespace A112742

/-- `sqrt((2*n)²*C(n+1, 3)²)` -/
def P2989592291238482476.Spec : Prop :=
  ∀ n, P2989592291238482476.a n = (A112742 n : ℝ)

end A112742

/-! ## A112742.P2663645303824061591

`-2*n*Δ[-C(n+1, 4)]`
-/

namespace A112742.P2663645303824061591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 1) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * (f1 (n + 1) - f1 n))

end

end A112742.P2663645303824061591

namespace A112742

/-- `-2*n*Δ[-C(n+1, 4)]` -/
def P2663645303824061591.Spec : Prop :=
  ∀ n, P2663645303824061591.a n = A112742 n

end A112742

/-! ## A112742.P4742963566064469451

`∑[∑[(2*(2*n)%(n+1))²]]`
-/

namespace A112742.P4742963566064469451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n % (n + 1))) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112742.P4742963566064469451

namespace A112742

/-- `∑[∑[(2*(2*n)%(n+1))²]]` -/
def P4742963566064469451.Spec : Prop :=
  ∀ n, (P4742963566064469451.a n : ℤ) = A112742 n

end A112742

/-! ## A112742.P13333844254532100859

`-2*n*∑[a(n-1)-(n-1)]` with `a(0)=0`
-/

namespace A112742.P13333844254532100859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112742.P13333844254532100859

namespace A112742

/-- `-2*n*∑[a(n-1)-(n-1)]` -/
def P13333844254532100859.Spec : Prop :=
  ∀ n, P13333844254532100859.a n = A112742 n

end A112742

/-! ## A112742.P11330598100854886943

`A072819(n)/2`
-/

namespace A112742.P11330598100854886943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072819 n : ℚ) / 2

end

end A112742.P11330598100854886943

namespace A112742

/-- `A072819(n)/2` -/
def P11330598100854886943.Spec : Prop :=
  ∀ n, P11330598100854886943.a n = (A112742 n : ℚ)

end A112742

/-! ## A112742.P9340414634258290274

`(A060886(n)-1)/3`
-/

namespace A112742.P9340414634258290274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060886 n - 1 : ℚ) / 3

end

end A112742.P9340414634258290274

namespace A112742

/-- `(A060886(n)-1)/3` -/
def P9340414634258290274.Spec : Prop :=
  ∀ n, P9340414634258290274.a n = (A112742 n : ℚ)

end A112742

/-! ## A112742.P12643844899120945774

`n²²-A071270(n)`
-/

namespace A112742.P12643844899120945774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A071270 n

end

end A112742.P12643844899120945774

namespace A112742

/-- `n²²-A071270(n)` -/
def P12643844899120945774.Spec : Prop :=
  ∀ n, P12643844899120945774.a n = A112742 n

end A112742

/-! ## A112742.P6942419285803032329

`A187756(n)-n²²`
-/

namespace A112742.P6942419285803032329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n - ((n ^ 2) ^ 2 : ℤ)

end

end A112742.P6942419285803032329

namespace A112742

/-- `A187756(n)-n²²` -/
def P6942419285803032329.Spec : Prop :=
  ∀ n, P6942419285803032329.a n = A112742 n

end A112742

/-! ## A112742.P11408499133731851405

`A071238(n)-∑[n²]`
-/

namespace A112742.P11408499133731851405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112742.P11408499133731851405

namespace A112742

/-- `A071238(n)-∑[n²]` -/
def P11408499133731851405.Spec : Prop :=
  ∀ n, P11408499133731851405.a n = A112742 n

end A112742

/-! ## A112742.P12717744992817095482

`∑[∑[A055808(n)]]-n`
-/

namespace A112742.P12717744992817095482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A112742.P12717744992817095482

namespace A112742

/-- `∑[∑[A055808(n)]]-n` -/
def P12717744992817095482.Spec : Prop :=
  ∀ n, P12717744992817095482.a n = A112742 n

end A112742

/-!
# A112743: An aerated Delannoy triangle.

The programs for A112743, there is no canonical definition to state claims against.
-/

/-! ## A112743.P13685607931810257225

`A117389(A209293(n+1)-1)`
-/

namespace A112743.P13685607931810257225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117389 (A209293 (n + 1) - 1).toNat

end

end A112743.P13685607931810257225

/-! ## A112743.P9527975102029031233

`A117707(A131324(n)*A168561(n))`
-/

namespace A112743.P9527975102029031233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A131324 n * A168561 n).toNat

end

end A112743.P9527975102029031233

/-! ## A112743.P6069570016740838950

`A117707(lcm(A049310(n), A131324(n)))`
-/

namespace A112743.P6069570016740838950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.lcm (A049310 n) (A131324 n))

end

end A112743.P6069570016740838950

/-! ## A112743.P5029631730263798350

`A381524(A363041(n+1))`
-/

namespace A112743.P5029631730263798350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A363041 (n + 1)).toNat

end

end A112743.P5029631730263798350

/-! ## A112743.P16485627245427967593

`A366548(2^A119467(n))`
-/

namespace A112743.P16485627245427967593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A119467 n : ℤ))).toNat

end

end A112743.P16485627245427967593

/-!
# A112744: Least k such that 6*k*prime(n)^2 -1 is prime, where prime(i)=i-th prime.

The programs for A112744, there is no canonical definition to state claims against.
-/

/-! ## A112744.P6443040814845081284

`A103961(3*p?[round(8*n/7)]²)`
-/

namespace A112744.P6443040814845081284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A112744.P6443040814845081284

/-! ## A112744.P13060321498293012329

`A103961(A079705(n+1))`
-/

namespace A112744.P13060321498293012329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A079705 (n + 1)).toNat

end

end A112744.P13060321498293012329

/-! ## A112744.P6660415738413419788

`A103961(3*A001248(n+1))`
-/

namespace A112744.P6660415738413419788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (3 * A001248 (n + 1)).toNat

end

end A112744.P6660415738413419788

/-! ## A112744.P323566493544941685

`A103961(3*A112052(n+1))`
-/

namespace A112744.P323566493544941685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (3 * A112052 (n + 1)).toNat

end

end A112744.P323566493544941685

/-! ## A112744.P12309073843194901273

`A103961(3*A359757(n+1))`
-/

namespace A112744.P12309073843194901273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (3 * A359757 (n + 1)).toNat

end

end A112744.P12309073843194901273

/-!
# A112745: Least k such that 6*k*prime(n)^2 +1 is prime, where prime(i)=i-th prime.

The programs for A112745, there is no canonical definition to state claims against.
-/

/-! ## A112745.P8468031061919497835

`A368202(A001248(n+1))`
-/

namespace A112745.P8468031061919497835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368202 (A001248 (n + 1)).toNat

end

end A112745.P8468031061919497835

/-! ## A112745.P1047637397318899626

`A368202(A359757(n+1))`
-/

namespace A112745.P1047637397318899626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368202 (A359757 (n + 1)).toNat

end

end A112745.P1047637397318899626

/-! ## A112745.P8219568257573718376

`A368202(A280076(n+2))`
-/

namespace A112745.P8219568257573718376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368202 (A280076 (n + 2)).toNat

end

end A112745.P8219568257573718376

/-! ## A112745.P11907404568149186985

`A368202(A000040(n+1)²)`
-/

namespace A112745.P11907404568149186985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368202 (A000040 (n + 1) ^ 2).toNat

end

end A112745.P11907404568149186985

/-! ## A112745.P12831890313552190744

`A368202(A049551(n+1)²)`
-/

namespace A112745.P12831890313552190744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368202 (A049551 (n + 1) ^ 2).toNat

end

end A112745.P12831890313552190744

/-!
# A112746: Least k such that 6*k*prime(n)^2 - 1 and 6*k*prime(n)^2 + 1 are twin primes.

The programs for A112746, there is no canonical definition to state claims against.
-/

/-! ## A112746.P18184333983394440002

`A182481(p?[comp[n²]]²)`
-/

namespace A112746.P18184333983394440002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A112746.P18184333983394440002

/-! ## A112746.P10977382086697677740

`A182481(A001248(n+1))`
-/

namespace A112746.P10977382086697677740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A001248 (n + 1)).toNat

end

end A112746.P10977382086697677740

/-! ## A112746.P16788406125809905735

`A182481(A359757(n+1))`
-/

namespace A112746.P16788406125809905735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A359757 (n + 1)).toNat

end

end A112746.P16788406125809905735

/-! ## A112746.P3602436805996913906

`A182481(A280076(n+2))`
-/

namespace A112746.P3602436805996913906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A280076 (n + 2)).toNat

end

end A112746.P3602436805996913906

/-! ## A112746.P10034828093050405769

`A182481(Δ[A007504(n)]²)`
-/

namespace A112746.P10034828093050405769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A112746.P10034828093050405769

/-!
# A112749: Smallest prime of the form 5 followed by n copies of some k.

The programs for A112749, there is no canonical definition to state claims against.
-/

/-! ## A112749.P12578934282682656147

`p?[A090153(n+1)*A090172(3*n+2)]`
-/

namespace A112749.P12578934282682656147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090153 (n + 1) * A090172 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112749.P12578934282682656147

/-!
# A112750: Smallest prime of the form 7 followed by j copies of the digit k, where j runs through those positive values for which such a prime exists.

The programs for A112750, there is no canonical definition to state claims against.
-/

/-! ## A112750.P7738800002520382404

`A090155(lt[A231206(n+1), n+1])`
-/

namespace A112750.P7738800002520382404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231206 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090155 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A112750.P7738800002520382404

/-! ## A112750.P9680970839307040652

`A090155(lt[A090185(n+1), A090168(n)])`
-/

namespace A112750.P9680970839307040652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112750.P9680970839307040652

/-! ## A112750.P3012423288450251753

`A090155(lt[A004016(n), A287022(n+1)])`
-/

namespace A112750.P3012423288450251753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112750.P3012423288450251753

/-! ## A112750.P11818806490059488094

`A090155(lt[A090185(n+1), A090189(n+5)])`
-/

namespace A112750.P11818806490059488094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090189 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112750.P11818806490059488094

/-! ## A112750.P4166821664786347379

`A090155(lt[A132669(n+3), A255256(3*n+1)])`
-/

namespace A112750.P4166821664786347379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132669 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112750.P4166821664786347379

/-!
# A112751: Number of numbers of the form 3^i*5^j that are less than or equal to n.

The programs for A112751, the canonical program `A112751.P5916588208491457971` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112751 has offset 1).

The definition of A112751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112751.P5916588208491457971

`∑[C(15, ∏{p}[15*(n+1), #])]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A112751

/-- `∑[C(15, ∏{p}[15*(n+1), #])]` -/
def P5916588208491457971.Spec : Prop :=
  ∀ n, (P5916588208491457971.a n : ℤ) = A112751 (n + 1)

theorem P5916588208491457971.correct : P5916588208491457971.Spec := by
  intro n
  simp only [A112751, Nat.add_sub_cancel]

end A112751

/-! ## A112751.P196011519286498452

`∑[C(15, lcm(15, ∏{p}[n+1, #]))]`
-/

namespace A112751.P196011519286498452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 15 (Nat.lcm 15 (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P196011519286498452

namespace A112751

/-- `∑[C(15, lcm(15, ∏{p}[n+1, #]))]` -/
def P196011519286498452.Spec : Prop :=
  ∀ n, (P196011519286498452.a n : ℤ) = A112751 (n + 1)

end A112751

/-! ## A112751.P17663650867412566801

`∑[∏{p}[n+1, val(15*n, #)]]`
-/

namespace A112751.P17663650867412566801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (15 * n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P17663650867412566801

namespace A112751

/-- `∑[∏{p}[n+1, val(15*n, #)]]` -/
def P17663650867412566801.Spec : Prop :=
  ∀ n, (P17663650867412566801.a n : ℤ) = A112751 (n + 1)

end A112751

/-! ## A112751.P18060039906079873094

`∑[C(val(n+1, 5)+1, ∑{d}[n+1, #²%3])]`
-/

namespace A112751.P18060039906079873094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 5 + 1) (∑ d ∈ Nat.divisors (f2 n), d ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P18060039906079873094

namespace A112751

/-- `∑[C(val(n+1, 5)+1, ∑{d}[n+1, #²%3])]` -/
def P18060039906079873094.Spec : Prop :=
  ∀ n, (P18060039906079873094.a n : ℤ) = A112751 (n + 1)

end A112751

/-! ## A112751.P954047208897731880

`∑[C(3^val(n+1, 3), (n+1)/5^val(n+1, 5))]`
-/

namespace A112751.P954047208897731880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 ^ SequenceMachineLib.valuation (n + 1) 3) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P954047208897731880

namespace A112751

/-- `∑[C(3^val(n+1, 3), (n+1)/5^val(n+1, 5))]` -/
def P954047208897731880.Spec : Prop :=
  ∀ n, (P954047208897731880.a n : ℤ) = A112751 (n + 1)

end A112751

/-! ## A112751.P2385639902097108613

`∑[char[A120027(n)-1]]`
-/

namespace A112751.P2385639902097108613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P2385639902097108613

namespace A112751

/-- `∑[char[A120027(n)-1]]` -/
def P2385639902097108613.Spec : Prop :=
  ∀ n, (P2385639902097108613.a n : ℤ) = A112751 (n + 1)

end A112751

/-! ## A112751.P722741958356873855

`∑[∏{p}[n+1, A214264(#)]]`
-/

namespace A112751.P722741958356873855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A214264 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P722741958356873855

namespace A112751

/-- `∑[∏{p}[n+1, A214264(#)]]` -/
def P722741958356873855.Spec : Prop :=
  ∀ n, P722741958356873855.a n = A112751 (n + 1)

end A112751

/-! ## A112751.P5647813301253539659

`∑[char[A003593(n+1)-1]]`
-/

namespace A112751.P5647813301253539659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112751.P5647813301253539659

namespace A112751

/-- `∑[char[A003593(n+1)-1]]` -/
def P5647813301253539659.Spec : Prop :=
  ∀ n, (P5647813301253539659.a n : ℤ) = A112751 (n + 1)

end A112751

/-! ## A112751.P17869452581070073891

`A023966(A151970(n+2))`
-/

namespace A112751.P17869452581070073891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023966 (A151970 (n + 2)).toNat

end

end A112751.P17869452581070073891

namespace A112751

/-- `A023966(A151970(n+2))` -/
def P17869452581070073891.Spec : Prop :=
  ∀ n, P17869452581070073891.a n = A112751 (n + 1)

end A112751

/-!
# A112752: Greatest common divisors of consecutive terms of numbers of the form 3^i*5^j.

The programs for A112752, there is no canonical definition to state claims against.
-/

/-! ## A112752.P18343095116532801697

`gcd(A003593(n+1), A003593(n+2))`
-/

namespace A112752.P18343095116532801697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003593 (n + 1)) (A003593 (n + 2))

end

end A112752.P18343095116532801697

/-! ## A112752.P5309801696971492248

`gcd(Δ[A033849(n+1)/15], A033849(n+1))`
-/

namespace A112752.P5309801696971492248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033849 (n + 1) : ℚ) / 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A033849 (n + 1))

end

end A112752.P5309801696971492248

/-! ## A112752.P16784452161072770913

`gcd(Δ[A003593(n+1)], A100747(n))`
-/

namespace A112752.P16784452161072770913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A100747 n)

end

end A112752.P16784452161072770913

/-! ## A112752.P14145122210210104337

`A003593(n+1)%A355582(Δ[A003593(n+1)])`
-/

namespace A112752.P14145122210210104337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003593 (n + 1)) (A355582 (f1 (n + 1) - f1 n).toNat)

end

end A112752.P14145122210210104337

/-! ## A112752.P3186232891402254171

`A003557(gcd(A033849(n+1), A033849(n+2)))`
-/

namespace A112752.P3186232891402254171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.gcd (A033849 (n + 1)) (A033849 (n + 2)))

end

end A112752.P3186232891402254171

/-!
# A112753: Number of distinct prime factors of n-th number of the form 3^i*5^j.

The programs for A112753, there is no canonical definition to state claims against.
-/

/-! ## A112753.P9344606615868351062

`xor(4, A112755(n+1))%A112756(n+1)`
-/

namespace A112753.P9344606615868351062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 4 (A112755 (n + 1))) (A112756 (n + 1))

end

end A112753.P9344606615868351062

/-! ## A112753.P1857434208428729870

`A001221(gcd(A003593(n+1), A067755(n+1)))`
-/

namespace A112753.P1857434208428729870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A003593 (n + 1)) (A067755 (n + 1)))

end

end A112753.P1857434208428729870

/-! ## A112753.P11790981046984280604

`A001221(gcd(A003593(n+1), A022364(n)))`
-/

namespace A112753.P11790981046984280604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A003593 (n + 1)) (A022364 n))

end

end A112753.P11790981046984280604

/-! ## A112753.P4885824375168469856

`A001221(gcd(A003593(n+1)², A143207(n+1)))`
-/

namespace A112753.P4885824375168469856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A003593 (n + 1) ^ 2) (A143207 (n + 1)))

end

end A112753.P4885824375168469856

/-! ## A112753.P14816104137679036903

`A001221(gcd(A033849(n+1)/15, A033849(n+3)))`
-/

namespace A112753.P14816104137679036903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (SequenceMachineLib.roundAway ((A033849 (n + 1) : ℚ) / 15)) (A033849 (n + 3)))

end

end A112753.P14816104137679036903

/-! ## A112753.P12611886268192633629

`∑{p}[A003593(n+1), A000035(#)]`
-/

namespace A112753.P12611886268192633629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A112753.P12611886268192633629

/-! ## A112753.P6223477687404202581

`∑{p}[A003593(n+1), A001221(#)]`
-/

namespace A112753.P6223477687404202581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A112753.P6223477687404202581

/-! ## A112753.P12839030944093553957

`∑{p}[A003593(n+1), A001222(#)]`
-/

namespace A112753.P12839030944093553957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A112753.P12839030944093553957

/-! ## A112753.P4612879470098221966

`A001221(∏{p}[A003593(n+1), #])`
-/

namespace A112753.P4612879470098221966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112753.P4612879470098221966

/-! ## A112753.P6340916325743477694

`A001222(∏{p}[A003593(n+1), #])`
-/

namespace A112753.P6340916325743477694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112753.P6340916325743477694

/-!
# A112754: Total number of prime factors of n-th number of the form 3^i*5^j.

The programs for A112754, there is no canonical definition to state claims against.
-/

/-! ## A112754.P16747625701180190901

`A022336(n+1)+A022337(n+1)`
-/

namespace A112754.P16747625701180190901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + A022337 (n + 1)

end

end A112754.P16747625701180190901

/-! ## A112754.P5051740446233921740

`A022337(n+1)+val(A003593(n+1), 3)`
-/

namespace A112754.P5051740446233921740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) + (SequenceMachineLib.valuation (A003593 (n + 1)).toNat 3 : ℤ)

end

end A112754.P5051740446233921740

/-! ## A112754.P4930481158253943657

`A022336(n+1)+val(A003593(n+1), 5)`
-/

namespace A112754.P4930481158253943657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1) + (SequenceMachineLib.valuation (A003593 (n + 1)).toNat 5 : ℤ)

end

end A112754.P4930481158253943657

/-! ## A112754.P16267805949567399334

`A023443(A022337(n+1)+val(A033849(n+1), 3))`
-/

namespace A112754.P16267805949567399334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022337 (n + 1) + (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3 : ℤ)).toNat

end

end A112754.P16267805949567399334

/-! ## A112754.P15347721164131720123

`A065423(2*val(A033849(n+1), 3))+A022337(n+1)`
-/

namespace A112754.P15347721164131720123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3) + A022337 (n + 1)

end

end A112754.P15347721164131720123

/-! ## A112754.P2204134693174734788

`A022337(n+1)+A133334(n+1)-A010052(n²)`
-/

namespace A112754.P2204134693174734788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) + (A133334 (n + 1) - A010052 (n ^ 2))

end

end A112754.P2204134693174734788

/-! ## A112754.P10102297436105727782

`A022337(n+1)+A133334(n+1)-A321648(A122535(n+1))`
-/

namespace A112754.P10102297436105727782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) + (A133334 (n + 1) - A321648 (A122535 (n + 1)).toNat)

end

end A112754.P10102297436105727782

/-! ## A112754.P15723287697713556594

`A022337(n+1)+A227539(n+1)-1`
-/

namespace A112754.P15723287697713556594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) + (A227539 (n + 1) - 1)

end

end A112754.P15723287697713556594

/-! ## A112754.P8947060254089271867

`A023443(A227539(n+1)+A022337(n+1))`
-/

namespace A112754.P8947060254089271867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A227539 (n + 1) + A022337 (n + 1)).toNat

end

end A112754.P8947060254089271867

/-! ## A112754.P16338187816389443270

`∑{e}[A003593(n+1), #]`
-/

namespace A112754.P16338187816389443270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112754.P16338187816389443270

/-!
# A112755: Smallest prime factor of n-th number of the form 3^i*5^j.

The programs for A112755, there is no canonical definition to state claims against.
-/

/-! ## A112755.P5852576693718626616

`gcd(30, A003593(n+1))%6`
-/

namespace A112755.P5852576693718626616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 30 (A003593 (n + 1)) % 6

end

end A112755.P5852576693718626616

/-! ## A112755.P11681937274179335689

`or(1, A112756(n+1)-A112753(n+1))`
-/

namespace A112755.P11681937274179335689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112756 (n + 1) - A112753 (n + 1))

end

end A112755.P11681937274179335689

/-! ## A112755.P2838489560472015691

`A020639(gcd(A003593(n+1)², A156865(n+1)))`
-/

namespace A112755.P2838489560472015691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A003593 (n + 1) ^ 2) (A156865 (n + 1)))

end

end A112755.P2838489560472015691

/-! ## A112755.P15972790215742568184

`A020639(A003593(n+1)%Δ[A143207(n+1)])`
-/

namespace A112755.P15972790215742568184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A003593 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A112755.P15972790215742568184

/-! ## A112755.P71333180155208967

`A020639(A003593(n+1)%A143207(n+1))`
-/

namespace A112755.P71333180155208967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A003593 (n + 1)) (A143207 (n + 1))).toNat

end

end A112755.P71333180155208967

/-! ## A112755.P8764669515279969241

`A020639(A003593(n+1)²%A147571(n+1))`
-/

namespace A112755.P8764669515279969241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A003593 (n + 1) ^ 2) (A147571 (n + 1))).toNat

end

end A112755.P8764669515279969241

/-! ## A112755.P4890369990219442163

`A020639(∏{p}[A003593(n+1), #])`
-/

namespace A112755.P4890369990219442163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112755.P4890369990219442163

/-! ## A112755.P8719159841464920966

`A028233(∏{p}[A003593(n+1), #])`
-/

namespace A112755.P8719159841464920966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112755.P8719159841464920966

/-!
# A112756: Greatest prime factor of n-th number of the form 3^i*5^j.

The programs for A112756, there is no canonical definition to state claims against.
-/

/-! ## A112756.P13353631225214127070

`gcd(30, A003593(n+1))%10`
-/

namespace A112756.P13353631225214127070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 30 (A003593 (n + 1)) % 10

end

end A112756.P13353631225214127070

/-! ## A112756.P5621027178582369471

`A251549(a(A022337(n+1)))` with `a(0)=1`
-/

namespace A112756.P5621027178582369471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251549 (a (A022337 (n + 1)).toNat).toNat

end

end A112756.P5621027178582369471

/-! ## A112756.P6340338808986459038

`A271709(a(A022337(n+1)))` with `a(0)=1`
-/

namespace A112756.P6340338808986459038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271709 (a (A022337 (n + 1)).toNat).toNat

end

end A112756.P6340338808986459038

/-! ## A112756.P18169040289776342265

`a(A053188(a(A022337(n+1))))+2` with `a(0)=1`
-/

namespace A112756.P18169040289776342265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A053188 (a (A022337 (n + 1)).toNat)).toNat + 2

end

end A112756.P18169040289776342265

/-! ## A112756.P12567419630442115688

`A000005(A102376(a(A022337(n+1))))` with `a(0)=1`
-/

namespace A112756.P12567419630442115688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A102376 (a (A022337 (n + 1)).toNat).toNat).toNat

end

end A112756.P12567419630442115688

/-! ## A112756.P9377147373171277297

`filter[A364564(n+1), A103451(#)]`
-/

namespace A112756.P9377147373171277297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103451 (f1 j).toNat = 1) n)

end

end A112756.P9377147373171277297

/-! ## A112756.P4895841480547658620

`filter[A364564(n+1), A133566(#)]`
-/

namespace A112756.P4895841480547658620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133566 (f1 j).toNat = 1) n)

end

end A112756.P4895841480547658620

/-! ## A112756.P18375306771151890328

`filter[A364564(n+1), A167393(#)]`
-/

namespace A112756.P18375306771151890328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167393 (f1 j).toNat = 1) n)

end

end A112756.P18375306771151890328

/-! ## A112756.P6623110479826108321

`filter[A364564(n+1), A380418(#)]`
-/

namespace A112756.P6623110479826108321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380418 (f1 j).toNat = 1) n)

end

end A112756.P6623110479826108321

/-! ## A112756.P4025768641987011658

`A001462(Δ[A134986(3*n+1)]²)`
-/

namespace A112756.P4025768641987011658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134986 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A112756.P4025768641987011658

/-!
# A112757: Greatest common divisors of consecutive 5-smooth numbers.

The programs for A112757, there is no canonical definition to state claims against.
-/

/-! ## A112757.P389655677861171949

`gcd(A051037(n+1), A219794(n+1))`
-/

namespace A112757.P389655677861171949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051037 (n + 1)) (A219794 (n + 1))

end

end A112757.P389655677861171949

/-! ## A112757.P3522956649800270896

`gcd(A219794(n+1)+A080193(n+1), A080193(n+1))`
-/

namespace A112757.P3522956649800270896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219794 (n + 1) + A080193 (n + 1)) (A080193 (n + 1))

end

end A112757.P3522956649800270896

/-! ## A112757.P14752631467377532805

`gcd(Δ[A051037(n+1)], A051037(n+2))`
-/

namespace A112757.P14752631467377532805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A051037 (n + 2))

end

end A112757.P14752631467377532805

/-! ## A112757.P9557804208184621885

`gcd(A143207(n+1)/30, Δ[A143207(n+1)/30])`
-/

namespace A112757.P9557804208184621885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143207 (n + 1) : ℚ) / 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A112757.P9557804208184621885

/-! ## A112757.P11113195264136137409

`gcd(A108651(n+1)/8, A166628(A219794(n+1)))`
-/

namespace A112757.P11113195264136137409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 8)) (A166628 (A219794 (n + 1)).toNat)

end

end A112757.P11113195264136137409

/-! ## A112757.P6918906911490970200

`A003557(gcd(A143207(n+1), A143207(n+2)))`
-/

namespace A112757.P6918906911490970200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.gcd (A143207 (n + 1)) (A143207 (n + 2)))

end

end A112757.P6918906911490970200

/-!
# A112758: Number of distinct prime factors of n-th 5-smooth number.

The programs for A112758, the canonical program `A112758.P11136928158016478961` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112758 has offset 1).

The definition of A112758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112758.P7533955657955342941

`∑{p}[A051037(n+1), A007318(#)]`
-/

namespace A112758.P7533955657955342941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 p

end

end A112758.P7533955657955342941

namespace A112758

/-- `∑{p}[A051037(n+1), A007318(#)]` -/
def P7533955657955342941.Spec : Prop :=
  ∀ n, P7533955657955342941.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P15288355827887371699

`A001222(∏{p}[A051037(n+1), #])`
-/

namespace A112758.P15288355827887371699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112758.P15288355827887371699

namespace A112758

/-- `A001222(∏{p}[A051037(n+1), #])` -/
def P15288355827887371699.Spec : Prop :=
  ∀ n, P15288355827887371699.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P6383328494091903712

`A001221(A051037(n+1))`
-/

namespace A112758.P6383328494091903712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051037 (n + 1)).toNat

end

end A112758.P6383328494091903712

namespace A112758

/-- `A001221(A051037(n+1))` -/
def P6383328494091903712.Spec : Prop :=
  ∀ n, P6383328494091903712.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P5868310595715129835

`A001221(A080193(n+1)/5)`
-/

namespace A112758.P5868310595715129835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat

end

end A112758.P5868310595715129835

namespace A112758

/-- `A001221(A080193(n+1)/5)` -/
def P5868310595715129835.Spec : Prop :=
  ∀ n, P5868310595715129835.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P12861291323749650019

`A001221(A143207(n+1)/30)`
-/

namespace A112758.P12861291323749650019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat

end

end A112758.P12861291323749650019

namespace A112758

/-- `A001221(A143207(n+1)/30)` -/
def P12861291323749650019.Spec : Prop :=
  ∀ n, P12861291323749650019.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P11136928158016478961

`A001221(lt[A006530(n+1), 6]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A112758

/-- `A001221(lt[A006530(n+1), 6]+1)` -/
def P11136928158016478961.Spec : Prop :=
  ∀ n, P11136928158016478961.a n = A112758 (n + 1)

theorem P11136928158016478961.correct : P11136928158016478961.Spec := by
  intro n
  simp only [A112758, Nat.add_sub_cancel]

end A112758

/-! ## A112758.P11518810557717658239

`A001221(lt[or(1, A332881(n+1)), 6]+1)`
-/

namespace A112758.P11518810557717658239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332881 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112758.P11518810557717658239

namespace A112758

/-- `A001221(lt[or(1, A332881(n+1)), 6]+1)` -/
def P11518810557717658239.Spec : Prop :=
  ∀ n, P11518810557717658239.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P18227956408541119177

`A001221(lt[A332899(n+1), 4]+1)`
-/

namespace A112758.P18227956408541119177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112758.P18227956408541119177

namespace A112758

/-- `A001221(lt[A332899(n+1), 4]+1)` -/
def P18227956408541119177.Spec : Prop :=
  ∀ n, P18227956408541119177.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P3886685941316780905

`A001221(eq[2, A141256(n)])`
-/

namespace A112758.P3886685941316780905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112758.P3886685941316780905

namespace A112758

/-- `A001221(eq[2, A141256(n)])` -/
def P3886685941316780905.Spec : Prop :=
  ∀ n, P3886685941316780905.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P517011768796737797

`A001221(record[A228732(n+1)])`
-/

namespace A112758.P517011768796737797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112758.P517011768796737797

namespace A112758

/-- `A001221(record[A228732(n+1)])` -/
def P517011768796737797.Spec : Prop :=
  ∀ n, P517011768796737797.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P7417125479184113887

`A001221(record[A355582(n+1)])`
-/

namespace A112758.P7417125479184113887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112758.P7417125479184113887

namespace A112758

/-- `A001221(record[A355582(n+1)])` -/
def P7417125479184113887.Spec : Prop :=
  ∀ n, P7417125479184113887.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P7458436817629872299

`A178146(A051037(2*n+1-n))`
-/

namespace A112758.P7458436817629872299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178146 (A051037 (2 * n + 1 - n)).toNat

end

end A112758.P7458436817629872299

namespace A112758

/-- `A178146(A051037(2*n+1-n))` -/
def P7458436817629872299.Spec : Prop :=
  ∀ n, P7458436817629872299.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P15682705607716630960

`A001221(lt[n-A243291(n+1), 3]+1)`
-/

namespace A112758.P15682705607716630960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112758.P15682705607716630960

namespace A112758

/-- `A001221(lt[n-A243291(n+1), 3]+1)` -/
def P15682705607716630960.Spec : Prop :=
  ∀ n, P15682705607716630960.a n = A112758 (n + 1)

end A112758

/-! ## A112758.P2956118539133663733

`A001221(A052126(A080193(n+1)))`
-/

namespace A112758.P2956118539133663733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052126 (A080193 (n + 1)).toNat).toNat

end

end A112758.P2956118539133663733

namespace A112758

/-- `A001221(A052126(A080193(n+1)))` -/
def P2956118539133663733.Spec : Prop :=
  ∀ n, P2956118539133663733.a n = A112758 (n + 1)

end A112758

/-!
# A112759: Total number of prime factors of n-th 5-smooth number.

The programs for A112759, there is no canonical definition to state claims against.
-/

/-! ## A112759.P12978035244828603215

`A112760(n+1)+A112761(n+1)+A112762(n+1)`
-/

namespace A112759.P12978035244828603215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112760 (n + 1) + A112761 (n + 1) + A112762 (n + 1)

end

end A112759.P12978035244828603215

/-! ## A112759.P16066445370475685024

`∑{e}[A051037(n+1), #]`
-/

namespace A112759.P16066445370475685024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112759.P16066445370475685024

/-! ## A112759.P14074516993298530111

`A001222(A051037(n+1))`
-/

namespace A112759.P14074516993298530111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051037 (n + 1)).toNat

end

end A112759.P14074516993298530111

/-! ## A112759.P9344038569675281950

`A001222(A080193(n+1)/5)`
-/

namespace A112759.P9344038569675281950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat

end

end A112759.P9344038569675281950

/-! ## A112759.P9291226727581264985

`A001222(A143207(n+1)/30)`
-/

namespace A112759.P9291226727581264985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat

end

end A112759.P9291226727581264985

/-! ## A112759.P5039022732594659895

`A001222(lt[A006530(n+1), 6]+1)`
-/

namespace A112759.P5039022732594659895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112759.P5039022732594659895

/-! ## A112759.P623760216269879892

`A001222(eq[2, A141256(n)])`
-/

namespace A112759.P623760216269879892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112759.P623760216269879892

/-! ## A112759.P15855301149076509171

`A001222(record[A228732(n+1)])`
-/

namespace A112759.P15855301149076509171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112759.P15855301149076509171

/-! ## A112759.P1259957050178873402

`A001222(record[A355582(n+1)])`
-/

namespace A112759.P1259957050178873402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112759.P1259957050178873402

/-! ## A112759.P13636789307911125940

`A356006(A051037(2*n+1-n))`
-/

namespace A112759.P13636789307911125940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A051037 (2 * n + 1 - n)).toNat

end

end A112759.P13636789307911125940

/-! ## A112759.P3961767033020859830

`A001222(lt[n-A243291(n+1), 3]+1)`
-/

namespace A112759.P3961767033020859830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112759.P3961767033020859830

/-! ## A112759.P16004898627035649356

`A001222(6*A080193(n+1))-3`
-/

namespace A112759.P16004898627035649356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * A080193 (n + 1)).toNat - 3

end

end A112759.P16004898627035649356

/-! ## A112759.P4510878446254561947

`A252736(A080193(n+1))`
-/

namespace A112759.P4510878446254561947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A080193 (n + 1)).toNat

end

end A112759.P4510878446254561947

/-!
# A112760: Exponent of 2 (value of i) in n-th number of the form 2^i*3^j*5^k.

The programs for A112760, there is no canonical definition to state claims against.
-/

/-! ## A112760.P9965586119239910567

`A112759(n+1)-A112761(n+1)-A112762(n+1)`
-/

namespace A112760.P9965586119239910567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (n + 1) - A112761 (n + 1) - A112762 (n + 1)

end

end A112760.P9965586119239910567

/-! ## A112760.P4462316981712062008

`val(A051037(n+1), 2)`
-/

namespace A112760.P4462316981712062008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051037 (n + 1)).toNat 2

end

end A112760.P4462316981712062008

/-! ## A112760.P13323859887805446897

`val(A080193(n+1), 2)`
-/

namespace A112760.P13323859887805446897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A080193 (n + 1)).toNat 2

end

end A112760.P13323859887805446897

/-! ## A112760.P781622810191648107

`val(A143207(n+1), 2)-1`
-/

namespace A112760.P781622810191648107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A143207 (n + 1)).toNat 2 : ℤ) - 1

end

end A112760.P781622810191648107

/-! ## A112760.P12421804185538612055

`val(A108651(n+1)/8, 2)`
-/

namespace A112760.P12421804185538612055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 8)).toNat 2

end

end A112760.P12421804185538612055

/-! ## A112760.P12779370764294253842

`A001222(gcd(A000079(n), A051037(n+1)))`
-/

namespace A112760.P12779370764294253842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A051037 (n + 1)))

end

end A112760.P12779370764294253842

/-! ## A112760.P4281948527658421937

`val(lt[A006530(n+1), 6]+1, 2)`
-/

namespace A112760.P4281948527658421937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 2

end

end A112760.P4281948527658421937

/-! ## A112760.P2568544277342426608

`val(lt[A332899(n+1), 4]+1, 2)`
-/

namespace A112760.P2568544277342426608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 2

end

end A112760.P2568544277342426608

/-! ## A112760.P11438210680884462210

`val(eq[2, A141256(n)], 2)`
-/

namespace A112760.P11438210680884462210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A112760.P11438210680884462210

/-! ## A112760.P5577615962585928836

`val(record[A228732(n+1)], 2)`
-/

namespace A112760.P5577615962585928836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A112760.P5577615962585928836

/-! ## A112760.P9758347223406999473

`A007814(A051037(n+1))`
-/

namespace A112760.P9758347223406999473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051037 (n + 1)).toNat

end

end A112760.P9758347223406999473

/-! ## A112760.P14428224728785774011

`A007814(A080193(n+1)/5)`
-/

namespace A112760.P14428224728785774011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat

end

end A112760.P14428224728785774011

/-! ## A112760.P9167033602514866589

`A007814(lt[A006530(n+1), 6]+1)`
-/

namespace A112760.P9167033602514866589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112760.P9167033602514866589

/-! ## A112760.P3915968466998714014

`val(record[A038500(n+1)*A132741(n+1)], 2)`
-/

namespace A112760.P3915968466998714014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A132741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A112760.P3915968466998714014

/-! ## A112760.P4799248665031947156

`A089263(A143207(n+1)/2)+1`
-/

namespace A112760.P4799248665031947156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 2)).toNat + 1

end

end A112760.P4799248665031947156

/-! ## A112760.P6827126443909849142

`A089263(A143207(n+1))`
-/

namespace A112760.P6827126443909849142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A143207 (n + 1)).toNat

end

end A112760.P6827126443909849142

/-! ## A112760.P12413000214428874496

`A007814(A080193(n+1))`
-/

namespace A112760.P12413000214428874496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A080193 (n + 1)).toNat

end

end A112760.P12413000214428874496

/-!
# A112761: Exponent of 3 (value of j) in n-th number of the form 2^i*3^j*5^k.

The programs for A112761, there is no canonical definition to state claims against.
-/

/-! ## A112761.P18262088886160597813

`A112759(n+1)-A112760(n+1)-A112762(n+1)`
-/

namespace A112761.P18262088886160597813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (n + 1) - A112760 (n + 1) - A112762 (n + 1)

end

end A112761.P18262088886160597813

/-! ## A112761.P8948160521461258330

`val(A051037(n+1), 3)`
-/

namespace A112761.P8948160521461258330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051037 (n + 1)).toNat 3

end

end A112761.P8948160521461258330

/-! ## A112761.P15480474798807073293

`val(A080193(n+1), 3)`
-/

namespace A112761.P15480474798807073293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A080193 (n + 1)).toNat 3

end

end A112761.P15480474798807073293

/-! ## A112761.P4796474332578204360

`val(A143207(n+1)/6, 3)`
-/

namespace A112761.P4796474332578204360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 6)).toNat 3

end

end A112761.P4796474332578204360

/-! ## A112761.P10445153571965901268

`val(A108651(n+1), 3)`
-/

namespace A112761.P10445153571965901268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108651 (n + 1)).toNat 3

end

end A112761.P10445153571965901268

/-! ## A112761.P17359907674578914697

`val(lt[A006530(n+1), 6]+1, 3)`
-/

namespace A112761.P17359907674578914697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 3

end

end A112761.P17359907674578914697

/-! ## A112761.P903548399102897314

`val(lt[or(1, A332881(n+1)), 6]+1, 3)`
-/

namespace A112761.P903548399102897314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332881 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 3

end

end A112761.P903548399102897314

/-! ## A112761.P10093511298386636636

`val(lt[A332899(n+1), 4]+1, 3)`
-/

namespace A112761.P10093511298386636636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 3

end

end A112761.P10093511298386636636

/-! ## A112761.P17192396031378383549

`val(eq[2, A141256(n)], 3)`
-/

namespace A112761.P17192396031378383549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 3

end

end A112761.P17192396031378383549

/-! ## A112761.P9497067493267839411

`val(record[A228732(n+1)], 3)`
-/

namespace A112761.P9497067493267839411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A112761.P9497067493267839411

/-! ## A112761.P12746552021161109189

`A007949(A051037(n+1))`
-/

namespace A112761.P12746552021161109189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A051037 (n + 1)).toNat

end

end A112761.P12746552021161109189

/-! ## A112761.P6305497778726271042

`val(record[A038500(n+1)*A132741(n+1)], 3)`
-/

namespace A112761.P6305497778726271042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A132741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A112761.P6305497778726271042

/-! ## A112761.P5101689012924628517

`A354099(A143207(n+1)/2)`
-/

namespace A112761.P5101689012924628517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 2)).toNat

end

end A112761.P5101689012924628517

/-! ## A112761.P11302781538571104359

`A007949(A108651(n+1)/2)`
-/

namespace A112761.P11302781538571104359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 2)).toNat

end

end A112761.P11302781538571104359

/-! ## A112761.P18130094562315584602

`A065339(A108651(n+1)/2)`
-/

namespace A112761.P18130094562315584602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 2)).toNat

end

end A112761.P18130094562315584602

/-! ## A112761.P6949822284797696517

`A354099(A143207(n+1))`
-/

namespace A112761.P6949822284797696517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A143207 (n + 1)).toNat

end

end A112761.P6949822284797696517

/-! ## A112761.P5513023804401835240

`A007949(A080193(n+1))`
-/

namespace A112761.P5513023804401835240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A080193 (n + 1)).toNat

end

end A112761.P5513023804401835240

/-!
# A112762: Exponent of 5 (value of k) in n-th number of the form 2^i*3^j*5^k.

The programs for A112762, there is no canonical definition to state claims against.
-/

/-! ## A112762.P6745253865304287249

`A112759(n+1)-A112760(n+1)-A112761(n+1)`
-/

namespace A112762.P6745253865304287249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (n + 1) - A112760 (n + 1) - A112761 (n + 1)

end

end A112762.P6745253865304287249

/-! ## A112762.P16851784609328577525

`val(A051037(n+1), 5)`
-/

namespace A112762.P16851784609328577525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051037 (n + 1)).toNat 5

end

end A112762.P16851784609328577525

/-! ## A112762.P12939524120569970025

`val(A080193(n+1)/5, 5)`
-/

namespace A112762.P12939524120569970025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat 5

end

end A112762.P12939524120569970025

/-! ## A112762.P7257471902819241798

`val(A143207(n+1)/30, 5)`
-/

namespace A112762.P7257471902819241798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat 5

end

end A112762.P7257471902819241798

/-! ## A112762.P9615879215435295625

`val(A108651(n+1), 5)`
-/

namespace A112762.P9615879215435295625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108651 (n + 1)).toNat 5

end

end A112762.P9615879215435295625

/-! ## A112762.P13454988191780337364

`val(lt[A006530(n+1), 6]+1, 5)`
-/

namespace A112762.P13454988191780337364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 5

end

end A112762.P13454988191780337364

/-! ## A112762.P3122372088659502120

`val(lt[or(1, A332881(n+1)), 6]+1, 5)`
-/

namespace A112762.P3122372088659502120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332881 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 5

end

end A112762.P3122372088659502120

/-! ## A112762.P15042508829791837997

`val(A000010(A080193(n+1)), 5)`
-/

namespace A112762.P15042508829791837997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A080193 (n + 1)).toNat).toNat 5

end

end A112762.P15042508829791837997

/-! ## A112762.P4871320803051201150

`A046080(lt[A006530(n+1), 6]+1)`
-/

namespace A112762.P4871320803051201150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112762.P4871320803051201150

/-! ## A112762.P3861574726109266

`val(lt[A332899(n+1), 4]+1, 5)`
-/

namespace A112762.P3861574726109266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 5

end

end A112762.P3861574726109266

/-! ## A112762.P3391368479287084588

`val(eq[2, A141256(n)], 5)`
-/

namespace A112762.P3391368479287084588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 5

end

end A112762.P3391368479287084588

/-! ## A112762.P18442727237346266339

`val(record[A228732(n+1)], 5)`
-/

namespace A112762.P18442727237346266339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 5

end

end A112762.P18442727237346266339

/-! ## A112762.P13484071460845779618

`A019269(A051037(n+1))`
-/

namespace A112762.P13484071460845779618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A051037 (n + 1)).toNat

end

end A112762.P13484071460845779618

/-! ## A112762.P16256554440701143266

`val(record[A038500(n+1)*A132741(n+1)], 5)`
-/

namespace A112762.P16256554440701143266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A132741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 5

end

end A112762.P16256554440701143266

/-! ## A112762.P1194339505244802786

`A112765(2*A051037(n+1))`
-/

namespace A112762.P1194339505244802786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (2 * A051037 (n + 1)).toNat

end

end A112762.P1194339505244802786

/-! ## A112762.P10328095480015194772

`A375670(2*A051037(n+1))`
-/

namespace A112762.P10328095480015194772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375670 (2 * A051037 (n + 1)).toNat

end

end A112762.P10328095480015194772

/-! ## A112762.P5236595575677181011

`A019269(A108651(n+1)/2)`
-/

namespace A112762.P5236595575677181011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 2)).toNat

end

end A112762.P5236595575677181011

/-!
# A112763: Smallest prime factor of the n-th 5-smooth number.

The programs for A112763, there is no canonical definition to state claims against.
-/

/-! ## A112763.P2589316294443579503

`A020639(gcd(A051037(n+1), A156865(n+1)))`
-/

namespace A112763.P2589316294443579503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A051037 (n + 1)) (A156865 (n + 1)))

end

end A112763.P2589316294443579503

/-! ## A112763.P961496099135716547

`A020639(A051037(n+1))`
-/

namespace A112763.P961496099135716547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051037 (n + 1)).toNat

end

end A112763.P961496099135716547

/-! ## A112763.P8469021840293243810

`A020639(A080193(n+1)/5)`
-/

namespace A112763.P8469021840293243810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat

end

end A112763.P8469021840293243810

/-! ## A112763.P4242702259057047954

`A020639(A108651(n+1)/8)`
-/

namespace A112763.P4242702259057047954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 8)).toNat

end

end A112763.P4242702259057047954

/-! ## A112763.P12256661013852326219

`A020639(A143207(n+1)/30)`
-/

namespace A112763.P12256661013852326219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat

end

end A112763.P12256661013852326219

/-! ## A112763.P11865584196753583558

`A020639(lt[A006530(n+1), 6]+1)`
-/

namespace A112763.P11865584196753583558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112763.P11865584196753583558

/-! ## A112763.P6224334972575077693

`A020639(lt[or(1, A332881(n+1)), 6]+1)`
-/

namespace A112763.P6224334972575077693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332881 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112763.P6224334972575077693

/-! ## A112763.P1120920526346052970

`A020639(A080193(n+1))%A080165(n+1)`
-/

namespace A112763.P1120920526346052970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A080193 (n + 1)).toNat) (A080165 (n + 1))

end

end A112763.P1120920526346052970

/-! ## A112763.P2836524106308640083

`A020639(lt[A332899(n+1), 4]+1)`
-/

namespace A112763.P2836524106308640083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112763.P2836524106308640083

/-! ## A112763.P4042595978709118550

`A020639(eq[2, A141256(n)])`
-/

namespace A112763.P4042595978709118550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112763.P4042595978709118550

/-! ## A112763.P1794490156428847058

`A020639(record[A228732(n+1)])`
-/

namespace A112763.P1794490156428847058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112763.P1794490156428847058

/-! ## A112763.P10432361001633961462

`A020639(record[A355582(n+1)])`
-/

namespace A112763.P10432361001633961462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112763.P10432361001633961462

/-! ## A112763.P84310277494631306

`A020639(lt[n, A228732(n+1)]+1)`
-/

namespace A112763.P84310277494631306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A112763.P84310277494631306

/-! ## A112763.P8217935015179888029

`A020639(lt[n-A243291(n+1), 3]+1)`
-/

namespace A112763.P8217935015179888029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112763.P8217935015179888029

/-! ## A112763.P4920251677324460683

`A117364(A117367(A051037(n+1))²)`
-/

namespace A112763.P4920251677324460683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117364 (A117367 (A051037 (n + 1)).toNat ^ 2).toNat

end

end A112763.P4920251677324460683

/-! ## A112763.P6733302860458161561

`A117365(A117367(A051037(n+1))²)`
-/

namespace A112763.P6733302860458161561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117367 (A051037 (n + 1)).toNat ^ 2).toNat

end

end A112763.P6733302860458161561

/-! ## A112763.P16725094713419254869

`A014673(record[A228732(2*(n+1))])`
-/

namespace A112763.P16725094713419254869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112763.P16725094713419254869

/-! ## A112763.P14560316274848462979

`A107286(A080193(n+1))`
-/

namespace A112763.P14560316274848462979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A080193 (n + 1)).toNat

end

end A112763.P14560316274848462979

/-!
# A112764: Greatest prime factor of the n-th 5-smooth number.

The programs for A112764, the canonical program `A112764.P18285365227151392333` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112764 has offset 1).

The definition of A112764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112764.P15766800700292807382

`A002034(∏{p}[A051037(n+1), #])`
-/

namespace A112764.P15766800700292807382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112764.P15766800700292807382

namespace A112764

/-- `A002034(∏{p}[A051037(n+1), #])` -/
def P15766800700292807382.Spec : Prop :=
  ∀ n, P15766800700292807382.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P16697930812963591839

`A025492(∏{p}[A051037(n+1), #])`
-/

namespace A112764.P16697930812963591839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112764.P16697930812963591839

namespace A112764

/-- `A025492(∏{p}[A051037(n+1), #])` -/
def P16697930812963591839.Spec : Prop :=
  ∀ n, P16697930812963591839.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P6673561417704824928

`A006530(A051037(n+1))`
-/

namespace A112764.P6673561417704824928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051037 (n + 1)).toNat

end

end A112764.P6673561417704824928

namespace A112764

/-- `A006530(A051037(n+1))` -/
def P6673561417704824928.Spec : Prop :=
  ∀ n, P6673561417704824928.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P16721635651533057962

`A006530(A080193(n+1)/5)`
-/

namespace A112764.P16721635651533057962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat

end

end A112764.P16721635651533057962

namespace A112764

/-- `A006530(A080193(n+1)/5)` -/
def P16721635651533057962.Spec : Prop :=
  ∀ n, P16721635651533057962.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P18111171835342263041

`A006530(A108651(n+1)/8)`
-/

namespace A112764.P18111171835342263041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 8)).toNat

end

end A112764.P18111171835342263041

namespace A112764

/-- `A006530(A108651(n+1)/8)` -/
def P18111171835342263041.Spec : Prop :=
  ∀ n, P18111171835342263041.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P13471449453943686292

`A006530(A143207(n+1)/30)`
-/

namespace A112764.P13471449453943686292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat

end

end A112764.P13471449453943686292

namespace A112764

/-- `A006530(A143207(n+1)/30)` -/
def P13471449453943686292.Spec : Prop :=
  ∀ n, P13471449453943686292.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P18285365227151392333

`A006530(lt[A006530(n+1), 6]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A112764

/-- `A006530(lt[A006530(n+1), 6]+1)` -/
def P18285365227151392333.Spec : Prop :=
  ∀ n, P18285365227151392333.a n = A112764 (n + 1)

theorem P18285365227151392333.correct : P18285365227151392333.Spec := by
  intro n
  simp only [A112764, Nat.add_sub_cancel]

end A112764

/-! ## A112764.P627632105804621542

`A037276(A143207(n+1)/30)%10`
-/

namespace A112764.P627632105804621542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat) 10

end

end A112764.P627632105804621542

namespace A112764

/-- `A037276(A143207(n+1)/30)%10` -/
def P627632105804621542.Spec : Prop :=
  ∀ n, P627632105804621542.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P8167389306165231547

`A006530(eq[2, A141256(n)])`
-/

namespace A112764.P8167389306165231547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112764.P8167389306165231547

namespace A112764

/-- `A006530(eq[2, A141256(n)])` -/
def P8167389306165231547.Spec : Prop :=
  ∀ n, P8167389306165231547.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P1584751529617142938

`A006530(record[A228732(n+1)])`
-/

namespace A112764.P1584751529617142938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112764.P1584751529617142938

namespace A112764

/-- `A006530(record[A228732(n+1)])` -/
def P1584751529617142938.Spec : Prop :=
  ∀ n, P1584751529617142938.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P17333017367741408957

`A006530(record[A355582(n+1)])`
-/

namespace A112764.P17333017367741408957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112764.P17333017367741408957

namespace A112764

/-- `A006530(record[A355582(n+1)])` -/
def P17333017367741408957.Spec : Prop :=
  ∀ n, P17333017367741408957.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P4585320057182699022

`filter[A006530(n+1), A103451(#)]`
-/

namespace A112764.P4585320057182699022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103451 (f1 j).toNat = 1) n)

end

end A112764.P4585320057182699022

namespace A112764

/-- `filter[A006530(n+1), A103451(#)]` -/
def P4585320057182699022.Spec : Prop :=
  ∀ n, P4585320057182699022.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P15251992769150997455

`A117364(A117366(A051037(n+1))²)`
-/

namespace A112764.P15251992769150997455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117364 (A117366 (A051037 (n + 1)).toNat ^ 2).toNat

end

end A112764.P15251992769150997455

namespace A112764

/-- `A117364(A117366(A051037(n+1))²)` -/
def P15251992769150997455.Spec : Prop :=
  ∀ n, P15251992769150997455.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P7194176417591318954

`A117365(A117366(A051037(n+1))²)`
-/

namespace A112764.P7194176417591318954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117366 (A051037 (n + 1)).toNat ^ 2).toNat

end

end A112764.P7194176417591318954

namespace A112764

/-- `A117365(A117366(A051037(n+1))²)` -/
def P7194176417591318954.Spec : Prop :=
  ∀ n, P7194176417591318954.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P15553322209674003249

`filter[A085392(2*(n+1)), A103451(#)]`
-/

namespace A112764.P15553322209674003249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103451 (f1 j).toNat = 1) n)

end

end A112764.P15553322209674003249

namespace A112764

/-- `filter[A085392(2*(n+1)), A103451(#)]` -/
def P15553322209674003249.Spec : Prop :=
  ∀ n, P15553322209674003249.a n = A112764 (n + 1)

end A112764

/-! ## A112764.P5537557041975121829

`A087039(A080193(n+1))`
-/

namespace A112764.P5537557041975121829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A080193 (n + 1)).toNat

end

end A112764.P5537557041975121829

namespace A112764

/-- `A087039(A080193(n+1))` -/
def P5537557041975121829.Spec : Prop :=
  ∀ n, P5537557041975121829.a n = A112764 (n + 1)

end A112764

/-!
# A112765: Exponent of highest power of 5 dividing n. Or, 5-adic valuation of n.

The programs for A112765, the canonical program `A112765.P4892120039852414895` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112765 has offset 1).

The definition of A112765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112765.P4892120039852414895

`val(n+1, 5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A112765

/-- `val(n+1, 5)` -/
def P4892120039852414895.Spec : Prop :=
  ∀ n, (P4892120039852414895.a n : ℤ) = A112765 (n + 1)

theorem P4892120039852414895.correct : P4892120039852414895.Spec := by
  intro n
  simp only [A112765, Nat.add_sub_cancel]

end A112765

/-! ## A112765.P2589917408828476234

`dr(val(∑[(1-n)²], 5))`
-/

namespace A112765.P2589917408828476234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 5 : ℤ)

end

end A112765.P2589917408828476234

namespace A112765

/-- `dr(val(∑[(1-n)²], 5))` -/
def P2589917408828476234.Spec : Prop :=
  ∀ n, (P2589917408828476234.a n : ℤ) = A112765 (n + 1)

end A112765

/-! ## A112765.P10766701853237905961

`val(record[(n-1)²], 5)/2`
-/

namespace A112765.P10766701853237905961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 5 : ℚ) / 2

end

end A112765.P10766701853237905961

namespace A112765

/-- `val(record[(n-1)²], 5)/2` -/
def P10766701853237905961.Spec : Prop :=
  ∀ n, P10766701853237905961.a n = (A112765 (n + 1) : ℚ)

end A112765

/-! ## A112765.P7183010320661603260

`val(∑[(1-n)²]², 5)/2`
-/

namespace A112765.P7183010320661603260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat 5 : ℚ) / 2

end

end A112765.P7183010320661603260

namespace A112765

/-- `val(∑[(1-n)²]², 5)/2` -/
def P7183010320661603260.Spec : Prop :=
  ∀ n, P7183010320661603260.a n = (A112765 (n + 1) : ℚ)

end A112765

/-! ## A112765.P10904706417124430817

`∑{digits}[val(2*n-(n-1), 5), #]`
-/

namespace A112765.P10904706417124430817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A112765.P10904706417124430817

namespace A112765

/-- `∑{digits}[val(2*n-(n-1), 5), #]` -/
def P10904706417124430817.Spec : Prop :=
  ∀ n, (P10904706417124430817.a n : ℤ) = A112765 (n + 1)

end A112765

/-! ## A112765.P13672327725894364604

`∏{digits}[val(2*n-(n-1), 5), #]`
-/

namespace A112765.P13672327725894364604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A112765.P13672327725894364604

namespace A112765

/-- `∏{digits}[val(2*n-(n-1), 5), #]` -/
def P13672327725894364604.Spec : Prop :=
  ∀ n, (P13672327725894364604.a n : ℤ) = A112765 (n + 1)

end A112765

/-! ## A112765.P1425622597076365164

`Δ[A027868(n)]`
-/

namespace A112765.P1425622597076365164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112765.P1425622597076365164

namespace A112765

/-- `Δ[A027868(n)]` -/
def P1425622597076365164.Spec : Prop :=
  ∀ n, P1425622597076365164.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P15263413050717731840

`A055457(n+1)-1`
-/

namespace A112765.P15263413050717731840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1) - 1

end

end A112765.P15263413050717731840

namespace A112765

/-- `A055457(n+1)-1` -/
def P15263413050717731840.Spec : Prop :=
  ∀ n, P15263413050717731840.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P4673534981804247586

`ceil(ratio[A277873(n)])-1`
-/

namespace A112765.P4673534981804247586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A112765.P4673534981804247586

namespace A112765

/-- `ceil(ratio[A277873(n)])-1` -/
def P4673534981804247586.Spec : Prop :=
  ∀ n, P4673534981804247586.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P2486846789358424783

`ceil(ratio[A303828(n)])-1`
-/

namespace A112765.P2486846789358424783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A112765.P2486846789358424783

namespace A112765

/-- `ceil(ratio[A303828(n)])-1` -/
def P2486846789358424783.Spec : Prop :=
  ∀ n, P2486846789358424783.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P18090154148686837780

`A364223(n+1)/(n+1)-1`
-/

namespace A112765.P18090154148686837780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364223 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A112765.P18090154148686837780

namespace A112765

/-- `A364223(n+1)/(n+1)-1` -/
def P18090154148686837780.Spec : Prop :=
  ∀ n, P18090154148686837780.a n = (A112765 (n + 1) : ℚ)

end A112765

/-! ## A112765.P1998805217126045824

`A051628(A000265(n+1))`
-/

namespace A112765.P1998805217126045824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A000265 (n + 1)).toNat

end

end A112765.P1998805217126045824

namespace A112765

/-- `A051628(A000265(n+1))` -/
def P1998805217126045824.Spec : Prop :=
  ∀ n, P1998805217126045824.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P11806965659255505114

`A007949(A064989(n+1))`
-/

namespace A112765.P11806965659255505114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A064989 (n + 1)).toNat

end

end A112765.P11806965659255505114

namespace A112765

/-- `A007949(A064989(n+1))` -/
def P11806965659255505114.Spec : Prop :=
  ∀ n, P11806965659255505114.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P3999063193764957268

`A007949(A079707(n+1))`
-/

namespace A112765.P3999063193764957268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A079707 (n + 1)).toNat

end

end A112765.P3999063193764957268

namespace A112765

/-- `A007949(A079707(n+1))` -/
def P3999063193764957268.Spec : Prop :=
  ∀ n, P3999063193764957268.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P15830311229850295165

`A051628(A065330(n+1))`
-/

namespace A112765.P15830311229850295165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A065330 (n + 1)).toNat

end

end A112765.P15830311229850295165

namespace A112765

/-- `A051628(A065330(n+1))` -/
def P15830311229850295165.Spec : Prop :=
  ∀ n, P15830311229850295165.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P11396486127993684018

`A051628(A072963(n+1))`
-/

namespace A112765.P11396486127993684018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A072963 (n + 1)).toNat

end

end A112765.P11396486127993684018

namespace A112765

/-- `A051628(A072963(n+1))` -/
def P11396486127993684018.Spec : Prop :=
  ∀ n, P11396486127993684018.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P8132173651340801479

`A051628(A153733(n)+1)`
-/

namespace A112765.P8132173651340801479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A153733 n + 1).toNat

end

end A112765.P8132173651340801479

namespace A112765

/-- `A051628(A153733(n)+1)` -/
def P8132173651340801479.Spec : Prop :=
  ∀ n, P8132173651340801479.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P11522999444446511

`A007949(A319521(n+1))`
-/

namespace A112765.P11522999444446511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A319521 (n + 1)).toNat

end

end A112765.P11522999444446511

namespace A112765

/-- `A007949(A319521(n+1))` -/
def P11522999444446511.Spec : Prop :=
  ∀ n, P11522999444446511.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P17605326756042767488

`A106799(A355582(n+1))`
-/

namespace A112765.P17605326756042767488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A355582 (n + 1)).toNat

end

end A112765.P17605326756042767488

namespace A112765

/-- `A106799(A355582(n+1))` -/
def P17605326756042767488.Spec : Prop :=
  ∀ n, P17605326756042767488.a n = A112765 (n + 1)

end A112765

/-! ## A112765.P18244010969193389614

`A356006(A343431(n+1))`
-/

namespace A112765.P18244010969193389614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A343431 (n + 1)).toNat

end

end A112765.P18244010969193389614

namespace A112765

/-- `A356006(A343431(n+1))` -/
def P18244010969193389614.Spec : Prop :=
  ∀ n, P18244010969193389614.a n = A112765 (n + 1)

end A112765

/-!
# A112767: Beginning with 2, primes of the form: least multiple of the previous term followed by a 1. Beginning with 2, a(n) is the least prime of the form k*a(n-1)*10 + 1.

The programs for A112767, there is no canonical definition to state claims against.
-/

/-! ## A112767.P15796084926176242909

`p?[∑[20^n]+20^n]`
-/

namespace A112767.P15796084926176242909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 20 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A112767.P15796084926176242909

/-!
# A112768: Sum of terms of continued fraction for prime(n+1)/prime(n).

The programs for A112768, there is no canonical definition to state claims against.
-/

/-! ## A112768.P313974516969086465

`A049834(A144519(n+1)-A000040(n+1))`
-/

namespace A112768.P313974516969086465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A144519 (n + 1) - A000040 (n + 1)).toNat

end

end A112768.P313974516969086465

/-! ## A112768.P12842911438997242197

`A049834(A144519(n+1)-A001223(n+1))`
-/

namespace A112768.P12842911438997242197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A144519 (n + 1) - A001223 (n + 1)).toNat

end

end A112768.P12842911438997242197

/-! ## A112768.P14344601995100281391

`A049834(A144519(n+1)+1-A008864(n+1))`
-/

namespace A112768.P14344601995100281391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A144519 (n + 1) + (1 - A008864 (n + 1))).toNat

end

end A112768.P14344601995100281391

/-!
# A112769: Numbers with more than one prime factor and, in the ordered factorization, at least one exponent is less than the previous exponent when read from left to right.

The programs for A112769, there is no canonical definition to state claims against.
-/

/-! ## A112769.P6856420716640185629

`lt[n+1, A085079(n+1)]+1`
-/

namespace A112769.P6856420716640185629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A112769.P6856420716640185629

/-! ## A112769.P9317980191213253895

`lt[n+1, A085079(A028310(n))]`
-/

namespace A112769.P9317980191213253895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112769.P9317980191213253895

/-! ## A112769.P11418233066314112250

`A020725(lt[n+1, A085079(n+1)])`
-/

namespace A112769.P11418233066314112250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112769.P11418233066314112250

/-! ## A112769.P4595891393490763656

`A065475(lt[n+1, A085079(n+1)])`
-/

namespace A112769.P4595891393490763656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112769.P4595891393490763656

/-! ## A112769.P4952576125311255749

`record[A059404(n+1)%A085079(A059404(n+1))]`
-/

namespace A112769.P4952576125311255749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059404 (n + 1)) (A085079 (A059404 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112769.P4952576125311255749

/-! ## A112769.P10801696610369295270

`A362620(n+1)%A002189(n)`
-/

namespace A112769.P10801696610369295270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362620 (n + 1)) (A002189 n)

end

end A112769.P10801696610369295270

/-! ## A112769.P2690384638128580510

`A362620(A326568(A327473(n+1))+n)`
-/

namespace A112769.P2690384638128580510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362620 (A326568 (A327473 (n + 1)).toNat + (n : ℤ)).toNat

end

end A112769.P2690384638128580510

/-! ## A112769.P10682924213608922260

`A362620(A326568(A359891(n+1))+n)`
-/

namespace A112769.P10682924213608922260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362620 (A326568 (A359891 (n + 1)).toNat + (n : ℤ)).toNat

end

end A112769.P10682924213608922260

/-! ## A112769.P1429002332700778031

`A329142(n+2)`
-/

namespace A112769.P1429002332700778031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (n + 2)

end

end A112769.P1429002332700778031

/-! ## A112769.P9233790216917349063

`record[A329142(A126759(abs(1-n)))]`
-/

namespace A112769.P9233790216917349063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (A126759 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112769.P9233790216917349063

/-!
# A112770: Products of pairs of terms from A003627.

The programs for A112770, there is no canonical definition to state claims against.
-/

/-! ## A112770.P6537503931478509579

`record[A025480(A121307(n+1))]`
-/

namespace A112770.P6537503931478509579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A121307 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112770.P6537503931478509579

/-! ## A112770.P13268191138859140556

`record[A066048(A176262(n+1))]`
-/

namespace A112770.P13268191138859140556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A176262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112770.P13268191138859140556

/-! ## A112770.P7603561073736878451

`record[A343430(A001358(n+1))]`
-/

namespace A112770.P7603561073736878451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112770.P7603561073736878451

/-! ## A112770.P8591433152953228556

`filter[A004612(n+1), A064911(#)]`
-/

namespace A112770.P8591433152953228556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112770.P8591433152953228556

/-! ## A112770.P8530887633880133346

`filter[A176262(n+1), A064911(#)]`
-/

namespace A112770.P8530887633880133346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112770.P8530887633880133346

/-! ## A112770.P2757623283440838981

`filter[A176262(n+1), A101040(#)]`
-/

namespace A112770.P2757623283440838981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A112770.P2757623283440838981

/-! ## A112770.P15501020009289629761

`filter[A176262(n+1), A353799(#)]`
-/

namespace A112770.P15501020009289629761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A112770.P15501020009289629761

/-! ## A112770.P2476895847152101540

`filter[A176262(n+1), A383575(#)]`
-/

namespace A112770.P2476895847152101540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A112770.P2476895847152101540

/-! ## A112770.P9451831135914208265

`record[A032742(A121307(ceil((n+1)/2)))]`
-/

namespace A112770.P9451831135914208265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A121307 ⌈(n + 1 : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112770.P9451831135914208265

/-! ## A112770.P7802429326063972071

`∩[A001358(n+1), A004612(n+1)]`
-/

namespace A112770.P7802429326063972071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112770.P7802429326063972071

/-!
# A112771: Semiprimes of the form 6n + 1.

The programs for A112771, the canonical program `A112771.P9314669823243134138` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112771 has offset 1).

The definition of A112771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112771.P9922984912873411438

`6*A112775(n+1)+1`
-/

namespace A112771.P9922984912873411438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A112775 (n + 1) + 1

end

end A112771.P9922984912873411438

namespace A112771

/-- `6*A112775(n+1)+1` -/
def P9922984912873411438.Spec : Prop :=
  ∀ n, P9922984912873411438.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P3650459471556626090

`∩[6*n+1, A001358(n+1)]`
-/

namespace A112771.P3650459471556626090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112771.P3650459471556626090

namespace A112771

/-- `∩[6*n+1, A001358(n+1)]` -/
def P3650459471556626090.Spec : Prop :=
  ∀ n, (P3650459471556626090.a n : ℤ) = A112771 (n + 1)

end A112771

/-! ## A112771.P4203236332411724525

`filter[A091300(n+2), A359828(#)]`
-/

namespace A112771.P4203236332411724525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A112771.P4203236332411724525

namespace A112771

/-- `filter[A091300(n+2), A359828(#)]` -/
def P4203236332411724525.Spec : Prop :=
  ∀ n, P4203236332411724525.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P9314669823243134138

`filter[A391330(n+1), A373977(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A112771

/-- `filter[A391330(n+1), A373977(#)]` -/
def P9314669823243134138.Spec : Prop :=
  ∀ n, P9314669823243134138.a n = A112771 (n + 1)

theorem P9314669823243134138.correct : P9314669823243134138.Spec := by
  intro n
  simp only [A112771, Nat.add_sub_cancel]

end A112771

/-! ## A112771.P17409255142261402574

`filter[A091300(n+1), A064911(#)]`
-/

namespace A112771.P17409255142261402574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112771.P17409255142261402574

namespace A112771

/-- `filter[A091300(n+1), A064911(#)]` -/
def P17409255142261402574.Spec : Prop :=
  ∀ n, P17409255142261402574.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P15868174641550442659

`filter[A091300(n+1), A101040(#)]`
-/

namespace A112771.P15868174641550442659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A112771.P15868174641550442659

namespace A112771

/-- `filter[A091300(n+1), A101040(#)]` -/
def P15868174641550442659.Spec : Prop :=
  ∀ n, P15868174641550442659.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P9276325070500742779

`filter[A091300(n+1), A353480(#)]`
-/

namespace A112771.P9276325070500742779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A112771.P9276325070500742779

namespace A112771

/-- `filter[A091300(n+1), A353480(#)]` -/
def P9276325070500742779.Spec : Prop :=
  ∀ n, P9276325070500742779.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P16980437993106171796

`filter[A280389(n+1), A373977(#)]`
-/

namespace A112771.P16980437993106171796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A112771.P16980437993106171796

namespace A112771

/-- `filter[A280389(n+1), A373977(#)]` -/
def P16980437993106171796.Spec : Prop :=
  ∀ n, P16980437993106171796.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P4584025661704543932

`A016921(A112775(n+1))`
-/

namespace A112771.P4584025661704543932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A112775 (n + 1)).toNat

end

end A112771.P4584025661704543932

namespace A112771

/-- `A016921(A112775(n+1))` -/
def P4584025661704543932.Spec : Prop :=
  ∀ n, P4584025661704543932.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P18312627535854083637

`filter[A016921(n), A064911(#)]`
-/

namespace A112771.P18312627535854083637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112771.P18312627535854083637

namespace A112771

/-- `filter[A016921(n), A064911(#)]` -/
def P18312627535854083637.Spec : Prop :=
  ∀ n, P18312627535854083637.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P17124965277554199198

`filter[A271114(n), A064911(#)]`
-/

namespace A112771.P17124965277554199198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112771.P17124965277554199198

namespace A112771

/-- `filter[A271114(n), A064911(#)]` -/
def P17124965277554199198.Spec : Prop :=
  ∀ n, P17124965277554199198.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P16609006931091968813

`filter[A016921(n), A353480(#)]`
-/

namespace A112771.P16609006931091968813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A112771.P16609006931091968813

namespace A112771

/-- `filter[A016921(n), A353480(#)]` -/
def P16609006931091968813.Spec : Prop :=
  ∀ n, P16609006931091968813.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P16421347650135515772

`filter[A308196(n), A064911(#)]`
-/

namespace A112771.P16421347650135515772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112771.P16421347650135515772

namespace A112771

/-- `filter[A308196(n), A064911(#)]` -/
def P16421347650135515772.Spec : Prop :=
  ∀ n, P16421347650135515772.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P15792009239110798184

`filter[A271114(n), A353480(#)]`
-/

namespace A112771.P15792009239110798184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A112771.P15792009239110798184

namespace A112771

/-- `filter[A271114(n), A353480(#)]` -/
def P15792009239110798184.Spec : Prop :=
  ∀ n, P15792009239110798184.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P6724530968897183712

`filter[A271114(n), A359828(#)]`
-/

namespace A112771.P6724530968897183712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A112771.P6724530968897183712

namespace A112771

/-- `filter[A271114(n), A359828(#)]` -/
def P6724530968897183712.Spec : Prop :=
  ∀ n, P6724530968897183712.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P4054116860590606397

`∩[A280389(n+1), A016921(n)]`
-/

namespace A112771.P4054116860590606397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112771.P4054116860590606397

namespace A112771

/-- `∩[A280389(n+1), A016921(n)]` -/
def P4054116860590606397.Spec : Prop :=
  ∀ n, (P4054116860590606397.a n : ℤ) = A112771 (n + 1)

end A112771

/-! ## A112771.P15332540991535102497

`filter[A100764(n+1), A064911(#)]`
-/

namespace A112771.P15332540991535102497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112771.P15332540991535102497

namespace A112771

/-- `filter[A100764(n+1), A064911(#)]` -/
def P15332540991535102497.Spec : Prop :=
  ∀ n, P15332540991535102497.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P17680387867772375497

`filter[A100764(n+1), A353480(#)]`
-/

namespace A112771.P17680387867772375497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A112771.P17680387867772375497

namespace A112771

/-- `filter[A100764(n+1), A353480(#)]` -/
def P17680387867772375497.Spec : Prop :=
  ∀ n, P17680387867772375497.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P6822650170804495458

`filter[A100764(n+2), A359828(#)]`
-/

namespace A112771.P6822650170804495458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A112771.P6822650170804495458

namespace A112771

/-- `filter[A100764(n+2), A359828(#)]` -/
def P6822650170804495458.Spec : Prop :=
  ∀ n, P6822650170804495458.a n = A112771 (n + 1)

end A112771

/-! ## A112771.P15118726813408181379

`filter[A046315(n+1), A373977(#)]`
-/

namespace A112771.P15118726813408181379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A112771.P15118726813408181379

namespace A112771

/-- `filter[A046315(n+1), A373977(#)]` -/
def P15118726813408181379.Spec : Prop :=
  ∀ n, P15118726813408181379.a n = A112771 (n + 1)

end A112771

/-!
# A112772: Semiprimes of the form 6n+2.

The programs for A112772, the canonical program `A112772.P11841538556147305833` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112772 has offset 1).

The definition of A112772 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112772.P14810978006761773911

`2*A002476(n+1)`
-/

namespace A112772.P14810978006761773911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002476 (n + 1)

end

end A112772.P14810978006761773911

namespace A112772

/-- `2*A002476(n+1)` -/
def P14810978006761773911.Spec : Prop :=
  ∀ n, P14810978006761773911.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P11841538556147305833

`6*A024892(n+1)+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A112772

/-- `6*A024892(n+1)+2` -/
def P11841538556147305833.Spec : Prop :=
  ∀ n, P11841538556147305833.a n = A112772 (n + 1)

theorem P11841538556147305833.correct : P11841538556147305833.Spec := by
  intro n
  simp only [A112772, Nat.add_sub_cancel]

end A112772

/-! ## A112772.P13372887270029935795

`2*p?[3*n+1]`
-/

namespace A112772.P13372887270029935795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A112772.P13372887270029935795

namespace A112772

/-- `2*p?[3*n+1]` -/
def P13372887270029935795.Spec : Prop :=
  ∀ n, (P13372887270029935795.a n : ℤ) = A112772 (n + 1)

end A112772

/-! ## A112772.P15246255023339937666

`lcm(2, p?[3*n-2])`
-/

namespace A112772.P15246255023339937666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A112772.P15246255023339937666

namespace A112772

/-- `lcm(2, p?[3*n-2])` -/
def P15246255023339937666.Spec : Prop :=
  ∀ n, (P15246255023339937666.a n : ℤ) = A112772 (n + 1)

end A112772

/-! ## A112772.P17656864650614772496

`lcm(2, A002476(A000027(n+1)))`
-/

namespace A112772.P17656864650614772496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002476 (A000027 (n + 1)).toNat)

end

end A112772.P17656864650614772496

namespace A112772

/-- `lcm(2, A002476(A000027(n+1)))` -/
def P17656864650614772496.Spec : Prop :=
  ∀ n, (P17656864650614772496.a n : ℤ) = A112772 (n + 1)

end A112772

/-! ## A112772.P6562590899133106972

`A002476(A000027(n+1))+A002476(n+1)`
-/

namespace A112772.P6562590899133106972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (A000027 (n + 1)).toNat + A002476 (n + 1)

end

end A112772.P6562590899133106972

namespace A112772

/-- `A002476(A000027(n+1))+A002476(n+1)` -/
def P6562590899133106972.Spec : Prop :=
  ∀ n, P6562590899133106972.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P15367078491440333261

`A002476(n+1)+A022759(n+1)-A007528(n+1)`
-/

namespace A112772.P15367078491440333261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) + (A022759 (n + 1) - A007528 (n + 1))

end

end A112772.P15367078491440333261

namespace A112772

/-- `A002476(n+1)+A022759(n+1)-A007528(n+1)` -/
def P15367078491440333261.Spec : Prop :=
  ∀ n, P15367078491440333261.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P390537347629815583

`A002476(n+1)+A048629(n+1)/A007528(n+1)`
-/

namespace A112772.P390537347629815583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) : ℚ) + (A048629 (n + 1) : ℚ) / (A007528 (n + 1) : ℚ)

end

end A112772.P390537347629815583

namespace A112772

/-- `A002476(n+1)+A048629(n+1)/A007528(n+1)` -/
def P390537347629815583.Spec : Prop :=
  ∀ n, P390537347629815583.a n = (A112772 (n + 1) : ℚ)

end A112772

/-! ## A112772.P9704803080805144249

`2*A007645(n+2)`
-/

namespace A112772.P9704803080805144249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007645 (n + 2)

end

end A112772.P9704803080805144249

namespace A112772

/-- `2*A007645(n+2)` -/
def P9704803080805144249.Spec : Prop :=
  ∀ n, P9704803080805144249.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P10321078248891771656

`2*A045375(n+2)`
-/

namespace A112772.P10321078248891771656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045375 (n + 2)

end

end A112772.P10321078248891771656

namespace A112772

/-- `2*A045375(n+2)` -/
def P10321078248891771656.Spec : Prop :=
  ∀ n, P10321078248891771656.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P1002849765684378708

`2*A123365(n+2)`
-/

namespace A112772.P1002849765684378708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123365 (n + 2)

end

end A112772.P1002849765684378708

namespace A112772

/-- `2*A123365(n+2)` -/
def P1002849765684378708.Spec : Prop :=
  ∀ n, P1002849765684378708.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P207565952922448070

`Δ[2*A172113(n+1)]`
-/

namespace A112772.P207565952922448070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112772.P207565952922448070

namespace A112772

/-- `Δ[2*A172113(n+1)]` -/
def P207565952922448070.Spec : Prop :=
  ∀ n, P207565952922448070.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P18275835840508978480

`A007645(n+2)+A002476(n+1)`
-/

namespace A112772.P18275835840508978480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2) + A002476 (n + 1)

end

end A112772.P18275835840508978480

namespace A112772

/-- `A007645(n+2)+A002476(n+1)` -/
def P18275835840508978480.Spec : Prop :=
  ∀ n, P18275835840508978480.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P7447871790049016319

`A045375(n+2)+A002476(n+1)`
-/

namespace A112772.P7447871790049016319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) + A002476 (n + 1)

end

end A112772.P7447871790049016319

namespace A112772

/-- `A045375(n+2)+A002476(n+1)` -/
def P7447871790049016319.Spec : Prop :=
  ∀ n, P7447871790049016319.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P14326750434774709755

`A123365(n+2)+A002476(n+1)`
-/

namespace A112772.P14326750434774709755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2) + A002476 (n + 1)

end

end A112772.P14326750434774709755

namespace A112772

/-- `A123365(n+2)+A002476(n+1)` -/
def P14326750434774709755.Spec : Prop :=
  ∀ n, P14326750434774709755.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P14399164998467031756

`A045375(n+2)+A007645(n+2)`
-/

namespace A112772.P14399164998467031756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) + A007645 (n + 2)

end

end A112772.P14399164998467031756

namespace A112772

/-- `A045375(n+2)+A007645(n+2)` -/
def P14399164998467031756.Spec : Prop :=
  ∀ n, P14399164998467031756.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P10221071600186620689

`A002476(n+1)+A002476(n+2)-A359257(n+1)`
-/

namespace A112772.P10221071600186620689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) + (A002476 (n + 2) - A359257 (n + 1))

end

end A112772.P10221071600186620689

namespace A112772

/-- `A002476(n+1)+A002476(n+2)-A359257(n+1)` -/
def P10221071600186620689.Spec : Prop :=
  ∀ n, P10221071600186620689.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P14547264717786691266

`A003627(n+2)+A171715(n+2)+A007645(n+2)`
-/

namespace A112772.P14547264717786691266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) + (A171715 (n + 2) + A007645 (n + 2))

end

end A112772.P14547264717786691266

namespace A112772

/-- `A003627(n+2)+A171715(n+2)+A007645(n+2)` -/
def P14547264717786691266.Spec : Prop :=
  ∀ n, P14547264717786691266.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P11770407725000569052

`A003627(n+2)+A171715(n+2)+A045375(n+2)`
-/

namespace A112772.P11770407725000569052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) + (A171715 (n + 2) + A045375 (n + 2))

end

end A112772.P11770407725000569052

namespace A112772

/-- `A003627(n+2)+A171715(n+2)+A045375(n+2)` -/
def P11770407725000569052.Spec : Prop :=
  ∀ n, P11770407725000569052.a n = A112772 (n + 1)

end A112772

/-! ## A112772.P13658489449244585285

`A045375(n+2)+A171715(n+2)+A045410(n+2)`
-/

namespace A112772.P13658489449244585285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) + (A171715 (n + 2) + A045410 (n + 2))

end

end A112772.P13658489449244585285

namespace A112772

/-- `A045375(n+2)+A171715(n+2)+A045410(n+2)` -/
def P13658489449244585285.Spec : Prop :=
  ∀ n, P13658489449244585285.a n = A112772 (n + 1)

end A112772

/-!
# A112773: 3 together with primes multiplied by 3.

The programs for A112773, the canonical program `A112773.P44553575666953962` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112773 has offset 1).

The definition of A112773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112773.P44553575666953962

`3*A008578(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112773

/-- `3*A008578(n+1)` -/
def P44553575666953962.Spec : Prop :=
  ∀ n, P44553575666953962.a n = A112773 (n + 1)

theorem P44553575666953962.correct : P44553575666953962.Spec := by
  intro n
  simp only [A112773, Nat.add_sub_cancel]

end A112773

/-! ## A112773.P9112605732131719307

`A176003(n+1)+2`
-/

namespace A112773.P9112605732131719307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176003 (n + 1) + 2

end

end A112773.P9112605732131719307

namespace A112773

/-- `A176003(n+1)+2` -/
def P9112605732131719307.Spec : Prop :=
  ∀ n, P9112605732131719307.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P18201238158526034906

`3*(A028815(n)-1)`
-/

namespace A112773.P18201238158526034906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A028815 n - 1)

end

end A112773.P18201238158526034906

namespace A112773

/-- `3*(A028815(n)-1)` -/
def P18201238158526034906.Spec : Prop :=
  ∀ n, P18201238158526034906.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P17102912366707436128

`3*sqrt(A280076(n+1))`
-/

namespace A112773.P17102912366707436128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A280076 (n + 1) : ℝ)

end

end A112773.P17102912366707436128

namespace A112773

/-- `3*sqrt(A280076(n+1))` -/
def P17102912366707436128.Spec : Prop :=
  ∀ n, P17102912366707436128.a n = (A112773 (n + 1) : ℝ)

end A112773

/-! ## A112773.P8835739598106131789

`record[3*A259153(n+1)]`
-/

namespace A112773.P8835739598106131789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112773.P8835739598106131789

namespace A112773

/-- `record[3*A259153(n+1)]` -/
def P8835739598106131789.Spec : Prop :=
  ∀ n, P8835739598106131789.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P15860505506834967854

`3/2*A001747(n+1)`
-/

namespace A112773.P15860505506834967854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A001747 (n + 1) : ℚ)

end

end A112773.P15860505506834967854

namespace A112773

/-- `3/2*A001747(n+1)` -/
def P15860505506834967854.Spec : Prop :=
  ∀ n, P15860505506834967854.a n = (A112773 (n + 1) : ℚ)

end A112773

/-! ## A112773.P2515864339295354470

`3*(A167136(n+1)-n)`
-/

namespace A112773.P2515864339295354470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A167136 (n + 1) - (n : ℤ))

end

end A112773.P2515864339295354470

namespace A112773

/-- `3*(A167136(n+1)-n)` -/
def P2515864339295354470.Spec : Prop :=
  ∀ n, P2515864339295354470.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P10913000313699406760

`3*(A162177(n+1)+n+1)`
-/

namespace A112773.P10913000313699406760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A162177 (n + 1) + (n + 1 : ℤ))

end

end A112773.P10913000313699406760

namespace A112773

/-- `3*(A162177(n+1)+n+1)` -/
def P10913000313699406760.Spec : Prop :=
  ∀ n, P10913000313699406760.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P15945745818089546750

`3*(A090178(n+1)-(n+1))`
-/

namespace A112773.P15945745818089546750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A090178 (n + 1) - (n + 1 : ℤ))

end

end A112773.P15945745818089546750

namespace A112773

/-- `3*(A090178(n+1)-(n+1))` -/
def P15945745818089546750.Spec : Prop :=
  ∀ n, P15945745818089546750.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P2139544233787828611

`3/(n+1)*A164931(n+1)`
-/

namespace A112773.P2139544233787828611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A164931 (n + 1) : ℚ)

end

end A112773.P2139544233787828611

namespace A112773

/-- `3/(n+1)*A164931(n+1)` -/
def P2139544233787828611.Spec : Prop :=
  ∀ n, P2139544233787828611.a n = (A112773 (n + 1) : ℚ)

end A112773

/-! ## A112773.P4968674562366979849

`3*A000040(n%a(n-1))` with `a(0)=3`
-/

namespace A112773.P4968674562366979849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A112773.P4968674562366979849

namespace A112773

/-- `3*A000040(n%a(n-1))` -/
def P4968674562366979849.Spec : Prop :=
  ∀ n, P4968674562366979849.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P13821919772990294947

`3*Δ[A000040(n-1)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A112773.P13821919772990294947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000040 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A112773.P13821919772990294947

namespace A112773

/-- `3*Δ[A000040(n-1)+a(n-1)]` -/
def P13821919772990294947.Spec : Prop :=
  ∀ n, P13821919772990294947.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P18077671988736669720

`A076274(n+1)+A028815(n)`
-/

namespace A112773.P18077671988736669720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) + A028815 n

end

end A112773.P18077671988736669720

namespace A112773

/-- `A076274(n+1)+A028815(n)` -/
def P18077671988736669720.Spec : Prop :=
  ∀ n, P18077671988736669720.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P8417321590971882039

`A288313(n+1)+A130713(n)`
-/

namespace A112773.P8417321590971882039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288313 (n + 1) + A130713 n

end

end A112773.P8417321590971882039

namespace A112773

/-- `A288313(n+1)+A130713(n)` -/
def P8417321590971882039.Spec : Prop :=
  ∀ n, P8417321590971882039.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P14963410964355987430

`A008578(n+1)+A001747(n+1)`
-/

namespace A112773.P14963410964355987430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A001747 (n + 1)

end

end A112773.P14963410964355987430

namespace A112773

/-- `A008578(n+1)+A001747(n+1)` -/
def P14963410964355987430.Spec : Prop :=
  ∀ n, P14963410964355987430.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P12546019839646893667

`3*A158611(n+2)`
-/

namespace A112773.P12546019839646893667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A158611 (n + 2)

end

end A112773.P12546019839646893667

namespace A112773

/-- `3*A158611(n+2)` -/
def P12546019839646893667.Spec : Prop :=
  ∀ n, P12546019839646893667.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P7292469542716155609

`Δ[3*A175965(n+1)]`
-/

namespace A112773.P7292469542716155609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112773.P7292469542716155609

namespace A112773

/-- `Δ[3*A175965(n+1)]` -/
def P7292469542716155609.Spec : Prop :=
  ∀ n, P7292469542716155609.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P18362258405534447504

`A158611(n+2)+A001747(n+1)`
-/

namespace A112773.P18362258405534447504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) + A001747 (n + 1)

end

end A112773.P18362258405534447504

namespace A112773

/-- `A158611(n+2)+A001747(n+1)` -/
def P18362258405534447504.Spec : Prop :=
  ∀ n, P18362258405534447504.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P15645352597511155868

`A008578(n+1)+A158611(n+2)+A008578(n+1)`
-/

namespace A112773.P15645352597511155868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A158611 (n + 2) + A008578 (n + 1))

end

end A112773.P15645352597511155868

namespace A112773

/-- `A008578(n+1)+A158611(n+2)+A008578(n+1)` -/
def P15645352597511155868.Spec : Prop :=
  ∀ n, P15645352597511155868.a n = A112773 (n + 1)

end A112773

/-! ## A112773.P7347848257880238969

`record[3*A025473(n+1)]`
-/

namespace A112773.P7347848257880238969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112773.P7347848257880238969

namespace A112773

/-- `record[3*A025473(n+1)]` -/
def P7347848257880238969.Spec : Prop :=
  ∀ n, P7347848257880238969.a n = A112773 (n + 1)

end A112773

/-!
# A112774: Semiprimes of the form 6n+4.

The programs for A112774, the canonical program `A112774.P17976456391943950983` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112774 has offset 1).

The definition of A112774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112774.P17976456391943950983

`2*A003627(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112774

/-- `2*A003627(n+1)` -/
def P17976456391943950983.Spec : Prop :=
  ∀ n, P17976456391943950983.a n = A112774 (n + 1)

theorem P17976456391943950983.correct : P17976456391943950983.Spec := by
  intro n
  simp only [A112774, Nat.add_sub_cancel]

end A112774

/-! ## A112774.P14821833674704513829

`6*A024893(n+1)+4`
-/

namespace A112774.P14821833674704513829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A024893 (n + 1) + 4

end

end A112774.P14821833674704513829

namespace A112774

/-- `6*A024893(n+1)+4` -/
def P14821833674704513829.Spec : Prop :=
  ∀ n, P14821833674704513829.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P5116250922364756171

`2*p?[3*n-1]`
-/

namespace A112774.P5116250922364756171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112774.P5116250922364756171

namespace A112774

/-- `2*p?[3*n-1]` -/
def P5116250922364756171.Spec : Prop :=
  ∀ n, P5116250922364756171.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P5916231063191419802

`3*A034934(n+1)+1`
-/

namespace A112774.P5916231063191419802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034934 (n + 1) + 1

end

end A112774.P5916231063191419802

namespace A112774

/-- `3*A034934(n+1)+1` -/
def P5916231063191419802.Spec : Prop :=
  ∀ n, P5916231063191419802.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P6700938663774627212

`ceil(2*sqrt(A301812(n+1)))`
-/

namespace A112774.P6700938663774627212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A301812 (n + 1) : ℝ)⌉

end

end A112774.P6700938663774627212

namespace A112774

/-- `ceil(2*sqrt(A301812(n+1)))` -/
def P6700938663774627212.Spec : Prop :=
  ∀ n, P6700938663774627212.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P5788756418441150713

`2*(3*A088879(n+1)+5)`
-/

namespace A112774.P5788756418441150713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A088879 (n + 1) + 5)

end

end A112774.P5788756418441150713

namespace A112774

/-- `2*(3*A088879(n+1)+5)` -/
def P5788756418441150713.Spec : Prop :=
  ∀ n, P5788756418441150713.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P13865097232871703031

`A003627(C(n+1, n))+A003627(n+1)`
-/

namespace A112774.P13865097232871703031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (Nat.choose (n + 1) n) + A003627 (n + 1)

end

end A112774.P13865097232871703031

namespace A112774

/-- `A003627(C(n+1, n))+A003627(n+1)` -/
def P13865097232871703031.Spec : Prop :=
  ∀ n, P13865097232871703031.a n = A112774 (n + 1)

theorem P13865097232871703031.correct : P13865097232871703031.Spec := by
  intro n
  simp only [A112774, Nat.add_sub_cancel, A112774.P13865097232871703031.a, A112774.P17976456391943950983.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A112774

/-! ## A112774.P15367391530970365625

`A003627(A000027(n+1))+A003627(n+1)`
-/

namespace A112774.P15367391530970365625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (A000027 (n + 1)).toNat + A003627 (n + 1)

end

end A112774.P15367391530970365625

namespace A112774

/-- `A003627(A000027(n+1))+A003627(n+1)` -/
def P15367391530970365625.Spec : Prop :=
  ∀ n, P15367391530970365625.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P17711061273616036017

`A003627(n+1)+A007645(n+1)-A171715(n+1)`
-/

namespace A112774.P17711061273616036017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A007645 (n + 1) - A171715 (n + 1))

end

end A112774.P17711061273616036017

namespace A112774

/-- `A003627(n+1)+A007645(n+1)-A171715(n+1)` -/
def P17711061273616036017.Spec : Prop :=
  ∀ n, P17711061273616036017.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P5529095029948460592

`A045375(n+1)+A045410(n+1)-A171715(n+1)`
-/

namespace A112774.P5529095029948460592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + (A045410 (n + 1) - A171715 (n + 1))

end

end A112774.P5529095029948460592

namespace A112774

/-- `A045375(n+1)+A045410(n+1)-A171715(n+1)` -/
def P5529095029948460592.Spec : Prop :=
  ∀ n, P5529095029948460592.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P7536730403787876843

`A003627(n+1)+A007528(n+1)-A358548(n+1)`
-/

namespace A112774.P7536730403787876843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A007528 (n + 1) - A358548 (n + 1))

end

end A112774.P7536730403787876843

namespace A112774

/-- `A003627(n+1)+A007528(n+1)-A358548(n+1)` -/
def P7536730403787876843.Spec : Prop :=
  ∀ n, P7536730403787876843.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P6161768535635299658

`A045375(n+1)+A045309(n+2)-A171715(n+1)`
-/

namespace A112774.P6161768535635299658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + (A045309 (n + 2) - A171715 (n + 1))

end

end A112774.P6161768535635299658

namespace A112774

/-- `A045375(n+1)+A045309(n+2)-A171715(n+1)` -/
def P6161768535635299658.Spec : Prop :=
  ∀ n, P6161768535635299658.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P945948902127090158

`A003627(n+1)+A003627(n+2)-A358548(n+1)`
-/

namespace A112774.P945948902127090158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A003627 (n + 2) - A358548 (n + 1))

end

end A112774.P945948902127090158

namespace A112774

/-- `A003627(n+1)+A003627(n+2)-A358548(n+1)` -/
def P945948902127090158.Spec : Prop :=
  ∀ n, P945948902127090158.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P11972405676136965325

`record[2*p?[A014682(n)]]`
-/

namespace A112774.P11972405676136965325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112774.P11972405676136965325

namespace A112774

/-- `record[2*p?[A014682(n)]]` -/
def P11972405676136965325.Spec : Prop :=
  ∀ n, P11972405676136965325.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P4240074334140563384

`A100484(A091177(n+1))`
-/

namespace A112774.P4240074334140563384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A091177 (n + 1)).toNat

end

end A112774.P4240074334140563384

namespace A112774

/-- `A100484(A091177(n+1))` -/
def P4240074334140563384.Spec : Prop :=
  ∀ n, P4240074334140563384.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P4098859762716263992

`2*A000040(eq[2, A000040(n+1)%3]+1)`
-/

namespace A112774.P4098859762716263992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112774.P4098859762716263992

namespace A112774

/-- `2*A000040(eq[2, A000040(n+1)%3]+1)` -/
def P4098859762716263992.Spec : Prop :=
  ∀ n, P4098859762716263992.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P17728568423586684819

`record[2*A006530(3*n+2)]`
-/

namespace A112774.P17728568423586684819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112774.P17728568423586684819

namespace A112774

/-- `record[2*A006530(3*n+2)]` -/
def P17728568423586684819.Spec : Prop :=
  ∀ n, P17728568423586684819.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P14118385376525618891

`record[2*A020639(3*n+2)]`
-/

namespace A112774.P14118385376525618891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112774.P14118385376525618891

namespace A112774

/-- `record[2*A020639(3*n+2)]` -/
def P14118385376525618891.Spec : Prop :=
  ∀ n, P14118385376525618891.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P9851954469315223730

`3*record[A000010(2*n+n+2)-n]+1`
-/

namespace A112774.P9851954469315223730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + (n + 2)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A112774.P9851954469315223730

namespace A112774

/-- `3*record[A000010(2*n+n+2)-n]+1` -/
def P9851954469315223730.Spec : Prop :=
  ∀ n, P9851954469315223730.a n = A112774 (n + 1)

end A112774

/-! ## A112774.P2657129741058778310

`filter[A001747(n+1), A373977(#)]`
-/

namespace A112774.P2657129741058778310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A112774.P2657129741058778310

namespace A112774

/-- `filter[A001747(n+1), A373977(#)]` -/
def P2657129741058778310.Spec : Prop :=
  ∀ n, P2657129741058778310.a n = A112774 (n + 1)

end A112774

/-!
# A112775: Numbers k such that 6k+1 is semiprime.

The programs for A112775, the canonical program `A112775.P2448372271427909734` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112775 has offset 1).

The definition of A112775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112771, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112775.P2448372271427909734

`(A112771(n+1)-1)/6`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A112775

/-- `(A112771(n+1)-1)/6` -/
def P2448372271427909734.Spec : Prop :=
  ∀ n, P2448372271427909734.a n = (A112775 (n + 1) : ℚ)

end A112775

/-! ## A112775.P4984036360277344405

`floor(A112771(n+1)/6)`
-/

namespace A112775.P4984036360277344405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112771 (n + 1) : ℚ) / 6⌋

end

end A112775.P4984036360277344405

namespace A112775

/-- `floor(A112771(n+1)/6)` -/
def P4984036360277344405.Spec : Prop :=
  ∀ n, P4984036360277344405.a n = A112775 (n + 1)

end A112775

/-! ## A112775.P12219856051188275360

`eq[2, A001222(6*n+1)]`
-/

namespace A112775.P12219856051188275360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P12219856051188275360

namespace A112775

/-- `eq[2, A001222(6*n+1)]` -/
def P12219856051188275360.Spec : Prop :=
  ∀ n, (P12219856051188275360.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P12362409656574791123

`eq[2, A033273(6*n+1)]`
-/

namespace A112775.P12362409656574791123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P12362409656574791123

namespace A112775

/-- `eq[2, A033273(6*n+1)]` -/
def P12362409656574791123.Spec : Prop :=
  ∀ n, (P12362409656574791123.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P12268011057091854734

`eq[2, A340101(3*n)]`
-/

namespace A112775.P12268011057091854734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P12268011057091854734

namespace A112775

/-- `eq[2, A340101(3*n)]` -/
def P12268011057091854734.Spec : Prop :=
  ∀ n, (P12268011057091854734.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P12949890995784006914

`eq[2, A317531(3*n+1)]/2`
-/

namespace A112775.P12949890995784006914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A112775.P12949890995784006914

namespace A112775

/-- `eq[2, A317531(3*n+1)]/2` -/
def P12949890995784006914.Spec : Prop :=
  ∀ n, P12949890995784006914.a n = (A112775 (n + 1) : ℚ)

end A112775

/-! ## A112775.P5651122901448177043

`eq[2, A001222(A016969(n)+2)]+1`
-/

namespace A112775.P5651122901448177043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112775.P5651122901448177043

namespace A112775

/-- `eq[2, A001222(A016969(n)+2)]+1` -/
def P5651122901448177043.Spec : Prop :=
  ∀ n, (P5651122901448177043.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P4155135601245655553

`eq[2, ∑{e}[6*n+1, #]]`
-/

namespace A112775.P4155135601245655553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112775.P4155135601245655553

namespace A112775

/-- `eq[2, ∑{e}[6*n+1, #]]` -/
def P4155135601245655553.Spec : Prop :=
  ∀ n, (P4155135601245655553.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P6414551887730382594

`eq[2, A317545(A008458(n)+1)]`
-/

namespace A112775.P6414551887730382594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (A008458 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P6414551887730382594

namespace A112775

/-- `eq[2, A317545(A008458(n)+1)]` -/
def P6414551887730382594.Spec : Prop :=
  ∀ n, (P6414551887730382594.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P455441376282960228

`eq[2, A317141(A016993(n)-n)]`
-/

namespace A112775.P455441376282960228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A016993 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P455441376282960228

namespace A112775

/-- `eq[2, A317141(A016993(n)-n)]` -/
def P455441376282960228.Spec : Prop :=
  ∀ n, (P455441376282960228.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P17595483714250825342

`eq[2, A001222(A016921(n+1))]+1`
-/

namespace A112775.P17595483714250825342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016921 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112775.P17595483714250825342

namespace A112775

/-- `eq[2, A001222(A016921(n+1))]+1` -/
def P17595483714250825342.Spec : Prop :=
  ∀ n, (P17595483714250825342.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P5136240889366647545

`eq[1, A285716(3*n+1)]`
-/

namespace A112775.P5136240889366647545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P5136240889366647545

namespace A112775

/-- `eq[1, A285716(3*n+1)]` -/
def P5136240889366647545.Spec : Prop :=
  ∀ n, (P5136240889366647545.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P12718155804823092647

`eq[2, A091304(3*n+1)]`
-/

namespace A112775.P12718155804823092647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P12718155804823092647

namespace A112775

/-- `eq[2, A091304(3*n+1)]` -/
def P12718155804823092647.Spec : Prop :=
  ∀ n, (P12718155804823092647.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P9104706475342891945

`A008612(A112771(n+1))`
-/

namespace A112775.P9104706475342891945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A112771 (n + 1)).toNat

end

end A112775.P9104706475342891945

namespace A112775

/-- `A008612(A112771(n+1))` -/
def P9104706475342891945.Spec : Prop :=
  ∀ n, P9104706475342891945.a n = A112775 (n + 1)

end A112775

/-! ## A112775.P12468207442995432440

`eq[2, A001055(A008458(n)+1)]`
-/

namespace A112775.P12468207442995432440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A008458 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P12468207442995432440

namespace A112775

/-- `eq[2, A001055(A008458(n)+1)]` -/
def P12468207442995432440.Spec : Prop :=
  ∀ n, (P12468207442995432440.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P7523855614494075237

`eq[2, A226378(A008458(n)+1)]`
-/

namespace A112775.P7523855614494075237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A008458 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P7523855614494075237

namespace A112775

/-- `eq[2, A226378(A008458(n)+1)]` -/
def P7523855614494075237.Spec : Prop :=
  ∀ n, (P7523855614494075237.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P7355230331901661539

`eq[2, A257091(A008458(n)+1)]`
-/

namespace A112775.P7355230331901661539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (A008458 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P7355230331901661539

namespace A112775

/-- `eq[2, A257091(A008458(n)+1)]` -/
def P7355230331901661539.Spec : Prop :=
  ∀ n, (P7355230331901661539.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P13833749574054294284

`eq[2, A001055(A016993(n)-n)]`
-/

namespace A112775.P13833749574054294284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A016993 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P13833749574054294284

namespace A112775

/-- `eq[2, A001055(A016993(n)-n)]` -/
def P13833749574054294284.Spec : Prop :=
  ∀ n, (P13833749574054294284.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P13963896252975948971

`eq[2, A069157(A016993(n)-n)]`
-/

namespace A112775.P13963896252975948971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A016993 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P13963896252975948971

namespace A112775

/-- `eq[2, A069157(A016993(n)-n)]` -/
def P13963896252975948971.Spec : Prop :=
  ∀ n, (P13963896252975948971.a n : ℤ) = A112775 (n + 1)

end A112775

/-! ## A112775.P15285730208760513425

`eq[2, A130675(A016993(n)-n)]`
-/

namespace A112775.P15285730208760513425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A016993 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112775.P15285730208760513425

namespace A112775

/-- `eq[2, A130675(A016993(n)-n)]` -/
def P15285730208760513425.Spec : Prop :=
  ∀ n, (P15285730208760513425.a n : ℤ) = A112775 (n + 1)

end A112775

/-!
# A112776: Numbers k such that 6k+5 is semiprime.

The programs for A112776, the canonical program `A112776.P15993050069865128161` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112776 has offset 1).

The definition of A112776 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108172, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112776.P15993050069865128161

`(A108172(n+1)-5)/6`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A112776

/-- `(A108172(n+1)-5)/6` -/
def P15993050069865128161.Spec : Prop :=
  ∀ n, P15993050069865128161.a n = (A112776 (n + 1) : ℚ)

end A112776

/-! ## A112776.P310147036619916287

`eq[4, A305973(3*(n+1))]`
-/

namespace A112776.P310147036619916287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P310147036619916287

namespace A112776

/-- `eq[4, A305973(3*(n+1))]` -/
def P310147036619916287.Spec : Prop :=
  ∀ n, (P310147036619916287.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P15902223331935664479

`eq[2, A001222(6*n+5)]`
-/

namespace A112776.P15902223331935664479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P15902223331935664479

namespace A112776

/-- `eq[2, A001222(6*n+5)]` -/
def P15902223331935664479.Spec : Prop :=
  ∀ n, (P15902223331935664479.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P2694270467555624524

`eq[2, A340101(3*n+2)]`
-/

namespace A112776.P2694270467555624524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P2694270467555624524

namespace A112776

/-- `eq[2, A340101(3*n+2)]` -/
def P2694270467555624524.Spec : Prop :=
  ∀ n, (P2694270467555624524.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P732672159943164274

`eq[6, A278223(3*(n+1))]`
-/

namespace A112776.P732672159943164274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P732672159943164274

namespace A112776

/-- `eq[6, A278223(3*(n+1))]` -/
def P732672159943164274.Spec : Prop :=
  ∀ n, (P732672159943164274.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P13524166025941881914

`eq[1, A280710(6*n+5)]`
-/

namespace A112776.P13524166025941881914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P13524166025941881914

namespace A112776

/-- `eq[1, A280710(6*n+5)]` -/
def P13524166025941881914.Spec : Prop :=
  ∀ n, (P13524166025941881914.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P470340172786393322

`eq[1, A281116(6*n+5)]`
-/

namespace A112776.P470340172786393322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P470340172786393322

namespace A112776

/-- `eq[1, A281116(6*n+5)]` -/
def P470340172786393322.Spec : Prop :=
  ∀ n, (P470340172786393322.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P8926284260807606715

`eq[2, A087436(6*n+5)]`
-/

namespace A112776.P8926284260807606715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P8926284260807606715

namespace A112776

/-- `eq[2, A087436(6*n+5)]` -/
def P8926284260807606715.Spec : Prop :=
  ∀ n, (P8926284260807606715.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P17002887272877515653

`eq[1, A285716(3*(n+1))]`
-/

namespace A112776.P17002887272877515653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P17002887272877515653

namespace A112776

/-- `eq[1, A285716(3*(n+1))]` -/
def P17002887272877515653.Spec : Prop :=
  ∀ n, (P17002887272877515653.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P17243342958065468699

`eq[3, A074206(A016969(n))]`
-/

namespace A112776.P17243342958065468699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A016969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P17243342958065468699

namespace A112776

/-- `eq[3, A074206(A016969(n))]` -/
def P17243342958065468699.Spec : Prop :=
  ∀ n, (P17243342958065468699.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P15321950293881932248

`eq[2, A193511(6*n+5)]`
-/

namespace A112776.P15321950293881932248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193511 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112776.P15321950293881932248

namespace A112776

/-- `eq[2, A193511(6*n+5)]` -/
def P15321950293881932248.Spec : Prop :=
  ∀ n, (P15321950293881932248.a n : ℤ) = A112776 (n + 1)

end A112776

/-! ## A112776.P16798254815384451484

`A008612(A108172(n+1))`
-/

namespace A112776.P16798254815384451484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A108172 (n + 1)).toNat

end

end A112776.P16798254815384451484

namespace A112776

/-- `A008612(A108172(n+1))` -/
def P16798254815384451484.Spec : Prop :=
  ∀ n, P16798254815384451484.a n = A112776 (n + 1)

end A112776

/-!
# A112777: Numbers k such that 2*k^2 + 1 is a semiprime.

The programs for A112777, there is no canonical definition to state claims against.
-/

/-! ## A112777.P17570840592569077792

`sqrt(A111350(n+1))`
-/

namespace A112777.P17570840592569077792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A111350 (n + 1) : ℝ)

end

end A112777.P17570840592569077792

/-! ## A112777.P4234803437388368353

`floor(sqrt(A111351(n+1)/2))`
-/

namespace A112777.P4234803437388368353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A111351 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A112777.P4234803437388368353

/-! ## A112777.P16653642555338612554

`round(sqrt(A111351(log2(1/2)+n+2)/2))`
-/

namespace A112777.P16653642555338612554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A111351 (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n + 2 : ℝ))).toNat : ℚ) / 2 : ℝ))

end

end A112777.P16653642555338612554

/-! ## A112777.P5511556914432599585

`A000027(round(sqrt(A111351(n+1)/2)))`
-/

namespace A112777.P5511556914432599585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt ((A111351 (n + 1) : ℚ) / 2 : ℝ))).toNat

end

end A112777.P5511556914432599585

/-! ## A112777.P11779612513063684084

`round(sqrt(A111351(n+1)/2))%A087475(n)`
-/

namespace A112777.P11779612513063684084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A111351 (n + 1) : ℚ) / 2 : ℝ))) (A087475 n)

end

end A112777.P11779612513063684084

/-! ## A112777.P7025026565290151200

`A049472(ceil(sqrt(A111351(n+1))))`
-/

namespace A112777.P7025026565290151200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 ⌈Real.sqrt (A111351 (n + 1) : ℝ)⌉.toNat

end

end A112777.P7025026565290151200

/-! ## A112777.P11515430704692526593

`eq[2, ∑{e}[2*n²+1, #]]`
-/

namespace A112777.P11515430704692526593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112777.P11515430704692526593

/-! ## A112777.P434563341209978295

`eq[2, A005361(∑{e}[A005897(n)+1, #]+1)!]`
-/

namespace A112777.P434563341209978295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005361 (∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112777.P434563341209978295

/-! ## A112777.P10614419994114435259

`eq[2, A001222(2*n²+1)]`
-/

namespace A112777.P10614419994114435259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112777.P10614419994114435259

/-! ## A112777.P11708716549955284868

`eq[1, A001222(n*2*n+1)-1]`
-/

namespace A112777.P11708716549955284868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (2 * n) + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112777.P11708716549955284868

/-!
# A112778: Number of prime factors (counted with multiplicity) of highly composite numbers (definition 1, A002182).

The programs for A112778, there is no canonical definition to state claims against.
-/

/-! ## A112778.P6847092460498848059

`A108602(n+1)+∑{e}[A301413(n+1), #]`
-/

namespace A112778.P6847092460498848059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A112778.P6847092460498848059

/-! ## A112778.P830630145335982925

`∑{d}[A329902(n+1), A297109(#)]`
-/

namespace A112778.P830630145335982925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A112778.P830630145335982925

/-! ## A112778.P17555199326959005677

`A036041(A306802(n+1))`
-/

namespace A112778.P17555199326959005677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036041 (A306802 (n + 1)).toNat

end

end A112778.P17555199326959005677

/-! ## A112778.P7402280722064334744

`A108602(n+1)+A001222(A301413(n+1))`
-/

namespace A112778.P7402280722064334744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (n + 1) + A001222 (A301413 (n + 1)).toNat

end

end A112778.P7402280722064334744

/-! ## A112778.P16558772268917453593

`A056239(A329902(n+1))`
-/

namespace A112778.P16558772268917453593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A329902 (n + 1)).toNat

end

end A112778.P16558772268917453593

/-! ## A112778.P4476559064237509790

`∑{d}[A329902(n+1), A000720(A014963(#))]`
-/

namespace A112778.P4476559064237509790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A014963 d).toNat

end

end A112778.P4476559064237509790

/-! ## A112778.P6776894793642680569

`A122376(A002183(n+1))`
-/

namespace A112778.P6776894793642680569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (A002183 (n + 1)).toNat

end

end A112778.P6776894793642680569

/-!
# A112779: Largest exponent in the prime factorization of highly composite numbers (definition 1, A002182).

The programs for A112779, there is no canonical definition to state claims against.
-/

/-! ## A112779.P6181782216607199649

`(val(A301413(n+1), 2)+1)%(n+1)`
-/

namespace A112779.P6181782216607199649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A301413 (n + 1)).toNat 2 + 1) % (n + 1)

end

end A112779.P6181782216607199649

/-! ## A112779.P12928774809577695861

`A000035(A266258(n)+n)+val(A301413(n+1), 2)`
-/

namespace A112779.P12928774809577695861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A266258 n + (n : ℤ)).toNat + (SequenceMachineLib.valuation (A301413 (n + 1)).toNat 2 : ℤ)

end

end A112779.P12928774809577695861

/-! ## A112779.P11491262697546683164

`val(A002182(n+1), 2)`
-/

namespace A112779.P11491262697546683164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002182 (n + 1)).toNat 2

end

end A112779.P11491262697546683164

/-! ## A112779.P13807855497541167093

`val(A135372(n+1)-1, 2)`
-/

namespace A112779.P13807855497541167093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135372 (n + 1) - 1).toNat 2

end

end A112779.P13807855497541167093

/-! ## A112779.P26105518944483104

`val(A046952(n+1), 4)`
-/

namespace A112779.P26105518944483104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046952 (n + 1)).toNat 4

end

end A112779.P26105518944483104

/-! ## A112779.P7992513789072118403

`A001222(gcd(2^n, A002182(n+1)))`
-/

namespace A112779.P7992513789072118403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 ^ n : ℤ) (A002182 (n + 1)))

end

end A112779.P7992513789072118403

/-! ## A112779.P17419019270424700227

`∑{e}[A329902(n+1), #]`
-/

namespace A112779.P17419019270424700227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112779.P17419019270424700227

/-! ## A112779.P16665147363268051411

`A001222(A329902(n+1))`
-/

namespace A112779.P16665147363268051411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329902 (n + 1)).toNat

end

end A112779.P16665147363268051411

/-! ## A112779.P6866320046228855226

`A061395(A353562(n+1))`
-/

namespace A112779.P6866320046228855226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A353562 (n + 1)).toNat

end

end A112779.P6866320046228855226

/-! ## A112779.P3747938364468279649

`A051282(A306802(n+1))`
-/

namespace A112779.P3747938364468279649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A306802 (n + 1)).toNat

end

end A112779.P3747938364468279649

/-! ## A112779.P9111169036076512956

`A099311(A002183(n+1))`
-/

namespace A112779.P9111169036076512956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099311 (A002183 (n + 1)).toNat

end

end A112779.P9111169036076512956

/-!
# A112780: Number of highly composite numbers (definition 1, A002182) with n decimal digits.

The programs for A112780, there is no canonical definition to state claims against.
-/

/-! ## A112780.P3945102147521944931

`A112781(n+1)-A057427(n)*A112781(A028310(n))`
-/

namespace A112780.P3945102147521944931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112781 (n + 1) - A057427 n * A112781 (A028310 n).toNat

end

end A112780.P3945102147521944931

/-! ## A112780.P751833459330428013

`Δ[A057427(n)*A112781(A028310(n))]`
-/

namespace A112780.P751833459330428013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A112781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112780.P751833459330428013

/-! ## A112780.P14516238217202768462

`Δ[A112781(A028310(n))%A003215(n)]`
-/

namespace A112780.P14516238217202768462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112781 (A028310 n).toNat) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112780.P14516238217202768462

/-! ## A112780.P13794973838261396293

`Δ[A000040(n+1)%2*A112781(A028310(n))]`
-/

namespace A112780.P13794973838261396293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A112781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112780.P13794973838261396293

/-! ## A112780.P7134519247944097833

`Δ[A088175(n+1)%2*A112781(A028310(n))]`
-/

namespace A112780.P7134519247944097833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088175 (n + 1)) 2 * A112781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112780.P7134519247944097833

/-! ## A112780.P18290832250801695669

`Δ[A060576(n+1)*A112781(A028310(n))]`
-/

namespace A112780.P18290832250801695669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A112781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112780.P18290832250801695669

/-! ## A112780.P14761897496122773207

`Δ[A124669(n+1)%2*A112781(A028310(n))]`
-/

namespace A112780.P14761897496122773207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124669 (n + 1)) 2 * A112781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112780.P14761897496122773207

/-!
# A112781: Number of highly composite numbers (definition 1, A002182) < 10^n.

The programs for A112781, there is no canonical definition to state claims against.
-/

/-! ## A112781.P13143699134096692854

`∑[A112780(n+1)]`
-/

namespace A112781.P13143699134096692854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112781.P13143699134096692854

/-! ## A112781.P18254658397056086262

`A112780(n+1)+a(n-A057427(n))` with `a(0)=4`
-/

namespace A112781.P18254658397056086262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A112780 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A112781.P18254658397056086262

/-! ## A112781.P11139446838637995226

`A112780(n+1)+a(A000007(n)-1+n)` with `a(0)=4`
-/

namespace A112781.P11139446838637995226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A112780 (n + 1) + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A112781.P11139446838637995226

/-! ## A112781.P134093570531482868

`A112780(n+1)+A000041(C(n, n+2))*a(n-1)` with `a(0)=4`
-/

namespace A112781.P134093570531482868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A112780 (n + 1) + A000041 (Nat.choose n (n + 2)) * a (n - 1)

end

end A112781.P134093570531482868

/-! ## A112781.P14383111712872424322

`A112780(n+1)+a(n-1)%(A000124(n+5)-6)` with `a(0)=4`
-/

namespace A112781.P14383111712872424322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A112780 (n + 1) + Int.tmod (a (n - 1)) (A000124 (n + 5) - 6)

end

end A112781.P14383111712872424322

/-! ## A112781.P5711709074045949160

`A112780(n+1)+a(A025581(C(n, 2)))` with `a(0)=4`
-/

namespace A112781.P5711709074045949160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A112780 (n + 1) + a (A025581 (Nat.choose n 2)).toNat

end

end A112781.P5711709074045949160

/-!
# A112786: Starting from P0=3, the sequence lists the minimum prime P1>P0 for which the expression P=P1+P0+1 is also a prime. The search then restarts from P1.

The programs for A112786, there is no canonical definition to state claims against.
-/

/-! ## A112786.P5847403133469428950

`p?[lt[n, cosh(A090329(n+1))]]`
-/

namespace A112786.P5847403133469428950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A090329 (n + 1) : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A112786.P5847403133469428950

/-! ## A112786.P7341195005709975468

`A362770(n+1)+A000007(A236914(n))`
-/

namespace A112786.P7341195005709975468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362770 (n + 1) + A000007 (A236914 n).toNat

end

end A112786.P7341195005709975468

/-! ## A112786.P3436774594801197468

`or(A260390(A003229(n)), A362770(n+1))`
-/

namespace A112786.P3436774594801197468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A260390 (A003229 n).toNat) (A362770 (n + 1))

end

end A112786.P3436774594801197468

/-! ## A112786.P3631961637557608360

`A284695(A362770(n+1)*A362801(n+1))`
-/

namespace A112786.P3631961637557608360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A362770 (n + 1) * A362801 (n + 1)).toNat

end

end A112786.P3631961637557608360

/-! ## A112786.P7072235688675429119

`or(A010685(A362804(3*n+4)), A362770(n+1))`
-/

namespace A112786.P7072235688675429119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010685 (A362804 (3 * n + 4)).toNat) (A362770 (n + 1))

end

end A112786.P7072235688675429119

/-!
# A112787: Next term is the sum of previous term and the square of the sum of its decimal digits, with a(0) = 10.

The programs for A112787, there is no canonical definition to state claims against.
-/

/-! ## A112787.P16004626698878347038

`A118881(a(n-1))+a(n-1)` with `a(0)=10`
-/

namespace A112787.P16004626698878347038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A118881 (a (n - 1)).toNat + a (n - 1)

end

end A112787.P16004626698878347038

/-! ## A112787.P4928137547894875500

`a(n-1)+A007953(a(n-1))²` with `a(0)=10`
-/

namespace A112787.P4928137547894875500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + A007953 (a (n - 1)).toNat ^ 2

end

end A112787.P4928137547894875500

/-!
# A112788: First re-appearance of first n digits in decimal expansion of e.

The programs for A112788, there is no canonical definition to state claims against.
-/

/-! ## A112788.P15433930450152633753

`A166028(n+1)+1`
-/

namespace A112788.P15433930450152633753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166028 (n + 1) + 1

end

end A112788.P15433930450152633753

/-!
# A112789: Primes such that the sum of the predecessor and successor primes is divisible by 11.

The programs for A112789, there is no canonical definition to state claims against.
-/

/-! ## A112789.P8740922167899067036

`A304713(A007629(n+1)-A000740(n+1))`
-/

namespace A112789.P8740922167899067036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (A007629 (n + 1) - A000740 (n + 1)).toNat

end

end A112789.P8740922167899067036

/-!
# A112792: Array where a(1,1)=1 and m-th term of n-th row is number of terms of (n-1)th row which are coprime to the m-th positive integer coprime to n and <=n.

The programs for A112792, there is no canonical definition to state claims against.
-/

/-! ## A112792.P2185502845875012991

`A008441(lcm(A016116(n), A240577(n)))`
-/

namespace A112792.P2185502845875012991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (Int.lcm (A016116 n) (A240577 n))

end

end A112792.P2185502845875012991

/-! ## A112792.P11339156342640124065

`A002175(A242448(n+1)%A141342(n))`
-/

namespace A112792.P11339156342640124065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 (Int.tmod (A242448 (n + 1)) (A141342 n)).toNat

end

end A112792.P11339156342640124065

/-!
# A112794: Primes such that the sum of the predecessor and successor primes is divisible by 5.

The programs for A112794, the canonical program `A112794.P1002080450273918995` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112794 has offset 1).

The definition of A112794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112794.P1002080450273918995

`A000040(eq[0, A048448(n)%5])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112794

/-- `A000040(eq[0, A048448(n)%5])` -/
def P1002080450273918995.Spec : Prop :=
  ∀ n, P1002080450273918995.a n = A112794 (n + 1)

theorem P1002080450273918995.correct : P1002080450273918995.Spec := by
  intro n
  simp only [A112794, Nat.add_sub_cancel]

end A112794

/-!
# A112797: Pierpont 3-almost primes. 3-almost primes of form (2^K)*(3^L)+1.

The programs for A112797, there is no canonical definition to state claims against.
-/

/-! ## A112797.P15559625855331365799

`filter[A055600(n+1), A358753(#)]`
-/

namespace A112797.P15559625855331365799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A112797.P15559625855331365799

/-! ## A112797.P4554884218042746652

`filter[A055600(n+1), A373975(#)]`
-/

namespace A112797.P4554884218042746652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A112797.P4554884218042746652

/-! ## A112797.P16912018450155124825

`∩[A014612(n+1), A055600(n+1)]`
-/

namespace A112797.P16912018450155124825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112797.P16912018450155124825

/-! ## A112797.P5393328634890588928

`∩[A003586(n+1)+1, A014612(n+1)]`
-/

namespace A112797.P5393328634890588928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112797.P5393328634890588928

/-! ## A112797.P11725859865310548499

`∩[A014612(n+1), A069353(n+1)+2]`
-/

namespace A112797.P11725859865310548499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112797.P11725859865310548499

/-!
# A112798: Table where n-th row is factorization of n, with each prime p_i replaced by i.

The programs for A112798, there is no canonical definition to state claims against.
-/

/-! ## A112798.P16163712338666916721

`A000720(A027746(n+2))`
-/

namespace A112798.P16163712338666916721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027746 (n + 2)).toNat

end

end A112798.P16163712338666916721

/-! ## A112798.P16480229580288960601

`A049084(p?[A027746(n+1)])`
-/

namespace A112798.P16480229580288960601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112798.P16480229580288960601

/-! ## A112798.P8390976400996174958

`A056239(p?[A027746(n+1)])`
-/

namespace A112798.P8390976400996174958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112798.P8390976400996174958

/-! ## A112798.P6168213129770248235

`A087712(p?[A027746(n+1)])`
-/

namespace A112798.P6168213129770248235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112798.P6168213129770248235

/-! ## A112798.P15268131601755482076

`A139169(p?[A027746(n+1)])`
-/

namespace A112798.P15268131601755482076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112798.P15268131601755482076

/-! ## A112798.P7136284368622845862

`A003963(2*A027746(n+2))`
-/

namespace A112798.P7136284368622845862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A027746 (n + 2)).toNat

end

end A112798.P7136284368622845862

/-! ## A112798.P12077763342899208955

`A061395(2*A027746(n+2))`
-/

namespace A112798.P12077763342899208955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A027746 (n + 2)).toNat

end

end A112798.P12077763342899208955

/-! ## A112798.P2111122421613263573

`A346698(2*A027746(n+2))`
-/

namespace A112798.P2111122421613263573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A027746 (n + 2)).toNat

end

end A112798.P2111122421613263573

/-! ## A112798.P14909229239582143737

`A056239(∑{p}[A027746(n+2), #])`
-/

namespace A112798.P14909229239582143737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112798.P14909229239582143737

/-! ## A112798.P15789474232945026897

`A065770(∑{p}[A027746(n+2), #])`
-/

namespace A112798.P15789474232945026897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112798.P15789474232945026897

/-! ## A112798.P12932790705633134997

`A055396(2*(n+1))*A055396(A027746(n+2))`
-/

namespace A112798.P12932790705633134997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) * A055396 (A027746 (n + 2)).toNat

end

end A112798.P12932790705633134997

/-! ## A112798.P3246614357381932389

`A252736(A027746(2*n+1))+A065770(A027746(n+2))`
-/

namespace A112798.P3246614357381932389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A027746 (2 * n + 1)).toNat + A065770 (A027746 (n + 2)).toNat

end

end A112798.P3246614357381932389

/-! ## A112798.P8266691546278775782

`A061395(A265110(n+2))`
-/

namespace A112798.P8266691546278775782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A265110 (n + 2)).toNat

end

end A112798.P8266691546278775782

/-! ## A112798.P2305597455051627276

`A003963(A027746(A003963(A000040(n+2))))`
-/

namespace A112798.P2305597455051627276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A027746 (A003963 (A000040 (n + 2)).toNat).toNat).toNat

end

end A112798.P2305597455051627276

/-! ## A112798.P9674468418901200673

`A061395(A027746(n+2)²)`
-/

namespace A112798.P9674468418901200673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A027746 (n + 2) ^ 2).toNat

end

end A112798.P9674468418901200673

/-! ## A112798.P5695989339891410696

`A056239(A020639(A027746(n+2)²))`
-/

namespace A112798.P5695989339891410696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020639 (A027746 (n + 2) ^ 2).toNat).toNat

end

end A112798.P5695989339891410696

/-! ## A112798.P1111102880698438761

`A241917(A006530(A027746(n+2)²))`
-/

namespace A112798.P1111102880698438761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A006530 (A027746 (n + 2) ^ 2).toNat).toNat

end

end A112798.P1111102880698438761

/-! ## A112798.P12103617670487537593

`A241917(A008472(A027746(n+2)²))`
-/

namespace A112798.P12103617670487537593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A008472 (A027746 (n + 2) ^ 2).toNat).toNat

end

end A112798.P12103617670487537593

/-! ## A112798.P7529680399937317462

`A066328(A027746(n+2)²)`
-/

namespace A112798.P7529680399937317462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A027746 (n + 2) ^ 2).toNat

end

end A112798.P7529680399937317462

