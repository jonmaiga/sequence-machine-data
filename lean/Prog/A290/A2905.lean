import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A290500: Hypotenuses for which there exist exactly 9 distinct integer triangles.

The programs for A290500, there is no canonical definition to state claims against.
-/

/-! ## A290500.P16165119367931167899

`A290503(n+1)/A097219(A046080(A002144(n+1)))`
-/

namespace A290500.P16165119367931167899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290503 (n + 1) : ℚ) / (A097219 (A046080 (A002144 (n + 1)).toNat).toNat : ℚ)

end

end A290500.P16165119367931167899

/-! ## A290500.P14311267998415382498

`5*A290501(n+1)/A216125(A216770(n+1))`
-/

namespace A290500.P14311267998415382498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A290501 (n + 1) : ℚ) / (A216125 (A216770 (n + 1)).toNat : ℚ))

end

end A290500.P14311267998415382498

/-! ## A290500.P10005025834636663436

`A216125(A002144(n+1))*A290499(n+1)/25`
-/

namespace A290500.P10005025834636663436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216125 (A002144 (n + 1)).toNat * A290499 (n + 1) : ℚ) / 25

end

end A290500.P10005025834636663436

/-! ## A290500.P1677076452314952695

`A040021(A094473(n+1))*A290499(n+1)`
-/

namespace A290500.P1677076452314952695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 (A094473 (n + 1)).toNat * A290499 (n + 1)

end

end A290500.P1677076452314952695

/-! ## A290500.P3407842681693814014

`A083945(A175122(n+1))*A290499(n+1)`
-/

namespace A290500.P3407842681693814014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (A175122 (n + 1)).toNat * A290499 (n + 1)

end

end A290500.P3407842681693814014

/-! ## A290500.P12452909326129786319

`A165826(A248201(n+1)/2)*A290499(n+1)`
-/

namespace A290500.P12452909326129786319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (SequenceMachineLib.roundAway ((A248201 (n + 1) : ℚ) / 2)).toNat * A290499 (n + 1)

end

end A290500.P12452909326129786319

/-! ## A290500.P14559367502948531393

`A010676(A246685(n))²²*A084649(n+1)`
-/

namespace A290500.P14559367502948531393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010676 (A246685 n).toNat ^ 2) ^ 2 * A084649 (n + 1)

end

end A290500.P14559367502948531393

/-! ## A290500.P925426400814747185

`A010676(A165826(n+1))²²*A084649(n+1)`
-/

namespace A290500.P925426400814747185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010676 (A165826 (n + 1)).toNat ^ 2) ^ 2 * A084649 (n + 1)

end

end A290500.P925426400814747185

/-! ## A290500.P3373058876664967496

`A040021(A209819(n+1))²²*A084649(n+1)`
-/

namespace A290500.P3373058876664967496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040021 (A209819 (n + 1)).toNat ^ 2) ^ 2 * A084649 (n + 1)

end

end A290500.P3373058876664967496

/-!
# A290501: Hypotenuses for which there exist exactly 11 distinct integer triangles.

The programs for A290501, there is no canonical definition to state claims against.
-/

/-! ## A290501.P12946115763032744199

`A290503(n+1)/(10/2)²²`
-/

namespace A290501.P12946115763032744199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290503 (n + 1) : ℚ) / (((10 : ℚ) / 2) ^ 2) ^ 2

end

end A290501.P12946115763032744199

/-! ## A290501.P16105974984567738469

`A290502(n+1)/A290504(n+1)*A290503(n+1)`
-/

namespace A290501.P16105974984567738469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290502 (n + 1) : ℚ) / (A290504 (n + 1) : ℚ) * (A290503 (n + 1) : ℚ)

end

end A290501.P16105974984567738469

/-! ## A290501.P9090610980341201538

`5*A290502(n+1)/A216125(A016933(2*(n+2)))`
-/

namespace A290501.P9090610980341201538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A290502 (n + 1) : ℚ) / (A216125 (A016933 (2 * (n + 2))).toNat : ℚ)

end

end A290501.P9090610980341201538

/-! ## A290501.P15421774274555500879

`A216125(A216770(n+1))*A290499(n+1)`
-/

namespace A290501.P15421774274555500879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216125 (A216770 (n + 1)).toNat * A290499 (n + 1)

end

end A290501.P15421774274555500879

/-! ## A290501.P987278177415838618

`A061200(A029743(n+1))²*A290500(n+1)`
-/

namespace A290501.P987278177415838618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (A029743 (n + 1)).toNat ^ 2 * A290500 (n + 1)

end

end A290501.P987278177415838618

/-! ## A290501.P5038964977929559905

`A165826(A002313(n+1))²*A290500(n+1)`
-/

namespace A290501.P5038964977929559905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A002313 (n + 1)).toNat ^ 2 * A290500 (n + 1)

end

end A290501.P5038964977929559905

/-! ## A290501.P13801569000943003461

`A216125(A002144(n+1))*A290499(n+1)`
-/

namespace A290501.P13801569000943003461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216125 (A002144 (n + 1)).toNat * A290499 (n + 1)

end

end A290501.P13801569000943003461

/-! ## A290501.P7690361077432840288

`A094473(A005408(n))²*A290500(n+1)`
-/

namespace A290501.P7690361077432840288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A005408 n).toNat ^ 2 * A290500 (n + 1)

end

end A290501.P7690361077432840288

/-! ## A290501.P14782778342369873443

`A165826(2*A002313(n+1))*A290500(n+1)`
-/

namespace A290501.P14782778342369873443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (2 * A002313 (n + 1)).toNat * A290500 (n + 1)

end

end A290501.P14782778342369873443

/-! ## A290501.P10949513704529058203

`A256452(A084646(n+1))²*A290500(n+1)`
-/

namespace A290501.P10949513704529058203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (A084646 (n + 1)).toNat ^ 2 * A290500 (n + 1)

end

end A290501.P10949513704529058203

/-! ## A290501.P14332410197960354943

`dr(A092440(A093178(n)))²*A290500(n+1)`
-/

namespace A290501.P14332410197960354943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A092440 (A093178 n).toNat) ^ 2 : ℤ) * A290500 (n + 1)

end

end A290501.P14332410197960354943

/-!
# A290502: Hypotenuses for which there exist exactly 14 distinct integer triangles.

The programs for A290502, there is no canonical definition to state claims against.
-/

/-! ## A290502.P12817277418695653443

`A290503(n+1)/5`
-/

namespace A290502.P12817277418695653443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290503 (n + 1) : ℚ) / 5

end

end A290502.P12817277418695653443

/-! ## A290502.P18375168365986426380

`5*5*5*A290501(n+1)`
-/

namespace A290502.P18375168365986426380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * (5 * A290501 (n + 1)))

end

end A290502.P18375168365986426380

/-! ## A290502.P4670970721000861129

`A290504(n+1)%(A290501(n+1)-A290503(n+1))`
-/

namespace A290502.P4670970721000861129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290504 (n + 1)) (A290501 (n + 1) - A290503 (n + 1))

end

end A290502.P4670970721000861129

/-! ## A290502.P6709259311755363232

`A084649(A046080(A002144(n+1)))*A290500(n+1)`
-/

namespace A290502.P6709259311755363232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084649 (A046080 (A002144 (n + 1)).toNat).toNat * A290500 (n + 1)

end

end A290502.P6709259311755363232

/-! ## A290502.P9576930051586950303

`A216125(A216770(n+1))²*A290499(n+1)`
-/

namespace A290502.P9576930051586950303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216125 (A216770 (n + 1)).toNat ^ 2 * A290499 (n + 1)

end

end A290502.P9576930051586950303

/-! ## A290502.P5254146106724155255

`A216125(A002144(n+1))²*A290499(n+1)`
-/

namespace A290502.P5254146106724155255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216125 (A002144 (n + 1)).toNat ^ 2 * A290499 (n + 1)

end

end A290502.P5254146106724155255

/-! ## A290502.P11541347780969073213

`A216125(A224773(n+1))²*A290499(n+1)`
-/

namespace A290502.P11541347780969073213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216125 (A224773 (n + 1)).toNat ^ 2 * A290499 (n + 1)

end

end A290502.P11541347780969073213

/-!
# A290503: Hypotenuses for which there exist exactly 15 distinct integer triangles.

The programs for A290503, there is no canonical definition to state claims against.
-/

/-! ## A290503.P6514969747314313926

`5*A290502(n+1)`
-/

namespace A290503.P6514969747314313926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A290502 (n + 1)

end

end A290503.P6514969747314313926

/-! ## A290503.P13192960589448196769

`A290501(n+1)*A345556(A141310(2*n+1))`
-/

namespace A290503.P13192960589448196769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290501 (n + 1) * A345556 (A141310 (2 * n + 1)).toNat

end

end A290503.P13192960589448196769

/-! ## A290503.P3126591566023101526

`5^A046109(A004144(n+1))*A290501(n+1)`
-/

namespace A290503.P3126591566023101526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A046109 (A004144 (n + 1)).toNat : ℤ) * (A290501 (n + 1) : ℚ)

end

end A290503.P3126591566023101526

/-! ## A290503.P9942981262824058725

`5^A046080(A084648(n+1))*A290501(n+1)`
-/

namespace A290503.P9942981262824058725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A046080 (A084648 (n + 1)).toNat : ℤ) * (A290501 (n + 1) : ℚ)

end

end A290503.P9942981262824058725

/-! ## A290503.P16781559205864640989

`A216125(A216770(n+1)+1)*A290501(n+1)`
-/

namespace A290503.P16781559205864640989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216125 (A216770 (n + 1) + 1).toNat * A290501 (n + 1)

end

end A290503.P16781559205864640989

/-! ## A290503.P17885792207980788476

`A290504(n+1)/A084647(A014963(A097102(n+1)))`
-/

namespace A290503.P17885792207980788476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290504 (n + 1) : ℚ) / (A084647 (A014963 (A097102 (n + 1)).toNat).toNat : ℚ)

end

end A290503.P17885792207980788476

/-!
# A290504: Hypotenuses for which there exist exactly 18 distinct integer triangles.

The programs for A290504, there is no canonical definition to state claims against.
-/

/-! ## A290504.P12569417776864605343

`A132366(A062011(A151800(n)))*A290503(n+1)`
-/

namespace A290504.P12569417776864605343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 (A062011 (A151800 n).toNat).toNat * A290503 (n + 1)

end

end A290504.P12569417776864605343

/-! ## A290504.P32201718213000627

`A084647(A046080(A002144(n+1)))*A290503(n+1)`
-/

namespace A290504.P32201718213000627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084647 (A046080 (A002144 (n + 1)).toNat).toNat * A290503 (n + 1)

end

end A290504.P32201718213000627

/-! ## A290504.P9061725864955664495

`A290500(A046080(A002144(n+1)))*A290500(n+1)`
-/

namespace A290504.P9061725864955664495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290500 (A046080 (A002144 (n + 1)).toNat).toNat * A290500 (n + 1)

end

end A290504.P9061725864955664495

/-! ## A290504.P16905019410164583243

`A290500(A245211(A216770(n+1)))*A290500(n+1)`
-/

namespace A290504.P16905019410164583243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290500 (A245211 (A216770 (n + 1)).toNat).toNat * A290500 (n + 1)

end

end A290504.P16905019410164583243

/-! ## A290504.P827643291599855127

`A000578(A094473(2*n+5))*A290503(n+1)`
-/

namespace A290504.P827643291599855127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A094473 (2 * n + 5)).toNat * A290503 (n + 1)

end

end A290504.P827643291599855127

/-! ## A290504.P8745346035284893985

`A290500(n+1)*A290500(A077028(C(n, 2)))`
-/

namespace A290504.P8745346035284893985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290500 (n + 1) * A290500 (A077028 (Nat.choose n 2)).toNat

end

end A290504.P8745346035284893985

/-! ## A290504.P16829887204069960807

`A290500(n+1)*A290500(A050873(C(n, 2)+1))`
-/

namespace A290504.P16829887204069960807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290500 (n + 1) * A290500 (A050873 (Nat.choose n 2 + 1)).toNat

end

end A290504.P16829887204069960807

/-! ## A290504.P7383809571204498633

`A290500(n+1)*A290500(A093178(A280186(n)))`
-/

namespace A290504.P7383809571204498633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290500 (n + 1) * A290500 (A093178 (A280186 n).toNat).toNat

end

end A290504.P7383809571204498633

/-! ## A290504.P15164726661655247089

`A084647(A014963(A097102(n+1)))*A290503(n+1)`
-/

namespace A290504.P15164726661655247089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084647 (A014963 (A097102 (n + 1)).toNat).toNat * A290503 (n + 1)

end

end A290504.P15164726661655247089

/-!
# A290505: Hypotenuses for which there exist exactly 19 distinct integer triangles.

The programs for A290505, there is no canonical definition to state claims against.
-/

/-! ## A290505.P3428078537359146475

`A083945(C(A195770(n+1)+3, 2)+6)*A097238(n+1)`
-/

namespace A290505.P3428078537359146475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (Nat.choose (A195770 (n + 1) + 3).toNat 2 + 6) * A097238 (n + 1)

end

end A290505.P3428078537359146475

/-! ## A290505.P7738999738284905046

`A083945(A175122(∏{p}[1-n, #]))*A097238(n+1)`
-/

namespace A290505.P7738999738284905046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (A175122 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat * A097238 (n + 1)

end

end A290505.P7738999738284905046

/-! ## A290505.P16580757327035914659

`A083945(A175122(abs(1-n)+1))*A097238(n+1)`
-/

namespace A290505.P16580757327035914659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (A175122 (|1 - (n : ℤ)| + 1).toNat).toNat * A097238 (n + 1)

end

end A290505.P16580757327035914659

/-! ## A290505.P13157530674114433590

`A083945(C(A000720(2*n+1)+3, 2)+6)*A097238(n+1)`
-/

namespace A290505.P13157530674114433590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (Nat.choose (A000720 (2 * n + 1) + 3).toNat 2 + 6) * A097238 (n + 1)

end

end A290505.P13157530674114433590

/-! ## A290505.P49514755110632135

`A097238(n+1)*A131296(A124282(n+1))`
-/

namespace A290505.P49514755110632135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097238 (n + 1) * A131296 (A124282 (n + 1)).toNat

end

end A290505.P49514755110632135

/-! ## A290505.P16886990919856903675

`A094473(A006005(n+1))*A097238(n+1)`
-/

namespace A290505.P16886990919856903675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A006005 (n + 1)).toNat * A097238 (n + 1)

end

end A290505.P16886990919856903675

/-! ## A290505.P5190202977737305669

`A094473(p?[2*n+1])*A097238(n+1)`
-/

namespace A290505.P5190202977737305669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A097238 (n + 1)

end

end A290505.P5190202977737305669

/-! ## A290505.P17170927998664550921

`A094473(A000040(n+2))*A097238(n+1)`
-/

namespace A290505.P17170927998664550921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A000040 (n + 2)).toNat * A097238 (n + 1)

end

end A290505.P17170927998664550921

/-! ## A290505.P18268178225660918820

`A094473(A016969(n))*A097238(n+1)`
-/

namespace A290505.P18268178225660918820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A016969 n).toNat * A097238 (n + 1)

end

end A290505.P18268178225660918820

/-! ## A290505.P1483430887060416016

`A094473(A111744(n+1))*A097238(n+1)`
-/

namespace A290505.P1483430887060416016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A111744 (n + 1)).toNat * A097238 (n + 1)

end

end A290505.P1483430887060416016

/-! ## A290505.P14041316503475478083

`5*A097238(A002260(∑[n+1]))`
-/

namespace A290505.P14041316503475478083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097238 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A290505.P14041316503475478083

/-! ## A290505.P11494039848776364168

`A097238(n+1)*A158405(A167614(n+1))`
-/

namespace A290505.P11494039848776364168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097238 (n + 1) * A158405 (A167614 (n + 1)).toNat

end

end A290505.P11494039848776364168

/-! ## A290505.P5576083492064514810

`A010137(A248201(n+1))*A097238(n+1)`
-/

namespace A290505.P5576083492064514810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A248201 (n + 1)).toNat * A097238 (n + 1)

end

end A290505.P5576083492064514810

/-! ## A290505.P12683461080874843050

`A016813(A094497(n)!)*A097238(n+1)`
-/

namespace A290505.P12683461080874843050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Nat.factorial (A094497 n).toNat) * A097238 (n + 1)

end

end A290505.P12683461080874843050

/-! ## A290505.P5694366157396765343

`A094473(A216770(n+1))*A097238(n+1)`
-/

namespace A290505.P5694366157396765343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A216770 (n + 1)).toNat * A097238 (n + 1)

end

end A290505.P5694366157396765343

/-!
# A290506: Decimal expansion of 1 - 1/e^(1/2).

The programs for A290506, there is no canonical definition to state claims against.
-/

/-! ## A290506.P8924010746173613725

`9-A092605(n)`
-/

namespace A290506.P8924010746173613725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A092605 n

end

end A290506.P8924010746173613725

/-!
# A290507: Sums and differences of products of the first n primes partitioned into two disjoint parts.

The programs for A290507, there is no canonical definition to state claims against.
-/

/-! ## A290507.P13382635082502218283

`eq[A128033(n), A248743(n+1)]`
-/

namespace A290507.P13382635082502218283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290507.P13382635082502218283

/-! ## A290507.P17290192757356515760

`record[A135506(record[A360476(2*(n+1))])]`
-/

namespace A290507.P17290192757356515760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360476 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290507.P17290192757356515760

/-! ## A290507.P5284715198937049094

`A110589(n+1)-A000122(A337737(n))`
-/

namespace A290507.P5284715198937049094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1) - A000122 (A337737 n).toNat

end

end A290507.P5284715198937049094

/-! ## A290507.P3546329488482740155

`eq[A033834(A217668(n)), A352550(n+1)]`
-/

namespace A290507.P3546329488482740155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033834 (A217668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290507.P3546329488482740155

/-! ## A290507.P16704775924754177842

`lt[A231550(A353851(n)), A329377(n+1)]`
-/

namespace A290507.P16704775924754177842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A353851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290507.P16704775924754177842

/-!
# A290509: Number of irredundant sets in the n-Moebius ladder.

The programs for A290509, there is no canonical definition to state claims against.
-/

/-! ## A290509.P12917482893135146145

`A261387(A191596(n+1)+1)`
-/

namespace A290509.P12917482893135146145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261387 (A191596 (n + 1) + 1).toNat

end

end A290509.P12917482893135146145

/-!
# A290510: Number of irredundant sets in the n-antiprism graph.

The programs for A290510, there is no canonical definition to state claims against.
-/

/-! ## A290510.P1356880698792057448

`A225683(A000110(n))+A046092(n)`
-/

namespace A290510.P1356880698792057448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225683 (A000110 n).toNat + A046092 n

end

end A290510.P1356880698792057448

/-!
# A290511: Number of irredundant sets in the n-prism graph.

The programs for A290511, there is no canonical definition to state claims against.
-/

/-! ## A290511.P18102266573561182920

`A253897(A247619(n))`
-/

namespace A290511.P18102266573561182920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253897 (A247619 n).toNat

end

end A290511.P18102266573561182920

/-!
# A290512: Number of irredundant sets in the n-hypercube graph.

The programs for A290512, there is no canonical definition to state claims against.
-/

/-! ## A290512.P11438583283555384878

`A014692(xor(n, A120759(n)))`
-/

namespace A290512.P11438583283555384878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (Int.xor (n : ℤ) (A120759 n)).toNat

end

end A290512.P11438583283555384878

/-!
# A290513: Number of irredundant sets in the n-ladder graph.

The programs for A290513, there is no canonical definition to state claims against.
-/

/-! ## A290513.P4981223225864795887

`A286868(∑[n+2])`
-/

namespace A290513.P4981223225864795887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290513.P4981223225864795887

/-! ## A290513.P18399553511488971153

`A286868(A167499(n)-3)%(7*6^(n+2))`
-/

namespace A290513.P18399553511488971153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286868 (A167499 n - 3).toNat) (7 * 6 ^ (n + 2) : ℤ)

end

end A290513.P18399553511488971153

/-! ## A290513.P1239045141639771587

`record[A286868(A133263(A008611(n)))]`
-/

namespace A290513.P1239045141639771587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290513.P1239045141639771587

/-! ## A290513.P14569307152257656922

`record[A286868(A133263(A028242(n)))]`
-/

namespace A290513.P14569307152257656922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290513.P14569307152257656922

/-! ## A290513.P15559875068343439369

`record[A286868(A133263(A003963(n+1)))]`
-/

namespace A290513.P15559875068343439369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (A133263 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290513.P15559875068343439369

/-!
# A290514: Numbers n such that product of odd divisors of n > product of odd divisors of m for all m < n.

The programs for A290514, there is no canonical definition to state claims against.
-/

/-! ## A290514.P10838616337426502500

`record[(2*n+1)%A214771(A000005(2*n+1))]`
-/

namespace A290514.P10838616337426502500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A214771 (A000005 (2 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290514.P10838616337426502500

/-! ## A290514.P1214288959479926782

`lt[A076105(A091250(3*(n+1))), A004011(n)]`
-/

namespace A290514.P1214288959479926782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (A091250 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290514.P1214288959479926782

/-! ## A290514.P5684200074561661246

`record[A000005(A324391(n+1)²)]`
-/

namespace A290514.P5684200074561661246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324391 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290514.P5684200074561661246

/-! ## A290514.P14878814801172705092

`record[A324392(A324391(n+1)²)]`
-/

namespace A290514.P14878814801172705092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (A324391 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290514.P14878814801172705092

/-! ## A290514.P13657100452192958768

`lt[A007093(n), A000593(n+1)]+1`
-/

namespace A290514.P13657100452192958768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A290514.P13657100452192958768

/-!
# A290515: a(n) = smallest number that is the start of a gap of size n between successive prime powers (A000961), or 0 if no such number exists.

The programs for A290515, there is no canonical definition to state claims against.
-/

/-! ## A290515.P1360328816096735343

`A000961(A376341(n+1))`
-/

namespace A290515.P1360328816096735343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A376341 (n + 1)).toNat

end

end A290515.P1360328816096735343

/-! ## A290515.P16963013338455643053

`A031218(A373334(n+1)-2)`
-/

namespace A290515.P16963013338455643053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A373334 (n + 1) - 2).toNat

end

end A290515.P16963013338455643053

/-! ## A290515.P10465721528258243451

`A246655(A376341(n+1))-A000027(n+1)`
-/

namespace A290515.P10465721528258243451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A376341 (n + 1)).toNat - A000027 (n + 1)

end

end A290515.P10465721528258243451

/-!
# A290516: Number of diagonalizable n X n matrices over GF(3).

The programs for A290516, there is no canonical definition to state claims against.
-/

/-! ## A290516.P7882425288019613550

`A346421(∑[n]+n)`
-/

namespace A290516.P7882425288019613550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346421 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A290516.P7882425288019613550

/-! ## A290516.P13773039990929072643

`record[char[∑[n-1]]*A346421(n)]`
-/

namespace A290516.P13773039990929072643
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A346421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290516.P13773039990929072643

/-! ## A290516.P14662986224671456294

`or(1, A346421(A000096(n)))`
-/

namespace A290516.P14662986224671456294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346421 (A000096 n).toNat)

end

end A290516.P14662986224671456294

/-!
# A290517: Maximum value of the multinomial coefficients M(n;lambda), where lambda ranges over all partitions of n into distinct parts.

The programs for A290517, the canonical program `A290517.P3773173028150075257` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290517 has offset 0).

The definition of A290517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290517.P3773173028150075257

`n*a(n-1)/A004736(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A290517

/-- `n*a(n-1)/A004736(n)` -/
def P3773173028150075257.Spec : Prop :=
  ∀ n, P3773173028150075257.a n = (A290517 n : ℚ)

end A290517

/-! ## A290517.P16691022570401580276

`A000142(n)/A290518(n)`
-/

namespace A290517.P16691022570401580276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A290518 n : ℚ)

end

end A290517.P16691022570401580276

namespace A290517

/-- `A000142(n)/A290518(n)` -/
def P16691022570401580276.Spec : Prop :=
  ∀ n, P16691022570401580276.a n = (A290517 n : ℚ)

end A290517

/-! ## A290517.P15331701609099229694

`n*a(n-1)/A002260(A038722(n))` with `a(0)=1`
-/

namespace A290517.P15331701609099229694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (A002260 (A038722 n).toNat : ℚ))

end

end A290517.P15331701609099229694

namespace A290517

/-- `n*a(n-1)/A002260(A038722(n))` -/
def P15331701609099229694.Spec : Prop :=
  ∀ n, P15331701609099229694.a n = (A290517 n : ℚ)

end A290517

/-! ## A290517.P568992174972265286

`∏[A028310(n)/A004736(A028310(n))]`
-/

namespace A290517.P568992174972265286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A004736 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290517.P568992174972265286

namespace A290517

/-- `∏[A028310(n)/A004736(A028310(n))]` -/
def P568992174972265286.Spec : Prop :=
  ∀ n, P568992174972265286.a n = (A290517 n : ℚ)

end A290517

/-! ## A290517.P10242315241163205184

`Δ[A003422(n)]/A290518(n)`
-/

namespace A290517.P10242315241163205184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A290518 n : ℚ)

end

end A290517.P10242315241163205184

namespace A290517

/-- `Δ[A003422(n)]/A290518(n)` -/
def P10242315241163205184.Spec : Prop :=
  ∀ n, P10242315241163205184.a n = (A290517 n : ℚ)

end A290517

/-!
# A290518: Minimum value of Product_{i in lambda} i!, where lambda ranges over all partitions of n into distinct parts.

The programs for A290518, the canonical program `A290518.P3455240857272655374` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290518 has offset 0).

The definition of A290518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290518.P3455240857272655374

`a(n-1)*A004736(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A290518

/-- `a(n-1)*A004736(n)` -/
def P3455240857272655374.Spec : Prop :=
  ∀ n, P3455240857272655374.a n = A290518 n

theorem P3455240857272655374.correct : P3455240857272655374.Spec := by
  intro n
  simp only [A290518]

end A290518

/-! ## A290518.P14041855053502896133

`A000142(n)/A290517(n)`
-/

namespace A290518.P14041855053502896133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A290517 n : ℚ)

end

end A290518.P14041855053502896133

namespace A290518

/-- `A000142(n)/A290517(n)` -/
def P14041855053502896133.Spec : Prop :=
  ∀ n, P14041855053502896133.a n = (A290518 n : ℚ)

end A290518

/-! ## A290518.P16788400090282714109

`∏[A193592(comp[∑[n+1]])]`
-/

namespace A290518.P16788400090282714109
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P16788400090282714109

namespace A290518

/-- `∏[A193592(comp[∑[n+1]])]` -/
def P16788400090282714109.Spec : Prop :=
  ∀ n, P16788400090282714109.a n = A290518 n

end A290518

/-! ## A290518.P14576374703847656089

`∏[A193739(comp[∑[n+1]])]`
-/

namespace A290518.P14576374703847656089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P14576374703847656089

namespace A290518

/-- `∏[A193739(comp[∑[n+1]])]` -/
def P14576374703847656089.Spec : Prop :=
  ∀ n, P14576374703847656089.a n = A290518 n

end A290518

/-! ## A290518.P15110826394000707658

`∏[A004736(floor(acot(n)+n))]`
-/

namespace A290518.P15110826394000707658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P15110826394000707658

namespace A290518

/-- `∏[A004736(floor(acot(n)+n))]` -/
def P15110826394000707658.Spec : Prop :=
  ∀ n, P15110826394000707658.a n = A290518 n

end A290518

/-! ## A290518.P2713310914229633313

`∏[A004736(round(sqrt(n²+1)))]`
-/

namespace A290518.P2713310914229633313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P2713310914229633313

namespace A290518

/-- `∏[A004736(round(sqrt(n²+1)))]` -/
def P2713310914229633313.Spec : Prop :=
  ∀ n, P2713310914229633313.a n = A290518 n

end A290518

/-! ## A290518.P16964818590888974719

`a(n-1)*A057555(2*n)` with `a(0)=1`
-/

namespace A290518.P16964818590888974719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A057555 (2 * n)

end

end A290518.P16964818590888974719

namespace A290518

/-- `a(n-1)*A057555(2*n)` -/
def P16964818590888974719.Spec : Prop :=
  ∀ n, P16964818590888974719.a n = A290518 n

end A290518

/-! ## A290518.P12305674862982699420

`(A025581(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A290518.P12305674862982699420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A025581 (n - 1) + 1) * a (n - 1)

end

end A290518.P12305674862982699420

namespace A290518

/-- `(A025581(n-1)+1)*a(n-1)` -/
def P12305674862982699420.Spec : Prop :=
  ∀ n, P12305674862982699420.a n = A290518 n

end A290518

/-! ## A290518.P4567328512423450041

`(A057554(2*n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A290518.P4567328512423450041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A057554 (2 * n) + 1) * a (n - 1)

end

end A290518.P4567328512423450041

namespace A290518

/-- `(A057554(2*n)+1)*a(n-1)` -/
def P4567328512423450041.Spec : Prop :=
  ∀ n, P4567328512423450041.a n = A290518 n

end A290518

/-! ## A290518.P9936258056339192357

`∏[A000124(A123578(n))-n]`
-/

namespace A290518.P9936258056339192357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A123578 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P9936258056339192357

namespace A290518

/-- `∏[A000124(A123578(n))-n]` -/
def P9936258056339192357.Spec : Prop :=
  ∀ n, P9936258056339192357.a n = A290518 n

end A290518

/-! ## A290518.P4272383074102947948

`∏[A002260(A038722(n+1)+1)]`
-/

namespace A290518.P4272383074102947948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P4272383074102947948

namespace A290518

/-- `∏[A002260(A038722(n+1)+1)]` -/
def P4272383074102947948.Spec : Prop :=
  ∀ n, P4272383074102947948.a n = A290518 n

end A290518

/-! ## A290518.P3040092224304348468

`∏[A000124(A000194(2*n))-n]`
-/

namespace A290518.P3040092224304348468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000194 (2 * n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P3040092224304348468

namespace A290518

/-- `∏[A000124(A000194(2*n))-n]` -/
def P3040092224304348468.Spec : Prop :=
  ∀ n, P3040092224304348468.a n = A290518 n

end A290518

/-! ## A290518.P12852858146781940313

`∏[A097285(A005408(A278818(n)))]`
-/

namespace A290518.P12852858146781940313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A005408 (A278818 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P12852858146781940313

namespace A290518

/-- `∏[A097285(A005408(A278818(n)))]` -/
def P12852858146781940313.Spec : Prop :=
  ∀ n, P12852858146781940313.a n = A290518 n

end A290518

/-! ## A290518.P1514854371105814661

`∏[A349520(A005408(A038722(n+1)))]`
-/

namespace A290518.P1514854371105814661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A005408 (A038722 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P1514854371105814661

namespace A290518

/-- `∏[A349520(A005408(A038722(n+1)))]` -/
def P1514854371105814661.Spec : Prop :=
  ∀ n, P1514854371105814661.a n = A290518 n

end A290518

/-! ## A290518.P5341628305156219612

`∏[A004736(n+1)]/A004736(n+1)`
-/

namespace A290518.P5341628305156219612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A290518.P5341628305156219612

namespace A290518

/-- `∏[A004736(n+1)]/A004736(n+1)` -/
def P5341628305156219612.Spec : Prop :=
  ∀ n, P5341628305156219612.a n = (A290518 n : ℚ)

end A290518

/-! ## A290518.P12721633741776081876

`∏[A057555(2*(n+1))]/A057555(2*(n+1))`
-/

namespace A290518.P12721633741776081876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057555 (2 * (n + 1)) : ℚ)

end

end A290518.P12721633741776081876

namespace A290518

/-- `∏[A057555(2*(n+1))]/A057555(2*(n+1))` -/
def P12721633741776081876.Spec : Prop :=
  ∀ n, P12721633741776081876.a n = (A290518 n : ℚ)

end A290518

/-! ## A290518.P341528340059525782

`∏[A058933(A078840(n))]`
-/

namespace A290518.P341528340059525782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A078840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290518.P341528340059525782

namespace A290518

/-- `∏[A058933(A078840(n))]` -/
def P341528340059525782.Spec : Prop :=
  ∀ n, P341528340059525782.a n = A290518 n

end A290518

/-!
# A290519: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A290519, there is no canonical definition to state claims against.
-/

/-! ## A290519.P10324043602101414776

`A289408(n)+A241470(A346073(n))`
-/

namespace A290519.P10324043602101414776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289408 n + A241470 (A346073 n).toNat

end

end A290519.P10324043602101414776

/-! ## A290519.P2135416007591607108

`or(A000005(A001077(n)), A289408(n))`
-/

namespace A290519.P2135416007591607108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A001077 n).toNat) (A289408 n)

end

end A290519.P2135416007591607108

/-! ## A290519.P18043548508801180741

`or(A000005(A001834(n)), A289408(n))`
-/

namespace A290519.P18043548508801180741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A001834 n).toNat) (A289408 n)

end

end A290519.P18043548508801180741

/-! ## A290519.P478713914179539307

`or(A000005(A042549(n)), A289408(n))`
-/

namespace A290519.P478713914179539307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A042549 n).toNat) (A289408 n)

end

end A290519.P478713914179539307

/-! ## A290519.P3292891383543497275

`or(A000005(A150736(n)), A289408(n))`
-/

namespace A290519.P3292891383543497275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A150736 n).toNat) (A289408 n)

end

end A290519.P3292891383543497275

/-!
# A290520: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A290520, there is no canonical definition to state claims against.
-/

/-! ## A290520.P4085264905930772495

`A325401(A290519(n))`
-/

namespace A290520.P4085264905930772495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290519 n).toNat

end

end A290520.P4085264905930772495

/-! ## A290520.P3708861488358727789

`A030101(lcm(2, A290519(n)))`
-/

namespace A290520.P3708861488358727789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A290519 n))

end

end A290520.P3708861488358727789

/-! ## A290520.P6396293140045071365

`A030101(A290519(n-char[1]))`
-/

namespace A290520.P6396293140045071365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A290519 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A290520.P6396293140045071365

/-! ## A290520.P18032229140659649448

`or(A010054(n), A030101(A290519(n)))`
-/

namespace A290520.P18032229140659649448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A030101 (A290519 n).toNat)

end

end A290520.P18032229140659649448

/-! ## A290520.P18054595552699959893

`or(A025857(n), A030101(A290519(n)))`
-/

namespace A290520.P18054595552699959893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025857 n) (A030101 (A290519 n).toNat)

end

end A290520.P18054595552699959893

/-!
# A290521: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A290521, there is no canonical definition to state claims against.
-/

/-! ## A290521.P12264988432243862473

`A007088(A290523(n))`
-/

namespace A290521.P12264988432243862473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290523 n).toNat

end

end A290521.P12264988432243862473

/-!
# A290522: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A290522, there is no canonical definition to state claims against.
-/

/-! ## A290522.P13418209832190619357

`A007088(A290524(n))`
-/

namespace A290522.P13418209832190619357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290524 n).toNat

end

end A290522.P13418209832190619357

/-! ## A290522.P466804167205055259

`A305989(A290523(n))`
-/

namespace A290522.P466804167205055259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290523 n).toNat

end

end A290522.P466804167205055259

/-!
# A290524: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A290524, there is no canonical definition to state claims against.
-/

/-! ## A290524.P6893452615785819757

`A325401(A290523(n))`
-/

namespace A290524.P6893452615785819757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290523 n).toNat

end

end A290524.P6893452615785819757

/-! ## A290524.P5272255656244553775

`A030101(A290523(gcd(n, 3*n)))`
-/

namespace A290524.P5272255656244553775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A290523 (Nat.gcd n (3 * n))).toNat

end

end A290524.P5272255656244553775

/-! ## A290524.P634023070575440452

`A030101(lcm((-1)^n, A290523(n)))`
-/

namespace A290524.P634023070575440452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm ((-1) ^ n) (A290523 n))

end

end A290524.P634023070575440452

/-! ## A290524.P7551798996085371586

`A030101(A290523(round(sqrt(n²+1))))`
-/

namespace A290524.P7551798996085371586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A290523 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A290524.P7551798996085371586

/-! ## A290524.P12186868502171988978

`A030101(A290523(n)+A000007(n))`
-/

namespace A290524.P12186868502171988978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A290523 n + A000007 n).toNat

end

end A290524.P12186868502171988978

/-!
# A290525: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A290525, there is no canonical definition to state claims against.
-/

/-! ## A290525.P12141523515811959863

`xor(A008437(A130249(n)), A290412(n))`
-/

namespace A290525.P12141523515811959863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008437 (A130249 n).toNat) (A290412 n)

end

end A290525.P12141523515811959863

/-! ## A290525.P17986705754183441045

`xor(A290412(n), A320003(A030664(n)))`
-/

namespace A290525.P17986705754183441045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A290412 n) (A320003 (A030664 n).toNat)

end

end A290525.P17986705754183441045

/-! ## A290525.P3039247369601535558

`xor(A185014(A240116(n+5)), A290412(n))`
-/

namespace A290525.P3039247369601535558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185014 (A240116 (n + 5)).toNat) (A290412 n)

end

end A290525.P3039247369601535558

/-! ## A290525.P16458473959094754490

`A290412(n)+A290527(n)-A290414(n)`
-/

namespace A290525.P16458473959094754490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290412 n + (A290527 n - A290414 n)

end

end A290525.P16458473959094754490

/-! ## A290525.P22025013393398412

`xor(A178333(A105098(n+1)), A290412(n))`
-/

namespace A290525.P22025013393398412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178333 (A105098 (n + 1)).toNat) (A290412 n)

end

end A290525.P22025013393398412

/-!
# A290526: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A290526, there is no canonical definition to state claims against.
-/

/-! ## A290526.P10393999192233604445

`A007088(A290528(n))`
-/

namespace A290526.P10393999192233604445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290528 n).toNat

end

end A290526.P10393999192233604445

/-! ## A290526.P7477171114789543108

`A007088(and(A290551(n), A290621(n)))`
-/

namespace A290526.P7477171114789543108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A290551 n) (A290621 n)).toNat

end

end A290526.P7477171114789543108

/-! ## A290526.P13616228615749125011

`A007088(and(A290551(n+4), A290551(n)))`
-/

namespace A290526.P13616228615749125011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A290551 (n + 4)) (A290551 n)).toNat

end

end A290526.P13616228615749125011

/-! ## A290526.P11888962605911653659

`A305989(A290527(n))`
-/

namespace A290526.P11888962605911653659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290527 n).toNat

end

end A290526.P11888962605911653659

/-! ## A290526.P2190298429371935054

`A185544(2*A290528(n))`
-/

namespace A290526.P2190298429371935054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290528 n).toNat

end

end A290526.P2190298429371935054

/-!
# A290527: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A290527, there is no canonical definition to state claims against.
-/

/-! ## A290527.P4160501393518756567

`xor(A008437(A130249(n)), A290414(n))`
-/

namespace A290527.P4160501393518756567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008437 (A130249 n).toNat) (A290414 n)

end

end A290527.P4160501393518756567

/-! ## A290527.P16475586415095143845

`xor(A186741(A128059(n)), A290414(n))`
-/

namespace A290527.P16475586415095143845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186741 (A128059 n).toNat) (A290414 n)

end

end A290527.P16475586415095143845

/-! ## A290527.P18020797218281215802

`xor(A186741(A008578(n+1)), A290414(n))`
-/

namespace A290527.P18020797218281215802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186741 (A008578 (n + 1)).toNat) (A290414 n)

end

end A290527.P18020797218281215802

/-! ## A290527.P15986302966906498493

`A290550(n)-A290550(n)%A290528(n)`
-/

namespace A290527.P15986302966906498493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290550 n - Int.tmod (A290550 n) (A290528 n)

end

end A290527.P15986302966906498493

/-! ## A290527.P17576080316382611146

`or(A008437(n), A290414(n))-A185014(n)`
-/

namespace A290527.P17576080316382611146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008437 n) (A290414 n) - A185014 n

end

end A290527.P17576080316382611146

/-! ## A290527.P3154896346245048331

`xor(A290414(n), A320003(A030664(n)))`
-/

namespace A290527.P3154896346245048331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A290414 n) (A320003 (A030664 n).toNat)

end

end A290527.P3154896346245048331

/-! ## A290527.P11595816627222177871

`A290414(n)+A290525(n)-A290412(n)`
-/

namespace A290527.P11595816627222177871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290414 n + (A290525 n - A290412 n)

end

end A290527.P11595816627222177871

/-!
# A290528: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A290528, the canonical program `A290528.P15602665828005936727` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290528 has offset 0).

The definition of A290528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290528.P12099526851115947934

`xor(or(2*n+1, A000225(n)), A014236(n))`
-/

namespace A290528.P12099526851115947934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor (2 * n + 1 : ℤ) (A000225 n)) (A014236 n)

end

end A290528.P12099526851115947934

namespace A290528

/-- `xor(or(2*n+1, A000225(n)), A014236(n))` -/
def P12099526851115947934.Spec : Prop :=
  ∀ n, P12099526851115947934.a n = A290528 n

end A290528

/-! ## A290528.P11147085857270441591

`gcd(A059841(n)-A285543(n), A290527(n))`
-/

namespace A290528.P11147085857270441591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059841 n - A285543 n) (A290527 n)

end

end A290528.P11147085857270441591

namespace A290528

/-- `gcd(A059841(n)-A285543(n), A290527(n))` -/
def P11147085857270441591.Spec : Prop :=
  ∀ n, (P11147085857270441591.a n : ℤ) = A290528 n

end A290528

/-! ## A290528.P4257411553860324194

`xor(A290527(n)%A288827(n), A288827(n))`
-/

namespace A290528.P4257411553860324194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A290527 n) (A288827 n)) (A288827 n)

end

end A290528.P4257411553860324194

namespace A290528

/-- `xor(A290527(n)%A288827(n), A288827(n))` -/
def P4257411553860324194.Spec : Prop :=
  ∀ n, P4257411553860324194.a n = A290528 n

end A290528

/-! ## A290528.P15602665828005936727

`a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=15, a(4)=3, a(5)=63, a(6)=7, a(7)=255`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290528

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` -/
def P15602665828005936727.Spec : Prop :=
  ∀ n, P15602665828005936727.a n = A290528 n

theorem P15602665828005936727.correct : P15602665828005936727.Spec := by
  intro n
  simp only [A290528]

end A290528

/-! ## A290528.P15850805160656555322

`A286521(n)%A095121(A000463(n+1))`
-/

namespace A290528.P15850805160656555322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286521 n) (A095121 (A000463 (n + 1)).toNat)

end

end A290528.P15850805160656555322

namespace A290528

/-- `A286521(n)%A095121(A000463(n+1))` -/
def P15850805160656555322.Spec : Prop :=
  ∀ n, P15850805160656555322.a n = A290528 n

end A290528

/-!
# A290529: Inverse of the factorization matrix in the Lambert series factorization theorem.

The programs for A290529, there is no canonical definition to state claims against.
-/

/-! ## A290529.P4159112871533092498

`A069010(A136733(n)+A049347(n))`
-/

namespace A290529.P4159112871533092498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A136733 n + A049347 n).toNat

end

end A290529.P4159112871533092498

/-! ## A290529.P13191065644069033130

`A008624(A083340(n+1)%A038722(n+1))`
-/

namespace A290529.P13191065644069033130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A083340 (n + 1)) (A038722 (n + 1))).toNat

end

end A290529.P13191065644069033130

/-! ## A290529.P9016957266445744799

`A139351(A008949(∑[A287393(n)]))`
-/

namespace A290529.P9016957266445744799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A008949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A290529.P9016957266445744799

/-! ## A290529.P4727178754397578964

`gcd(A097430(A116552(n)), A319394(n))`
-/

namespace A290529.P4727178754397578964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097430 (A116552 n).toNat) (A319394 n)

end

end A290529.P4727178754397578964

/-! ## A290529.P13304180827893401072

`A178487(A116537(n+1)^A225640(n))`
-/

namespace A290529.P13304180827893401072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (SequenceMachineLib.roundAway ((A116537 (n + 1) : ℚ) ^ (A225640 n : ℤ))).toNat

end

end A290529.P13304180827893401072

/-!
# A290530: Primes congruent to {11, 17} mod 30.

The programs for A290530, the canonical program `A290530.P10450332801809670911` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290530 has offset 1).

The definition of A290530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290530.P10450332801809670911

`∪[A039949(n+1), A132232(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A290530

/-- `∪[A039949(n+1), A132232(n+1)]` -/
def P10450332801809670911.Spec : Prop :=
  ∀ n, (P10450332801809670911.a n : ℤ) = A290530 (n + 1)

theorem P10450332801809670911.correct : P10450332801809670911.Spec := by
  intro n
  simp only [A290530, Nat.add_sub_cancel]

end A290530

/-! ## A290530.P15469548667982935429

`∩[A007528(n+1), A045372(n+1)]`
-/

namespace A290530.P15469548667982935429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P15469548667982935429

namespace A290530

/-- `∩[A007528(n+1), A045372(n+1)]` -/
def P15469548667982935429.Spec : Prop :=
  ∀ n, (P15469548667982935429.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P1113569448715431997

`∩[A045372(n+1), A045410(n+1)]`
-/

namespace A290530.P1113569448715431997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P1113569448715431997

namespace A290530

/-- `∩[A045372(n+1), A045410(n+1)]` -/
def P1113569448715431997.Spec : Prop :=
  ∀ n, (P1113569448715431997.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P15364541582782173633

`∩[A045372(n+1), A056955(n+1)]`
-/

namespace A290530.P15364541582782173633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P15364541582782173633

namespace A290530

/-- `∩[A045372(n+1), A056955(n+1)]` -/
def P15364541582782173633.Spec : Prop :=
  ∀ n, (P15364541582782173633.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P12646337409674583868

`∩[A003627(n+1), A271367(n+1)]`
-/

namespace A290530.P12646337409674583868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P12646337409674583868

namespace A290530

/-- `∩[A003627(n+1), A271367(n+1)]` -/
def P12646337409674583868.Spec : Prop :=
  ∀ n, (P12646337409674583868.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P17593174047496778768

`∩[A007528(n+1), A271367(n+1)]`
-/

namespace A290530.P17593174047496778768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P17593174047496778768

namespace A290530

/-- `∩[A007528(n+1), A271367(n+1)]` -/
def P17593174047496778768.Spec : Prop :=
  ∀ n, (P17593174047496778768.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P11525811681839790515

`∩[A045309(n+1), A271367(n+1)]`
-/

namespace A290530.P11525811681839790515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P11525811681839790515

namespace A290530

/-- `∩[A045309(n+1), A271367(n+1)]` -/
def P11525811681839790515.Spec : Prop :=
  ∀ n, (P11525811681839790515.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P14099369331403358657

`∩[A045349(n+1), A271367(n+1)]`
-/

namespace A290530.P14099369331403358657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P14099369331403358657

namespace A290530

/-- `∩[A045349(n+1), A271367(n+1)]` -/
def P14099369331403358657.Spec : Prop :=
  ∀ n, (P14099369331403358657.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P14452518409387957713

`∩[A056955(n+1), A271367(n+1)]`
-/

namespace A290530.P14452518409387957713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P14452518409387957713

namespace A290530

/-- `∩[A056955(n+1), A271367(n+1)]` -/
def P14452518409387957713.Spec : Prop :=
  ∀ n, (P14452518409387957713.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P15391540883029623870

`p?[A267985(n+1)+4]`
-/

namespace A290530.P15391540883029623870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290530.P15391540883029623870

namespace A290530

/-- `p?[A267985(n+1)+4]` -/
def P15391540883029623870.Spec : Prop :=
  ∀ n, P15391540883029623870.a n = A290530 (n + 1)

end A290530

/-! ## A290530.P3035149041931379304

`p?[A267984(n+1)-6]`
-/

namespace A290530.P3035149041931379304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290530.P3035149041931379304

namespace A290530

/-- `p?[A267984(n+1)-6]` -/
def P3035149041931379304.Spec : Prop :=
  ∀ n, P3035149041931379304.a n = A290530 (n + 1)

end A290530

/-! ## A290530.P11673134862354773417

`p?[A272100(n+1)-(n+1)]`
-/

namespace A290530.P11673134862354773417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290530.P11673134862354773417

namespace A290530

/-- `p?[A272100(n+1)-(n+1)]` -/
def P11673134862354773417.Spec : Prop :=
  ∀ n, P11673134862354773417.a n = A290530 (n + 1)

end A290530

/-! ## A290530.P18037621910903252362

`∩[A066501(n+1), A271367(n+1)]`
-/

namespace A290530.P18037621910903252362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P18037621910903252362

namespace A290530

/-- `∩[A066501(n+1), A271367(n+1)]` -/
def P18037621910903252362.Spec : Prop :=
  ∀ n, (P18037621910903252362.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P8993046989901372304

`∩[A045372(n+1), A259548(n+1)]`
-/

namespace A290530.P8993046989901372304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P8993046989901372304

namespace A290530

/-- `∩[A045372(n+1), A259548(n+1)]` -/
def P8993046989901372304.Spec : Prop :=
  ∀ n, (P8993046989901372304.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P7441720422820025428

`∩[A042986(n+1), A128464(n+1)]`
-/

namespace A290530.P7441720422820025428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P7441720422820025428

namespace A290530

/-- `∩[A042986(n+1), A128464(n+1)]` -/
def P7441720422820025428.Spec : Prop :=
  ∀ n, (P7441720422820025428.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P3054936110456397220

`∩[A045321(n+1), A128464(n+1)]`
-/

namespace A290530.P3054936110456397220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P3054936110456397220

namespace A290530

/-- `∩[A045321(n+1), A128464(n+1)]` -/
def P3054936110456397220.Spec : Prop :=
  ∀ n, (P3054936110456397220.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P4710497854814179810

`∩[A045349(n+1), A128464(n+1)]`
-/

namespace A290530.P4710497854814179810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P4710497854814179810

namespace A290530

/-- `∩[A045349(n+1), A128464(n+1)]` -/
def P4710497854814179810.Spec : Prop :=
  ∀ n, (P4710497854814179810.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P1771251117172547858

`∩[A045372(n+1), A128464(n+1)]`
-/

namespace A290530.P1771251117172547858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P1771251117172547858

namespace A290530

/-- `∩[A045372(n+1), A128464(n+1)]` -/
def P1771251117172547858.Spec : Prop :=
  ∀ n, (P1771251117172547858.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P3990790947122858043

`∩[A082406(n+1), A271367(n+1)]`
-/

namespace A290530.P3990790947122858043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P3990790947122858043

namespace A290530

/-- `∩[A082406(n+1), A271367(n+1)]` -/
def P3990790947122858043.Spec : Prop :=
  ∀ n, (P3990790947122858043.a n : ℤ) = A290530 (n + 1)

end A290530

/-! ## A290530.P4874675299686734132

`∩[A128464(n+1), A271367(n+1)]`
-/

namespace A290530.P4874675299686734132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290530.P4874675299686734132

namespace A290530

/-- `∩[A128464(n+1), A271367(n+1)]` -/
def P4874675299686734132.Spec : Prop :=
  ∀ n, (P4874675299686734132.a n : ℤ) = A290530 (n + 1)

end A290530

/-!
# A290531: Second differences of argument(Zeta(1/2 + n*I))/Pi.

The programs for A290531, there is no canonical definition to state claims against.
-/

/-! ## A290531.P6885583389906721080

`Δ[A234323(n+1)]`
-/

namespace A290531.P6885583389906721080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290531.P6885583389906721080

/-! ## A290531.P8415632162731209332

`Δ[Δ[A135297(n+1)]]`
-/

namespace A290531.P8415632162731209332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290531.P8415632162731209332

/-! ## A290531.P2678087101023208044

`Δ[Δ[comp[A013629(n+1)+n]]]`
-/

namespace A290531.P2678087101023208044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290531.P2678087101023208044

/-! ## A290531.P6592698383292988938

`A234323(n+2)-A234323(n+1)`
-/

namespace A290531.P6592698383292988938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 2) - A234323 (n + 1)

end

end A290531.P6592698383292988938

/-! ## A290531.P14672045987985136173

`Δ[Δ[A286707(n+1)]]`
-/

namespace A290531.P14672045987985136173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290531.P14672045987985136173

/-!
# A290532: Irregular triangle read by rows in which row n lists the number of divisors of each divisor of n.

The programs for A290532, there is no canonical definition to state claims against.
-/

/-! ## A290532.P13791910633156809735

`A000005(A027750(n+1))`
-/

namespace A290532.P13791910633156809735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027750 (n + 1)).toNat

end

end A290532.P13791910633156809735

/-! ## A290532.P4336104412004902409

`A000005(abs(A233773(n+1)))`
-/

namespace A290532.P4336104412004902409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A233773 (n + 1)|.toNat

end

end A290532.P4336104412004902409

/-! ## A290532.P6049996095735563542

`A000005(A263730(n+2)+1)`
-/

namespace A290532.P6049996095735563542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A263730 (n + 2) + 1).toNat

end

end A290532.P6049996095735563542

/-! ## A290532.P2640608967678789187

`A069157(2*A027750(n+1))`
-/

namespace A290532.P2640608967678789187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A027750 (n + 1)).toNat

end

end A290532.P2640608967678789187

/-! ## A290532.P10724776177861739851

`A183063(2*A027750(n+1))`
-/

namespace A290532.P10724776177861739851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A027750 (n + 1)).toNat

end

end A290532.P10724776177861739851

/-! ## A290532.P4103247346738900827

`A320111(2*A027750(n+1))`
-/

namespace A290532.P4103247346738900827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A027750 (n + 1)).toNat

end

end A290532.P4103247346738900827

/-! ## A290532.P11279483512646638850

`A299480(4*A027750(n+1))`
-/

namespace A290532.P11279483512646638850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (4 * A027750 (n + 1)).toNat

end

end A290532.P11279483512646638850

/-! ## A290532.P9837310104263010885

`∑{d}[A027750(n+1), A057427(#)]`
-/

namespace A290532.P9837310104263010885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A290532.P9837310104263010885

/-! ## A290532.P7417437402565330434

`A069157(A027750(n+1)+A027750(n+1))`
-/

namespace A290532.P7417437402565330434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A027750 (n + 1) + A027750 (n + 1)).toNat

end

end A290532.P7417437402565330434

/-! ## A290532.P1377104855570178315

`A183063(A027750(n+1)+A027750(n+1))`
-/

namespace A290532.P1377104855570178315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A027750 (n + 1) + A027750 (n + 1)).toNat

end

end A290532.P1377104855570178315

/-! ## A290532.P16234612440113386757

`A320111(A027750(n+1)+A027750(n+1))`
-/

namespace A290532.P16234612440113386757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A027750 (n + 1) + A027750 (n + 1)).toNat

end

end A290532.P16234612440113386757

/-! ## A290532.P13084247458172476537

`A000005(A061017(n+1)/A056538(n+1))`
-/

namespace A290532.P13084247458172476537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ))).toNat

end

end A290532.P13084247458172476537

/-! ## A290532.P14785419208345238573

`A057427(n+4)+A032741(A027750(n+1))`
-/

namespace A290532.P14785419208345238573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) + A032741 (A027750 (n + 1)).toNat

end

end A290532.P14785419208345238573

/-! ## A290532.P4474321107775503653

`∑{d}[A027750(n+1), ceil(#/A000041(n))]`
-/

namespace A290532.P4474321107775503653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈(d : ℚ) / (A000041 n : ℚ)⌉

end

end A290532.P4474321107775503653

/-! ## A290532.P10741963657620516085

`A000005(A002260(A056534(n+1)))`
-/

namespace A290532.P10741963657620516085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (A056534 (n + 1)).toNat).toNat

end

end A290532.P10741963657620516085

/-! ## A290532.P10573872733963627645

`filter[A130210(n+1), A145568(#)]`
-/

namespace A290532.P10573872733963627645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A290532.P10573872733963627645

/-! ## A290532.P9718762140955887601

`A046951(A027750(n+1)²)`
-/

namespace A290532.P9718762140955887601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A027750 (n + 1) ^ 2).toNat

end

end A290532.P9718762140955887601

/-! ## A290532.P6730283055014254273

`A000188(A124315(A027750(n+1)²))`
-/

namespace A290532.P6730283055014254273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A124315 (A027750 (n + 1) ^ 2).toNat).toNat

end

end A290532.P6730283055014254273

/-!
# A290533: Numerator of 2*n*(2*n+1) B_{2*n}, where B_n are the Bernoulli numbers.

The programs for A290533, there is no canonical definition to state claims against.
-/

/-! ## A290533.P13850128059058438060

`A002427(n)*A102037(A046092(n))`
-/

namespace A290533.P13850128059058438060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002427 n * A102037 (A046092 n).toNat

end

end A290533.P13850128059058438060

/-!
# A290534: Denominator of 2*n*(2*n+1) B_{2*n}, where B_n are the Bernoulli numbers.

The programs for A290534, the canonical program `A290534.P3969900531987227785` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290534 has offset 0).

The definition of A290534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290534.P16291328131104329361

`A006955(n)/gcd(A002445(n), A004277(n))`
-/

namespace A290534.P16291328131104329361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006955 n : ℚ) / (Int.gcd (A002445 n) (A004277 n) : ℚ)

end

end A290534.P16291328131104329361

namespace A290534

/-- `A006955(n)/gcd(A002445(n), A004277(n))` -/
def P16291328131104329361.Spec : Prop :=
  ∀ n, P16291328131104329361.a n = (A290534 n : ℚ)

end A290534

/-! ## A290534.P3969900531987227785

`A006955(n)/gcd(A005843(n), A006955(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A290534

/-- `A006955(n)/gcd(A005843(n), A006955(n))` -/
def P3969900531987227785.Spec : Prop :=
  ∀ n, P3969900531987227785.a n = (A290534 n : ℚ)

end A290534

/-! ## A290534.P5786563476646606970

`lcm(A006955(n), A008574(n))/A008574(n)`
-/

namespace A290534.P5786563476646606970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006955 n) (A008574 n) : ℚ) / (A008574 n : ℚ)

end

end A290534.P5786563476646606970

namespace A290534

/-- `lcm(A006955(n), A008574(n))/A008574(n)` -/
def P5786563476646606970.Spec : Prop :=
  ∀ n, P5786563476646606970.a n = (A290534 n : ℚ)

end A290534

/-! ## A290534.P7962081549521699164

`A027642(2*n)/gcd(A002378(2*n), A027642(2*n))`
-/

namespace A290534.P7962081549521699164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (Int.gcd (A002378 (2 * n)) (A027642 (2 * n)) : ℚ)

end

end A290534.P7962081549521699164

namespace A290534

/-- `A027642(2*n)/gcd(A002378(2*n), A027642(2*n))` -/
def P7962081549521699164.Spec : Prop :=
  ∀ n, P7962081549521699164.a n = (A290534 n : ℚ)

end A290534

/-! ## A290534.P17030179580466986798

`A100616(2*n+1)/gcd(4*n, A100616(2*n))`
-/

namespace A290534.P17030179580466986798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100616 (2 * n + 1) : ℚ) / (Int.gcd (4 * n : ℤ) (A100616 (2 * n)) : ℚ)

end

end A290534.P17030179580466986798

namespace A290534

/-- `A100616(2*n+1)/gcd(4*n, A100616(2*n))` -/
def P17030179580466986798.Spec : Prop :=
  ∀ n, P17030179580466986798.a n = (A290534 n : ℚ)

end A290534

/-! ## A290534.P13366545301139083738

`gcd(A006955(n), A066838(A004277(n)))`
-/

namespace A290534.P13366545301139083738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006955 n) (A066838 (A004277 n).toNat)

end

end A290534.P13366545301139083738

namespace A290534

/-- `gcd(A006955(n), A066838(A004277(n)))` -/
def P13366545301139083738.Spec : Prop :=
  ∀ n, (P13366545301139083738.a n : ℤ) = A290534 n

end A290534

/-!
# A290536: Let S be the sequence generated by these rules: 0 is in S, and if z is in S, then z + 1 and z * (1+i) are in S (where i denotes the imaginary unit), and duplicates are deleted as they occur; a(n) = the real part of the n-th term of S.

The programs for A290536, there is no canonical definition to state claims against.
-/

/-! ## A290536.P5646739794948199152

`A343938(A329887(n))`
-/

namespace A290536.P5646739794948199152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343938 (A329887 n).toNat

end

end A290536.P5646739794948199152

/-! ## A290536.P12475264787255060859

`A359043(n)-A359677(A253565(n))`
-/

namespace A290536.P12475264787255060859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 n - A359677 (A253565 n).toNat

end

end A290536.P12475264787255060859

/-! ## A290536.P5348388365048954262

`A061395(A252753(n)^A122857(n))`
-/

namespace A290536.P5348388365048954262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A252753 n : ℚ) ^ (A122857 n : ℤ))).toNat

end

end A290536.P5348388365048954262

/-! ## A290536.P13737243181004676561

`A061395(A252753(n)^A292978(n))`
-/

namespace A290536.P13737243181004676561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A252753 n : ℚ) ^ (A292978 n : ℤ))).toNat

end

end A290536.P13737243181004676561

/-! ## A290536.P1274087259919646443

`A061775(n+1)-A333939(A000695(n))`
-/

namespace A290536.P1274087259919646443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A333939 (A000695 n).toNat

end

end A290536.P1274087259919646443

/-!
# A290537: Let S be the sequence generated by these rules: 0 is in S, and if z is in S, then z + 1 and z * (1+i) are in S (where i denotes the imaginary unit), and duplicates are deleted as they occur; a(n) = the imaginary part of the n-th term of S.

The programs for A290537, there is no canonical definition to state claims against.
-/

/-! ## A290537.P3306844597231556337

`A335884(A163511(n))%A141045(n)`
-/

namespace A290537.P3306844597231556337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335884 (A163511 n).toNat) (A141045 n)

end

end A290537.P3306844597231556337

/-! ## A290537.P12471600848588578782

`A335884(A332817(n))%A141045(n)`
-/

namespace A290537.P12471600848588578782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335884 (A332817 n).toNat) (A141045 n)

end

end A290537.P12471600848588578782

/-! ## A290537.P4012528542752287039

`(A335904(A163511(n))%A141045(n))%A000079(n)`
-/

namespace A290537.P4012528542752287039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A335904 (A163511 n).toNat) (A141045 n)) (A000079 n)

end

end A290537.P4012528542752287039

/-! ## A290537.P13659138632659472225

`A335904(A332817(n))%A000203(A000045(n)+1)`
-/

namespace A290537.P13659138632659472225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335904 (A332817 n).toNat) (A000203 (A000045 n + 1).toNat)

end

end A290537.P13659138632659472225

/-! ## A290537.P1502679400312228787

`A335881(A163511(2*n)%A336132(2*(n+2)))`
-/

namespace A290537.P1502679400312228787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (Int.tmod (A163511 (2 * n)) (A336132 (2 * (n + 2)))).toNat

end

end A290537.P1502679400312228787

/-!
# A290538: Let S be the sequence generated by these rules: 0 is in S, and if z is in S, then z + 1 and z * (1+i) are in S (where i denotes the imaginary unit), and duplicates are deleted as they occur; a(n) = the square of the norm of the n-th term of S.

The programs for A290538, there is no canonical definition to state claims against.
-/

/-! ## A290538.P10931269518641653713

`A290536(n+1)²+A290537(n+1)²`
-/

namespace A290538.P10931269518641653713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290536 (n + 1) ^ 2 + A290537 (n + 1) ^ 2

end

end A290538.P10931269518641653713

/-! ## A290538.P15105964046280872464

`A290536(n+1)²+(A335884(A163511(n))%A141045(n))²`
-/

namespace A290538.P15105964046280872464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290536 (n + 1) ^ 2 + Int.tmod (A335884 (A163511 n).toNat) (A141045 n) ^ 2

end

end A290538.P15105964046280872464

/-! ## A290538.P17011828611038570996

`A290536(n+1)²+(A335884(A332817(n))%A141045(n))²`
-/

namespace A290538.P17011828611038570996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290536 (n + 1) ^ 2 + Int.tmod (A335884 (A332817 n).toNat) (A141045 n) ^ 2

end

end A290538.P17011828611038570996

/-! ## A290538.P11604859125538123028

`A290537(n+1)²+A061395(A252753(n)^A122857(n))²`
-/

namespace A290538.P11604859125538123028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290537 (n + 1) ^ 2 + A061395 (SequenceMachineLib.roundAway ((A252753 n : ℚ) ^ (A122857 n : ℤ))).toNat ^ 2

end

end A290538.P11604859125538123028

/-!
# A290541: Record gaps between numbers that are either prime or twice a prime.

The programs for A290541, there is no canonical definition to state claims against.
-/

/-! ## A290541.P1143527012643694387

`A290489(n+1)-A290488(n+1)`
-/

namespace A290541.P1143527012643694387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290489 (n + 1) - A290488 (n + 1)

end

end A290541.P1143527012643694387

/-! ## A290541.P17988694340428419128

`A290489(A000027(n+1))%A290488(n+1)`
-/

namespace A290541.P17988694340428419128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290489 (A000027 (n + 1)).toNat) (A290488 (n + 1))

end

end A290541.P17988694340428419128

/-! ## A290541.P4683813235324152579

`A290489(A028310(n+1))%A290488(n+1)`
-/

namespace A290541.P4683813235324152579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290489 (A028310 (n + 1)).toNat) (A290488 (n + 1))

end

end A290541.P4683813235324152579

/-! ## A290541.P4327544491090056691

`A290489(A130446(n+1))%A290488(n+1)`
-/

namespace A290541.P4327544491090056691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290489 (A130446 (n + 1)).toNat) (A290488 (n + 1))

end

end A290541.P4327544491090056691

/-! ## A290541.P14899394994799315937

`A290489(A028242(2*n))%A290488(n+1)`
-/

namespace A290541.P14899394994799315937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290489 (A028242 (2 * n)).toNat) (A290488 (n + 1))

end

end A290541.P14899394994799315937

/-!
# A290542: a(n) is the least integer k in the interval [2, sqrt(n)] such that k^n == k (mod n), or 0 if no such integer exists.

The programs for A290542, there is no canonical definition to state claims against.
-/

/-! ## A290542.P5275669293746244032

`A130125(gcd(A019555(n+1), A335733(n+1)))`
-/

namespace A290542.P5275669293746244032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 (Int.gcd (A019555 (n + 1)) (A335733 (n + 1)))

end

end A290542.P5275669293746244032

/-! ## A290542.P15422000008314363804

`and(A005086(A304102(n+4)), A304102(n+4))`
-/

namespace A290542.P15422000008314363804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005086 (A304102 (n + 4)).toNat) (A304102 (n + 4))

end

end A290542.P15422000008314363804

/-! ## A290542.P18276230226349343192

`A307284(A230686(n+1)+A010051(n+4))`
-/

namespace A290542.P18276230226349343192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307284 (A230686 (n + 1) + A010051 (n + 4)).toNat

end

end A290542.P18276230226349343192

/-! ## A290542.P6555165494030839708

`and(2*(n+2), A000925(A248906(n+1)))`
-/

namespace A290542.P6555165494030839708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 2) : ℤ) (A000925 (A248906 (n + 1)).toNat)

end

end A290542.P6555165494030839708

/-! ## A290542.P7826252081950514843

`and(A000925(A248906(n+1)), A017317(n))`
-/

namespace A290542.P7826252081950514843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000925 (A248906 (n + 1)).toNat) (A017317 n)

end

end A290542.P7826252081950514843

/-!
# A290544: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A290544, there is no canonical definition to state claims against.
-/

/-! ## A290544.P1969114312047675805

`A007088(A290546(n))`
-/

namespace A290544.P1969114312047675805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290546 n).toNat

end

end A290544.P1969114312047675805

/-! ## A290544.P13079081000614954732

`A265526(A290546(n)%A197952(n+1))`
-/

namespace A290544.P13079081000614954732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265526 (Int.tmod (A290546 n) (A197952 (n + 1))).toNat

end

end A290544.P13079081000614954732

/-!
# A290545: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A290545, there is no canonical definition to state claims against.
-/

/-! ## A290545.P5018302078507859736

`A007088(A290547(n))`
-/

namespace A290545.P5018302078507859736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290547 n).toNat

end

end A290545.P5018302078507859736

/-! ## A290545.P14982634542939420772

`A007088(A290833(n))`
-/

namespace A290545.P14982634542939420772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290833 n).toNat

end

end A290545.P14982634542939420772

/-! ## A290545.P7354000407947933627

`A290831(A055646(n))`
-/

namespace A290545.P7354000407947933627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290831 (A055646 n).toNat

end

end A290545.P7354000407947933627

/-! ## A290545.P3152902465246949522

`record[A290831(A089309(n))]`
-/

namespace A290545.P3152902465246949522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290831 (A089309 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290545.P3152902465246949522

/-! ## A290545.P5388182991126688878

`record[A290831(A330960(n))]`
-/

namespace A290545.P5388182991126688878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290831 (A330960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290545.P5388182991126688878

/-!
# A290546: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A290546, there is no canonical definition to state claims against.
-/

/-! ## A290546.P121453471629544380

`A264304(A002265(n)!)%40`
-/

namespace A290546.P121453471629544380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264304 (Nat.factorial (A002265 n).toNat)) 40

end

end A290546.P121453471629544380

/-! ## A290546.P1079722024297269811

`A172312(A032020(floor(n/4)+1)²)`
-/

namespace A290546.P1079722024297269811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172312 (A032020 (⌊(n : ℚ) / 4⌋ + 1).toNat ^ 2).toNat

end

end A290546.P1079722024297269811

/-! ## A290546.P4344475955036514163

`A147147(A070939(n)%A197952(n+1))`
-/

namespace A290546.P4344475955036514163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147147 (Int.tmod (A070939 n) (A197952 (n + 1))).toNat

end

end A290546.P4344475955036514163

/-! ## A290546.P2103359174388090378

`A000265(A290547(n))`
-/

namespace A290546.P2103359174388090378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A290547 n).toNat

end

end A290546.P2103359174388090378

/-!
# A290547: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A290547, there is no canonical definition to state claims against.
-/

/-! ## A290547.P1651634431249045058

`A000010(A290687(n)+A000079(n))`
-/

namespace A290547.P1651634431249045058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A290687 n + A000079 n).toNat

end

end A290547.P1651634431249045058

/-! ## A290547.P5237428669365771650

`A131577(n)+A000010(A290687(n))`
-/

namespace A290547.P5237428669365771650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A000010 (A290687 n).toNat

end

end A290547.P5237428669365771650

/-! ## A290547.P6610599789771450347

`and(A000203(A290625(n)), A290625(n))`
-/

namespace A290547.P6610599789771450347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A290625 n).toNat) (A290625 n)

end

end A290547.P6610599789771450347

/-! ## A290547.P1182635270448323815

`A108548(A290833(n))`
-/

namespace A290547.P1182635270448323815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A290833 n).toNat

end

end A290547.P1182635270448323815

/-! ## A290547.P18347989760808984639

`record[A290833(A330960(n))]`
-/

namespace A290547.P18347989760808984639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290833 (A330960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290547.P18347989760808984639

/-!
# A290548: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A290548, there is no canonical definition to state claims against.
-/

/-! ## A290548.P5669606664796957972

`A007088(A290550(n))`
-/

namespace A290548.P5669606664796957972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290550 n).toNat

end

end A290548.P5669606664796957972

/-! ## A290548.P3645732808694857151

`A185544(2*A290550(n))`
-/

namespace A290548.P3645732808694857151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290550 n).toNat

end

end A290548.P3645732808694857151

/-! ## A290548.P1164280409609887653

`A290412(n)+A010059(A002878(n))`
-/

namespace A290548.P1164280409609887653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290412 n + A010059 (A002878 n).toNat

end

end A290548.P1164280409609887653

/-! ## A290548.P13661758740919018134

`or(A037213(A124421(n)), A290412(n))`
-/

namespace A290548.P13661758740919018134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037213 (A124421 n).toNat) (A290412 n)

end

end A290548.P13661758740919018134

/-! ## A290548.P18438051413080692856

`or(A288903(n), A353678(A041059(n)))`
-/

namespace A290548.P18438051413080692856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288903 n) (A353678 (A041059 n).toNat)

end

end A290548.P18438051413080692856

/-!
# A290549: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A290549, there is no canonical definition to state claims against.
-/

/-! ## A290549.P14771893984132501485

`A007088(A290551(n))`
-/

namespace A290549.P14771893984132501485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290551 n).toNat

end

end A290549.P14771893984132501485

/-! ## A290549.P16818297282228631423

`A305989(A290550(n))`
-/

namespace A290549.P16818297282228631423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290550 n).toNat

end

end A290549.P16818297282228631423

/-! ## A290549.P6043953105907589305

`A185544(2*A290551(n))`
-/

namespace A290549.P6043953105907589305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290551 n).toNat

end

end A290549.P6043953105907589305

/-! ## A290549.P1924331089272184853

`A185544(lcm(2, A290551(n)))`
-/

namespace A290549.P1924331089272184853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290551 n))

end

end A290549.P1924331089272184853

/-! ## A290549.P8786316660943347678

`A305989(xor(A186741((n²+1)²), A290414(n)))`
-/

namespace A290549.P8786316660943347678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.xor (A186741 ((n ^ 2 + 1) ^ 2)) (A290414 n)).toNat

end

end A290549.P8786316660943347678

/-!
# A290550: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A290550, there is no canonical definition to state claims against.
-/

/-! ## A290550.P330538483233293549

`xor(A186741((n²+1)²), A290414(n))`
-/

namespace A290550.P330538483233293549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186741 ((n ^ 2 + 1) ^ 2)) (A290414 n)

end

end A290550.P330538483233293549

/-! ## A290550.P17300458049303730165

`char[3]+A290414(n)%A211103(n+1)`
-/

namespace A290550.P17300458049303730165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A290414 n) (A211103 (n + 1))

end

end A290550.P17300458049303730165

/-! ## A290550.P8468613760427589935

`A290527(n)+A001343(A170908(n))`
-/

namespace A290550.P8468613760427589935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290527 n + A001343 (A170908 n).toNat

end

end A290550.P8468613760427589935

/-! ## A290550.P6380675481306134067

`A340998(A302033(n))+A290527(n)`
-/

namespace A290550.P6380675481306134067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A302033 n).toNat + 140) + A290527 n

end

end A290550.P6380675481306134067

/-! ## A290550.P10496529823138322003

`or(A005614(A281372(n)), A290414(n))`
-/

namespace A290550.P10496529823138322003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (A281372 n).toNat) (A290414 n)

end

end A290550.P10496529823138322003

/-!
# A290551: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A290551, there is no canonical definition to state claims against.
-/

/-! ## A290551.P1864302741114975467

`A325401(A290550(n))`
-/

namespace A290551.P1864302741114975467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290550 n).toNat

end

end A290551.P1864302741114975467

/-! ## A290551.P1433367826625307232

`A030101(lcm(2, A290550(n)))`
-/

namespace A290551.P1433367826625307232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A290550 n))

end

end A290551.P1433367826625307232

/-! ## A290551.P7840081485546920596

`A030101(A290550(n)+C(2, n+2))`
-/

namespace A290551.P7840081485546920596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A290550 n + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A290551.P7840081485546920596

/-! ## A290551.P1997341930730873013

`A030101(A290550(n)+A011743(n))`
-/

namespace A290551.P1997341930730873013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A290550 n + A011743 n).toNat

end

end A290551.P1997341930730873013

/-! ## A290551.P1725051616941506166

`A178798(n)+A030101(A290550(n))`
-/

namespace A290551.P1725051616941506166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A030101 (A290550 n).toNat

end

end A290551.P1725051616941506166

/-!
# A290552: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A290552, there is no canonical definition to state claims against.
-/

/-! ## A290552.P11124950818802836742

`A007088(A290554(n))`
-/

namespace A290552.P11124950818802836742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290554 n).toNat

end

end A290552.P11124950818802836742

/-! ## A290552.P7160551740033632631

`A185544(2*A290554(n))`
-/

namespace A290552.P7160551740033632631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290554 n).toNat

end

end A290552.P7160551740033632631

/-! ## A290552.P4974245241316674487

`A185544(lcm(2, A290554(n)))`
-/

namespace A290552.P4974245241316674487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290554 n))

end

end A290552.P4974245241316674487

/-! ## A290552.P14226614974738334177

`A305989(A290555(n)/A016116(n+1))`
-/

namespace A290552.P14226614974738334177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290555 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290552.P14226614974738334177

/-! ## A290552.P18273069390750877229

`A305989(1/A016116(n)*A290555(n))`
-/

namespace A290552.P18273069390750877229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (1 / (A016116 n : ℚ) * (A290555 n : ℚ))).toNat

end

end A290552.P18273069390750877229

/-!
# A290553: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A290553, there is no canonical definition to state claims against.
-/

/-! ## A290553.P15003421924229436164

`A007088(A290555(n))`
-/

namespace A290553.P15003421924229436164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290555 n).toNat

end

end A290553.P15003421924229436164

/-! ## A290553.P12798224382116928376

`A185544(2*A290555(n))`
-/

namespace A290553.P12798224382116928376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290555 n).toNat

end

end A290553.P12798224382116928376

/-! ## A290553.P15052644631245622105

`A007088(A278083(ceil(2^(n-1)))+A063524(n))`
-/

namespace A290553.P15052644631245622105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278083 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A063524 n).toNat

end

end A290553.P15052644631245622105

/-! ## A290553.P18416635983910265854

`A185544(2*(A278083(ceil(2^(n-1)))+A063524(n)))`
-/

namespace A290553.P18416635983910265854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A278083 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A063524 n)).toNat

end

end A290553.P18416635983910265854

/-! ## A290553.P11811659908705688108

`A007088(record[A193773(n)*A263991(n+1)])`
-/

namespace A290553.P11811659908705688108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n * A263991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290553.P11811659908705688108

/-!
# A290554: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A290554, there is no canonical definition to state claims against.
-/

/-! ## A290554.P75361792011426279

`A030101(A290555(n)/A016116(n+1))`
-/

namespace A290554.P75361792011426279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290555 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290554.P75361792011426279

/-! ## A290554.P12954735802020939101

`A030101(2/A016116(n)*A290555(n))`
-/

namespace A290554.P12954735802020939101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A290555 n : ℚ))).toNat

end

end A290554.P12954735802020939101

/-! ## A290554.P2039423437958400269

`A030101(A290555(n)/A001316(n))`
-/

namespace A290554.P2039423437958400269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290555 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A290554.P2039423437958400269

/-!
# A290555: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A290555, there is no canonical definition to state claims against.
-/

/-! ## A290555.P9197157582913544278

`A278083(ceil(2^(n-1)))+char[1]`
-/

namespace A290555.P9197157582913544278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278083 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290555.P9197157582913544278

/-! ## A290555.P8086055479721319488

`record[A049099(A044823(n+1)²)]`
-/

namespace A290555.P8086055479721319488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A044823 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290555.P8086055479721319488

/-! ## A290555.P3034512283690813867

`record[and(A055587(n), A201539(2*(n+1)))]`
-/

namespace A290555.P3034512283690813867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055587 n) (A201539 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290555.P3034512283690813867

/-! ## A290555.P7909959433740151430

`A292256(A218481(n))+A000079(n)`
-/

namespace A290555.P7909959433740151430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292256 (A218481 n).toNat + A000079 n

end

end A290555.P7909959433740151430

/-! ## A290555.P12276029260076701501

`A261794(n)*A278083(A011782(n))`
-/

namespace A290555.P12276029260076701501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n * A278083 (A011782 n).toNat

end

end A290555.P12276029260076701501

/-!
# A290556: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A290556, there is no canonical definition to state claims against.
-/

/-! ## A290556.P11035958129577123141

`A007088(A290669(n))`
-/

namespace A290556.P11035958129577123141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290669 n).toNat

end

end A290556.P11035958129577123141

/-! ## A290556.P10434967308645509717

`A185544(2*A290669(n))`
-/

namespace A290556.P10434967308645509717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290669 n).toNat

end

end A290556.P10434967308645509717

/-! ## A290556.P13179313342535094437

`A038585(A290670(n))`
-/

namespace A290556.P13179313342535094437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (A290670 n).toNat

end

end A290556.P13179313342535094437

/-! ## A290556.P9620335105888636449

`∏{e}[Δ[3^n], A290848(#)]`
-/

namespace A290556.P9620335105888636449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A290848 (Nat.factorization (f1 n).natAbs p)

end

end A290556.P9620335105888636449

/-! ## A290556.P15710580585822326335

`A290848(A062003(n))`
-/

namespace A290556.P15710580585822326335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290848 (A062003 n).toNat

end

end A290556.P15710580585822326335

/-!
# A290557: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(2). These are the numbers congruent to 3 mod 7 (except for the initial 0).

The programs for A290557, the canonical program `A290557.P14882080163412282038` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290557 has offset 0).

The definition of A290557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290557.P14882080163412282038

`a(n-1)+(a(n-1)²-2)%(7^n)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290557

/-- `a(n-1)+(a(n-1)²-2)%(7^n)` -/
def P14882080163412282038.Spec : Prop :=
  ∀ n, P14882080163412282038.a n = A290557 n

theorem P14882080163412282038.correct : P14882080163412282038.Spec := by
  intro n
  simp only [A290557]

end A290557

/-! ## A290557.P9793509521812720550

`A000420(n)-(A290559(n)+A000007(n))`
-/

namespace A290557.P9793509521812720550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - (A290559 n + A000007 n)

end

end A290557.P9793509521812720550

namespace A290557

/-- `A000420(n)-(A290559(n)+A000007(n))` -/
def P9793509521812720550.Spec : Prop :=
  ∀ n, P9793509521812720550.a n = A290557 n

theorem P9793509521812720550.correct : P9793509521812720550.Spec := by
  intro n
  simp only [A290557, Nat.add_sub_cancel, A290557.P9793509521812720550.a, A290557.P14882080163412282038.a, A000007, A000007.P6599383543502402472.a, A000420, A000420.P3695589171832359676.a, A290559, A290559.P16268040871151256030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290557

/-! ## A290557.P18065295684588334473

`A290800(n)+A290802(n)-A290559(n)`
-/

namespace A290557.P18065295684588334473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n + (A290802 n - A290559 n)

end

end A290557.P18065295684588334473

namespace A290557

/-- `A290800(n)+A290802(n)-A290559(n)` -/
def P18065295684588334473.Spec : Prop :=
  ∀ n, P18065295684588334473.a n = A290557 n

end A290557

/-! ## A290557.P13892732554388001086

`A290803(n)+A290804(n)-A290559(n)`
-/

namespace A290557.P13892732554388001086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290803 n + (A290804 n - A290559 n)

end

end A290557.P13892732554388001086

namespace A290557

/-- `A290803(n)+A290804(n)-A290559(n)` -/
def P13892732554388001086.Spec : Prop :=
  ∀ n, P13892732554388001086.a n = A290557 n

end A290557

/-! ## A290557.P1181954700513941849

`A290806(n)+A290809(n)-A290559(n)`
-/

namespace A290557.P1181954700513941849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n + (A290809 n - A290559 n)

end

end A290557.P1181954700513941849

namespace A290557

/-- `A290806(n)+A290809(n)-A290559(n)` -/
def P1181954700513941849.Spec : Prop :=
  ∀ n, P1181954700513941849.a n = A290557 n

theorem P1181954700513941849.correct : P1181954700513941849.Spec := by
  intro n
  simp only [A290557, Nat.add_sub_cancel, A290557.P1181954700513941849.a, A290557.P14882080163412282038.a, A290559, A290559.P16268040871151256030.a, A290806, A290806.P8868761086250078969.a, A290809, A290809.P9412841085096696256.a, A000007, A000007.P6599383543502402472.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290557

/-! ## A290557.P11062990052047145790

`A034945(n)%(7^n)`
-/

namespace A290557.P11062990052047145790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034945 n) (7 ^ n : ℤ)

end

end A290557.P11062990052047145790

namespace A290557

/-- `A034945(n)%(7^n)` -/
def P11062990052047145790.Spec : Prop :=
  ∀ n, P11062990052047145790.a n = A290557 n

end A290557

/-!
# A290558: Coefficients in 7-adic expansion of sqrt(2).

The programs for A290558, there is no canonical definition to state claims against.
-/

/-! ## A290558.P14650952841121215643

`A054977(n)+5-A051277(n)`
-/

namespace A290558.P14650952841121215643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (5 - A051277 n)

end

end A290558.P14650952841121215643

/-! ## A290558.P18199445782377824533

`A000007(n)+6-A051277(n)`
-/

namespace A290558.P18199445782377824533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A051277 n)

end

end A290558.P18199445782377824533

/-! ## A290558.P3180925598635678246

`(A040210(n)-A051277(n))%8`
-/

namespace A290558.P3180925598635678246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040210 n - A051277 n) 8

end

end A290558.P3180925598635678246

/-! ## A290558.P4709887893478950624

`and(1, A006093(n+1))+6-A051277(n)`
-/

namespace A290558.P4709887893478950624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006093 (n + 1)) + (6 - A051277 n)

end

end A290558.P4709887893478950624

/-! ## A290558.P8251129201407269443

`A290794(n)+A290795(n)-A051277(n)`
-/

namespace A290558.P8251129201407269443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290794 n + (A290795 n - A051277 n)

end

end A290558.P8251129201407269443

/-! ## A290558.P3806821377426384445

`A290798(n)+A290799(n)-A051277(n)`
-/

namespace A290558.P3806821377426384445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290798 n + (A290799 n - A051277 n)

end

end A290558.P3806821377426384445

/-! ## A290558.P10696219021175008781

`A095901(A134660(n))+6-A051277(n)`
-/

namespace A290558.P10696219021175008781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (A134660 n).toNat + (6 - A051277 n)

end

end A290558.P10696219021175008781

/-! ## A290558.P2586761750931281799

`A183568(A046691(n+5))+5-A051277(n)`
-/

namespace A290558.P2586761750931281799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A046691 (n + 5)).toNat + (5 - A051277 n)

end

end A290558.P2586761750931281799

/-! ## A290558.P18026993537381707587

`A290796(n)+A290797(n)-A051277(n)`
-/

namespace A290558.P18026993537381707587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290796 n + (A290797 n - A051277 n)

end

end A290558.P18026993537381707587

/-! ## A290558.P10661183350121105342

`A145511(A001248(n+1))-A051277(n)`
-/

namespace A290558.P10661183350121105342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (A001248 (n + 1)).toNat - A051277 n

end

end A290558.P10661183350121105342

/-!
# A290559: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(2). These are the numbers congruent to 4 mod 7 (except for the initial 0).

The programs for A290559, the canonical program `A290559.P16268040871151256030` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290559 has offset 0).

The definition of A290559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290559.P16268040871151256030

`A000420(n)-(A290557(n)+A000007(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290559

/-- `A000420(n)-(A290557(n)+A000007(n))` -/
def P16268040871151256030.Spec : Prop :=
  ∀ n, P16268040871151256030.a n = A290559 n

theorem P16268040871151256030.correct : P16268040871151256030.Spec := by
  intro n
  simp only [A290559]

end A290559

/-! ## A290559.P686807626483371491

`A290800(n)+A290802(n)-A290557(n)`
-/

namespace A290559.P686807626483371491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n + (A290802 n - A290557 n)

end

end A290559.P686807626483371491

namespace A290559

/-- `A290800(n)+A290802(n)-A290557(n)` -/
def P686807626483371491.Spec : Prop :=
  ∀ n, P686807626483371491.a n = A290559 n

end A290559

/-! ## A290559.P9262396952126269241

`A290803(n)+A290804(n)-A290557(n)`
-/

namespace A290559.P9262396952126269241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290803 n + (A290804 n - A290557 n)

end

end A290559.P9262396952126269241

namespace A290559

/-- `A290803(n)+A290804(n)-A290557(n)` -/
def P9262396952126269241.Spec : Prop :=
  ∀ n, P9262396952126269241.a n = A290559 n

end A290559

/-! ## A290559.P2986840708862340213

`A290806(n)+A290809(n)-A290557(n)`
-/

namespace A290559.P2986840708862340213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n + (A290809 n - A290557 n)

end

end A290559.P2986840708862340213

namespace A290559

/-- `A290806(n)+A290809(n)-A290557(n)` -/
def P2986840708862340213.Spec : Prop :=
  ∀ n, P2986840708862340213.a n = A290559 n

theorem P2986840708862340213.correct : P2986840708862340213.Spec := by
  intro n
  simp only [A290559, Nat.add_sub_cancel, A290559.P2986840708862340213.a, A290559.P16268040871151256030.a, A000007, A000007.P6599383543502402472.a, A000420, A000420.P3695589171832359676.a, A290557, A290557.P14882080163412282038.a, A290806, A290806.P8868761086250078969.a, A290809, A290809.P9412841085096696256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290559

/-!
# A290560: Generalized Lucas-Carmichael numbers for D=9697.

The programs for A290560, there is no canonical definition to state claims against.
-/

/-! ## A290560.P11132205598841040354

`∩[A028838(n+1), A356736(n+1)]`
-/

namespace A290560.P11132205598841040354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290560.P11132205598841040354

/-!
# A290561: a(n) = n + cos(n*Pi/2).

The programs for A290561, the canonical program `A290561.P1370395172821648054` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290561 has offset 0).

The definition of A290561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290561.P10587787191182473882

`n+cos(n*π/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290561.P10587787191182473882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) + Real.cos ((n : ℝ) * Real.pi / 2)

end

end A290561.P10587787191182473882

namespace A290561

/-- `n+cos(n*π/2)` -/
def P10587787191182473882.Spec : Prop :=
  ∀ n, P10587787191182473882.a n = (A290561 n : ℝ)

end A290561

/-! ## A290561.P1370395172821648054

`a(n-4)+4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290561

/-- `a(n-4)+4` -/
def P1370395172821648054.Spec : Prop :=
  ∀ n, (P1370395172821648054.a n : ℤ) = A290561 n

theorem P1370395172821648054.correct : P1370395172821648054.Spec := by
  intro n
  simp only [A290561]

end A290561

/-! ## A290561.P2892033357555208592

`n+((-1)^(n*(n-1)/2)+(-1)^(n*(n+1)/2))/2`
-/

namespace A290561.P2892033357555208592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) + ((-1 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) + (-1 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ)) / 2

end

end A290561.P2892033357555208592

namespace A290561

/-- `n+((-1)^(n*(n-1)/2)+(-1)^(n*(n+1)/2))/2` -/
def P2892033357555208592.Spec : Prop :=
  ∀ n, P2892033357555208592.a n = (A290561 n : ℝ)

end A290561

/-! ## A290561.P1488333156866086

`or(1, n-∑[n]%2)`
-/

namespace A290561.P1488333156866086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ))

end

end A290561.P1488333156866086

namespace A290561

/-- `or(1, n-∑[n]%2)` -/
def P1488333156866086.Spec : Prop :=
  ∀ n, P1488333156866086.a n = A290561 n

end A290561

/-! ## A290561.P4062316427205200001

`or(1, n-char[or(2, n)])`
-/

namespace A290561.P4062316427205200001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A290561.P4062316427205200001

namespace A290561

/-- `or(1, n-char[or(2, n)])` -/
def P4062316427205200001.Spec : Prop :=
  ∀ n, P4062316427205200001.a n = A290561 n

end A290561

/-! ## A290561.P10607027705657780067

`xor(n, gcd(4, n+2)-1)`
-/

namespace A290561.P10607027705657780067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((Nat.gcd 4 (n + 2) : ℤ) - 1)

end

end A290561.P10607027705657780067

namespace A290561

/-- `xor(n, gcd(4, n+2)-1)` -/
def P10607027705657780067.Spec : Prop :=
  ∀ n, P10607027705657780067.a n = A290561 n

end A290561

/-! ## A290561.P14321019174674996176

`xor(n, ((n+1)^3)%4)`
-/

namespace A290561.P14321019174674996176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n ((n + 1) ^ 3 % 4)

end

end A290561.P14321019174674996176

namespace A290561

/-- `xor(n, ((n+1)^3)%4)` -/
def P14321019174674996176.Spec : Prop :=
  ∀ n, (P14321019174674996176.a n : ℤ) = A290561 n

end A290561

/-! ## A290561.P6943581417074593045

`xor(n, and(3, (n+1)^3))`
-/

namespace A290561.P6943581417074593045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 3 ((n + 1) ^ 3))

end

end A290561.P6943581417074593045

namespace A290561

/-- `xor(n, and(3, (n+1)^3))` -/
def P6943581417074593045.Spec : Prop :=
  ∀ n, (P6943581417074593045.a n : ℤ) = A290561 n

end A290561

/-! ## A290561.P7135452608041648252

`-or(-(n+1), gcd(2, n))`
-/

namespace A290561.P7135452608041648252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(n + 1 : ℤ)) (Nat.gcd 2 n : ℤ)

end

end A290561.P7135452608041648252

namespace A290561

/-- `-or(-(n+1), gcd(2, n))` -/
def P7135452608041648252.Spec : Prop :=
  ∀ n, P7135452608041648252.a n = A290561 n

end A290561

/-! ## A290561.P5713672272206576756

`abs(xor(n, -((n+1)%4)))`
-/

namespace A290561.P5713672272206576756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-(((n + 1) % 4 : ℕ) : ℤ))|

end

end A290561.P5713672272206576756

namespace A290561

/-- `abs(xor(n, -((n+1)%4)))` -/
def P5713672272206576756.Spec : Prop :=
  ∀ n, P5713672272206576756.a n = A290561 n

end A290561

/-! ## A290561.P1551134032452741271

`∑[2-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A290561.P1551134032452741271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290561.P1551134032452741271

namespace A290561

/-- `∑[2-a(n-2)]` -/
def P1551134032452741271.Spec : Prop :=
  ∀ n, P1551134032452741271.a n = A290561 n

end A290561

/-! ## A290561.P6253803035693783593

`or(1, n+1-and(2, n)!)`
-/

namespace A290561.P6253803035693783593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 1 : ℤ) - (Nat.factorial (Nat.land 2 n) : ℤ))

end

end A290561.P6253803035693783593

namespace A290561

/-- `or(1, n+1-and(2, n)!)` -/
def P6253803035693783593.Spec : Prop :=
  ∀ n, P6253803035693783593.a n = A290561 n

end A290561

/-! ## A290561.P7224135636527743058

`-or(-(n+1), and(3, -n))`
-/

namespace A290561.P7224135636527743058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(n + 1 : ℤ)) (Int.land 3 (-(n : ℤ)))

end

end A290561.P7224135636527743058

namespace A290561

/-- `-or(-(n+1), and(3, -n))` -/
def P7224135636527743058.Spec : Prop :=
  ∀ n, P7224135636527743058.a n = A290561 n

end A290561

/-! ## A290561.P1310316895713162515

`ogf((1-x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A290561.P1310316895713162515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -2, 2, -2, 1] n

end

end A290561.P1310316895713162515

namespace A290561

/-- `ogf((1-x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P1310316895713162515.Spec : Prop :=
  ∀ n, P1310316895713162515.a n = A290561 n

end A290561

/-! ## A290561.P11536577915132028730

`or(1, ∑[or(2, n+1)%(n+1)])`
-/

namespace A290561.P11536577915132028730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290561.P11536577915132028730

namespace A290561

/-- `or(1, ∑[or(2, n+1)%(n+1)])` -/
def P11536577915132028730.Spec : Prop :=
  ∀ n, (P11536577915132028730.a n : ℤ) = A290561 n

end A290561

/-! ## A290561.P5117458722686994703

`-(∑[or(n+1, -3)]+n+2)`
-/

namespace A290561.P5117458722686994703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ))

end

end A290561.P5117458722686994703

namespace A290561

/-- `-(∑[or(n+1, -3)]+n+2)` -/
def P5117458722686994703.Spec : Prop :=
  ∀ n, P5117458722686994703.a n = A290561 n

end A290561

/-! ## A290561.P980961681483431722

`abs(2*(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A290561.P980961681483431722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |2 * ((n : ℤ) - 1) - a (n - 2)|

end

end A290561.P980961681483431722

namespace A290561

/-- `abs(2*(n-1)-a(n-2))` -/
def P980961681483431722.Spec : Prop :=
  ∀ n, P980961681483431722.a n = A290561 n

end A290561

/-! ## A290561.P2785956470597422038

`floor(2*(n-1)-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A290561.P2785956470597422038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((n : ℤ) - 1) - a (n - 2)

end

end A290561.P2785956470597422038

namespace A290561

/-- `floor(2*(n-1)-a(n-2))` -/
def P2785956470597422038.Spec : Prop :=
  ∀ n, P2785956470597422038.a n = A290561 n

end A290561

/-! ## A290561.P11392970702580563340

`floor(n-(2-(n-a(n-2))))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A290561.P11392970702580563340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (2 - ((n : ℤ) - a (n - 2)))

end

end A290561.P11392970702580563340

namespace A290561

/-- `floor(n-(2-(n-a(n-2))))` -/
def P11392970702580563340.Spec : Prop :=
  ∀ n, P11392970702580563340.a n = A290561 n

end A290561

/-!
# A290562: a(n) = n - cos(n*Pi/2).

The programs for A290562, the canonical program `A290562.P3557909499188934676` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290562 has offset 0).

The definition of A290562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290562.P520944419239907561

`n-cos(n*π/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290562.P520944419239907561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.cos ((n : ℝ) * Real.pi / 2)

end

end A290562.P520944419239907561

namespace A290562

/-- `n-cos(n*π/2)` -/
def P520944419239907561.Spec : Prop :=
  ∀ n, P520944419239907561.a n = (A290562 n : ℝ)

end A290562

/-! ## A290562.P3557909499188934676

`a(n-4)+4` with `a(0)=-1, a(1)=1, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290562

/-- `a(n-4)+4` -/
def P3557909499188934676.Spec : Prop :=
  ∀ n, P3557909499188934676.a n = A290562 n

theorem P3557909499188934676.correct : P3557909499188934676.Spec := by
  intro n
  simp only [A290562]

end A290562

/-! ## A290562.P4457389486118048472

`n-((-1)^(n*(n-1)/2)+(-1)^(n*(n+1)/2))/2`
-/

namespace A290562.P4457389486118048472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ((-1 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) + (-1 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ)) / 2

end

end A290562.P4457389486118048472

namespace A290562

/-- `n-((-1)^(n*(n-1)/2)+(-1)^(n*(n+1)/2))/2` -/
def P4457389486118048472.Spec : Prop :=
  ∀ n, P4457389486118048472.a n = (A290562 n : ℝ)

end A290562

/-! ## A290562.P16541153780459591280

`or(n-1, gcd(2, n))`
-/

namespace A290562.P16541153780459591280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (Nat.gcd 2 n : ℤ)

end

end A290562.P16541153780459591280

namespace A290562

/-- `or(n-1, gcd(2, n))` -/
def P16541153780459591280.Spec : Prop :=
  ∀ n, P16541153780459591280.a n = A290562 n

end A290562

/-! ## A290562.P4103630510814761470

`or(n-1, n%4)`
-/

namespace A290562.P4103630510814761470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ((n % 4 : ℕ) : ℤ)

end

end A290562.P4103630510814761470

namespace A290562

/-- `or(n-1, n%4)` -/
def P4103630510814761470.Spec : Prop :=
  ∀ n, P4103630510814761470.a n = A290562 n

end A290562

/-! ## A290562.P653795278746917384

`or(n-1, and(3, n))`
-/

namespace A290562.P653795278746917384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (Nat.land 3 n : ℤ)

end

end A290562.P653795278746917384

namespace A290562

/-- `or(n-1, and(3, n))` -/
def P653795278746917384.Spec : Prop :=
  ∀ n, P653795278746917384.a n = A290562 n

end A290562

/-! ## A290562.P18093520631408875257

`or(n-1, -or(2, -n))`
-/

namespace A290562.P18093520631408875257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (-Int.lor 2 (-(n : ℤ)))

end

end A290562.P18093520631408875257

namespace A290562

/-- `or(n-1, -or(2, -n))` -/
def P18093520631408875257.Spec : Prop :=
  ∀ n, P18093520631408875257.a n = A290562 n

end A290562

/-! ## A290562.P1684143044544967680

`(∑[and(4, 6*n)]-2)/2`
-/

namespace A290562.P1684143044544967680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 (6 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / 2

end

end A290562.P1684143044544967680

namespace A290562

/-- `(∑[and(4, 6*n)]-2)/2` -/
def P1684143044544967680.Spec : Prop :=
  ∀ n, P1684143044544967680.a n = (A290562 n : ℚ)

end A290562

/-! ## A290562.P18056412177118936476

`xor(1, ∑[and(2, n+1)]-2)`
-/

namespace A290562.P18056412177118936476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A290562.P18056412177118936476

namespace A290562

/-- `xor(1, ∑[and(2, n+1)]-2)` -/
def P18056412177118936476.Spec : Prop :=
  ∀ n, P18056412177118936476.a n = A290562 n

end A290562

/-! ## A290562.P6225872784745432274

`or(char[2*n]+1, n-1)`
-/

namespace A290562.P6225872784745432274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) ((n : ℤ) - 1)

end

end A290562.P6225872784745432274

namespace A290562

/-- `or(char[2*n]+1, n-1)` -/
def P6225872784745432274.Spec : Prop :=
  ∀ n, P6225872784745432274.a n = A290562 n

end A290562

/-! ## A290562.P739082811786557399

`∑[2-a(n-2)]` with `a(0)=-1, a(1)=2, a(2)=2`
-/

namespace A290562.P739082811786557399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 2] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290562.P739082811786557399

namespace A290562

/-- `∑[2-a(n-2)]` -/
def P739082811786557399.Spec : Prop :=
  ∀ n, P739082811786557399.a n = A290562 n

end A290562

/-! ## A290562.P15731401730448323692

`(∑[and(2, n+1)²]-2)/2`
-/

namespace A290562.P15731401730448323692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / 2

end

end A290562.P15731401730448323692

namespace A290562

/-- `(∑[and(2, n+1)²]-2)/2` -/
def P15731401730448323692.Spec : Prop :=
  ∀ n, P15731401730448323692.a n = (A290562 n : ℚ)

end A290562

/-! ## A290562.P15469347259302093290

`-xor(n-1, -gcd(4, n+2))`
-/

namespace A290562.P15469347259302093290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - 1) (-(Nat.gcd 4 (n + 2) : ℤ))

end

end A290562.P15469347259302093290

namespace A290562

/-- `-xor(n-1, -gcd(4, n+2))` -/
def P15469347259302093290.Spec : Prop :=
  ∀ n, P15469347259302093290.a n = A290562 n

end A290562

/-! ## A290562.P7382810283804140534

`ogf((-1+3x-x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A290562.P7382810283804140534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, -1, 1] [1, -2, 2, -2, 1] n

end

end A290562.P7382810283804140534

namespace A290562

/-- `ogf((-1+3x-x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P7382810283804140534.Spec : Prop :=
  ∀ n, P7382810283804140534.a n = A290562 n

end A290562

/-! ## A290562.P10446032473411932085

`∑[and(2, n+1)-C(2, n+2)]`
-/

namespace A290562.P10446032473411932085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 1) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290562.P10446032473411932085

namespace A290562

/-- `∑[and(2, n+1)-C(2, n+2)]` -/
def P10446032473411932085.Spec : Prop :=
  ∀ n, P10446032473411932085.a n = A290562 n

end A290562

/-! ## A290562.P81821668387762421

`-(∑[or(n+3, -3)]+n+2)`
-/

namespace A290562.P81821668387762421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 3 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ))

end

end A290562.P81821668387762421

namespace A290562

/-- `-(∑[or(n+3, -3)]+n+2)` -/
def P81821668387762421.Spec : Prop :=
  ∀ n, P81821668387762421.a n = A290562 n

end A290562

/-! ## A290562.P1262586784666621873

`∑[and(2, n+1)-floor(1/(n+1))]`
-/

namespace A290562.P1262586784666621873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 1) : ℤ) - ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290562.P1262586784666621873

namespace A290562

/-- `∑[and(2, n+1)-floor(1/(n+1))]` -/
def P1262586784666621873.Spec : Prop :=
  ∀ n, P1262586784666621873.a n = A290562 n

end A290562

/-! ## A290562.P2207754378803732825

`floor(2*n+ϕ-∑[and(2, n-1)])`
-/

namespace A290562.P2207754378803732825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + (Real.goldenRatio - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))⌋

end

end A290562.P2207754378803732825

namespace A290562

/-- `floor(2*n+ϕ-∑[and(2, n-1)])` -/
def P2207754378803732825.Spec : Prop :=
  ∀ n, P2207754378803732825.a n = A290562 n

end A290562

/-! ## A290562.P7979880679012457372

`floor(2*n-(∑[and(2, n-1)]-ϕ))`
-/

namespace A290562.P7979880679012457372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.goldenRatio)⌋

end

end A290562.P7979880679012457372

namespace A290562

/-- `floor(2*n-(∑[and(2, n-1)]-ϕ))` -/
def P7979880679012457372.Spec : Prop :=
  ∀ n, P7979880679012457372.a n = A290562 n

end A290562

/-! ## A290562.P1515655057890123948

`(2*n+1-Δ[or(2, n-1)])/2`
-/

namespace A290562.P1515655057890123948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A290562.P1515655057890123948

namespace A290562

/-- `(2*n+1-Δ[or(2, n-1)])/2` -/
def P1515655057890123948.Spec : Prop :=
  ∀ n, P1515655057890123948.a n = (A290562 n : ℚ)

end A290562

/-!
# A290563: Coefficients in 5-adic expansion of 3^(1/3).

The programs for A290563, there is no canonical definition to state claims against.
-/

/-! ## A290563.P16073927996726562655

`Δ[A290568(n)]/A000351(n)`
-/

namespace A290563.P16073927996726562655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290568 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A290563.P16073927996726562655

/-!
# A290564: Number of primes between n^2 and 2*n^2.

The programs for A290564, the canonical program `A290564.P15092695203711350543` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290564 has offset 1).

The definition of A290564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290564.P15092695203711350543

`A000720(2*(n+1)²)-A000720((n+1)²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290564

/-- `A000720(2*(n+1)²)-A000720((n+1)²)` -/
def P15092695203711350543.Spec : Prop :=
  ∀ n, P15092695203711350543.a n = A290564 (n + 1)

theorem P15092695203711350543.correct : P15092695203711350543.Spec := by
  intro n
  simp only [A290564, Nat.add_sub_cancel]

end A290564

/-! ## A290564.P2062708738312893488

`A278114(n+1)-∑[A014085(n)]`
-/

namespace A290564.P2062708738312893488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290564.P2062708738312893488

namespace A290564

/-- `A278114(n+1)-∑[A014085(n)]` -/
def P2062708738312893488.Spec : Prop :=
  ∀ n, P2062708738312893488.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P11235575579506890929

`∑[A285269(n)]+1-∑[A014085(n)]`
-/

namespace A290564.P11235575579506890929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A290564.P11235575579506890929

namespace A290564

/-- `∑[A285269(n)]+1-∑[A014085(n)]` -/
def P11235575579506890929.Spec : Prop :=
  ∀ n, P11235575579506890929.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P13772684052452639111

`(n+1)²-∑[A289279(n+1)]-∑[A014085(n)]`
-/

namespace A290564.P13772684052452639111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A290564.P13772684052452639111

namespace A290564

/-- `(n+1)²-∑[A289279(n+1)]-∑[A014085(n)]` -/
def P13772684052452639111.Spec : Prop :=
  ∀ n, P13772684052452639111.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P3390629624917949677

`A278114(n+1)-A038107(n+1)`
-/

namespace A290564.P3390629624917949677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - A038107 (n + 1)

end

end A290564.P3390629624917949677

namespace A290564

/-- `A278114(n+1)-A038107(n+1)` -/
def P3390629624917949677.Spec : Prop :=
  ∀ n, P3390629624917949677.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P5965337077607538929

`A056171(2*(n+1)²)`
-/

namespace A290564.P5965337077607538929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1) ^ 2)

end

end A290564.P5965337077607538929

namespace A290564

/-- `A056171(2*(n+1)²)` -/
def P5965337077607538929.Spec : Prop :=
  ∀ n, P5965337077607538929.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P6781879248847357676

`A000720(2*(n+1)²)-∑[A014085(n)]`
-/

namespace A290564.P6781879248847357676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1) ^ 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290564.P6781879248847357676

namespace A290564

/-- `A000720(2*(n+1)²)-∑[A014085(n)]` -/
def P6781879248847357676.Spec : Prop :=
  ∀ n, P6781879248847357676.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P2384763751582495419

`A000720(A001105(n+1))-A038107(n+1)`
-/

namespace A290564.P2384763751582495419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001105 (n + 1)).toNat - A038107 (n + 1)

end

end A290564.P2384763751582495419

namespace A290564

/-- `A000720(A001105(n+1))-A038107(n+1)` -/
def P2384763751582495419.Spec : Prop :=
  ∀ n, P2384763751582495419.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P8418862496937872142

`A056171(A001105(n+1))%A074781(n+1)`
-/

namespace A290564.P8418862496937872142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056171 (A001105 (n + 1)).toNat) (A074781 (n + 1))

end

end A290564.P8418862496937872142

namespace A290564

/-- `A056171(A001105(n+1))%A074781(n+1)` -/
def P8418862496937872142.Spec : Prop :=
  ∀ n, P8418862496937872142.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P13330458806094022950

`A035250((n+1)²)`
-/

namespace A290564.P13330458806094022950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 ((n + 1) ^ 2)

end

end A290564.P13330458806094022950

namespace A290564

/-- `A035250((n+1)²)` -/
def P13330458806094022950.Spec : Prop :=
  ∀ n, P13330458806094022950.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P1160307495651177364

`floor(A060715((n+1)²)+acot(n))`
-/

namespace A290564.P1160307495651177364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060715 ((n + 1) ^ 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A290564.P1160307495651177364

namespace A290564

/-- `floor(A060715((n+1)²)+acot(n))` -/
def P1160307495651177364.Spec : Prop :=
  ∀ n, P1160307495651177364.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P10730130429303690364

`or(char[2], A035250(∑[2*n+1]))`
-/

namespace A290564.P10730130429303690364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A035250 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A290564.P10730130429303690364

namespace A290564

/-- `or(char[2], A035250(∑[2*n+1]))` -/
def P10730130429303690364.Spec : Prop :=
  ∀ n, P10730130429303690364.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P11525606073376164156

`(n+1)²-A307989((n+1)²)`
-/

namespace A290564.P11525606073376164156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A307989 ((n + 1) ^ 2)

end

end A290564.P11525606073376164156

namespace A290564

/-- `(n+1)²-A307989((n+1)²)` -/
def P11525606073376164156.Spec : Prop :=
  ∀ n, P11525606073376164156.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P13919177312067969287

`(n+1)²-A376759((n+1)²)`
-/

namespace A290564.P13919177312067969287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A376759 ((n + 1) ^ 2)

end

end A290564.P13919177312067969287

namespace A290564

/-- `(n+1)²-A376759((n+1)²)` -/
def P13919177312067969287.Spec : Prop :=
  ∀ n, P13919177312067969287.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P1552008606733609185

`A060715(A347535(n+1))`
-/

namespace A290564.P1552008606733609185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A347535 (n + 1)).toNat

end

end A290564.P1552008606733609185

namespace A290564

/-- `A060715(A347535(n+1))` -/
def P1552008606733609185.Spec : Prop :=
  ∀ n, P1552008606733609185.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P9044710088457081065

`A108954((n+1)²)`
-/

namespace A290564.P9044710088457081065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 ((n + 1) ^ 2)

end

end A290564.P9044710088457081065

namespace A290564

/-- `A108954((n+1)²)` -/
def P9044710088457081065.Spec : Prop :=
  ∀ n, P9044710088457081065.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P3871498072603196291

`A108954(∑[2*n+1])%∑[n+2]`
-/

namespace A290564.P3871498072603196291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108954 (∑ j ∈ Finset.range (n + 1), f1 j)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A290564.P3871498072603196291

namespace A290564

/-- `A108954(∑[2*n+1])%∑[n+2]` -/
def P3871498072603196291.Spec : Prop :=
  ∀ n, P3871498072603196291.a n = A290564 (n + 1)

end A290564

/-! ## A290564.P3044490410754099891

`A000720(A000040(A108954((n+1)*(n+1))))`
-/

namespace A290564.P3044490410754099891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (A108954 ((n + 1) * (n + 1))).toNat).toNat

end

end A290564.P3044490410754099891

namespace A290564

/-- `A000720(A000040(A108954((n+1)*(n+1))))` -/
def P3044490410754099891.Spec : Prop :=
  ∀ n, P3044490410754099891.a n = A290564 (n + 1)

end A290564

/-!
# A290566: Coefficients in 5-adic expansion of 2^(1/3).

The programs for A290566, there is no canonical definition to state claims against.
-/

/-! ## A290566.P16773384741907516585

`Δ[A290567(n)]/A000351(n)`
-/

namespace A290566.P16773384741907516585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290567 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A290566.P16773384741907516585

/-! ## A290566.P14970297748421053231

`floor(A290567(n+1)/A000351(n))`
-/

namespace A290566.P14970297748421053231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290567 (n + 1) : ℚ) / (A000351 n : ℚ)⌋

end

end A290566.P14970297748421053231

/-!
# A290567: The successive approximations up to 5^n for 5-adic integer 2^(1/3).

The programs for A290567, there is no canonical definition to state claims against.
-/

/-! ## A290567.P6789177119370298229

`∑[3*(10^n)²]%(5^A001096(n))`
-/

namespace A290567.P6789177119370298229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (10 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A001096 n : ℤ)))

end

end A290567.P6789177119370298229

/-! ## A290567.P13502994585331882387

`A169966(A111061(n+1))%(5^n)`
-/

namespace A290567.P13502994585331882387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169966 (A111061 (n + 1)).toNat) (5 ^ n : ℤ)

end

end A290567.P13502994585331882387

/-!
# A290568: The successive approximations up to 5^n for 5-adic integer 3^(1/3).

The programs for A290568, there is no canonical definition to state claims against.
-/

/-! ## A290568.P4396356928902345556

`A145066(ceil(10^n/9))%(5^n)`
-/

namespace A290568.P4396356928902345556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145066 ⌈(10 ^ n : ℚ) / 9⌉.toNat) (5 ^ n : ℤ)

end

end A290568.P4396356928902345556

/-!
# A290569: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of continued fraction 1/(1 - x/(1 - 2^k*x/(1 - 3^k*x/(1 - 4^k*x/(1 - 5^k*x/(1 - ...)))))).

The programs for A290569, there is no canonical definition to state claims against.
-/

/-! ## A290569.P795112830706968270

`A372001(∑[char[∑[n]]]²-n)`
-/

namespace A290569.P795112830706968270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372001 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A290569.P795112830706968270

/-! ## A290569.P416283618172965762

`A291260(n)/A117401(n)`
-/

namespace A290569.P416283618172965762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291260 n : ℚ) / (A117401 n : ℚ)

end

end A290569.P416283618172965762

/-! ## A290569.P16720266738889136668

`A291260(n)/sqrt(A118185(n))`
-/

namespace A290569.P16720266738889136668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291260 n : ℝ) / Real.sqrt (A118185 n : ℝ)

end

end A290569.P16720266738889136668

/-! ## A290569.P6625039528579903245

`A291260(n)/A000079(A004247(n))`
-/

namespace A290569.P6625039528579903245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291260 n : ℚ) / (A000079 (A004247 n).toNat : ℚ)

end

end A290569.P6625039528579903245

/-! ## A290569.P7505522485398014336

`A174875(A168288(n))+A135722(n)`
-/

namespace A290569.P7505522485398014336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174875 (A168288 n).toNat + A135722 n

end

end A290569.P7505522485398014336

/-!
# A290571: Number of dissections of an n-gon into 3- and 5-gons counted up to rotations and reflections.

The programs for A290571, there is no canonical definition to state claims against.
-/

/-! ## A290571.P3360609246951551067

`ceil(A316974(n)/A014692(n+1))`
-/

namespace A290571.P3360609246951551067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316974 n : ℚ) / (A014692 (n + 1) : ℚ)⌉

end

end A290571.P3360609246951551067

/-! ## A290571.P8865260382738391464

`A003963(A157273(n)+A001181(n))`
-/

namespace A290571.P8865260382738391464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A157273 n + A001181 n).toNat

end

end A290571.P8865260382738391464

/-!
# A290573: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)*(k+2)*(k+3)/24)).

The programs for A290573, there is no canonical definition to state claims against.
-/

/-! ## A290573.P1392565476994563339

`A029024(A130497(n))%(n!+1)`
-/

namespace A290573.P1392565476994563339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029024 (A130497 n).toNat) (Nat.factorial n + 1 : ℤ)

end

end A290573.P1392565476994563339

/-! ## A290573.P14870656464407731969

`A029024(A130497(n))+A000007(A078812(n))`
-/

namespace A290573.P14870656464407731969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 (A130497 n).toNat + A000007 (A078812 n).toNat

end

end A290573.P14870656464407731969

/-! ## A290573.P6561561128934072444

`A029024(A130497(n))*A057427(A111125(n))`
-/

namespace A290573.P6561561128934072444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 (A130497 n).toNat * A057427 (A111125 n).toNat

end

end A290573.P6561561128934072444

/-! ## A290573.P13561427526556510961

`A029024(A130497(n))%A017473(A304707(n))`
-/

namespace A290573.P13561427526556510961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029024 (A130497 n).toNat) (A017473 (A304707 n).toNat)

end

end A290573.P13561427526556510961

/-! ## A290573.P15720248238279430354

`A029024(A130497(n))+A000038(A175965(n+1))`
-/

namespace A290573.P15720248238279430354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 (A130497 n).toNat + A000038 (A175965 (n + 1)).toNat

end

end A290573.P15720248238279430354

/-! ## A290573.P8666386982677551971

`A009001(A217776(n))*A029024(A130497(n))`
-/

namespace A290573.P8666386982677551971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A217776 n).toNat * A029024 (A130497 n).toNat

end

end A290573.P8666386982677551971

/-! ## A290573.P5761598524954550167

`A046660(A086504(n+1))+A029024(A130497(n))`
-/

namespace A290573.P5761598524954550167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A086504 (n + 1)).toNat + A029024 (A130497 n).toNat

end

end A290573.P5761598524954550167

/-! ## A290573.P12581543617597076346

`A029024(A130497(n)%A102615(n+1))`
-/

namespace A290573.P12581543617597076346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029024 (Int.tmod (A130497 n) (A102615 (n + 1))).toNat

end

end A290573.P12581543617597076346

/-!
# A290575: Apéry-like numbers Sum_{k=0..n} (C(n,k) * C(2*k,n))^2.

The programs for A290575, there is no canonical definition to state claims against.
-/

/-! ## A290575.P3915898537806087566

`A004773(A336538(n))`
-/

namespace A290575.P3915898537806087566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A336538 n).toNat

end

end A290575.P3915898537806087566

/-!
# A290576: Apéry-like numbers Sum_{k=0..n} Sum_{l=0..n} (C(n,k)^2*C(n,l)*C(k,l)*C(k+l,n)).

The programs for A290576, there is no canonical definition to state claims against.
-/

/-! ## A290576.P15248640457299499039

`or(A245212(A336271(n)), A328440(n))`
-/

namespace A290576.P15248640457299499039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245212 (A336271 n).toNat) (A328440 n)

end

end A290576.P15248640457299499039

/-!
# A290579: E.g.f. satisfies: A(x) = (1 + sin(x*A(x))) / cos(x*A(x)).

The programs for A290579, there is no canonical definition to state claims against.
-/

/-! ## A290579.P9780937006963786041

`abs(A217066(n+1)/(n+1))`
-/

namespace A290579.P9780937006963786041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A217066 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A290579.P9780937006963786041

/-! ## A290579.P1435533374705907491

`A217066(n+1)/Δ[A001057(n)]`
-/

namespace A290579.P1435533374705907491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217066 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A290579.P1435533374705907491

/-! ## A290579.P2543157213909098258

`∏{p}[A217066((n%2)!+n)/(n+1), #]`
-/

namespace A290579.P2543157213909098258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217066 (Nat.factorial (n % 2) + n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A290579.P2543157213909098258

/-!
# A290580: E.g.f. W = W(x,m) satisfies: W = E(x*W,m) where E(x,m) = cn(i*x,m) - i*sn(i*x,m), with sn(x,m) and cn(x,m) being Jacobi elliptic functions, read as an irregular triangle of coefficients T(n,k) of x^n*m^k for n>=0 and k=0..[n/2].

The programs for A290580, there is no canonical definition to state claims against.
-/

/-! ## A290580.P12084779472613065601

`A144543(A345194(n))^floor(n/2)`
-/

namespace A290580.P12084779472613065601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144543 (A345194 n).toNat : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A290580.P12084779472613065601

/-! ## A290580.P5540692339964416493

`A049581(A013929(n+1)^floor((n+1)/2))`
-/

namespace A290580.P5540692339964416493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ))).toNat

end

end A290580.P5540692339964416493

/-! ## A290580.P16974123097246852158

`A010876(A007840(n))^A026741(n)`
-/

namespace A290580.P16974123097246852158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010876 (A007840 n).toNat : ℚ) ^ (A026741 n : ℤ)

end

end A290580.P16974123097246852158

/-!
# A290581: Column 1 of triangle A290580.

The programs for A290581, there is no canonical definition to state claims against.
-/

/-! ## A290581.P4764234288908370239

`record[A290580(comp[A008642(n)])]`
-/

namespace A290581.P4764234288908370239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290580 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290581.P4764234288908370239

/-! ## A290581.P5792110749299683547

`record[A290580(comp[A322115(n)])]`
-/

namespace A290581.P5792110749299683547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290580 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290581.P5792110749299683547

/-! ## A290581.P12627024472392749397

`A290580(A002620(n+4)+1)`
-/

namespace A290581.P12627024472392749397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290580 (A002620 (n + 4) + 1).toNat

end

end A290581.P12627024472392749397

/-! ## A290581.P3614568369457759939

`A290580(lt[A290580(n), n]+2)`
-/

namespace A290581.P3614568369457759939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290580 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290580 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A290581.P3614568369457759939

/-!
# A290582: Numbers m > 2 such that every divisor > 2 is the sum of two or more consecutive divisors.

The programs for A290582, there is no canonical definition to state claims against.
-/

/-! ## A290582.P4771715187879543199

`eq[33, A062759(A313803(n))]`
-/

namespace A290582.P4771715187879543199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A313803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290582.P4771715187879543199

/-! ## A290582.P14380348910417356634

`∩[A057127(n+1), A316221(n+1)]`
-/

namespace A290582.P14380348910417356634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290582.P14380348910417356634

/-! ## A290582.P3553056258695961721

`∩[A316221(n+1), A372899(n+1)]`
-/

namespace A290582.P3553056258695961721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290582.P3553056258695961721

/-! ## A290582.P2366953663411705642

`eq[A008486(A002265(n)), A181787(n)]`
-/

namespace A290582.P2366953663411705642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A002265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290582.P2366953663411705642

/-!
# A290583: a(n) is the factor R(n) having prime factors < (2/3)*n^2 in A285388(n) = R(n)P(n).

The programs for A290583, there is no canonical definition to state claims against.
-/

/-! ## A290583.P6047134369167988051

`A285388(n+1)/A290584(n+1)`
-/

namespace A290583.P6047134369167988051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285388 (n + 1) : ℚ) / (A290584 (n + 1) : ℚ)

end

end A290583.P6047134369167988051

/-! ## A290583.P17657865364665540063

`A285388(n+1)/A068111((n+1)²)`
-/

namespace A290583.P17657865364665540063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285388 (n + 1) : ℚ) / (A068111 ((n + 1) ^ 2) : ℚ)

end

end A290583.P17657865364665540063

/-! ## A290583.P17649470950551683674

`A000265(n+1)*A001790((n+1)²)/A068111((n+1)²)`
-/

namespace A290583.P17649470950551683674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) * A001790 ((n + 1) ^ 2) : ℚ) / (A068111 ((n + 1) ^ 2) : ℚ)

end

end A290583.P17649470950551683674

/-! ## A290583.P11389802264084152840

`A000265(n+1)*A001790((n+1)²)/A290584(n+1)`
-/

namespace A290583.P11389802264084152840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) * A001790 ((n + 1) ^ 2) : ℚ) / (A290584 (n + 1) : ℚ)

end

end A290583.P11389802264084152840

/-! ## A290583.P1535736699637320853

`gcd(A000142(A381075(n+1)), A285388(n+1))`
-/

namespace A290583.P1535736699637320853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (A381075 (n + 1)).toNat) (A285388 (n + 1))

end

end A290583.P1535736699637320853

/-!
# A290584: a(n) is the factor P(n) having prime factors between n^2 and 2*n^2 in A285388(n) = R(n)P(n) for n > 1, a(1)=1.

The programs for A290584, there is no canonical definition to state claims against.
-/

/-! ## A290584.P4848694962902979268

`A285388(n+1)/A290583(n+1)`
-/

namespace A290584.P4848694962902979268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285388 (n + 1) : ℚ) / (A290583 (n + 1) : ℚ)

end

end A290584.P4848694962902979268

/-! ## A290584.P16060392897828905311

`A068111((n+1)²)`
-/

namespace A290584.P16060392897828905311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068111 ((n + 1) ^ 2)

end

end A290584.P16060392897828905311

/-! ## A290584.P9324784552301355737

`A055773(A056220(n+1))`
-/

namespace A290584.P9324784552301355737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (A056220 (n + 1)).toNat

end

end A290584.P9324784552301355737

/-! ## A290584.P2577117612451531250

`record[A068111(A037213(n)²)]`
-/

namespace A290584.P2577117612451531250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068111 (A037213 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290584.P2577117612451531250

/-! ## A290584.P1345589526758571176

`A055773(A004273((n+1)²))`
-/

namespace A290584.P1345589526758571176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (A004273 ((n + 1) ^ 2)).toNat

end

end A290584.P1345589526758571176

/-!
# A290586: Number of irredundant sets in the n X n rook graph.

The programs for A290586, there is no canonical definition to state claims against.
-/

/-! ## A290586.P14044302556664795238

`A290818(∑[4*n]+1)`
-/

namespace A290586.P14044302556664795238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A290586.P14044302556664795238

/-! ## A290586.P15249914166902766685

`record[gcd(A114327(n), A290818(n+1))]`
-/

namespace A290586.P15249914166902766685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A290818 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290586.P15249914166902766685

/-! ## A290586.P8154244465179685340

`A290818(A001844(n))+A034558(n+1)`
-/

namespace A290586.P8154244465179685340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290818 (A001844 n).toNat + A034558 (n + 1)

end

end A290586.P8154244465179685340

/-! ## A290586.P12526777757950063720

`lcm(A034947(n+1), A290818(A001844(n)))`
-/

namespace A290586.P12526777757950063720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A290818 (A001844 n).toNat)

end

end A290586.P12526777757950063720

/-! ## A290586.P14441785192027461023

`A290818(A001844(n))-A178601(A178604(n+1))`
-/

namespace A290586.P14441785192027461023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290818 (A001844 n).toNat - A178601 (A178604 (n + 1)).toNat

end

end A290586.P14441785192027461023

/-!
# A290588: Number of irredundant sets in the n-helm graph.

The programs for A290588, there is no canonical definition to state claims against.
-/

/-! ## A290588.P18314916974035860243

`A120724(A112566(n+2))`
-/

namespace A290588.P18314916974035860243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120724 (A112566 (n + 2)).toNat

end

end A290588.P18314916974035860243

/-!
# A290590: Number of irredundant sets in the n-Mycielski graph.

The programs for A290590, there is no canonical definition to state claims against.
-/

/-! ## A290590.P10280993929484247040

`A003239(A000124(n))+A003235(n)`
-/

namespace A290590.P10280993929484247040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (A000124 n).toNat + A003235 n

end

end A290590.P10280993929484247040

/-!
# A290593: Number of maximal independent vertex sets (and minimal vertex covers) in the n-antiprism graph.

The programs for A290593, the canonical program `A290593.P13119093393113018653` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290593 has offset 3).

The definition of A290593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290593.P13119093393113018653

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=3, a(1)=12, a(2)=15, a(3)=31`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290593

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P13119093393113018653.Spec : Prop :=
  ∀ n, (P13119093393113018653.a n : ℤ) = A290593 (n + 3)

theorem P13119093393113018653.correct : P13119093393113018653.Spec := by
  intro n
  simp only [A290593, Nat.add_sub_cancel]

end A290593

/-! ## A290593.P13978956720361061320

`A001641(n+3)-A033999(n)`
-/

namespace A290593.P13978956720361061320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 3) - A033999 n

end

end A290593.P13978956720361061320

namespace A290593

/-- `A001641(n+3)-A033999(n)` -/
def P13978956720361061320.Spec : Prop :=
  ∀ n, P13978956720361061320.a n = A290593 (n + 3)

end A290593

/-! ## A290593.P3713241094334483598

`A001641(n+3)+A010673(n)-1`
-/

namespace A290593.P3713241094334483598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 3) + (A010673 n - 1)

end

end A290593.P3713241094334483598

namespace A290593

/-- `A001641(n+3)+A010673(n)-1` -/
def P3713241094334483598.Spec : Prop :=
  ∀ n, P3713241094334483598.a n = A290593 (n + 3)

end A290593

/-! ## A290593.P11569438633302897418

`A001641(n+3)-A165326(n+1)`
-/

namespace A290593.P11569438633302897418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 3) - A165326 (n + 1)

end

end A290593.P11569438633302897418

namespace A290593

/-- `A001641(n+3)-A165326(n+1)` -/
def P11569438633302897418.Spec : Prop :=
  ∀ n, P11569438633302897418.a n = A290593 (n + 3)

end A290593

/-! ## A290593.P17089626169219620923

`A001641(n+3)-A057077(2*n)`
-/

namespace A290593.P17089626169219620923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 3) - A057077 (2 * n)

end

end A290593.P17089626169219620923

namespace A290593

/-- `A001641(n+3)-A057077(2*n)` -/
def P17089626169219620923.Spec : Prop :=
  ∀ n, P17089626169219620923.a n = A290593 (n + 3)

end A290593

/-! ## A290593.P11631844611234828216

`A001641(n+3)-A009001(A008458(n))`
-/

namespace A290593.P11631844611234828216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 3) - A009001 (A008458 n).toNat

end

end A290593.P11631844611234828216

namespace A290593

/-- `A001641(n+3)-A009001(A008458(n))` -/
def P11631844611234828216.Spec : Prop :=
  ∀ n, P11631844611234828216.a n = A290593 (n + 3)

end A290593

/-!
# A290594: Number of maximal independent vertex sets (and minimal vertex covers) in the n X n black bishop graph.

The programs for A290594, there is no canonical definition to state claims against.
-/

/-! ## A290594.P11274284248069988943

`A003963(or(A270561(n), A347042(n+1)))`
-/

namespace A290594.P11274284248069988943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor (A270561 n) (A347042 (n + 1))).toNat

end

end A290594.P11274284248069988943

/-!
# A290596: Triangle read by rows. A generalization of unsigned Lah numbers, called L[3,1].

The programs for A290596, the canonical program `A290596.P18102244861387748546` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290596 has offset 0).

The definition of A290596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290596.P18102244861387748546

`T(n-1,k-1)+2*(3*row(n)-2)*T(n-1,k)-3*(row(n)-1)*(3*row(n)-4)*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290596

/-- `T(n-1,k-1)+2*(3*row(n)-2)*T(n-1,k)-3*(row(n)-1)*(3*row(n)-4)*T(n-2,k)` -/
def P18102244861387748546.Spec : Prop :=
  ∀ n, P18102244861387748546.a n = A290596 n

theorem P18102244861387748546.correct : P18102244861387748546.Spec := by
  intro n
  simp only [A290596]

end A290596

/-! ## A290596.P14013776733540556467

`A007318(n)*A112333(n)`
-/

namespace A290596.P14013776733540556467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A112333 n

end

end A290596.P14013776733540556467

namespace A290596

/-- `A007318(n)*A112333(n)` -/
def P14013776733540556467.Spec : Prop :=
  ∀ n, P14013776733540556467.a n = A290596 n

end A290596

/-! ## A290596.P13953755234241784836

`abs(A108086(n)*A112333(n))`
-/

namespace A290596.P13953755234241784836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A112333 n|

end

end A290596.P13953755234241784836

namespace A290596

/-- `abs(A108086(n)*A112333(n))` -/
def P13953755234241784836.Spec : Prop :=
  ∀ n, P13953755234241784836.a n = A290596 n

end A290596

/-! ## A290596.P10624654416412181868

`abs(A112333(n)*A117440(n))`
-/

namespace A290596.P10624654416412181868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112333 n * A117440 n|

end

end A290596.P10624654416412181868

namespace A290596

/-- `abs(A112333(n)*A117440(n))` -/
def P10624654416412181868.Spec : Prop :=
  ∀ n, P10624654416412181868.a n = A290596 n

end A290596

/-! ## A290596.P5062778549538409571

`abs(A112333(n)*A130595(n))`
-/

namespace A290596.P5062778549538409571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112333 n * A130595 n|

end

end A290596.P5062778549538409571

namespace A290596

/-- `abs(A112333(n)*A130595(n))` -/
def P5062778549538409571.Spec : Prop :=
  ∀ n, P5062778549538409571.a n = A290596 n

end A290596

/-! ## A290596.P12851447133786361017

`sqrt(A008459(n))*A112333(n)`
-/

namespace A290596.P12851447133786361017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A112333 n : ℝ)

end

end A290596.P12851447133786361017

namespace A290596

/-- `sqrt(A008459(n))*A112333(n)` -/
def P12851447133786361017.Spec : Prop :=
  ∀ n, P12851447133786361017.a n = (A290596 n : ℝ)

end A290596

/-!
# A290597: Numerators in the expansion of the exponential generating function ((1 + 3*x)/x)*(1 - (1 + 3*x)^(-2/3)).

The programs for A290597, there is no canonical definition to state claims against.
-/

/-! ## A290597.P16572246714799857936

`A159817(A356323(n+1)+A351083(n))`
-/

namespace A290597.P16572246714799857936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159817 (A356323 (n + 1) + A351083 n).toNat

end

end A290597.P16572246714799857936

/-!
# A290598: Triangle read by rows. A generalization of unsigned Lah numbers, called L[3,2].

The programs for A290598, the canonical program `A290598.P3148887561189209126` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290598 has offset 0).

The definition of A290598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290598.P3148887561189209126

`T(n-1,k-1)+2*(3*row(n)-1)*T(n-1,k)-3*(row(n)-1)*(3*row(n)-2)*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290598

/-- `T(n-1,k-1)+2*(3*row(n)-1)*T(n-1,k)-3*(row(n)-1)*(3*row(n)-2)*T(n-2,k)` -/
def P3148887561189209126.Spec : Prop :=
  ∀ n, P3148887561189209126.a n = A290598 n

theorem P3148887561189209126.correct : P3148887561189209126.Spec := by
  intro n
  simp only [A290598]

end A290598

/-! ## A290598.P8864290137904022199

`A007318(n)*A136214(comp[∑[n]])`
-/

namespace A290598.P8864290137904022199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A136214 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A290598.P8864290137904022199

namespace A290598

/-- `A007318(n)*A136214(comp[∑[n]])` -/
def P8864290137904022199.Spec : Prop :=
  ∀ n, P8864290137904022199.a n = A290598 n

end A290598

/-! ## A290598.P6593829510606127731

`abs(A108086(n)*A136214(A080036(n)))`
-/

namespace A290598.P6593829510606127731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A136214 (A080036 n).toNat|

end

end A290598.P6593829510606127731

namespace A290598

/-- `abs(A108086(n)*A136214(A080036(n)))` -/
def P6593829510606127731.Spec : Prop :=
  ∀ n, P6593829510606127731.a n = A290598 n

end A290598

/-! ## A290598.P6232597567401634380

`abs(A130595(n)*A136214(A080036(n)))`
-/

namespace A290598.P6232597567401634380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A136214 (A080036 n).toNat|

end

end A290598.P6232597567401634380

namespace A290598

/-- `abs(A130595(n)*A136214(A080036(n)))` -/
def P6232597567401634380.Spec : Prop :=
  ∀ n, P6232597567401634380.a n = A290598 n

end A290598

/-! ## A290598.P16002093756772466717

`sqrt(A008459(n))*A136214(A080036(n))`
-/

namespace A290598.P16002093756772466717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A136214 (A080036 n).toNat : ℝ)

end

end A290598.P16002093756772466717

namespace A290598

/-- `sqrt(A008459(n))*A136214(A080036(n))` -/
def P16002093756772466717.Spec : Prop :=
  ∀ n, P16002093756772466717.a n = (A290598 n : ℝ)

end A290598

/-! ## A290598.P3078831765538191559

`Δ[A102363(n)]*A136214(A080036(n))`
-/

namespace A290598.P3078831765538191559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A136214 (A080036 n).toNat

end

end A290598.P3078831765538191559

namespace A290598

/-- `Δ[A102363(n)]*A136214(A080036(n))` -/
def P3078831765538191559.Spec : Prop :=
  ∀ n, P3078831765538191559.a n = A290598 n

end A290598

/-! ## A290598.P13620814642754570237

`abs(A130595(n)*A136214(A014132(n+1)))`
-/

namespace A290598.P13620814642754570237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A136214 (A014132 (n + 1)).toNat|

end

end A290598.P13620814642754570237

namespace A290598

/-- `abs(A130595(n)*A136214(A014132(n+1)))` -/
def P13620814642754570237.Spec : Prop :=
  ∀ n, P13620814642754570237.a n = A290598 n

end A290598

/-! ## A290598.P9626322549334290140

`sqrt(A008459(n))*A136214(A014132(n+1))`
-/

namespace A290598.P9626322549334290140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A136214 (A014132 (n + 1)).toNat : ℝ)

end

end A290598.P9626322549334290140

namespace A290598

/-- `sqrt(A008459(n))*A136214(A014132(n+1))` -/
def P9626322549334290140.Spec : Prop :=
  ∀ n, P9626322549334290140.a n = (A290598 n : ℝ)

end A290598

/-! ## A290598.P8657059516938396236

`Δ[A102363(n)]*A136214(A014132(n+1))`
-/

namespace A290598.P8657059516938396236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A136214 (A014132 (n + 1)).toNat

end

end A290598.P8657059516938396236

namespace A290598

/-- `Δ[A102363(n)]*A136214(A014132(n+1))` -/
def P8657059516938396236.Spec : Prop :=
  ∀ n, P8657059516938396236.a n = A290598 n

end A290598

/-! ## A290598.P5258157723868681920

`A004525(A124927(n))*A136214(A014132(n+1))`
-/

namespace A290598.P5258157723868681920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A124927 n).toNat * A136214 (A014132 (n + 1)).toNat

end

end A290598.P5258157723868681920

namespace A290598

/-- `A004525(A124927(n))*A136214(A014132(n+1))` -/
def P5258157723868681920.Spec : Prop :=
  ∀ n, P5258157723868681920.a n = A290598 n

end A290598

/-!
# A290599: Number of numbers from 1 to A002808(n) - 1 that are non-coprime to A002808(n).

The programs for A290599, the canonical program `A290599.P8822875163250112356` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290599 has offset 1).

The definition of A290599 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A016035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290599.P8822875163250112356

`A016035(A002808(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A290599

/-- `A016035(A002808(n+1))` -/
def P8822875163250112356.Spec : Prop :=
  ∀ n, P8822875163250112356.a n = A290599 (n + 1)

theorem P8822875163250112356.correct : P8822875163250112356.Spec := by
  intro n
  simp only [A290599, Nat.add_sub_cancel]

end A290599

/-! ## A290599.P9121568799341767257

`A072668(n+1)-A073256(n+1)`
-/

namespace A290599.P9121568799341767257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A073256 (n + 1)

end

end A290599.P9121568799341767257

namespace A290599

/-- `A072668(n+1)-A073256(n+1)` -/
def P9121568799341767257.Spec : Prop :=
  ∀ n, P9121568799341767257.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P3260212593939454008

`A002808(n+1)-(A073256(n+1)+1)`
-/

namespace A290599.P3260212593939454008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (A073256 (n + 1) + 1)

end

end A290599.P3260212593939454008

namespace A290599

/-- `A002808(n+1)-(A073256(n+1)+1)` -/
def P3260212593939454008.Spec : Prop :=
  ∀ n, P3260212593939454008.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P10858443282652197652

`A072668(n+1)-A000010(Δ[A053767(n)])`
-/

namespace A290599.P10858443282652197652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A290599.P10858443282652197652

namespace A290599

/-- `A072668(n+1)-A000010(Δ[A053767(n)])` -/
def P10858443282652197652.Spec : Prop :=
  ∀ n, P10858443282652197652.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P8973075256854489671

`A072668(n+1)-A000010(comp[A351078(n)])`
-/

namespace A290599.P8973075256854489671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A290599.P8973075256854489671

namespace A290599

/-- `A072668(n+1)-A000010(comp[A351078(n)])` -/
def P8973075256854489671.Spec : Prop :=
  ∀ n, P8973075256854489671.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P17431308499581630225

`A072668(n+1)-A000010(A002808(n+1))`
-/

namespace A290599.P17431308499581630225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (A002808 (n + 1)).toNat

end

end A290599.P17431308499581630225

namespace A290599

/-- `A072668(n+1)-A000010(A002808(n+1))` -/
def P17431308499581630225.Spec : Prop :=
  ∀ n, P17431308499581630225.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P1388802266053921838

`A072668(n+1)-A000010(A018252(n+2))`
-/

namespace A290599.P1388802266053921838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (A018252 (n + 2)).toNat

end

end A290599.P1388802266053921838

namespace A290599

/-- `A072668(n+1)-A000010(A018252(n+2))` -/
def P1388802266053921838.Spec : Prop :=
  ∀ n, P1388802266053921838.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P12207317843146561701

`A072668(n+1)-A000010(lt[1, A107286(n)])`
-/

namespace A290599.P12207317843146561701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290599.P12207317843146561701

namespace A290599

/-- `A072668(n+1)-A000010(lt[1, A107286(n)])` -/
def P12207317843146561701.Spec : Prop :=
  ∀ n, P12207317843146561701.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P11950548099079251602

`A072668(n+1)-A000010(lt[1, A175126(n)])`
-/

namespace A290599.P11950548099079251602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290599.P11950548099079251602

namespace A290599

/-- `A072668(n+1)-A000010(lt[1, A175126(n)])` -/
def P11950548099079251602.Spec : Prop :=
  ∀ n, P11950548099079251602.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P10387923563987740840

`A072668(n+1)-A000010(A072668(n+1)+1)`
-/

namespace A290599.P10387923563987740840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000010 (A072668 (n + 1) + 1).toNat

end

end A290599.P10387923563987740840

namespace A290599

/-- `A072668(n+1)-A000010(A072668(n+1)+1)` -/
def P10387923563987740840.Spec : Prop :=
  ∀ n, P10387923563987740840.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P6233628168554996688

`lt[A000010(n+1), n]-A000010(A002808(n+1))`
-/

namespace A290599.P6233628168554996688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A000010 (A002808 (n + 1)).toNat

end

end A290599.P6233628168554996688

namespace A290599

/-- `lt[A000010(n+1), n]-A000010(A002808(n+1))` -/
def P6233628168554996688.Spec : Prop :=
  ∀ n, P6233628168554996688.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P6666395715488275245

`A060462(n+2)-A166362(n+2)`
-/

namespace A290599.P6666395715488275245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2) - A166362 (n + 2)

end

end A290599.P6666395715488275245

namespace A290599

/-- `A060462(n+2)-A166362(n+2)` -/
def P6666395715488275245.Spec : Prop :=
  ∀ n, P6666395715488275245.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P2806142340204227203

`A018252(n+2)-(A166362(n+2)+1)`
-/

namespace A290599.P2806142340204227203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - (A166362 (n + 2) + 1)

end

end A290599.P2806142340204227203

namespace A290599

/-- `A018252(n+2)-(A166362(n+2)+1)` -/
def P2806142340204227203.Spec : Prop :=
  ∀ n, P2806142340204227203.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P7555767464676769257

`A016035(A018252(n+2))`
-/

namespace A290599.P7555767464676769257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A018252 (n + 2)).toNat

end

end A290599.P7555767464676769257

namespace A290599

/-- `A016035(A018252(n+2))` -/
def P7555767464676769257.Spec : Prop :=
  ∀ n, P7555767464676769257.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P12994457597529613155

`A219428(lt[1, A032741(n)])`
-/

namespace A290599.P12994457597529613155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290599.P12994457597529613155

namespace A290599

/-- `A219428(lt[1, A032741(n)])` -/
def P12994457597529613155.Spec : Prop :=
  ∀ n, P12994457597529613155.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P9406180187358133810

`Δ[A185670(A018252(n+1))]`
-/

namespace A290599.P9406180187358133810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290599.P9406180187358133810

namespace A290599

/-- `Δ[A185670(A018252(n+1))]` -/
def P9406180187358133810.Spec : Prop :=
  ∀ n, P9406180187358133810.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P6360092717755596675

`A219428(comp[A158611(n+1)])`
-/

namespace A290599.P6360092717755596675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A290599.P6360092717755596675

namespace A290599

/-- `A219428(comp[A158611(n+1)])` -/
def P6360092717755596675.Spec : Prop :=
  ∀ n, P6360092717755596675.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P14439531528270409837

`A016035(A072668(n+1)+1)`
-/

namespace A290599.P14439531528270409837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A072668 (n + 1) + 1).toNat

end

end A290599.P14439531528270409837

namespace A290599

/-- `A016035(A072668(n+1)+1)` -/
def P14439531528270409837.Spec : Prop :=
  ∀ n, P14439531528270409837.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P5092047025433823669

`A051953(lt[1, A074206(n)])-1`
-/

namespace A290599.P5092047025433823669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A290599.P5092047025433823669

namespace A290599

/-- `A051953(lt[1, A074206(n)])-1` -/
def P5092047025433823669.Spec : Prop :=
  ∀ n, P5092047025433823669.a n = A290599 (n + 1)

end A290599

/-! ## A290599.P2331479339380557911

`A233583(A002808(n+1))-A073256(n+1)`
-/

namespace A290599.P2331479339380557911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A002808 (n + 1)).toNat - A073256 (n + 1)

end

end A290599.P2331479339380557911

namespace A290599

/-- `A233583(A002808(n+1))-A073256(n+1)` -/
def P2331479339380557911.Spec : Prop :=
  ∀ n, P2331479339380557911.a n = A290599 (n + 1)

end A290599

