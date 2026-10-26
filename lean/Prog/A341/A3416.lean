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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A341600: One of the two successive approximations up to 2^n for the 2-adic integer sqrt(-3/5). This is the 1 (mod 4) case.

The programs for A341600, there is no canonical definition to state claims against.
-/

/-! ## A341600.P14883748597402752247

`2^(n+2)-A341601(n+2)`
-/

namespace A341600.P14883748597402752247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A341601 (n + 2)

end

end A341600.P14883748597402752247

/-! ## A341600.P8843708690119017410

`∑[A000079(n+1)*A341602(n+1)]+1`
-/

namespace A341600.P8843708690119017410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A341602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341600.P8843708690119017410

/-! ## A341600.P4279959416158663155

`A341538(n+2)+A341539(n+2)-A341601(n+2)`
-/

namespace A341600.P4279959416158663155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 (n + 2) + (A341539 (n + 2) - A341601 (n + 2))

end

end A341600.P4279959416158663155

/-! ## A341600.P12173259843944092027

`A318960(n+2)+A318961(n+2)-A341601(n+2)`
-/

namespace A341600.P12173259843944092027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318960 (n + 2) + (A318961 (n + 2) - A341601 (n + 2))

end

end A341600.P12173259843944092027

/-! ## A341600.P3238390904765592754

`A341751(n+2)+A341752(n+2)-A341601(n+2)`
-/

namespace A341600.P3238390904765592754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341751 (n + 2) + (A341752 (n + 2) - A341601 (n + 2))

end

end A341600.P3238390904765592754

/-!
# A341601: One of the two successive approximations up to 2^n for the 2-adic integer sqrt(-3/5). This is the 3 (mod 4) case.

The programs for A341601, there is no canonical definition to state claims against.
-/

/-! ## A341601.P12585625162702106658

`2^(n+2)-A341600(n+2)`
-/

namespace A341601.P12585625162702106658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A341600 (n + 2)

end

end A341601.P12585625162702106658

/-! ## A341601.P11180885558725310572

`A341538(n+2)+A341539(n+2)-A341600(n+2)`
-/

namespace A341601.P11180885558725310572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 (n + 2) + (A341539 (n + 2) - A341600 (n + 2))

end

end A341601.P11180885558725310572

/-! ## A341601.P11703143057989362455

`A083706(n+1)-(A341600(n+2)+n)`
-/

namespace A341601.P11703143057989362455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (n + 1) - (A341600 (n + 2) + (n : ℤ))

end

end A341601.P11703143057989362455

/-! ## A341601.P13301629067676022924

`A318960(n+2)+A318961(n+2)-A341600(n+2)`
-/

namespace A341601.P13301629067676022924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318960 (n + 2) + (A318961 (n + 2) - A341600 (n + 2))

end

end A341601.P13301629067676022924

/-! ## A341601.P1041114681562374839

`A341751(n+2)+A341752(n+2)-A341600(n+2)`
-/

namespace A341601.P1041114681562374839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341751 (n + 2) + (A341752 (n + 2) - A341600 (n + 2))

end

end A341601.P1041114681562374839

/-!
# A341602: Expansion of the 2-adic integer sqrt(-3/5) that ends in 01.

The programs for A341602, there is no canonical definition to state claims against.
-/

/-! ## A341602.P16558398763243230645

`(1-A341603(n))^n`
-/

namespace A341602.P16558398763243230645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341603 n) ^ n

end

end A341602.P16558398763243230645

/-! ## A341602.P53255307814578334

`A054977(n)-A341603(n)`
-/

namespace A341602.P53255307814578334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A341603 n

end

end A341602.P53255307814578334

/-! ## A341602.P9826052327698399063

`xor(A057427(n), A341603(n))`
-/

namespace A341602.P9826052327698399063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A341603 n)

end

end A341602.P9826052327698399063

/-! ## A341602.P12872867925632324862

`abs(A341603(n)+A057428(n))`
-/

namespace A341602.P12872867925632324862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341603 n + A057428 n|

end

end A341602.P12872867925632324862

/-! ## A341602.P7221364370551097355

`A170862(a(1-A341603(n)))` with `a(0)=1`
-/

namespace A341602.P7221364370551097355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A170862 (a (1 - A341603 n).toNat).toNat

end

end A341602.P7221364370551097355

/-! ## A341602.P15446850486407470511

`1-A057427(n*A341603(n))`
-/

namespace A341602.P15446850486407470511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A341603 n).toNat

end

end A341602.P15446850486407470511

/-! ## A341602.P6188768618483917875

`A341603(a(n-1))-A341603(n)` with `a(0)=1`
-/

namespace A341602.P6188768618483917875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341603 (a (n - 1)).toNat - A341603 n

end

end A341602.P6188768618483917875

/-! ## A341602.P683974658177716891

`A168561((A341603(n)+1+n)%(n+1))`
-/

namespace A341602.P683974658177716891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (Int.tmod (A341603 n + 1 + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A341602.P683974658177716891

/-! ## A341602.P8107120383387303569

`A318962(n)+A318963(n)-A341603(n)`
-/

namespace A341602.P8107120383387303569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 n + (A318963 n - A341603 n)

end

end A341602.P8107120383387303569

/-! ## A341602.P4266861697358847352

`A322217(n)+A341540(n)-A341603(n)`
-/

namespace A341602.P4266861697358847352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 n + (A341540 n - A341603 n)

end

end A341602.P4266861697358847352

/-! ## A341602.P18206242673983439775

`A341753(n)+A341754(n)-A341603(n)`
-/

namespace A341602.P18206242673983439775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 n + (A341754 n - A341603 n)

end

end A341602.P18206242673983439775

/-! ## A341602.P117411633804768494

`(A341603(n)-A341583(2*(n+1)))%2+1`
-/

namespace A341602.P117411633804768494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341603 n - A341583 (2 * (n + 1))) 2 + 1

end

end A341602.P117411633804768494

/-! ## A341602.P6701725741883562869

`(A341603(n)-A341581(3*n+1))%2+1`
-/

namespace A341602.P6701725741883562869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341603 n - A341581 (3 * n + 1)) 2 + 1

end

end A341602.P6701725741883562869

/-!
# A341603: Expansion of the 2-adic integer sqrt(-3/5) that ends in 11.

The programs for A341603, there is no canonical definition to state claims against.
-/

/-! ## A341603.P6663420497322315317

`(1-A341602(n))^n`
-/

namespace A341603.P6663420497322315317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341602 n) ^ n

end

end A341603.P6663420497322315317

/-! ## A341603.P18383272858574370111

`1-A341602(A028310(n))`
-/

namespace A341603.P18383272858574370111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341602 (A028310 n).toNat

end

end A341603.P18383272858574370111

/-! ## A341603.P15888817726482748713

`A054977(n)-A341602(n)`
-/

namespace A341603.P15888817726482748713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A341602 n

end

end A341603.P15888817726482748713

/-! ## A341603.P14195601616106303372

`xor(A057427(n), A341602(n))`
-/

namespace A341603.P14195601616106303372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A341602 n)

end

end A341603.P14195601616106303372

/-! ## A341603.P3917080224721149827

`1-A057427(n*A341602(n))`
-/

namespace A341603.P3917080224721149827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A341602 n).toNat

end

end A341603.P3917080224721149827

/-! ## A341603.P7704693427081899816

`A341602(A341602(n)+C(2, n²))`
-/

namespace A341603.P7704693427081899816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 (A341602 n + (Nat.choose 2 (n ^ 2) : ℤ)).toNat

end

end A341603.P7704693427081899816

/-! ## A341603.P11757292190456871803

`A318962(n)+A318963(n)-A341602(n)`
-/

namespace A341603.P11757292190456871803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 n + (A318963 n - A341602 n)

end

end A341603.P11757292190456871803

/-! ## A341603.P17381833379322517912

`A322217(n)+A341540(n)-A341602(n)`
-/

namespace A341603.P17381833379322517912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 n + (A341540 n - A341602 n)

end

end A341603.P17381833379322517912

/-! ## A341603.P10566502309376763425

`A341753(n)+A341754(n)-A341602(n)`
-/

namespace A341603.P10566502309376763425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 n + (A341754 n - A341602 n)

end

end A341603.P10566502309376763425

/-!
# A341605: Square array A(n,k) = A017665(A246278(n,k)), read by falling antidiagonals; numerator of the abundancy index as applied onto prime shift array A246278.

The programs for A341605, there is no canonical definition to state claims against.
-/

/-! ## A341605.P159791673571416202

`A355927(n+1)/A355925(n+1)`
-/

namespace A341605.P159791673571416202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355927 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341605.P159791673571416202

/-! ## A341605.P6036700494602192264

`A379500(n+1)/A341606(n+1)`
-/

namespace A341605.P6036700494602192264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379500 (n + 1) : ℚ) / (A341606 (n + 1) : ℚ)

end

end A341605.P6036700494602192264

/-! ## A341605.P8785586513864887702

`A355927(n+1)/A249816((A246275(n+1)+1)/A341606(n+1))`
-/

namespace A341605.P8785586513864887702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355927 (n + 1) : ℚ) / (A249816 (SequenceMachineLib.roundAway ((A246275 (n + 1) + 1 : ℚ) / (A341606 (n + 1) : ℚ))).toNat : ℚ)

end

end A341605.P8785586513864887702

/-! ## A341605.P12909129001353322641

`A341606(n+1)*A355927(n+1)/A246278(n+2)`
-/

namespace A341605.P12909129001353322641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) * A355927 (n + 1) : ℚ) / (A246278 (n + 2) : ℚ)

end

end A341605.P12909129001353322641

/-! ## A341605.P6364574160935770360

`A355925(n+1)*A379500(n+1)/A246278(n+2)`
-/

namespace A341605.P6364574160935770360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355925 (n + 1) * A379500 (n + 1) : ℚ) / (A246278 (n + 2) : ℚ)

end

end A341605.P6364574160935770360

/-! ## A341605.P7392717742034854870

`∑{d}[A246278(n+2), A341606(n+1)/#]`
-/

namespace A341605.P7392717742034854870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A341606 (n + 1) : ℚ) / (d : ℚ)

end

end A341605.P7392717742034854870

/-! ## A341605.P16182227459033634566

`A000203(A246278(n+2))/A355925(n+1)`
-/

namespace A341605.P16182227459033634566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A246278 (n + 2)).toNat : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341605.P16182227459033634566

/-! ## A341605.P3607235102734885605

`A000203(A246275(n+1)+1)/A355925(n+1)`
-/

namespace A341605.P3607235102734885605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A246275 (n + 1) + 1).toNat : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341605.P3607235102734885605

/-! ## A341605.P3213799614902362591

`A000203(A246278(n+2))/A324544(A083221(n+2))`
-/

namespace A341605.P3213799614902362591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A246278 (n + 2)).toNat : ℚ) / (A324544 (A083221 (n + 2)).toNat : ℚ)

end

end A341605.P3213799614902362591

/-! ## A341605.P3947682106484582579

`A017665(A246278(n+2))`
-/

namespace A341605.P3947682106484582579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A246278 (n + 2)).toNat

end

end A341605.P3947682106484582579

/-!
# A341606: Square array A(n,k) = A017666(A246278(n,k)), read by falling antidiagonals; denominator of abundancy index as applied onto prime shift array A246278.

The programs for A341606, there is no canonical definition to state claims against.
-/

/-! ## A341606.P5598470014197750697

`A379500(n+1)/A341605(n+1)`
-/

namespace A341606.P5598470014197750697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379500 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ)

end

end A341606.P5598470014197750697

/-! ## A341606.P9855989405004835972

`A388284(n+1)-A378979(n+1)/A355925(n+1)`
-/

namespace A341606.P9855989405004835972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388284 (n + 1) : ℚ) - (A378979 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P9855989405004835972

/-! ## A341606.P10701724656549968649

`(A388285(n+1)-A378979(n+1))/A355925(n+1)`
-/

namespace A341606.P10701724656549968649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388285 (n + 1) - A378979 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P10701724656549968649

/-! ## A341606.P4090510566802619615

`(A246275(n+1)+1)/A355925(n+1)`
-/

namespace A341606.P4090510566802619615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246275 (n + 1) + 1 : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P4090510566802619615

/-! ## A341606.P17817690406369635216

`A246278(n+2)/A355925(n+1)`
-/

namespace A341606.P17817690406369635216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246278 (n + 2) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P17817690406369635216

/-! ## A341606.P8244868449485329808

`A341605(n+1)/A355927(n+1)*A246278(n+2)`
-/

namespace A341606.P8244868449485329808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341605 (n + 1) : ℚ) / (A355927 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A341606.P8244868449485329808

/-! ## A341606.P11432257580860356667

`A388284(n+1)/A388285(n+1)*A246278(n+2)`
-/

namespace A341606.P11432257580860356667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388284 (n + 1) : ℚ) / (A388285 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A341606.P11432257580860356667

/-! ## A341606.P6615583915394187001

`A249818(A083221(n+2))/A355925(n+1)`
-/

namespace A341606.P6615583915394187001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (A083221 (n + 2)).toNat : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P6615583915394187001

/-! ## A341606.P17616476396662209871

`A249818(A249741(n+1)+1)/A355925(n+1)`
-/

namespace A341606.P17616476396662209871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (A249741 (n + 1) + 1).toNat : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P17616476396662209871

/-! ## A341606.P15348068041502409886

`(A249816(A083221(n+2)-1)+1)/A355925(n+1)`
-/

namespace A341606.P15348068041502409886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249816 (A083221 (n + 2) - 1).toNat + 1 : ℚ) / (A355925 (n + 1) : ℚ)

end

end A341606.P15348068041502409886

/-! ## A341606.P9660840212827604900

`A324395(A253551(n+1))`
-/

namespace A341606.P9660840212827604900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A253551 (n + 1)).toNat

end

end A341606.P9660840212827604900

/-! ## A341606.P13604933732923800866

`A246278(n+2)/A324394(A253551(n+1))`
-/

namespace A341606.P13604933732923800866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246278 (n + 2) : ℚ) / (A324394 (A253551 (n + 1)).toNat : ℚ)

end

end A341606.P13604933732923800866

/-!
# A341607: Square array A(n,k) = A006530(A017666(A246278(n,k))), read by falling antidiagonals.

The programs for A341607, there is no canonical definition to state claims against.
-/

/-! ## A341607.P17260663924659681538

`A006530(A341606(n+1))`
-/

namespace A341607.P17260663924659681538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341606 (n + 1)).toNat

end

end A341607.P17260663924659681538

/-! ## A341607.P5799633525012664805

`A002034(∏{p}[A341606(n+1), #])`
-/

namespace A341607.P5799633525012664805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341607.P5799633525012664805

/-! ## A341607.P16483433859967992627

`A034699(∏{p}[A341606(n+1), #])`
-/

namespace A341607.P16483433859967992627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341607.P16483433859967992627

/-! ## A341607.P2173091979823760107

`A088387(∏{p}[A341606(n+1), #])`
-/

namespace A341607.P2173091979823760107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341607.P2173091979823760107

/-! ## A341607.P8473886803190522666

`A223491(∏{p}[A341606(n+1), #])`
-/

namespace A341607.P8473886803190522666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341607.P8473886803190522666

/-! ## A341607.P12289846225162110045

`A006530(A324395(A253551(n+1)))`
-/

namespace A341607.P12289846225162110045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A324395 (A253551 (n + 1)).toNat).toNat

end

end A341607.P12289846225162110045

/-! ## A341607.P17280932068624985141

`A006530(A246278(n+2)/A355925(n+1))`
-/

namespace A341607.P17280932068624985141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A246278 (n + 2) : ℚ) / (A355925 (n + 1) : ℚ))).toNat

end

end A341607.P17280932068624985141

/-! ## A341607.P6385806002308822934

`A006530(A246278(n+2)/A324544(A083221(n+2)))`
-/

namespace A341607.P6385806002308822934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A246278 (n + 2) : ℚ) / (A324544 (A083221 (n + 2)).toNat : ℚ))).toNat

end

end A341607.P6385806002308822934

/-! ## A341607.P7959059428931593213

`A006530(A017666(A246278(n+2)))`
-/

namespace A341607.P7959059428931593213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017666 (A246278 (n + 2)).toNat).toNat

end

end A341607.P7959059428931593213

/-! ## A341607.P5992714033076154272

`A006530(A017666(A246275(n+1)+1))`
-/

namespace A341607.P5992714033076154272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017666 (A246275 (n + 1) + 1).toNat).toNat

end

end A341607.P5992714033076154272

/-!
# A341608: Square array A(n,k) = A341524(A246278(n,k)), read by falling antidiagonals; number of prime factors (with mult.) in the denominator of abundancy index as applied onto prime shift array A246278.

The programs for A341608, there is no canonical definition to state claims against.
-/

/-! ## A341608.P10887720248213910252

`A001222(A341606(n+1))`
-/

namespace A341608.P10887720248213910252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A341606 (n + 1)).toNat

end

end A341608.P10887720248213910252

/-! ## A341608.P3611237669289003381

`∑{e}[A246278(n+2)/A355925(n+1), #]`
-/

namespace A341608.P3611237669289003381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246278 (n + 2) : ℚ) / (A355925 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A341608.P3611237669289003381

/-! ## A341608.P11042426642823875347

`∑{e}[(A246275(n+1)+1)/A355925(n+1), #]`
-/

namespace A341608.P11042426642823875347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246275 (n + 1) + 1 : ℚ) / (A355925 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A341608.P11042426642823875347

/-! ## A341608.P5559390421790274585

`A001222(A246278(n+2)/A355925(n+1))`
-/

namespace A341608.P5559390421790274585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A246278 (n + 2) : ℚ) / (A355925 (n + 1) : ℚ))).toNat

end

end A341608.P5559390421790274585

/-! ## A341608.P6591074762048883504

`A341524(A246278(n+2))`
-/

namespace A341608.P6591074762048883504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341524 (A246278 (n + 2)).toNat

end

end A341608.P6591074762048883504

/-!
# A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

The programs for A341609, the canonical program `A341609.P17617703652232455812` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341609 has offset 1).

The definition of A341609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341609.P17597428759103176989

`char[A337372(n+1)-1]`
-/

namespace A341609.P17597428759103176989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341609.P17597428759103176989

namespace A341609

/-- `char[A337372(n+1)-1]` -/
def P17597428759103176989.Spec : Prop :=
  ∀ n, (P17597428759103176989.a n : ℤ) = A341609 (n + 1)

end A341609

/-! ## A341609.P16555942692425177399

`char[eq[1, A337345(n+1)]]`
-/

namespace A341609.P16555942692425177399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341609.P16555942692425177399

namespace A341609

/-- `char[eq[1, A337345(n+1)]]` -/
def P16555942692425177399.Spec : Prop :=
  ∀ n, (P16555942692425177399.a n : ℤ) = A341609 (n + 1)

end A341609

/-! ## A341609.P17617703652232455812

`A063524(A337345(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341609

/-- `A063524(A337345(n+1))` -/
def P17617703652232455812.Spec : Prop :=
  ∀ n, P17617703652232455812.a n = A341609 (n + 1)

theorem P17617703652232455812.correct : P17617703652232455812.Spec := by
  intro n
  simp only [A341609, Nat.add_sub_cancel]

end A341609

/-! ## A341609.P1665250333985570058

`∑{d}[A337345(n+1), A008683(#)]`
-/

namespace A341609.P1665250333985570058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A341609.P1665250333985570058

namespace A341609

/-- `∑{d}[A337345(n+1), A008683(#)]` -/
def P1665250333985570058.Spec : Prop :=
  ∀ n, P1665250333985570058.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P7617855462409246992

`A341619((A337345(n+1)+1)²+2)`
-/

namespace A341609.P7617855462409246992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 ((A337345 (n + 1) + 1) ^ 2 + 2).toNat

end

end A341609.P7617855462409246992

namespace A341609

/-- `A341619((A337345(n+1)+1)²+2)` -/
def P7617855462409246992.Spec : Prop :=
  ∀ n, P7617855462409246992.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P12872107148982938712

`A178334(A336836(n+1))-A178334(A337346(n+1))`
-/

namespace A341609.P12872107148982938712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A336836 (n + 1)).toNat - A178334 (A337346 (n + 1)).toNat

end

end A341609.P12872107148982938712

namespace A341609

/-- `A178334(A336836(n+1))-A178334(A337346(n+1))` -/
def P12872107148982938712.Spec : Prop :=
  ∀ n, P12872107148982938712.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P15061304334168895251

`char[A023443(A337372(n+1))]`
-/

namespace A341609.P15061304334168895251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A337372 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341609.P15061304334168895251

namespace A341609

/-- `char[A023443(A337372(n+1))]` -/
def P15061304334168895251.Spec : Prop :=
  ∀ n, (P15061304334168895251.a n : ℤ) = A341609 (n + 1)

end A341609

/-! ## A341609.P4965393042253320560

`A337345((8*(A337345(n+1)+3))²+1)`
-/

namespace A341609.P4965393042253320560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 ((8 * (A337345 (n + 1) + 3)) ^ 2 + 1).toNat

end

end A341609.P4965393042253320560

namespace A341609

/-- `A337345((8*(A337345(n+1)+3))²+1)` -/
def P4965393042253320560.Spec : Prop :=
  ∀ n, P4965393042253320560.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P190201685592358753

`A337383(gcd(1-A337345(n+1), A337543(n+1)))`
-/

namespace A341609.P190201685592358753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (Int.gcd (1 - A337345 (n + 1)) (A337543 (n + 1)))

end

end A341609.P190201685592358753

namespace A341609

/-- `A337383(gcd(1-A337345(n+1), A337543(n+1)))` -/
def P190201685592358753.Spec : Prop :=
  ∀ n, P190201685592358753.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P5290221045824298617

`A252742(A005101(A337345(n+1)+1)²+1)`
-/

namespace A341609.P5290221045824298617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A005101 (A337345 (n + 1) + 1).toNat ^ 2 + 1).toNat

end

end A341609.P5290221045824298617

namespace A341609

/-- `A252742(A005101(A337345(n+1)+1)²+1)` -/
def P5290221045824298617.Spec : Prop :=
  ∀ n, P5290221045824298617.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P7929272783392037215

`A302050((2-A337345(n+1)²)²)`
-/

namespace A341609.P7929272783392037215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 ((2 - A337345 (n + 1) ^ 2) ^ 2).toNat

end

end A341609.P7929272783392037215

namespace A341609

/-- `A302050((2-A337345(n+1)²)²)` -/
def P7929272783392037215.Spec : Prop :=
  ∀ n, P7929272783392037215.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P9698135151380861317

`A341619(A006039(n+1)+1-A337345(n+1))`
-/

namespace A341609.P9698135151380861317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A006039 (n + 1) + (1 - A337345 (n + 1))).toNat

end

end A341609.P9698135151380861317

namespace A341609

/-- `A341619(A006039(n+1)+1-A337345(n+1))` -/
def P9698135151380861317.Spec : Prop :=
  ∀ n, P9698135151380861317.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P5611323302276565722

`A069158((2-A337345(n+1)²)²)`
-/

namespace A341609.P5611323302276565722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 ((2 - A337345 (n + 1) ^ 2) ^ 2).toNat

end

end A341609.P5611323302276565722

namespace A341609

/-- `A069158((2-A337345(n+1)²)²)` -/
def P5611323302276565722.Spec : Prop :=
  ∀ n, P5611323302276565722.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P273461658664542567

`A197774((2-A337345(n+1)²)²)`
-/

namespace A341609.P273461658664542567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 ((2 - A337345 (n + 1) ^ 2) ^ 2).toNat

end

end A341609.P273461658664542567

namespace A341609

/-- `A197774((2-A337345(n+1)²)²)` -/
def P273461658664542567.Spec : Prop :=
  ∀ n, P273461658664542567.a n = A341609 (n + 1)

end A341609

/-! ## A341609.P12358343512133254955

`A219009((2-A337345(n+1)²)²)`
-/

namespace A341609.P12358343512133254955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 ((2 - A337345 (n + 1) ^ 2) ^ 2).toNat

end

end A341609.P12358343512133254955

namespace A341609

/-- `A219009((2-A337345(n+1)²)²)` -/
def P12358343512133254955.Spec : Prop :=
  ∀ n, P12358343512133254955.a n = A341609 (n + 1)

end A341609

/-!
# A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

The programs for A341610, the canonical program `A341610.P5143080572522452525` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341610 has offset 1).

The definition of A341610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341610.P5143080572522452525

`lt[1, A337345(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341610

/-- `lt[1, A337345(n+1)]+1` -/
def P5143080572522452525.Spec : Prop :=
  ∀ n, (P5143080572522452525.a n : ℤ) = A341610 (n + 1)

theorem P5143080572522452525.correct : P5143080572522452525.Spec := by
  intro n
  simp only [A341610, Nat.add_sub_cancel]

end A341610

/-! ## A341610.P9164215894449007076

`lt[0, A337346(round(acot(n)+n))]`
-/

namespace A341610.P9164215894449007076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341610.P9164215894449007076

namespace A341610

/-- `lt[0, A337346(round(acot(n)+n))]` -/
def P9164215894449007076.Spec : Prop :=
  ∀ n, (P9164215894449007076.a n : ℤ) = A341610 (n + 1)

end A341610

/-! ## A341610.P6900832342587172749

`lt[0, A337346(round(sqrt(n²+1)))]`
-/

namespace A341610.P6900832342587172749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341610.P6900832342587172749

namespace A341610

/-- `lt[0, A337346(round(sqrt(n²+1)))]` -/
def P6900832342587172749.Spec : Prop :=
  ∀ n, (P6900832342587172749.a n : ℤ) = A341610 (n + 1)

end A341610

/-! ## A341610.P2888701072002980503

`lt[1, A000005(A337346(n+1)+1)]+1`
-/

namespace A341610.P2888701072002980503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337346 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P2888701072002980503

namespace A341610

/-- `lt[1, A000005(A337346(n+1)+1)]+1` -/
def P2888701072002980503.Spec : Prop :=
  ∀ n, (P2888701072002980503.a n : ℤ) = A341610 (n + 1)

end A341610

/-! ## A341610.P9307589331542194739

`lt[1, A337345(A028310(n))]`
-/

namespace A341610.P9307589331542194739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341610.P9307589331542194739

namespace A341610

/-- `lt[1, A337345(A028310(n))]` -/
def P9307589331542194739.Spec : Prop :=
  ∀ n, (P9307589331542194739.a n : ℤ) = A341610 (n + 1)

end A341610

/-! ## A341610.P14996655917714187238

`A065475(lt[1, A337345(n+1)])`
-/

namespace A341610.P14996655917714187238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341610.P14996655917714187238

namespace A341610

/-- `A065475(lt[1, A337345(n+1)])` -/
def P14996655917714187238.Spec : Prop :=
  ∀ n, P14996655917714187238.a n = A341610 (n + 1)

end A341610

/-! ## A341610.P13070137702333334689

`A020725(lt[A341609(n+1), A252742(n+1)])`
-/

namespace A341610.P13070137702333334689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341610.P13070137702333334689

namespace A341610

/-- `A020725(lt[A341609(n+1), A252742(n+1)])` -/
def P13070137702333334689.Spec : Prop :=
  ∀ n, P13070137702333334689.a n = A341610 (n + 1)

end A341610

/-! ## A341610.P1918166522416555340

`lt[A025458(A131240(n)), A160086(n)]`
-/

namespace A341610.P1918166522416555340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A131240 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341610.P1918166522416555340

namespace A341610

/-- `lt[A025458(A131240(n)), A160086(n)]` -/
def P1918166522416555340.Spec : Prop :=
  ∀ n, (P1918166522416555340.a n : ℤ) = A341610 (n + 1)

end A341610

/-! ## A341610.P4958217399130968124

`lt[A131282(A131270(n)), A166974(n)]`
-/

namespace A341610.P4958217399130968124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131282 (A131270 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341610.P4958217399130968124

namespace A341610

/-- `lt[A131282(A131270(n)), A166974(n)]` -/
def P4958217399130968124.Spec : Prop :=
  ∀ n, (P4958217399130968124.a n : ℤ) = A341610 (n + 1)

end A341610

/-! ## A341610.P4289491200021892753

`lt[A233583(A074971(n+1)), A293813(n)]`
-/

namespace A341610.P4289491200021892753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A074971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341610.P4289491200021892753

namespace A341610

/-- `lt[A233583(A074971(n+1)), A293813(n)]` -/
def P4289491200021892753.Spec : Prop :=
  ∀ n, (P4289491200021892753.a n : ℤ) = A341610 (n + 1)

end A341610

/-!
# A341611: Nonabundant numbers that are not primitive terms of A246282.

The programs for A341611, the canonical program `A341611.P6987460228206011471` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341611 has offset 1).

The definition of A341611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341611.P6987460228206011471

`lt[A341609(n+1), A341612(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A341611

/-- `lt[A341609(n+1), A341612(n+1)]+1` -/
def P6987460228206011471.Spec : Prop :=
  ∀ n, (P6987460228206011471.a n : ℤ) = A341611 (n + 1)

theorem P6987460228206011471.correct : P6987460228206011471.Spec := by
  intro n
  simp only [A341611, Nat.add_sub_cancel]

end A341611

/-! ## A341611.P12776634837953420456

`filter[A341610(n+1), A294935(#)]`
-/

namespace A341611.P12776634837953420456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A341611.P12776634837953420456

namespace A341611

/-- `filter[A341610(n+1), A294935(#)]` -/
def P12776634837953420456.Spec : Prop :=
  ∀ n, P12776634837953420456.a n = A341611 (n + 1)

end A341611

/-! ## A341611.P9766926171790121672

`filter[A341610(n+1), A341612(#)]`
-/

namespace A341611.P9766926171790121672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341611.P9766926171790121672

namespace A341611

/-- `filter[A341610(n+1), A341612(#)]` -/
def P9766926171790121672.Spec : Prop :=
  ∀ n, P9766926171790121672.a n = A341611 (n + 1)

end A341611

/-! ## A341611.P1288531730933035490

`∩[A341610(n+1), A341614(n+1)]`
-/

namespace A341611.P1288531730933035490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341611.P1288531730933035490

namespace A341611

/-- `∩[A341610(n+1), A341614(n+1)]` -/
def P1288531730933035490.Spec : Prop :=
  ∀ n, (P1288531730933035490.a n : ℤ) = A341611 (n + 1)

end A341611

/-! ## A341611.P16520485822737745015

`∩[A263837(n+1), A341610(n+1)]`
-/

namespace A341611.P16520485822737745015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341611.P16520485822737745015

namespace A341611

/-- `∩[A263837(n+1), A341610(n+1)]` -/
def P16520485822737745015.Spec : Prop :=
  ∀ n, (P16520485822737745015.a n : ℤ) = A341611 (n + 1)

end A341611

/-! ## A341611.P11203836623085954549

`A020725(lt[A341609(n+1), A341612(n+1)])`
-/

namespace A341611.P11203836623085954549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341611.P11203836623085954549

namespace A341611

/-- `A020725(lt[A341609(n+1), A341612(n+1)])` -/
def P11203836623085954549.Spec : Prop :=
  ∀ n, P11203836623085954549.a n = A341611 (n + 1)

end A341611

/-! ## A341611.P6651926206647526814

`A061767(lt[A341609(n+1), A341612(n+1)])`
-/

namespace A341611.P6651926206647526814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341611.P6651926206647526814

namespace A341611

/-- `A061767(lt[A341609(n+1), A341612(n+1)])` -/
def P6651926206647526814.Spec : Prop :=
  ∀ n, P6651926206647526814.a n = A341611 (n + 1)

end A341611

/-! ## A341611.P13621212960231721395

`A065475(lt[A341609(n+1), A341612(n+1)])`
-/

namespace A341611.P13621212960231721395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341611.P13621212960231721395

namespace A341611

/-- `A065475(lt[A341609(n+1), A341612(n+1)])` -/
def P13621212960231721395.Spec : Prop :=
  ∀ n, P13621212960231721395.a n = A341611 (n + 1)

end A341611

/-!
# A341612: Characteristic function of A341614: a(n) = 1 if sigma(n) <= 2n < A003961(n), 0 otherwise.

The programs for A341612, the canonical program `A341612.P3068073104531840485` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341612 has offset 1).

The definition of A341612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341612.P3068073104531840485

`A252742(n+1)*A294935(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341612

/-- `A252742(n+1)*A294935(n+1)` -/
def P3068073104531840485.Spec : Prop :=
  ∀ n, P3068073104531840485.a n = A341612 (n + 1)

theorem P3068073104531840485.correct : P3068073104531840485.Spec := by
  intro n
  simp only [A341612, Nat.add_sub_cancel]

end A341612

/-! ## A341612.P12546433811052546991

`A252742(n+1)-A294937(n+1)`
-/

namespace A341612.P12546433811052546991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) - A294937 (n + 1)

end

end A341612.P12546433811052546991

namespace A341612

/-- `A252742(n+1)-A294937(n+1)` -/
def P12546433811052546991.Spec : Prop :=
  ∀ n, P12546433811052546991.a n = A341612 (n + 1)

end A341612

/-! ## A341612.P14381840712383722399

`ceil(acot(A033879(n+1))/A252748(n+1))`
-/

namespace A341612.P14381840712383722399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A033879 (n + 1) : ℝ) / (A252748 (n + 1) : ℝ)⌉

end

end A341612.P14381840712383722399

namespace A341612

/-- `ceil(acot(A033879(n+1))/A252748(n+1))` -/
def P14381840712383722399.Spec : Prop :=
  ∀ n, P14381840712383722399.a n = A341612 (n + 1)

end A341612

/-! ## A341612.P7947027758550004834

`∑{d}[n+1, A008683(#)*A378662((n+1)/#)]`
-/

namespace A341612.P7947027758550004834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378662 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341612.P7947027758550004834

namespace A341612

/-- `∑{d}[n+1, A008683(#)*A378662((n+1)/#)]` -/
def P7947027758550004834.Spec : Prop :=
  ∀ n, P7947027758550004834.a n = A341612 (n + 1)

end A341612

/-! ## A341612.P2278095096358547307

`A001221(A252742(n+1)+round(1/∑{d}[n+1, 1/#]))`
-/

namespace A341612.P2278095096358547307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A252742 (n + 1) + SequenceMachineLib.roundAway (1 / (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)))).toNat

end

end A341612.P2278095096358547307

namespace A341612

/-- `A001221(A252742(n+1)+round(1/∑{d}[n+1, 1/#]))` -/
def P2278095096358547307.Spec : Prop :=
  ∀ n, P2278095096358547307.a n = A341612 (n + 1)

end A341612

/-! ## A341612.P7031684182213673006

`A000040(n+1)%(A294935(n+1)+A252742(n+1))`
-/

namespace A341612.P7031684182213673006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A294935 (n + 1) + A252742 (n + 1))

end

end A341612.P7031684182213673006

namespace A341612

/-- `A000040(n+1)%(A294935(n+1)+A252742(n+1))` -/
def P7031684182213673006.Spec : Prop :=
  ∀ n, P7031684182213673006.a n = A341612 (n + 1)

end A341612

/-! ## A341612.P6717235310629649623

`A003961(n+1)%(A294935(n+1)+A252742(n+1))`
-/

namespace A341612.P6717235310629649623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1)) (A294935 (n + 1) + A252742 (n + 1))

end

end A341612.P6717235310629649623

namespace A341612

/-- `A003961(n+1)%(A294935(n+1)+A252742(n+1))` -/
def P6717235310629649623.Spec : Prop :=
  ∀ n, P6717235310629649623.a n = A341612 (n + 1)

end A341612

/-!
# A341613: Characteristic function for A341615: a(n) = 1 if sigma(n) < 2n < A003961(n), otherwise 0.

The programs for A341613, the canonical program `A341613.P13588315821913618762` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341613 has offset 1).

The definition of A341613 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341613.P13588315821913618762

`A252742(n+1)*A294934(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341613

/-- `A252742(n+1)*A294934(n+1)` -/
def P13588315821913618762.Spec : Prop :=
  ∀ n, P13588315821913618762.a n = A341613 (n + 1)

theorem P13588315821913618762.correct : P13588315821913618762.Spec := by
  intro n
  simp only [A341613, Nat.add_sub_cancel]

end A341613

/-! ## A341613.P3639206410218517474

`A252742(n+1)-A294936(n+1)`
-/

namespace A341613.P3639206410218517474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) - A294936 (n + 1)

end

end A341613.P3639206410218517474

namespace A341613

/-- `A252742(n+1)-A294936(n+1)` -/
def P3639206410218517474.Spec : Prop :=
  ∀ n, P3639206410218517474.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P17702370746535840833

`A341612((n+1)*A108775(n+1))`
-/

namespace A341613.P17702370746535840833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 ((n + 1 : ℤ) * A108775 (n + 1)).toNat

end

end A341613.P17702370746535840833

namespace A341613

/-- `A341612((n+1)*A108775(n+1))` -/
def P17702370746535840833.Spec : Prop :=
  ∀ n, P17702370746535840833.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P16819828692389296195

`A294934(n+1)*A341612(n+1)`
-/

namespace A341613.P16819828692389296195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1) * A341612 (n + 1)

end

end A341613.P16819828692389296195

namespace A341613

/-- `A294934(n+1)*A341612(n+1)` -/
def P16819828692389296195.Spec : Prop :=
  ∀ n, P16819828692389296195.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P7166586754683337343

`and(A074971(n+1), A341612(n+1))`
-/

namespace A341613.P7166586754683337343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074971 (n + 1)) (A341612 (n + 1))

end

end A341613.P7166586754683337343

namespace A341613

/-- `and(A074971(n+1), A341612(n+1))` -/
def P7166586754683337343.Spec : Prop :=
  ∀ n, P7166586754683337343.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P3463540613322213559

`and(A082551(n+1), A341612(n+1))`
-/

namespace A341613.P3463540613322213559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082551 (n + 1)) (A341612 (n + 1))

end

end A341613.P3463540613322213559

namespace A341613

/-- `and(A082551(n+1), A341612(n+1))` -/
def P3463540613322213559.Spec : Prop :=
  ∀ n, P3463540613322213559.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P4416314997218944879

`and(A108775(n+1), A341612(n+1))`
-/

namespace A341613.P4416314997218944879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108775 (n + 1)) (A341612 (n + 1))

end

end A341613.P4416314997218944879

namespace A341613

/-- `and(A108775(n+1), A341612(n+1))` -/
def P4416314997218944879.Spec : Prop :=
  ∀ n, P4416314997218944879.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P17616843844987119560

`and(A119347(n+1), A341612(n+1))`
-/

namespace A341613.P17616843844987119560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119347 (n + 1)) (A341612 (n + 1))

end

end A341613.P17616843844987119560

namespace A341613

/-- `and(A119347(n+1), A341612(n+1))` -/
def P17616843844987119560.Spec : Prop :=
  ∀ n, P17616843844987119560.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P5608291277153966070

`and(A225561(n+1), A341612(n+1))`
-/

namespace A341613.P5608291277153966070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225561 (n + 1)) (A341612 (n + 1))

end

end A341613.P5608291277153966070

namespace A341613

/-- `and(A225561(n+1), A341612(n+1))` -/
def P5608291277153966070.Spec : Prop :=
  ∀ n, P5608291277153966070.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P17396033638851506946

`and(A300826(n+1), A341612(n+1))`
-/

namespace A341613.P17396033638851506946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300826 (n + 1)) (A341612 (n + 1))

end

end A341613.P17396033638851506946

namespace A341613

/-- `and(A300826(n+1), A341612(n+1))` -/
def P17396033638851506946.Spec : Prop :=
  ∀ n, P17396033638851506946.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P2900431847528324486

`(1-A294936(n+1))*A341612(n+1)`
-/

namespace A341613.P2900431847528324486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A294936 (n + 1)) * A341612 (n + 1)

end

end A341613.P2900431847528324486

namespace A341613

/-- `(1-A294936(n+1))*A341612(n+1)` -/
def P2900431847528324486.Spec : Prop :=
  ∀ n, P2900431847528324486.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P12040985365327435034

`∑{d}[n+1, A008683(#)*A378663((n+1)/#)]`
-/

namespace A341613.P12040985365327435034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378663 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341613.P12040985365327435034

namespace A341613

/-- `∑{d}[n+1, A008683(#)*A378663((n+1)/#)]` -/
def P12040985365327435034.Spec : Prop :=
  ∀ n, P12040985365327435034.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P14109684267725552734

`A294936(n+1)+A341612(n+1)-A060862(n+1)`
-/

namespace A341613.P14109684267725552734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1) + (A341612 (n + 1) - A060862 (n + 1))

end

end A341613.P14109684267725552734

namespace A341613

/-- `A294936(n+1)+A341612(n+1)-A060862(n+1)` -/
def P14109684267725552734.Spec : Prop :=
  ∀ n, P14109684267725552734.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P3662052068987559377

`A294937(n+1)+A341612(n+1)-A294936(n+1)`
-/

namespace A341613.P3662052068987559377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1) + (A341612 (n + 1) - A294936 (n + 1))

end

end A341613.P3662052068987559377

namespace A341613

/-- `A294937(n+1)+A341612(n+1)-A294936(n+1)` -/
def P3662052068987559377.Spec : Prop :=
  ∀ n, P3662052068987559377.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P578740359489944401

`A341612((n+1)*A300826(n+1))`
-/

namespace A341613.P578740359489944401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 ((n + 1 : ℤ) * A300826 (n + 1)).toNat

end

end A341613.P578740359489944401

namespace A341613

/-- `A341612((n+1)*A300826(n+1))` -/
def P578740359489944401.Spec : Prop :=
  ∀ n, P578740359489944401.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P8093473923483437943

`and(A115350(n+1), A341612(n+1))`
-/

namespace A341613.P8093473923483437943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115350 (n + 1)) (A341612 (n + 1))

end

end A341613.P8093473923483437943

namespace A341613

/-- `and(A115350(n+1), A341612(n+1))` -/
def P8093473923483437943.Spec : Prop :=
  ∀ n, P8093473923483437943.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P11890591588417725022

`A341612((n+1)*A074971(n+1))`
-/

namespace A341613.P11890591588417725022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 ((n + 1 : ℤ) * A074971 (n + 1)).toNat

end

end A341613.P11890591588417725022

namespace A341613

/-- `A341612((n+1)*A074971(n+1))` -/
def P11890591588417725022.Spec : Prop :=
  ∀ n, P11890591588417725022.a n = A341613 (n + 1)

end A341613

/-! ## A341613.P7041901868767316623

`A341612(A004928(n+1))`
-/

namespace A341613.P7041901868767316623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (A004928 (n + 1)).toNat

end

end A341613.P7041901868767316623

namespace A341613

/-- `A341612(A004928(n+1))` -/
def P7041901868767316623.Spec : Prop :=
  ∀ n, P7041901868767316623.a n = A341613 (n + 1)

end A341613

/-!
# A341614: Numbers k such that sigma(k) <= 2k < A003961(k).

The programs for A341614, the canonical program `A341614.P8767637196583140370` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341614 has offset 1).

The definition of A341614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341614.P8767637196583140370

`lt[0, A341612(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341614

/-- `lt[0, A341612(n+1)]+1` -/
def P8767637196583140370.Spec : Prop :=
  ∀ n, (P8767637196583140370.a n : ℤ) = A341614 (n + 1)

theorem P8767637196583140370.correct : P8767637196583140370.Spec := by
  intro n
  simp only [A341614, Nat.add_sub_cancel]

end A341614

/-! ## A341614.P10431550796308826957

`eq[1, A341612(ceil(abs(γ-n)))]`
-/

namespace A341614.P10431550796308826957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341614.P10431550796308826957

namespace A341614

/-- `eq[1, A341612(ceil(abs(γ-n)))]` -/
def P10431550796308826957.Spec : Prop :=
  ∀ n, (P10431550796308826957.a n : ℤ) = A341614 (n + 1)

end A341614

/-! ## A341614.P18355988322344507214

`∪[A326138(n+1), A341615(n+1)]`
-/

namespace A341614.P18355988322344507214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341614.P18355988322344507214

namespace A341614

/-- `∪[A326138(n+1), A341615(n+1)]` -/
def P18355988322344507214.Spec : Prop :=
  ∀ n, (P18355988322344507214.a n : ℤ) = A341614 (n + 1)

end A341614

/-! ## A341614.P11716284955475930900

`∪[A337372(n+1), A341611(n+1)]`
-/

namespace A341614.P11716284955475930900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341614.P11716284955475930900

namespace A341614

/-- `∪[A337372(n+1), A341611(n+1)]` -/
def P11716284955475930900.Spec : Prop :=
  ∀ n, (P11716284955475930900.a n : ℤ) = A341614 (n + 1)

end A341614

/-! ## A341614.P5291746669923757258

`filter[A002808(n+1), A341612(#)]`
-/

namespace A341614.P5291746669923757258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P5291746669923757258

namespace A341614

/-- `filter[A002808(n+1), A341612(#)]` -/
def P5291746669923757258.Spec : Prop :=
  ∀ n, P5291746669923757258.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P9467357728680565384

`filter[A018252(n+1), A341612(#)]`
-/

namespace A341614.P9467357728680565384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P9467357728680565384

namespace A341614

/-- `filter[A018252(n+1), A341612(#)]` -/
def P9467357728680565384.Spec : Prop :=
  ∀ n, P9467357728680565384.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P6853782327994086898

`filter[A141468(n+2), A341612(#)]`
-/

namespace A341614.P6853782327994086898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P6853782327994086898

namespace A341614

/-- `filter[A141468(n+2), A341612(#)]` -/
def P6853782327994086898.Spec : Prop :=
  ∀ n, P6853782327994086898.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P17353409597400657403

`filter[A246282(n+1), A294935(#)]`
-/

namespace A341614.P17353409597400657403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A341614.P17353409597400657403

namespace A341614

/-- `filter[A246282(n+1), A294935(#)]` -/
def P17353409597400657403.Spec : Prop :=
  ∀ n, P17353409597400657403.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P18072661058888655465

`filter[A246282(n+1), A341612(#)]`
-/

namespace A341614.P18072661058888655465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P18072661058888655465

namespace A341614

/-- `filter[A246282(n+1), A341612(#)]` -/
def P18072661058888655465.Spec : Prop :=
  ∀ n, P18072661058888655465.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P10957231504114056469

`filter[A246352(n+1), A341612(#)]`
-/

namespace A341614.P10957231504114056469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P10957231504114056469

namespace A341614

/-- `filter[A246352(n+1), A341612(#)]` -/
def P10957231504114056469.Spec : Prop :=
  ∀ n, P10957231504114056469.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P2948692216684112527

`filter[A222307(2*n+1), A341612(#)]`
-/

namespace A341614.P2948692216684112527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P2948692216684112527

namespace A341614

/-- `filter[A222307(2*n+1), A341612(#)]` -/
def P2948692216684112527.Spec : Prop :=
  ∀ n, P2948692216684112527.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P11654649709205978892

`filter[A263837(n+2), A341612(#)]`
-/

namespace A341614.P11654649709205978892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P11654649709205978892

namespace A341614

/-- `filter[A263837(n+2), A341612(#)]` -/
def P11654649709205978892.Spec : Prop :=
  ∀ n, P11654649709205978892.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P6464983383144251894

`∩[A246282(n+1), A263837(n+1)]`
-/

namespace A341614.P6464983383144251894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341614.P6464983383144251894

namespace A341614

/-- `∩[A246282(n+1), A263837(n+1)]` -/
def P6464983383144251894.Spec : Prop :=
  ∀ n, (P6464983383144251894.a n : ℤ) = A341614 (n + 1)

end A341614

/-! ## A341614.P6447379375534835218

`filter[A392650(n+3), A341612(#)]`
-/

namespace A341614.P6447379375534835218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P6447379375534835218

namespace A341614

/-- `filter[A392650(n+3), A341612(#)]` -/
def P6447379375534835218.Spec : Prop :=
  ∀ n, P6447379375534835218.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P11565318707006822283

`filter[A065090(n+1), A341612(#)]`
-/

namespace A341614.P11565318707006822283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P11565318707006822283

namespace A341614

/-- `filter[A065090(n+1), A341612(#)]` -/
def P11565318707006822283.Spec : Prop :=
  ∀ n, P11565318707006822283.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P14483619728449573385

`filter[A171581(n+1), A341612(#)]`
-/

namespace A341614.P14483619728449573385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P14483619728449573385

namespace A341614

/-- `filter[A171581(n+1), A341612(#)]` -/
def P14483619728449573385.Spec : Prop :=
  ∀ n, P14483619728449573385.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P1914597687370282726

`filter[A338924(n+1), A341612(#)]`
-/

namespace A341614.P1914597687370282726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P1914597687370282726

namespace A341614

/-- `filter[A338924(n+1), A341612(#)]` -/
def P1914597687370282726.Spec : Prop :=
  ∀ n, P1914597687370282726.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P13212533107535020921

`filter[A173905(n+2), A341612(#)]`
-/

namespace A341614.P13212533107535020921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P13212533107535020921

namespace A341614

/-- `filter[A173905(n+2), A341612(#)]` -/
def P13212533107535020921.Spec : Prop :=
  ∀ n, P13212533107535020921.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P15187590053481450601

`filter[A073900(n+1), A341612(#)]`
-/

namespace A341614.P15187590053481450601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P15187590053481450601

namespace A341614

/-- `filter[A073900(n+1), A341612(#)]` -/
def P15187590053481450601.Spec : Prop :=
  ∀ n, P15187590053481450601.a n = A341614 (n + 1)

end A341614

/-! ## A341614.P10357620561124399402

`filter[A073899(n+1), A341612(#)]`
-/

namespace A341614.P10357620561124399402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341614.P10357620561124399402

namespace A341614

/-- `filter[A073899(n+1), A341612(#)]` -/
def P10357620561124399402.Spec : Prop :=
  ∀ n, P10357620561124399402.a n = A341614 (n + 1)

end A341614

/-!
# A341615: Numbers k for which sigma(k) < 2k < A003961(k).

The programs for A341615, the canonical program `A341615.P5668791556833203135` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341615 has offset 1).

The definition of A341615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341615.P5668791556833203135

`lt[0, A341613(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A341615

/-- `lt[0, A341613(n+1)]+1` -/
def P5668791556833203135.Spec : Prop :=
  ∀ n, (P5668791556833203135.a n : ℤ) = A341615 (n + 1)

theorem P5668791556833203135.correct : P5668791556833203135.Spec := by
  intro n
  simp only [A341615, Nat.add_sub_cancel]

end A341615

/-! ## A341615.P4653971480951275674

`eq[1, A341613(round(acot(n)+n))]`
-/

namespace A341615.P4653971480951275674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341615.P4653971480951275674

namespace A341615

/-- `eq[1, A341613(round(acot(n)+n))]` -/
def P4653971480951275674.Spec : Prop :=
  ∀ n, (P4653971480951275674.a n : ℤ) = A341615 (n + 1)

end A341615

/-! ## A341615.P2257422372450976385

`record[(n+4)*A341613(n+4)]`
-/

namespace A341615.P2257422372450976385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A341613 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341615.P2257422372450976385

namespace A341615

/-- `record[(n+4)*A341613(n+4)]` -/
def P2257422372450976385.Spec : Prop :=
  ∀ n, P2257422372450976385.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P9540747468875796055

`filter[A341614(n+1), A294934(#)]`
-/

namespace A341615.P9540747468875796055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A341615.P9540747468875796055

namespace A341615

/-- `filter[A341614(n+1), A294934(#)]` -/
def P9540747468875796055.Spec : Prop :=
  ∀ n, P9540747468875796055.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P13307259509811392861

`filter[A341614(n+1), A341613(#)]`
-/

namespace A341615.P13307259509811392861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P13307259509811392861

namespace A341615

/-- `filter[A341614(n+1), A341613(#)]` -/
def P13307259509811392861.Spec : Prop :=
  ∀ n, P13307259509811392861.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P13137255856471846063

`filter[A083210(n+2), A341612(#)]`
-/

namespace A341615.P13137255856471846063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341615.P13137255856471846063

namespace A341615

/-- `filter[A083210(n+2), A341612(#)]` -/
def P13137255856471846063.Spec : Prop :=
  ∀ n, P13137255856471846063.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P9356133639684401852

`∩[A083210(n+1), A341614(n+1)]`
-/

namespace A341615.P9356133639684401852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341615.P9356133639684401852

namespace A341615

/-- `∩[A083210(n+1), A341614(n+1)]` -/
def P9356133639684401852.Spec : Prop :=
  ∀ n, (P9356133639684401852.a n : ℤ) = A341615 (n + 1)

end A341615

/-! ## A341615.P3902716533434042863

`record[A125746(A246282(n+1))]`
-/

namespace A341615.P3902716533434042863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A246282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341615.P3902716533434042863

namespace A341615

/-- `record[A125746(A246282(n+1))]` -/
def P3902716533434042863.Spec : Prop :=
  ∀ n, P3902716533434042863.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P15901589647931998790

`filter[A246282(n+1), A294934(#)]`
-/

namespace A341615.P15901589647931998790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A341615.P15901589647931998790

namespace A341615

/-- `filter[A246282(n+1), A294934(#)]` -/
def P15901589647931998790.Spec : Prop :=
  ∀ n, P15901589647931998790.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P6387512935855700813

`filter[A246282(n+1), A341613(#)]`
-/

namespace A341615.P6387512935855700813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P6387512935855700813

namespace A341615

/-- `filter[A246282(n+1), A341613(#)]` -/
def P6387512935855700813.Spec : Prop :=
  ∀ n, P6387512935855700813.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P3359486595639349802

`filter[A246352(n+1), A341613(#)]`
-/

namespace A341615.P3359486595639349802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P3359486595639349802

namespace A341615

/-- `filter[A246352(n+1), A341613(#)]` -/
def P3359486595639349802.Spec : Prop :=
  ∀ n, P3359486595639349802.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P8622192901034748527

`filter[A005100(n+1), A341612(#)]`
-/

namespace A341615.P8622192901034748527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341615.P8622192901034748527

namespace A341615

/-- `filter[A005100(n+1), A341612(#)]` -/
def P8622192901034748527.Spec : Prop :=
  ∀ n, P8622192901034748527.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P16739926071159010837

`filter[A005100(n+1), A341613(#)]`
-/

namespace A341615.P16739926071159010837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P16739926071159010837

namespace A341615

/-- `filter[A005100(n+1), A341613(#)]` -/
def P16739926071159010837.Spec : Prop :=
  ∀ n, P16739926071159010837.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P9741315363894360684

`∩[A005100(n+1), A246282(n+1)]`
-/

namespace A341615.P9741315363894360684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341615.P9741315363894360684

namespace A341615

/-- `∩[A005100(n+1), A246282(n+1)]` -/
def P9741315363894360684.Spec : Prop :=
  ∀ n, (P9741315363894360684.a n : ℤ) = A341615 (n + 1)

end A341615

/-! ## A341615.P12983506400552640784

`∩[A005100(n+1), A341614(n+1)]`
-/

namespace A341615.P12983506400552640784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341615.P12983506400552640784

namespace A341615

/-- `∩[A005100(n+1), A341614(n+1)]` -/
def P12983506400552640784.Spec : Prop :=
  ∀ n, (P12983506400552640784.a n : ℤ) = A341615 (n + 1)

end A341615

/-! ## A341615.P13742251131395705711

`filter[A263837(n+2), A341613(#)]`
-/

namespace A341615.P13742251131395705711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P13742251131395705711

namespace A341615

/-- `filter[A263837(n+2), A341613(#)]` -/
def P13742251131395705711.Spec : Prop :=
  ∀ n, P13742251131395705711.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P15598534040171561876

`filter[A136447(n+1), A341612(#)]`
-/

namespace A341615.P15598534040171561876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341612 (f1 j).toNat = 1) n)

end

end A341615.P15598534040171561876

namespace A341615

/-- `filter[A136447(n+1), A341612(#)]` -/
def P15598534040171561876.Spec : Prop :=
  ∀ n, P15598534040171561876.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P4772494730807780278

`filter[A136447(n+1), A341613(#)]`
-/

namespace A341615.P4772494730807780278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P4772494730807780278

namespace A341615

/-- `filter[A136447(n+1), A341613(#)]` -/
def P4772494730807780278.Spec : Prop :=
  ∀ n, P4772494730807780278.a n = A341615 (n + 1)

end A341615

/-! ## A341615.P13007112859083794279

`∩[A136447(n+1), A341614(n+1)]`
-/

namespace A341615.P13007112859083794279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341615.P13007112859083794279

namespace A341615

/-- `∩[A136447(n+1), A341614(n+1)]` -/
def P13007112859083794279.Spec : Prop :=
  ∀ n, (P13007112859083794279.a n : ℤ) = A341615 (n + 1)

end A341615

/-! ## A341615.P11231483787452685618

`filter[A392650(n+3), A341613(#)]`
-/

namespace A341615.P11231483787452685618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A341615.P11231483787452685618

namespace A341615

/-- `filter[A392650(n+3), A341613(#)]` -/
def P11231483787452685618.Spec : Prop :=
  ∀ n, P11231483787452685618.a n = A341615 (n + 1)

end A341615

/-!
# A341616: Table read by ascending antidiagonals: T(n,j) = Fibonacci(n)*Lucas(n+j), product of the n-th term in the Fibonacci sequence (with F(1)=1 and F(2)=1) and the (n+j)-th term in the Lucas sequence (with L(1)=1 and L(2)=3 and j=0,1,2,...).

The programs for A341616, the canonical program `A341616.P17882995452020316727` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341616 has offset 1).

The definition of A341616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)-col(n)+1)*A000032(row(n)-col(n)+1+col(n))` (program `A341616.P17882995452020316727`, by `A341616.P17882995452020316727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341616.P17882995452020316727

`A000045(row(n)-col(n)+1)*A000032(row(n)-col(n)+1+col(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A341616

/-- `A000045(row(n)-col(n)+1)*A000032(row(n)-col(n)+1+col(n))` -/
def P17882995452020316727.Spec : Prop :=
  ∀ n, P17882995452020316727.a n = A341616 (n + 1)

theorem P17882995452020316727.correct : P17882995452020316727.Spec := by
  intro n
  simp only [A341616, Nat.add_sub_cancel]

end A341616

/-! ## A341616.P11010425041441845658

`A000045(2*(row(n)-col(n)+1)+col(n))-(-1)^(row(n)-col(n)+1)*A000045(col(n))`
-/

namespace A341616.P11010425041441845658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) + (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) - (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) * (A000045 (SequenceMachineLib.triCol n) : ℚ)

end

end A341616.P11010425041441845658

namespace A341616

/-- `A000045(2*(row(n)-col(n)+1)+col(n))-(-1)^(row(n)-col(n)+1)*A000045(col(n))` -/
def P11010425041441845658.Spec : Prop :=
  ∀ n, P11010425041441845658.a n = (A341616 (n + 1) : ℚ)

end A341616

/-! ## A341616.P7657279427312096638

`A000032(∑[char[∑[n]]])*A104762(n+1)`
-/

namespace A341616.P7657279427312096638
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j) * A104762 (n + 1)

end

end A341616.P7657279427312096638

namespace A341616

/-- `A000032(∑[char[∑[n]]])*A104762(n+1)` -/
def P7657279427312096638.Spec : Prop :=
  ∀ n, P7657279427312096638.a n = A341616 (n + 1)

end A341616

/-! ## A341616.P12525345212947796336

`A104762(n+1)*A132148(A127739(n+1))`
-/

namespace A341616.P12525345212947796336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A132148 (A127739 (n + 1)).toNat

end

end A341616.P12525345212947796336

namespace A341616

/-- `A104762(n+1)*A132148(A127739(n+1))` -/
def P12525345212947796336.Spec : Prop :=
  ∀ n, P12525345212947796336.a n = A341616 (n + 1)

end A341616

/-! ## A341616.P11635875685860386201

`A000045(A004736(n+1))*A067979(A057944(n))`
-/

namespace A341616.P11635875685860386201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A067979 (A057944 n).toNat

end

end A341616.P11635875685860386201

namespace A341616

/-- `A000045(A004736(n+1))*A067979(A057944(n))` -/
def P11635875685860386201.Spec : Prop :=
  ∀ n, P11635875685860386201.a n = A341616 (n + 1)

end A341616

/-! ## A341616.P14339237503589713261

`A000045(A004736(n+1))*A082587(A131507(n))`
-/

namespace A341616.P14339237503589713261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A082587 (A131507 n).toNat

end

end A341616.P14339237503589713261

namespace A341616

/-- `A000045(A004736(n+1))*A082587(A131507(n))` -/
def P14339237503589713261.Spec : Prop :=
  ∀ n, P14339237503589713261.a n = A341616 (n + 1)

end A341616

/-! ## A341616.P10053204989631920705

`A000032(A002024(n+1))*A123231(A099375(n))`
-/

namespace A341616.P10053204989631920705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002024 (n + 1)).toNat * A123231 (A099375 n).toNat

end

end A341616.P10053204989631920705

namespace A341616

/-- `A000032(A002024(n+1))*A123231(A099375(n))` -/
def P10053204989631920705.Spec : Prop :=
  ∀ n, P10053204989631920705.a n = A341616 (n + 1)

end A341616

/-! ## A341616.P4846054784385742447

`A000032(A002024(n+1))*A000045(A004736(n+1))`
-/

namespace A341616.P4846054784385742447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002024 (n + 1)).toNat * A000045 (A004736 (n + 1)).toNat

end

end A341616.P4846054784385742447

namespace A341616

/-- `A000032(A002024(n+1))*A000045(A004736(n+1))` -/
def P4846054784385742447.Spec : Prop :=
  ∀ n, P4846054784385742447.a n = A341616 (n + 1)

end A341616

/-! ## A341616.P11370683071366228585

`A000045(A025581(n)+1)*A000032(A002024(n+1))`
-/

namespace A341616.P11370683071366228585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n + 1).toNat * A000032 (A002024 (n + 1)).toNat

end

end A341616.P11370683071366228585

namespace A341616

/-- `A000045(A025581(n)+1)*A000032(A002024(n+1))` -/
def P11370683071366228585.Spec : Prop :=
  ∀ n, P11370683071366228585.a n = A341616 (n + 1)

end A341616

/-!
# A341617: Repair factors for Stirling numbers of the second kind.

The programs for A341617, there is no canonical definition to state claims against.
-/

/-! ## A341617.P16693583224352797144

`A034386(n)*A341991(n+1)`
-/

namespace A341617.P16693583224352797144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n * A341991 (n + 1)

end

end A341617.P16693583224352797144

/-! ## A341617.P12681567442670341404

`A300951(2*n)*A341991(n+1)`
-/

namespace A341617.P12681567442670341404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * n) * A341991 (n + 1)

end

end A341617.P12681567442670341404

/-! ## A341617.P4181312915722651098

`A002110(A230980(n))*A341991(n+1)`
-/

namespace A341617.P4181312915722651098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A230980 n).toNat * A341991 (n + 1)

end

end A341617.P4181312915722651098

/-! ## A341617.P16130714037509284547

`lcm(A014682(a(n-2)), n²-n)` with `a(0)=1, a(1)=1`
-/

namespace A341617.P16130714037509284547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (A014682 (a (n - 2))) ((n ^ 2 : ℤ) - (n : ℤ))

end

end A341617.P16130714037509284547

/-! ## A341617.P15987525268619954427

`A003418(n)/A160467(A056040(n))`
-/

namespace A341617.P15987525268619954427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A160467 (A056040 n).toNat : ℚ)

end

end A341617.P15987525268619954427

/-!
# A341618: a(n) = 0 if n is not a primitive nondeficient number, otherwise a(n) is the number of primitive nondeficient divisors of the last number in the iteration x -> A003961(x) (starting from x=n) for which that count (A337690) is nonzero.

The programs for A341618, there is no canonical definition to state claims against.
-/

/-! ## A341618.P5224126999843393826

`A101825(A337690(n+1)^A323636(n+1))`
-/

namespace A341618.P5224126999843393826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (SequenceMachineLib.roundAway ((A337690 (n + 1) : ℚ) ^ (A323636 (n + 1) : ℤ))).toNat

end

end A341618.P5224126999843393826

/-! ## A341618.P8811217030941265745

`A201879(A279338(3*n+2))%A300826(n+1)`
-/

namespace A341618.P8811217030941265745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201879 (A279338 (3 * n + 2)).toNat) (A300826 (n + 1))

end

end A341618.P8811217030941265745

/-!
# A341619: Characteristic function of primitive nondeficient numbers (A006039): a(n) = 1 if proper multiples of n are all abundant, and proper divisors of n are all deficient, 0 otherwise.

The programs for A341619, the canonical program `A341619.P13364510289438970610` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341619 has offset 1).

The definition of A341619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341619.P10569018154648466708

`char[A006039(n+1)-1]`
-/

namespace A341619.P10569018154648466708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341619.P10569018154648466708

namespace A341619

/-- `char[A006039(n+1)-1]` -/
def P10569018154648466708.Spec : Prop :=
  ∀ n, (P10569018154648466708.a n : ℤ) = A341619 (n + 1)

end A341619

/-! ## A341619.P15129548067414578255

`char[eq[1, A341620(n+1)]]`
-/

namespace A341619.P15129548067414578255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341619.P15129548067414578255

namespace A341619

/-- `char[eq[1, A341620(n+1)]]` -/
def P15129548067414578255.Spec : Prop :=
  ∀ n, (P15129548067414578255.a n : ℤ) = A341619 (n + 1)

end A341619

/-! ## A341619.P13364510289438970610

`A063524(A341620(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341619

/-- `A063524(A341620(n+1))` -/
def P13364510289438970610.Spec : Prop :=
  ∀ n, P13364510289438970610.a n = A341619 (n + 1)

theorem P13364510289438970610.correct : P13364510289438970610.Spec := by
  intro n
  simp only [A341619, Nat.add_sub_cancel]

end A341619

/-! ## A341619.P14016502279390119760

`A257000(2*A341620(n+1))`
-/

namespace A341619.P14016502279390119760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (2 * A341620 (n + 1)).toNat

end

end A341619.P14016502279390119760

namespace A341619

/-- `A257000(2*A341620(n+1))` -/
def P14016502279390119760.Spec : Prop :=
  ∀ n, P14016502279390119760.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P8854498031738219726

`A001678(C(2, A341620(n+1)))`
-/

namespace A341619.P8854498031738219726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (Nat.choose 2 (A341620 (n + 1)).toNat)

end

end A341619.P8854498031738219726

namespace A341619

/-- `A001678(C(2, A341620(n+1)))` -/
def P8854498031738219726.Spec : Prop :=
  ∀ n, P8854498031738219726.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P4895447060838654526

`A014589(C(2, A341620(n+1)))`
-/

namespace A341619.P4895447060838654526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 (Nat.choose 2 (A341620 (n + 1)).toNat)

end

end A341619.P4895447060838654526

namespace A341619

/-- `A014589(C(2, A341620(n+1)))` -/
def P4895447060838654526.Spec : Prop :=
  ∀ n, P4895447060838654526.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P3092471408808461011

`A032741(C(2, A341620(n+1)))`
-/

namespace A341619.P3092471408808461011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose 2 (A341620 (n + 1)).toNat)

end

end A341619.P3092471408808461011

namespace A341619

/-- `A032741(C(2, A341620(n+1)))` -/
def P3092471408808461011.Spec : Prop :=
  ∀ n, P3092471408808461011.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P12581667030035085353

`∑{d}[A341620(n+1), A008683(#)]`
-/

namespace A341619.P12581667030035085353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A341619.P12581667030035085353

namespace A341619

/-- `∑{d}[A341620(n+1), A008683(#)]` -/
def P12581667030035085353.Spec : Prop :=
  ∀ n, P12581667030035085353.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P9794041298097582883

`floor(A341620(n+1)^A033879(n+1))`
-/

namespace A341619.P9794041298097582883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341620 (n + 1) : ℚ) ^ (A033879 (n + 1) : ℤ)⌋

end

end A341619.P9794041298097582883

namespace A341619

/-- `floor(A341620(n+1)^A033879(n+1))` -/
def P9794041298097582883.Spec : Prop :=
  ∀ n, P9794041298097582883.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P15492226091026532449

`C(A336835(n+1), A341620(n+1)!)`
-/

namespace A341619.P15492226091026532449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336835 (n + 1)).toNat (Nat.factorial (A341620 (n + 1)).toNat)

end

end A341619.P15492226091026532449

namespace A341619

/-- `C(A336835(n+1), A341620(n+1)!)` -/
def P15492226091026532449.Spec : Prop :=
  ∀ n, (P15492226091026532449.a n : ℤ) = A341619 (n + 1)

end A341619

/-! ## A341619.P8930549558059142231

`∑{d}[n+1, A008683(#)*A337690((n+1)/#)]`
-/

namespace A341619.P8930549558059142231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A337690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341619.P8930549558059142231

namespace A341619

/-- `∑{d}[n+1, A008683(#)*A337690((n+1)/#)]` -/
def P8930549558059142231.Spec : Prop :=
  ∀ n, P8930549558059142231.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P1881289049450569579

`and(A026776(n), A378449(n+1))`
-/

namespace A341619.P1881289049450569579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026776 n) (A378449 (n + 1))

end

end A341619.P1881289049450569579

namespace A341619

/-- `and(A026776(n), A378449(n+1))` -/
def P1881289049450569579.Spec : Prop :=
  ∀ n, P1881289049450569579.a n = A341619 (n + 1)

end A341619

/-! ## A341619.P14114209461392657050

`A056943(A341620(n²+1))^A117451(A341620(n+1))`
-/

namespace A341619.P14114209461392657050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056943 (A341620 (n ^ 2 + 1)).toNat : ℚ) ^ (A117451 (A341620 (n + 1)).toNat : ℤ)

end

end A341619.P14114209461392657050

namespace A341619

/-- `A056943(A341620(n²+1))^A117451(A341620(n+1))` -/
def P14114209461392657050.Spec : Prop :=
  ∀ n, P14114209461392657050.a n = (A341619 (n + 1) : ℚ)

end A341619

/-!
# A341620: Number of nondeficient divisors of n.

The programs for A341620, the canonical program `A341620.P4191397084300056986` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341620 has offset 1).

The definition of A341620 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A080225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341620.P4191397084300056986

`A080224(n+1)+A080225(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A341620

/-- `A080224(n+1)+A080225(n+1)` -/
def P4191397084300056986.Spec : Prop :=
  ∀ n, P4191397084300056986.a n = A341620 (n + 1)

theorem P4191397084300056986.correct : P4191397084300056986.Spec := by
  intro n
  simp only [A341620, Nat.add_sub_cancel]

end A341620

/-! ## A341620.P15413361599131502948

`A294927(n+1)+A294936(n+1)`
-/

namespace A341620.P15413361599131502948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (n + 1) + A294936 (n + 1)

end

end A341620.P15413361599131502948

namespace A341620

/-- `A294927(n+1)+A294936(n+1)` -/
def P15413361599131502948.Spec : Prop :=
  ∀ n, P15413361599131502948.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P3638120367137969976

`A000005(n+1)-A080226(n+1)`
-/

namespace A341620.P3638120367137969976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A080226 (n + 1)

end

end A341620.P3638120367137969976

namespace A341620

/-- `A000005(n+1)-A080226(n+1)` -/
def P3638120367137969976.Spec : Prop :=
  ∀ n, P3638120367137969976.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P12908643836651811187

`∑{d}[n+1, A294936(#)]`
-/

namespace A341620.P12908643836651811187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294936 d

end

end A341620.P12908643836651811187

namespace A341620

/-- `∑{d}[n+1, A294936(#)]` -/
def P12908643836651811187.Spec : Prop :=
  ∀ n, P12908643836651811187.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P6275390340935895808

`A337345(n+1)-A378663(n+1)`
-/

namespace A341620.P6275390340935895808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A378663 (n + 1)

end

end A341620.P6275390340935895808

namespace A341620

/-- `A337345(n+1)-A378663(n+1)` -/
def P6275390340935895808.Spec : Prop :=
  ∀ n, P6275390340935895808.a n = A341620 (n + 1)

theorem P6275390340935895808.correct : P6275390340935895808.Spec := by
  intro n
  simp only [A341620, Nat.add_sub_cancel, A341620.P6275390340935895808.a, A341620.P4191397084300056986.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A337345, A337345.P1594935461271935527.a, A378663, A378663.P6986709549582363223.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294937, A294937.P16064831210993750001.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341620

/-! ## A341620.P10933421963180022894

`A294927(n+1)+1-A294934(n+1)`
-/

namespace A341620.P10933421963180022894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (n + 1) + (1 - A294934 (n + 1))

end

end A341620.P10933421963180022894

namespace A341620

/-- `A294927(n+1)+1-A294934(n+1)` -/
def P10933421963180022894.Spec : Prop :=
  ∀ n, P10933421963180022894.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P11775784533922146122

`A080225(n+1)+A337345(n+1)-A378662(n+1)`
-/

namespace A341620.P11775784533922146122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (n + 1) + (A337345 (n + 1) - A378662 (n + 1))

end

end A341620.P11775784533922146122

namespace A341620

/-- `A080225(n+1)+A337345(n+1)-A378662(n+1)` -/
def P11775784533922146122.Spec : Prop :=
  ∀ n, P11775784533922146122.a n = A341620 (n + 1)

theorem P11775784533922146122.correct : P11775784533922146122.Spec := by
  intro n
  simp only [A341620, Nat.add_sub_cancel, A341620.P11775784533922146122.a, A341620.P4191397084300056986.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A337345, A337345.P1594935461271935527.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294937, A294937.P16064831210993750001.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341620

/-! ## A341620.P1099069790385991965

`A341624(n+1)%A004320(A130127(n+1))`
-/

namespace A341620.P1099069790385991965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341624 (n + 1)) (A004320 (A130127 (n + 1)).toNat)

end

end A341620.P1099069790385991965

namespace A341620

/-- `A341624(n+1)%A004320(A130127(n+1))` -/
def P1099069790385991965.Spec : Prop :=
  ∀ n, P1099069790385991965.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P9544164517518610001

`A341624(n+1)%A000085(n)`
-/

namespace A341620.P9544164517518610001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341624 (n + 1)) (A000085 n)

end

end A341620.P9544164517518610001

namespace A341620

/-- `A341624(n+1)%A000085(n)` -/
def P9544164517518610001.Spec : Prop :=
  ∀ n, P9544164517518610001.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P3751377807327620716

`A174341(n)*A341624(n+1)`
-/

namespace A341620.P3751377807327620716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174341 n * A341624 (n + 1)

end

end A341620.P3751377807327620716

namespace A341620

/-- `A174341(n)*A341624(n+1)` -/
def P3751377807327620716.Spec : Prop :=
  ∀ n, P3751377807327620716.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P9957604119409962500

`and(A244605(n), A341624(n+1))`
-/

namespace A341620.P9957604119409962500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244605 n) (A341624 (n + 1))

end

end A341620.P9957604119409962500

namespace A341620

/-- `and(A244605(n), A341624(n+1))` -/
def P9957604119409962500.Spec : Prop :=
  ∀ n, P9957604119409962500.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P16721384769035084652

`A181722(n+1)*A341624(n+1)`
-/

namespace A341620.P16721384769035084652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181722 (n + 1) * A341624 (n + 1)

end

end A341620.P16721384769035084652

namespace A341620

/-- `A181722(n+1)*A341624(n+1)` -/
def P16721384769035084652.Spec : Prop :=
  ∀ n, P16721384769035084652.a n = A341620 (n + 1)

end A341620

/-! ## A341620.P14370319358082468972

`A341624(n+1)/A094754(A217046(n+1))`
-/

namespace A341620.P14370319358082468972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341624 (n + 1) : ℚ) / (A094754 (A217046 (n + 1)).toNat : ℚ)

end

end A341620.P14370319358082468972

namespace A341620

/-- `A341624(n+1)/A094754(A217046(n+1))` -/
def P14370319358082468972.Spec : Prop :=
  ∀ n, P14370319358082468972.a n = (A341620 (n + 1) : ℚ)

end A341620

/-!
# A341621: a(n) is the exponent of the least power of 2 that when multiplied by n makes the product abundant, or -1 if n itself is a power of 2.

The programs for A341621, there is no canonical definition to state claims against.
-/

/-! ## A341621.P11373884285497575958

`A336915(n+1)+char[A341622(n+1)-1]`
-/

namespace A341621.P11373884285497575958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341622 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341621.P11373884285497575958

/-! ## A341621.P6067322780092109439

`A336915(n+1)+A010051(A225588(n))`
-/

namespace A341621.P6067322780092109439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (n + 1) + A010051 (A225588 n).toNat

end

end A341621.P6067322780092109439

/-! ## A341621.P10089217509933136023

`A336916(n+1)-A267621(A240571(n))`
-/

namespace A341621.P10089217509933136023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (n + 1) - A267621 (A240571 n).toNat

end

end A341621.P10089217509933136023

/-!
# A341622: Numbers that are either already perfect, or a perfect number is eventually reached if we start doubling them.

The programs for A341622, there is no canonical definition to state claims against.
-/

/-! ## A341622.P9646541886039699326

`∩[A037015(n+1), A335431(n+1)]`
-/

namespace A341622.P9646541886039699326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341622.P9646541886039699326

/-! ## A341622.P2755940794011439467

`∩[A324726(n+1), A335431(n+1)]`
-/

namespace A341622.P2755940794011439467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341622.P2755940794011439467

/-! ## A341622.P8124312450871493407

`∩[A048717(n), A096360(n+1)]`
-/

namespace A341622.P8124312450871493407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341622.P8124312450871493407

/-! ## A341622.P13782628959899486231

`∩[A096360(n+1), A175332(n+1)]`
-/

namespace A341622.P13782628959899486231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341622.P13782628959899486231

/-! ## A341622.P1080456203267451991

`∩[A096360(n+1), A238246(n+1)]`
-/

namespace A341622.P1080456203267451991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341622.P1080456203267451991

/-!
# A341623: Numbers k such that sigma(3*k) = 8*k.

The programs for A341623, there is no canonical definition to state claims against.
-/

/-! ## A341623.P12181097608377616759

`A347261(n+1)/33`
-/

namespace A341623.P12181097608377616759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347261 (n + 1) : ℚ) / 33

end

end A341623.P12181097608377616759

/-!
# A341624: a(n) = 0 if n is a deficient number, otherwise a(n) is the number of nondeficient divisors of the last number in the iteration x -> A003961(x) (starting from x=n) for which that count (A341620) is nonzero.

The programs for A341624, there is no canonical definition to state claims against.
-/

/-! ## A341624.P7650068627286263039

`A341620(n+1)%A066633(A107707(3*n+1))`
-/

namespace A341624.P7650068627286263039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341620 (n + 1)) (A066633 (A107707 (3 * n + 1)).toNat)

end

end A341624.P7650068627286263039

/-! ## A341624.P1154632216255537425

`A341620(n+1)%A007953(A270044(n+9))`
-/

namespace A341624.P1154632216255537425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341620 (n + 1)) (A007953 (A270044 (n + 9)).toNat)

end

end A341624.P1154632216255537425

/-! ## A341624.P16286133359786987488

`A341620(n+1)%A124270(A047120(n))`
-/

namespace A341624.P16286133359786987488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341620 (n + 1)) (A124270 (A047120 n).toNat)

end

end A341624.P16286133359786987488

/-!
# A341625: a(n) = 1 if the arithmetic derivative of n is less than n, otherwise 0.

The programs for A341625, the canonical program `A341625.P17225356341816704463` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341625 has offset 0).

The definition of A341625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341625.P5253043442590220899

`char[A083347(n+1)]`
-/

namespace A341625.P5253043442590220899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341625.P5253043442590220899

namespace A341625

/-- `char[A083347(n+1)]` -/
def P5253043442590220899.Spec : Prop :=
  ∀ n, (P5253043442590220899.a n : ℤ) = A341625 n

end A341625

/-! ## A341625.P10573070980990607547

`char[lt[A168036(n), 0]]`
-/

namespace A341625.P10573070980990607547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341625.P10573070980990607547

namespace A341625

/-- `char[lt[A168036(n), 0]]` -/
def P10573070980990607547.Spec : Prop :=
  ∀ n, (P10573070980990607547.a n : ℤ) = A341625 n

end A341625

/-! ## A341625.P9935086379821412046

`char[lt[A003415(n), n]]`
-/

namespace A341625.P9935086379821412046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341625.P9935086379821412046

namespace A341625

/-- `char[lt[A003415(n), n]]` -/
def P9935086379821412046.Spec : Prop :=
  ∀ n, (P9935086379821412046.a n : ℤ) = A341625 n

end A341625

/-! ## A341625.P17225356341816704463

`round(n/(A129283(n)+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A341625

/-- `round(n/(A129283(n)+1))` -/
def P17225356341816704463.Spec : Prop :=
  ∀ n, P17225356341816704463.a n = A341625 n

theorem P17225356341816704463.correct : P17225356341816704463.Spec := by
  intro n
  simp only [A341625]

end A341625

/-! ## A341625.P2649663733038293313

`ceil(A168036(n)/(1-A008593(n)))`
-/

namespace A341625.P2649663733038293313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (1 - A008593 n : ℚ)⌉

end

end A341625.P2649663733038293313

namespace A341625

/-- `ceil(A168036(n)/(1-A008593(n)))` -/
def P2649663733038293313.Spec : Prop :=
  ∀ n, P2649663733038293313.a n = A341625 n

end A341625

/-! ## A341625.P12200269944543839025

`floor(A168036(n)/A001122(n+1))²`
-/

namespace A341625.P12200269944543839025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168036 n : ℚ) / (A001122 (n + 1) : ℚ)⌋ ^ 2

end

end A341625.P12200269944543839025

namespace A341625

/-- `floor(A168036(n)/A001122(n+1))²` -/
def P12200269944543839025.Spec : Prop :=
  ∀ n, P12200269944543839025.a n = A341625 n

end A341625

/-! ## A341625.P4970166756810463889

`floor(A168036(n)/A005385(n+1))²`
-/

namespace A341625.P4970166756810463889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168036 n : ℚ) / (A005385 (n + 1) : ℚ)⌋ ^ 2

end

end A341625.P4970166756810463889

namespace A341625

/-- `floor(A168036(n)/A005385(n+1))²` -/
def P4970166756810463889.Spec : Prop :=
  ∀ n, P4970166756810463889.a n = A341625 n

end A341625

/-! ## A341625.P10066521835869366817

`floor(A168036(n)/A080193(n+1))²`
-/

namespace A341625.P10066521835869366817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168036 n : ℚ) / (A080193 (n + 1) : ℚ)⌋ ^ 2

end

end A341625.P10066521835869366817

namespace A341625

/-- `floor(A168036(n)/A080193(n+1))²` -/
def P10066521835869366817.Spec : Prop :=
  ∀ n, P10066521835869366817.a n = A341625 n

end A341625

/-! ## A341625.P556100500168320076

`ceil((n-A003415(n))/A000384(n+1))`
-/

namespace A341625.P556100500168320076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A003415 n : ℚ) / (A000384 (n + 1) : ℚ)⌉

end

end A341625.P556100500168320076

namespace A341625

/-- `ceil((n-A003415(n))/A000384(n+1))` -/
def P556100500168320076.Spec : Prop :=
  ∀ n, P556100500168320076.a n = A341625 n

end A341625

/-! ## A341625.P5745826610552567666

`ceil((n-A003415(n))/A167614(n+1))`
-/

namespace A341625.P5745826610552567666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A003415 n : ℚ) / (A167614 (n + 1) : ℚ)⌉

end

end A341625.P5745826610552567666

namespace A341625

/-- `ceil((n-A003415(n))/A167614(n+1))` -/
def P5745826610552567666.Spec : Prop :=
  ∀ n, P5745826610552567666.a n = A341625 n

end A341625

/-! ## A341625.P15597073110271368071

`abs(1-ceil(A005408(n)/(A129283(n)+1)))`
-/

namespace A341625.P15597073110271368071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌈(A005408 n : ℚ) / (A129283 n + 1 : ℚ)⌉|

end

end A341625.P15597073110271368071

namespace A341625

/-- `abs(1-ceil(A005408(n)/(A129283(n)+1)))` -/
def P15597073110271368071.Spec : Prop :=
  ∀ n, P15597073110271368071.a n = A341625 n

end A341625

/-! ## A341625.P16007635195789832324

`A025464(A361869(n)²*A361869(n))`
-/

namespace A341625.P16007635195789832324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A361869 n ^ 2 * A361869 n).toNat

end

end A341625.P16007635195789832324

namespace A341625

/-- `A025464(A361869(n)²*A361869(n))` -/
def P16007635195789832324.Spec : Prop :=
  ∀ n, P16007635195789832324.a n = A341625 n

end A341625

/-! ## A341625.P13899417739438404377

`ceil((n-A003415(n))/A004860(n+2))`
-/

namespace A341625.P13899417739438404377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A003415 n : ℚ) / (A004860 (n + 2) : ℚ)⌉

end

end A341625.P13899417739438404377

namespace A341625

/-- `ceil((n-A003415(n))/A004860(n+2))` -/
def P13899417739438404377.Spec : Prop :=
  ∀ n, P13899417739438404377.a n = A341625 n

end A341625

/-! ## A341625.P4535791717304511864

`floor(A168036(n)/A181821(n+1))²`
-/

namespace A341625.P4535791717304511864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168036 n : ℚ) / (A181821 (n + 1) : ℚ)⌋ ^ 2

end

end A341625.P4535791717304511864

namespace A341625

/-- `floor(A168036(n)/A181821(n+1))²` -/
def P4535791717304511864.Spec : Prop :=
  ∀ n, P4535791717304511864.a n = A341625 n

end A341625

/-! ## A341625.P7800866950960507114

`ceil((n-A003415(n))/A245479(n+1))`
-/

namespace A341625.P7800866950960507114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A003415 n : ℚ) / (A245479 (n + 1) : ℚ)⌉

end

end A341625.P7800866950960507114

namespace A341625

/-- `ceil((n-A003415(n))/A245479(n+1))` -/
def P7800866950960507114.Spec : Prop :=
  ∀ n, P7800866950960507114.a n = A341625 n

end A341625

/-!
# A341626: Square array A(n,k) = A341526(A246278(n,k)), read by falling antidiagonals; Numerators of the columnwise first quotients of A341605/A341606.

The programs for A341626, there is no canonical definition to state claims against.
-/

/-! ## A341626.P15978076932677152076

`A341526(A246278(n+2))`
-/

namespace A341626.P15978076932677152076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (A246278 (n + 2)).toNat

end

end A341626.P15978076932677152076

/-! ## A341626.P935927926077655599

`A341526(A246275(n+1)+1)`
-/

namespace A341626.P935927926077655599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (A246275 (n + 1) + 1).toNat

end

end A341626.P935927926077655599

/-! ## A341626.P6561845578022597231

`A341526(A341606(n+1)*A355925(n+1))`
-/

namespace A341626.P6561845578022597231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A341626.P6561845578022597231

/-! ## A341626.P10501601381281806676

`A341528(A246278(n+2))/A342674(n+1)`
-/

namespace A341626.P10501601381281806676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (A246278 (n + 2)).toNat : ℚ) / (A342674 (n + 1) : ℚ)

end

end A341626.P10501601381281806676

/-! ## A341626.P4260640326186882601

`A341528(A246275(n+1)+1)/A342674(n+1)`
-/

namespace A341626.P4260640326186882601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (A246275 (n + 1) + 1).toNat : ℚ) / (A342674 (n + 1) : ℚ)

end

end A341626.P4260640326186882601

/-!
# A341627: Square array A(n,k) = A341527(A246278(n,k)), read by falling antidiagonals; denominators of the columnwise first quotients of A341605/A341606.

The programs for A341627, there is no canonical definition to state claims against.
-/

/-! ## A341627.P17719030429917741440

`A341527(A246278(n+2))`
-/

namespace A341627.P17719030429917741440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (A246278 (n + 2)).toNat

end

end A341627.P17719030429917741440

/-! ## A341627.P7452263473993739590

`A341527(A246275(n+1)+1)`
-/

namespace A341627.P7452263473993739590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (A246275 (n + 1) + 1).toNat

end

end A341627.P7452263473993739590

/-! ## A341627.P3729460299343342933

`A341527(A341606(n+1)*A355925(n+1))`
-/

namespace A341627.P3729460299343342933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A341627.P3729460299343342933

/-! ## A341627.P7950898140869453648

`A341527(A379499(n+1)/A355927(n+1))`
-/

namespace A341627.P7950898140869453648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (SequenceMachineLib.roundAway ((A379499 (n + 1) : ℚ) / (A355927 (n + 1) : ℚ))).toNat

end

end A341627.P7950898140869453648

/-! ## A341627.P843488749828526244

`A341529(A246278(n+2))/A342674(n+1)`
-/

namespace A341627.P843488749828526244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (A246278 (n + 2)).toNat : ℚ) / (A342674 (n + 1) : ℚ)

end

end A341627.P843488749828526244

/-!
# A341628: Square array A(n,k) = A006530(A341527(A246278(n,k))), read by falling antidiagonals.

The programs for A341628, there is no canonical definition to state claims against.
-/

/-! ## A341628.P299239464413579400

`A006530(A341627(n+1))`
-/

namespace A341628.P299239464413579400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341627 (n + 1)).toNat

end

end A341628.P299239464413579400

/-! ## A341628.P13088651523443842764

`A342668(A246278(n+2))`
-/

namespace A341628.P13088651523443842764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342668 (A246278 (n + 2)).toNat

end

end A341628.P13088651523443842764

/-! ## A341628.P4651762543091258697

`A002034(∏{p}[A341627(n+1), #])`
-/

namespace A341628.P4651762543091258697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341628.P4651762543091258697

/-! ## A341628.P13080561416752873738

`A025492(∏{p}[A341627(n+1), #])`
-/

namespace A341628.P13080561416752873738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341628.P13080561416752873738

/-! ## A341628.P3010267507162436995

`A034699(∏{p}[A341627(n+1), #])`
-/

namespace A341628.P3010267507162436995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341628.P3010267507162436995

/-!
# A341629: Characteristic function of A055932: a(n) = 1 if n is a number all of whose prime divisors are consecutive primes starting at 2, otherwise 0.

The programs for A341629, the canonical program `A341629.P10620741224943255080` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341629 has offset 1).

The definition of A341629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341629.P16217917962103144813

`char[A057335(n)-1]`
-/

namespace A341629.P16217917962103144813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341629.P16217917962103144813

namespace A341629

/-- `char[A057335(n)-1]` -/
def P16217917962103144813.Spec : Prop :=
  ∀ n, (P16217917962103144813.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P14023909295083516709

`char[A096903(n)-1]`
-/

namespace A341629.P14023909295083516709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096903 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341629.P14023909295083516709

namespace A341629

/-- `char[A096903(n)-1]` -/
def P14023909295083516709.Spec : Prop :=
  ∀ n, (P14023909295083516709.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P6252494358253463973

`char[A277331(n)-1]`
-/

namespace A341629.P6252494358253463973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341629.P6252494358253463973

namespace A341629

/-- `char[A277331(n)-1]` -/
def P6252494358253463973.Spec : Prop :=
  ∀ n, (P6252494358253463973.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P3217706957668958762

`char[A324939(n)-1]`
-/

namespace A341629.P3217706957668958762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324939 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341629.P3217706957668958762

namespace A341629

/-- `char[A324939(n)-1]` -/
def P3217706957668958762.Spec : Prop :=
  ∀ n, (P3217706957668958762.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P6089870563069574353

`A322585(∏{p}[n+1, #])`
-/

namespace A341629.P6089870563069574353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A341629.P6089870563069574353

namespace A341629

/-- `A322585(∏{p}[n+1, #])` -/
def P6089870563069574353.Spec : Prop :=
  ∀ n, P6089870563069574353.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P6229473019234863795

`A323509(∏{p}[n+1, #])`
-/

namespace A341629.P6229473019234863795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323509 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A341629.P6229473019234863795

namespace A341629

/-- `A323509(∏{p}[n+1, #])` -/
def P6229473019234863795.Spec : Prop :=
  ∀ n, P6229473019234863795.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P4138504365747072585

`A331168(∏{p}[n+1, #])`
-/

namespace A341629.P4138504365747072585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A341629.P4138504365747072585

namespace A341629

/-- `A331168(∏{p}[n+1, #])` -/
def P4138504365747072585.Spec : Prop :=
  ∀ n, P4138504365747072585.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P10620741224943255080

`A331281(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A341629

/-- `A331281(∏{p}[n+1, #])` -/
def P10620741224943255080.Spec : Prop :=
  ∀ n, P10620741224943255080.a n = A341629 (n + 1)

theorem P10620741224943255080.correct : P10620741224943255080.Spec := by
  intro n
  simp only [A341629, Nat.add_sub_cancel]

end A341629

/-! ## A341629.P11481622828586103193

`floor(1/A335286(n+1))`
-/

namespace A341629.P11481622828586103193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A335286 (n + 1) : ℚ)⌋

end

end A341629.P11481622828586103193

namespace A341629

/-- `floor(1/A335286(n+1))` -/
def P11481622828586103193.Spec : Prop :=
  ∀ n, P11481622828586103193.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P13251599538191994577

`char[A055932(n+1)-1]`
-/

namespace A341629.P13251599538191994577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341629.P13251599538191994577

namespace A341629

/-- `char[A055932(n+1)-1]` -/
def P13251599538191994577.Spec : Prop :=
  ∀ n, (P13251599538191994577.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P3069502782258980733

`char[A071364(n+1)-1]`
-/

namespace A341629.P3069502782258980733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341629.P3069502782258980733

namespace A341629

/-- `char[A071364(n+1)-1]` -/
def P3069502782258980733.Spec : Prop :=
  ∀ n, (P3069502782258980733.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P5084768200881043750

`char[lt[A079067(n+1), 1]]`
-/

namespace A341629.P5084768200881043750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341629.P5084768200881043750

namespace A341629

/-- `char[lt[A079067(n+1), 1]]` -/
def P5084768200881043750.Spec : Prop :=
  ∀ n, (P5084768200881043750.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P1251236767367250076

`∏{d}[A336316(n+1), log(#)]`
-/

namespace A341629.P1251236767367250076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A341629.P1251236767367250076

namespace A341629

/-- `∏{d}[A336316(n+1), log(#)]` -/
def P1251236767367250076.Spec : Prop :=
  ∀ n, P1251236767367250076.a n = (A341629 (n + 1) : ℝ)

end A341629

/-! ## A341629.P2875901502663336733

`C(A083259(n+1), n+1)`
-/

namespace A341629.P2875901502663336733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083259 (n + 1)).toNat (n + 1)

end

end A341629.P2875901502663336733

namespace A341629

/-- `C(A083259(n+1), n+1)` -/
def P2875901502663336733.Spec : Prop :=
  ∀ n, (P2875901502663336733.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P3944067508973826662

`∏{e}[A079068(n+1), 1-#]`
-/

namespace A341629.P3944067508973826662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A341629.P3944067508973826662

namespace A341629

/-- `∏{e}[A079068(n+1), 1-#]` -/
def P3944067508973826662.Spec : Prop :=
  ∀ n, P3944067508973826662.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P8825965062742187545

`C(A046523(∏{p}[n+1, #]), ∏{p}[n+1, #])`
-/

namespace A341629.P8825965062742187545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A341629.P8825965062742187545

namespace A341629

/-- `C(A046523(∏{p}[n+1, #]), ∏{p}[n+1, #])` -/
def P8825965062742187545.Spec : Prop :=
  ∀ n, (P8825965062742187545.a n : ℤ) = A341629 (n + 1)

end A341629

/-! ## A341629.P10317187719015839163

`A000007(A079067(n+1))`
-/

namespace A341629.P10317187719015839163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A079067 (n + 1)).toNat

end

end A341629.P10317187719015839163

namespace A341629

/-- `A000007(A079067(n+1))` -/
def P10317187719015839163.Spec : Prop :=
  ∀ n, P10317187719015839163.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P2751801056638940572

`A004530(A079068(n+1))`
-/

namespace A341629.P2751801056638940572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A079068 (n + 1)).toNat

end

end A341629.P2751801056638940572

namespace A341629

/-- `A004530(A079068(n+1))` -/
def P2751801056638940572.Spec : Prop :=
  ∀ n, P2751801056638940572.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P6881519276688979514

`A322585(A007947(n+1))`
-/

namespace A341629.P6881519276688979514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A007947 (n + 1)).toNat

end

end A341629.P6881519276688979514

namespace A341629

/-- `A322585(A007947(n+1))` -/
def P6881519276688979514.Spec : Prop :=
  ∀ n, P6881519276688979514.a n = A341629 (n + 1)

end A341629

/-! ## A341629.P2078657073006741688

`A000007(A336316(n+1))`
-/

namespace A341629.P2078657073006741688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336316 (n + 1)).toNat

end

end A341629.P2078657073006741688

namespace A341629

/-- `A000007(A336316(n+1))` -/
def P2078657073006741688.Spec : Prop :=
  ∀ n, P2078657073006741688.a n = A341629 (n + 1)

end A341629

/-!
# A341630: Number of fixed polyiamonds of area n without holes.

The programs for A341630, there is no canonical definition to state claims against.
-/

/-! ## A341630.P8777821753088870426

`A001420(n+1)-A389190(n+1)`
-/

namespace A341630.P8777821753088870426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001420 (n + 1) - A389190 (n + 1)

end

end A341630.P8777821753088870426

/-! ## A341630.P382181032627520599

`2/(n+1)*A094164(n+1)-A389190(n+1)`
-/

namespace A341630.P382181032627520599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A094164 (n + 1) : ℚ) - (A389190 (n + 1) : ℚ)

end

end A341630.P382181032627520599

/-! ## A341630.P5154386375525408838

`2*A094166(∑[n+1])/(n+1)-A389190(n+1)`
-/

namespace A341630.P5154386375525408838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A094166 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)) - (A389190 (n + 1) : ℚ)

end

end A341630.P5154386375525408838

/-! ## A341630.P10207828888003317418

`2/(n+1)*A094166(record[A286158(n+1)])-A389190(n+1)`
-/

namespace A341630.P10207828888003317418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A094166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) - (A389190 (n + 1) : ℚ)

end

end A341630.P10207828888003317418

/-! ## A341630.P10095133552729104451

`A001420(n+1)-A075224(A082217(n+1))`
-/

namespace A341630.P10095133552729104451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001420 (n + 1) - A075224 (A082217 (n + 1)).toNat

end

end A341630.P10095133552729104451

/-!
# A341632: Primes in A073837.

The programs for A341632, there is no canonical definition to state claims against.
-/

/-! ## A341632.P14599359072252304435

`A073837(A341631(n+1))`
-/

namespace A341632.P14599359072252304435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (A341631 (n + 1)).toNat

end

end A341632.P14599359072252304435

/-! ## A341632.P12078906673386797436

`p?[A073837(n+1)]`
-/

namespace A341632.P12078906673386797436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341632.P12078906673386797436

/-! ## A341632.P4452497236855305190

`p?[A288726(2*n+1)]`
-/

namespace A341632.P4452497236855305190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288726 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341632.P4452497236855305190

/-! ## A341632.P8586059178223877071

`filter[A073837(n+1), A010051(#)]`
-/

namespace A341632.P8586059178223877071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341632.P8586059178223877071

/-! ## A341632.P1264457457963640499

`filter[A073837(n+1), A355937(#)]`
-/

namespace A341632.P1264457457963640499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A341632.P1264457457963640499

/-! ## A341632.P338009797670361325

`filter[A073837(n+1), A302777(#)]`
-/

namespace A341632.P338009797670361325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A341632.P338009797670361325

/-! ## A341632.P4609087493157454160

`filter[A073837(n+1), A323153(#)]`
-/

namespace A341632.P4609087493157454160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A341632.P4609087493157454160

/-! ## A341632.P2636841456944006903

`filter[A073837(n+1), A324823(#)]`
-/

namespace A341632.P2636841456944006903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A341632.P2636841456944006903

/-! ## A341632.P16270886111751667386

`filter[A073837(n+1), A345950(#)]`
-/

namespace A341632.P16270886111751667386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A341632.P16270886111751667386

/-! ## A341632.P13905152188957987544

`filter[A073837(n+1), A353787(#)]`
-/

namespace A341632.P13905152188957987544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A341632.P13905152188957987544

/-!
# A341633: a(n) is the cardinality of the central rank of the free distributive lattice on n generators.

The programs for A341633, there is no canonical definition to state claims against.
-/

/-! ## A341633.P10077607727420771018

`A269699(A079583(n))`
-/

namespace A341633.P10077607727420771018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269699 (A079583 n).toNat

end

end A341633.P10077607727420771018

/-! ## A341633.P17550880568449618940

`A269699(A095151(n)+1)`
-/

namespace A341633.P17550880568449618940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269699 (A095151 n + 1).toNat

end

end A341633.P17550880568449618940

/-! ## A341633.P13380374887031612584

`A269699(A033484(n)-n)`
-/

namespace A341633.P13380374887031612584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269699 (A033484 n - (n : ℤ)).toNat

end

end A341633.P13380374887031612584

/-!
# A341635: a(n) = Sum_{d|n} phi(d) * mu(d) * mu(n/d).

The programs for A341635, the canonical program `A341635.P11073504300629112393` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341635 has offset 1).

The definition of A341635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341635.P4611718797201522668

`∑{d}[n+1, A003557(#)*A046692((n+1)/#)]`
-/

namespace A341635.P4611718797201522668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341635.P4611718797201522668

namespace A341635

/-- `∑{d}[n+1, A003557(#)*A046692((n+1)/#)]` -/
def P4611718797201522668.Spec : Prop :=
  ∀ n, P4611718797201522668.a n = A341635 (n + 1)

end A341635

/-! ## A341635.P9202957782881630485

`∑{d}[n+1, A008683(#)*A097945((n+1)/#)]`
-/

namespace A341635.P9202957782881630485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A097945 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341635.P9202957782881630485

namespace A341635

/-- `∑{d}[n+1, A008683(#)*A097945((n+1)/#)]` -/
def P9202957782881630485.Spec : Prop :=
  ∀ n, P9202957782881630485.a n = A341635 (n + 1)

end A341635

/-! ## A341635.P11073504300629112393

`∑{d}[n+1, A007427(#)*A276833((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A341635

/-- `∑{d}[n+1, A007427(#)*A276833((n+1)/#)]` -/
def P11073504300629112393.Spec : Prop :=
  ∀ n, P11073504300629112393.a n = A341635 (n + 1)

theorem P11073504300629112393.correct : P11073504300629112393.Spec := by
  intro n
  simp only [A341635, Nat.add_sub_cancel]

end A341635

/-! ## A341635.P17807611303369243031

`∑{d}[n+1, A055615(#)*A300717((n+1)/#)]`
-/

namespace A341635.P17807611303369243031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A300717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341635.P17807611303369243031

namespace A341635

/-- `∑{d}[n+1, A055615(#)*A300717((n+1)/#)]` -/
def P17807611303369243031.Spec : Prop :=
  ∀ n, P17807611303369243031.a n = A341635 (n + 1)

end A341635

/-! ## A341635.P7825476749736648348

`∑{d}[n+1, A319993(#)*A327278((n+1)/#)]`
-/

namespace A341635.P7825476749736648348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319993 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341635.P7825476749736648348

namespace A341635

/-- `∑{d}[n+1, A319993(#)*A327278((n+1)/#)]` -/
def P7825476749736648348.Spec : Prop :=
  ∀ n, P7825476749736648348.a n = A341635 (n + 1)

end A341635

/-!
# A341636: a(n) = Sum_{d|n} phi(d) * tau(d) * tau(n/d).

The programs for A341636, the canonical program `A341636.P2295451022923596252` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341636 has offset 1).

The definition of A341636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341636.P11939849554841204983

`∑{d}[n+1, A062949(#)]`
-/

namespace A341636.P11939849554841204983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062949 d

end

end A341636.P11939849554841204983

namespace A341636

/-- `∑{d}[n+1, A062949(#)]` -/
def P11939849554841204983.Spec : Prop :=
  ∀ n, P11939849554841204983.a n = A341636 (n + 1)

end A341636

/-! ## A341636.P2295451022923596252

`∑{d}[n+1, #*A333645((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A341636

/-- `∑{d}[n+1, #*A333645((n+1)/#)]` -/
def P2295451022923596252.Spec : Prop :=
  ∀ n, P2295451022923596252.a n = A341636 (n + 1)

theorem P2295451022923596252.correct : P2295451022923596252.Spec := by
  intro n
  simp only [A341636, Nat.add_sub_cancel]

end A341636

/-! ## A341636.P14862125366170563441

`∑{d}[n+1, A000203(#)*A047994((n+1)/#)]`
-/

namespace A341636.P14862125366170563441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P14862125366170563441

namespace A341636

/-- `∑{d}[n+1, A000203(#)*A047994((n+1)/#)]` -/
def P14862125366170563441.Spec : Prop :=
  ∀ n, P14862125366170563441.a n = A341636 (n + 1)

end A341636

/-! ## A341636.P8819688570190978226

`∑{d}[n+1, A000005(#)*A062355((n+1)/#)]`
-/

namespace A341636.P8819688570190978226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A062355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P8819688570190978226

namespace A341636

/-- `∑{d}[n+1, A000005(#)*A062355((n+1)/#)]` -/
def P8819688570190978226.Spec : Prop :=
  ∀ n, P8819688570190978226.a n = A341636 (n + 1)

end A341636

/-! ## A341636.P18363606356927277349

`∑{d}[n+1, A007425(#)*A359954((n+1)/#)]`
-/

namespace A341636.P18363606356927277349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A359954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P18363606356927277349

namespace A341636

/-- `∑{d}[n+1, A007425(#)*A359954((n+1)/#)]` -/
def P18363606356927277349.Spec : Prop :=
  ∀ n, P18363606356927277349.a n = A341636 (n + 1)

end A341636

/-! ## A341636.P9529917192542663588

`∑{d}[n+1, A038040(#)*A396336((n+1)/#)]`
-/

namespace A341636.P9529917192542663588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A396336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P9529917192542663588

namespace A341636

/-- `∑{d}[n+1, A038040(#)*A396336((n+1)/#)]` -/
def P9529917192542663588.Spec : Prop :=
  ∀ n, P9529917192542663588.a n = A341636 (n + 1)

end A341636

/-!
# A341637: a(n) = Sum_{d|n} phi(d) * sigma(d) * sigma(n/d).

The programs for A341637, the canonical program `A341637.P17841747577696117081` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341637 has offset 1).

The definition of A341637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341637.P17841747577696117081

`∑{d}[n+1, #*A062952((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A341637

/-- `∑{d}[n+1, #*A062952((n+1)/#)]` -/
def P17841747577696117081.Spec : Prop :=
  ∀ n, P17841747577696117081.a n = A341637 (n + 1)

theorem P17841747577696117081.correct : P17841747577696117081.Spec := by
  intro n
  simp only [A341637, Nat.add_sub_cancel]

end A341637

/-! ## A341637.P219387249844898156

`∑{d}[n+1, A000203(#)*A062354((n+1)/#)]`
-/

namespace A341637.P219387249844898156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A062354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341637.P219387249844898156

namespace A341637

/-- `∑{d}[n+1, A000203(#)*A062354((n+1)/#)]` -/
def P219387249844898156.Spec : Prop :=
  ∀ n, P219387249844898156.a n = A341637 (n + 1)

end A341637

/-! ## A341637.P3180739769056061375

`∑{d}[n+1, A000010(#)*A341638((n+1)/#)]`
-/

namespace A341637.P3180739769056061375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A341638 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341637.P3180739769056061375

namespace A341637

/-- `∑{d}[n+1, A000010(#)*A341638((n+1)/#)]` -/
def P3180739769056061375.Spec : Prop :=
  ∀ n, P3180739769056061375.a n = A341637 (n + 1)

end A341637

/-! ## A341637.P11461127970252482400

`∑{d}[n+1, A007429(#)*A386624((n+1)/#)]`
-/

namespace A341637.P11461127970252482400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A386624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341637.P11461127970252482400

namespace A341637

/-- `∑{d}[n+1, A007429(#)*A386624((n+1)/#)]` -/
def P11461127970252482400.Spec : Prop :=
  ∀ n, P11461127970252482400.a n = A341637 (n + 1)

end A341637

/-!
# A341638: a(n) = Sum_{d|n} phi(d) * sigma(d) * tau(n/d).

The programs for A341638, the canonical program `A341638.P13451584089869912517` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341638 has offset 1).

The definition of A341638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341638.P13451584089869912517

`∑{d}[n+1, A062952(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A341638

/-- `∑{d}[n+1, A062952(#)]` -/
def P13451584089869912517.Spec : Prop :=
  ∀ n, P13451584089869912517.a n = A341638 (n + 1)

theorem P13451584089869912517.correct : P13451584089869912517.Spec := by
  intro n
  simp only [A341638, Nat.add_sub_cancel]

end A341638

/-! ## A341638.P11070982982079254768

`∑{d}[n+1, A000005(#)*A062354((n+1)/#)]`
-/

namespace A341638.P11070982982079254768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A062354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341638.P11070982982079254768

namespace A341638

/-- `∑{d}[n+1, A000005(#)*A062354((n+1)/#)]` -/
def P11070982982079254768.Spec : Prop :=
  ∀ n, P11070982982079254768.a n = A341638 (n + 1)

end A341638

/-! ## A341638.P355525066017070898

`∑{d}[n+1, A023900(#)*A341637((n+1)/#)]`
-/

namespace A341638.P355525066017070898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A341637 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341638.P355525066017070898

namespace A341638

/-- `∑{d}[n+1, A023900(#)*A341637((n+1)/#)]` -/
def P355525066017070898.Spec : Prop :=
  ∀ n, P355525066017070898.a n = A341638 (n + 1)

end A341638

/-! ## A341638.P13603013013004572470

`∑{d}[n+1, A007425(#)*A386624((n+1)/#)]`
-/

namespace A341638.P13603013013004572470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A386624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341638.P13603013013004572470

namespace A341638

/-- `∑{d}[n+1, A007425(#)*A386624((n+1)/#)]` -/
def P13603013013004572470.Spec : Prop :=
  ∀ n, P13603013013004572470.a n = A341638 (n + 1)

end A341638

/-!
# A341640: a(n) is the first prime p such that each of the first n primes divides at least one of the composites between p and the next prime, but prime(n+1) does not divide any of these.

The programs for A341640, there is no canonical definition to state claims against.
-/

/-! ## A341640.P8635662360675593179

`p?[∑[A294806(ceil(n/2))]]`
-/

namespace A341640.P8635662360675593179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 ⌈(n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341640.P8635662360675593179

/-! ## A341640.P13013333355482282841

`p?[A072297(n+1)+comp[2*n+5]+1]`
-/

namespace A341640.P13013333355482282841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072297 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341640.P13013333355482282841

/-! ## A341640.P14571916348259310430

`A216496(A007886(n))`
-/

namespace A341640.P14571916348259310430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216496 (A007886 n).toNat

end

end A341640.P14571916348259310430

/-! ## A341640.P15961559611788143145

`A031402(A096305(n+2))`
-/

namespace A341640.P15961559611788143145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031402 (A096305 (n + 2)).toNat

end

end A341640.P15961559611788143145

/-!
# A341642: Number of strictly superior prime divisors of n.

The programs for A341642, the canonical program `A341642.P2700734323703374879` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341642 has offset 1).

The definition of A341642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341642.P10684686852347948924

`∑{p}[n+1, ceil((#-sqrt(n+1))/n)]`
-/

namespace A341642.P10684686852347948924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈((p : ℝ) - Real.sqrt (n + 1 : ℝ)) / (n : ℝ)⌉

end

end A341642.P10684686852347948924

namespace A341642

/-- `∑{p}[n+1, ceil((#-sqrt(n+1))/n)]` -/
def P10684686852347948924.Spec : Prop :=
  ∀ n, P10684686852347948924.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P8875248453734911556

`char[A064052(n+1)-1]`
-/

namespace A341642.P8875248453734911556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341642.P8875248453734911556

namespace A341642

/-- `char[A064052(n+1)-1]` -/
def P8875248453734911556.Spec : Prop :=
  ∀ n, (P8875248453734911556.a n : ℤ) = A341642 (n + 1)

end A341642

/-! ## A341642.P17566663795030518934

`char[lt[n+1, A006530(n+1)²]]`
-/

namespace A341642.P17566663795030518934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A341642.P17566663795030518934

namespace A341642

/-- `char[lt[n+1, A006530(n+1)²]]` -/
def P17566663795030518934.Spec : Prop :=
  ∀ n, (P17566663795030518934.a n : ℤ) = A341642 (n + 1)

end A341642

/-! ## A341642.P18414294959652163230

`A010051(A140271(n+1))`
-/

namespace A341642.P18414294959652163230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A140271 (n + 1)).toNat

end

end A341642.P18414294959652163230

namespace A341642

/-- `A010051(A140271(n+1))` -/
def P18414294959652163230.Spec : Prop :=
  ∀ n, P18414294959652163230.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P15414643951909955572

`A010051(A354933(n+1))`
-/

namespace A341642.P15414643951909955572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A354933 (n + 1)).toNat

end

end A341642.P15414643951909955572

namespace A341642

/-- `A010051(A354933(n+1))` -/
def P15414643951909955572.Spec : Prop :=
  ∀ n, P15414643951909955572.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P2700734323703374879

`A267866(n)*A341591(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A341642

/-- `A267866(n)*A341591(n+1)` -/
def P2700734323703374879.Spec : Prop :=
  ∀ n, P2700734323703374879.a n = A341642 (n + 1)

theorem P2700734323703374879.correct : P2700734323703374879.Spec := by
  intro n
  simp only [A341642, Nat.add_sub_cancel]

end A341642

/-! ## A341642.P11090008171566428511

`and(A316355(n), A341591(n+1))`
-/

namespace A341642.P11090008171566428511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316355 n) (A341591 (n + 1))

end

end A341642.P11090008171566428511

namespace A341642

/-- `and(A316355(n), A341591(n+1))` -/
def P11090008171566428511.Spec : Prop :=
  ∀ n, P11090008171566428511.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P8292999589292680376

`and(A325765(n), A341591(n+1))`
-/

namespace A341642.P8292999589292680376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325765 n) (A341591 (n + 1))

end

end A341642.P8292999589292680376

namespace A341642

/-- `and(A325765(n), A341591(n+1))` -/
def P8292999589292680376.Spec : Prop :=
  ∀ n, P8292999589292680376.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P6324902363700858044

`A001221(n+1)-A063962(n+1)`
-/

namespace A341642.P6324902363700858044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A063962 (n + 1)

end

end A341642.P6324902363700858044

namespace A341642

/-- `A001221(n+1)-A063962(n+1)` -/
def P6324902363700858044.Spec : Prop :=
  ∀ n, P6324902363700858044.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P813053032739252757

`A056169(n+1)-A262262(n+1)`
-/

namespace A341642.P813053032739252757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A262262 (n + 1)

end

end A341642.P813053032739252757

namespace A341642

/-- `A056169(n+1)-A262262(n+1)` -/
def P813053032739252757.Spec : Prop :=
  ∀ n, P813053032739252757.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P12313173002668598831

`A049240(n+1)*A341591(n+1)`
-/

namespace A341642.P12313173002668598831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A341591 (n + 1)

end

end A341642.P12313173002668598831

namespace A341642

/-- `A049240(n+1)*A341591(n+1)` -/
def P12313173002668598831.Spec : Prop :=
  ∀ n, P12313173002668598831.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P16115349941784322846

`A132350(n+1)*A341591(n+1)`
-/

namespace A341642.P16115349941784322846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1) * A341591 (n + 1)

end

end A341642.P16115349941784322846

namespace A341642

/-- `A132350(n+1)*A341591(n+1)` -/
def P16115349941784322846.Spec : Prop :=
  ∀ n, P16115349941784322846.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P327161667586548006

`A175087(n+1)*A341591(n+1)`
-/

namespace A341642.P327161667586548006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1) * A341591 (n + 1)

end

end A341642.P327161667586548006

namespace A341642

/-- `A175087(n+1)*A341591(n+1)` -/
def P327161667586548006.Spec : Prop :=
  ∀ n, P327161667586548006.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P712188539087052991

`and(A007445(n+1), A341591(n+1))`
-/

namespace A341642.P712188539087052991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007445 (n + 1)) (A341591 (n + 1))

end

end A341642.P712188539087052991

namespace A341642

/-- `and(A007445(n+1), A341591(n+1))` -/
def P712188539087052991.Spec : Prop :=
  ∀ n, P712188539087052991.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P15638176227517431159

`and(A023049(n+1), A341591(n+1))`
-/

namespace A341642.P15638176227517431159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023049 (n + 1)) (A341591 (n + 1))

end

end A341642.P15638176227517431159

namespace A341642

/-- `and(A023049(n+1), A341591(n+1))` -/
def P15638176227517431159.Spec : Prop :=
  ∀ n, P15638176227517431159.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P5060775133570398442

`and(A037852(n+1), A341591(n+1))`
-/

namespace A341642.P5060775133570398442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037852 (n + 1)) (A341591 (n + 1))

end

end A341642.P5060775133570398442

namespace A341642

/-- `and(A037852(n+1), A341591(n+1))` -/
def P5060775133570398442.Spec : Prop :=
  ∀ n, P5060775133570398442.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P11641469818872194852

`and(A037916(n+1), A341591(n+1))`
-/

namespace A341642.P11641469818872194852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037916 (n + 1)) (A341591 (n + 1))

end

end A341642.P11641469818872194852

namespace A341642

/-- `and(A037916(n+1), A341591(n+1))` -/
def P11641469818872194852.Spec : Prop :=
  ∀ n, P11641469818872194852.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P2533699529563307605

`and(A051904(n+1), A341591(n+1))`
-/

namespace A341642.P2533699529563307605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051904 (n + 1)) (A341591 (n + 1))

end

end A341642.P2533699529563307605

namespace A341642

/-- `and(A051904(n+1), A341591(n+1))` -/
def P2533699529563307605.Spec : Prop :=
  ∀ n, P2533699529563307605.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P5569026722493182043

`and(A052409(n+1), A341591(n+1))`
-/

namespace A341642.P5569026722493182043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052409 (n + 1)) (A341591 (n + 1))

end

end A341642.P5569026722493182043

namespace A341642

/-- `and(A052409(n+1), A341591(n+1))` -/
def P5569026722493182043.Spec : Prop :=
  ∀ n, P5569026722493182043.a n = A341642 (n + 1)

end A341642

/-! ## A341642.P15246206256336098408

`and(A055205(n+1), A341591(n+1))`
-/

namespace A341642.P15246206256336098408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055205 (n + 1)) (A341591 (n + 1))

end

end A341642.P15246206256336098408

namespace A341642

/-- `and(A055205(n+1), A341591(n+1))` -/
def P15246206256336098408.Spec : Prop :=
  ∀ n, P15246206256336098408.a n = A341642 (n + 1)

end A341642

/-!
# A341643: The unique strictly superior prime divisor of each number that has one.

The programs for A341643, the canonical program `A341643.P5639027929632921624` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341643 has offset 1).

The definition of A341643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341643.P4099912160218098384

`p?[A354933(n+1)]`
-/

namespace A341643.P4099912160218098384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341643.P4099912160218098384

namespace A341643

/-- `p?[A354933(n+1)]` -/
def P4099912160218098384.Spec : Prop :=
  ∀ n, P4099912160218098384.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P5639027929632921624

`A006530(A064052(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A341643

/-- `A006530(A064052(n+1))` -/
def P5639027929632921624.Spec : Prop :=
  ∀ n, P5639027929632921624.a n = A341643 (n + 1)

theorem P5639027929632921624.correct : P5639027929632921624.Spec := by
  intro n
  simp only [A341643, Nat.add_sub_cancel]

end A341643

/-! ## A341643.P9671486447942019408

`filter[A354933(n+2), A010051(#)]`
-/

namespace A341643.P9671486447942019408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341643.P9671486447942019408

namespace A341643

/-- `filter[A354933(n+2), A010051(#)]` -/
def P9671486447942019408.Spec : Prop :=
  ∀ n, P9671486447942019408.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P12636905978598891512

`filter[A354933(n+2), A080339(#)]`
-/

namespace A341643.P12636905978598891512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A341643.P12636905978598891512

namespace A341643

/-- `filter[A354933(n+2), A080339(#)]` -/
def P12636905978598891512.Spec : Prop :=
  ∀ n, P12636905978598891512.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P653100579802617836

`p?[A140271(n+1)]`
-/

namespace A341643.P653100579802617836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341643.P653100579802617836

namespace A341643

/-- `p?[A140271(n+1)]` -/
def P653100579802617836.Spec : Prop :=
  ∀ n, P653100579802617836.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P10754793120698111661

`filter[A140271(n+1), A010051(#)]`
-/

namespace A341643.P10754793120698111661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341643.P10754793120698111661

namespace A341643

/-- `filter[A140271(n+1), A010051(#)]` -/
def P10754793120698111661.Spec : Prop :=
  ∀ n, P10754793120698111661.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P10543973430451373662

`filter[A140271(n+2), A080339(#)]`
-/

namespace A341643.P10543973430451373662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A341643.P10543973430451373662

namespace A341643

/-- `filter[A140271(n+2), A080339(#)]` -/
def P10543973430451373662.Spec : Prop :=
  ∀ n, P10543973430451373662.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P3090132673305101445

`A140271(A064052(2*n+1-n))`
-/

namespace A341643.P3090132673305101445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A064052 (2 * n + 1 - n)).toNat

end

end A341643.P3090132673305101445

namespace A341643

/-- `A140271(A064052(2*n+1-n))` -/
def P3090132673305101445.Spec : Prop :=
  ∀ n, P3090132673305101445.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P17064374924180697696

`p?[A377488(n+1)]`
-/

namespace A341643.P17064374924180697696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341643.P17064374924180697696

namespace A341643

/-- `p?[A377488(n+1)]` -/
def P17064374924180697696.Spec : Prop :=
  ∀ n, P17064374924180697696.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P6376015503198186288

`filter[A377488(n+1), A010051(#)]`
-/

namespace A341643.P6376015503198186288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341643.P6376015503198186288

namespace A341643

/-- `filter[A377488(n+1), A010051(#)]` -/
def P6376015503198186288.Spec : Prop :=
  ∀ n, P6376015503198186288.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P224329882403037361

`filter[A377488(n+1), A252233(#)]`
-/

namespace A341643.P224329882403037361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A341643.P224329882403037361

namespace A341643

/-- `filter[A377488(n+1), A252233(#)]` -/
def P224329882403037361.Spec : Prop :=
  ∀ n, P224329882403037361.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P3005709443956340987

`filter[A377488(n+1), A296211(#)]`
-/

namespace A341643.P3005709443956340987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A341643.P3005709443956340987

namespace A341643

/-- `filter[A377488(n+1), A296211(#)]` -/
def P3005709443956340987.Spec : Prop :=
  ∀ n, P3005709443956340987.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P12186200143466788182

`filter[A377488(n+1), A323153(#)]`
-/

namespace A341643.P12186200143466788182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A341643.P12186200143466788182

namespace A341643

/-- `filter[A377488(n+1), A323153(#)]` -/
def P12186200143466788182.Spec : Prop :=
  ∀ n, P12186200143466788182.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P15382704354357863944

`filter[A377488(n+1), A324823(#)]`
-/

namespace A341643.P15382704354357863944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A341643.P15382704354357863944

namespace A341643

/-- `filter[A377488(n+1), A324823(#)]` -/
def P15382704354357863944.Spec : Prop :=
  ∀ n, P15382704354357863944.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P17675591840011853624

`filter[A377488(n+1), A341642(#)]`
-/

namespace A341643.P17675591840011853624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A341643.P17675591840011853624

namespace A341643

/-- `filter[A377488(n+1), A341642(#)]` -/
def P17675591840011853624.Spec : Prop :=
  ∀ n, P17675591840011853624.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P164082709319493470

`filter[A377488(n+1), A353471(#)]`
-/

namespace A341643.P164082709319493470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A341643.P164082709319493470

namespace A341643

/-- `filter[A377488(n+1), A353471(#)]` -/
def P164082709319493470.Spec : Prop :=
  ∀ n, P164082709319493470.a n = A341643 (n + 1)

end A341643

/-! ## A341643.P1135956852730648650

`filter[A377488(n+1), A353499(#)]`
-/

namespace A341643.P1135956852730648650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A341643.P1135956852730648650

namespace A341643

/-- `filter[A377488(n+1), A353499(#)]` -/
def P1135956852730648650.Spec : Prop :=
  ∀ n, P1135956852730648650.a n = A341643 (n + 1)

end A341643

/-!
# A341644: Number of strictly superior prime-power divisors of n.

The programs for A341644, the canonical program `A341644.P8546407979308305030` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341644 has offset 1).

The definition of A341644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341644.P15935878844833133795

`∑{e}[A072505(n+1), #]`
-/

namespace A341644.P15935878844833133795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A341644.P15935878844833133795

namespace A341644

/-- `∑{e}[A072505(n+1), #]` -/
def P15935878844833133795.Spec : Prop :=
  ∀ n, (P15935878844833133795.a n : ℤ) = A341644 (n + 1)

end A341644

/-! ## A341644.P8546407979308305030

`∑{e}[n+1, #]-A333750(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A341644

/-- `∑{e}[n+1, #]-A333750(n+1)` -/
def P8546407979308305030.Spec : Prop :=
  ∀ n, P8546407979308305030.a n = A341644 (n + 1)

theorem P8546407979308305030.correct : P8546407979308305030.Spec := by
  intro n
  simp only [A341644, Nat.add_sub_cancel]

end A341644

/-! ## A341644.P11622505902602238633

`A001222(A072505(n+1))`
-/

namespace A341644.P11622505902602238633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072505 (n + 1)).toNat

end

end A341644.P11622505902602238633

namespace A341644

/-- `A001222(A072505(n+1))` -/
def P11622505902602238633.Spec : Prop :=
  ∀ n, P11622505902602238633.a n = A341644 (n + 1)

end A341644

/-! ## A341644.P18111269062867176306

`∑{d}[A072505(n+1), A001221(#)]`
-/

namespace A341644.P18111269062867176306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A341644.P18111269062867176306

namespace A341644

/-- `∑{d}[A072505(n+1), A001221(#)]` -/
def P18111269062867176306.Spec : Prop :=
  ∀ n, P18111269062867176306.a n = A341644 (n + 1)

end A341644

/-! ## A341644.P11920107880112200818

`Δ[A022559(n)]-A333750(n+1)`
-/

namespace A341644.P11920107880112200818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333750 (n + 1)

end

end A341644.P11920107880112200818

namespace A341644

/-- `Δ[A022559(n)]-A333750(n+1)` -/
def P11920107880112200818.Spec : Prop :=
  ∀ n, P11920107880112200818.a n = A341644 (n + 1)

end A341644

/-! ## A341644.P8960607004653952636

`A001222(n+1)-A333750(n+1)`
-/

namespace A341644.P8960607004653952636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A333750 (n + 1)

end

end A341644.P8960607004653952636

namespace A341644

/-- `A001222(n+1)-A333750(n+1)` -/
def P8960607004653952636.Spec : Prop :=
  ∀ n, P8960607004653952636.a n = A341644 (n + 1)

end A341644

/-! ## A341644.P16388133376886552827

`A001222((n+1)/A072504(n+1))`
-/

namespace A341644.P16388133376886552827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072504 (n + 1) : ℚ))).toNat

end

end A341644.P16388133376886552827

namespace A341644

/-- `A001222((n+1)/A072504(n+1))` -/
def P16388133376886552827.Spec : Prop :=
  ∀ n, P16388133376886552827.a n = A341644 (n + 1)

end A341644

/-! ## A341644.P13437202659336793436

`A001222(n+1)-A001222(A072504(n+1))`
-/

namespace A341644.P13437202659336793436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A072504 (n + 1)).toNat

end

end A341644.P13437202659336793436

namespace A341644

/-- `A001222(n+1)-A001222(A072504(n+1))` -/
def P13437202659336793436.Spec : Prop :=
  ∀ n, P13437202659336793436.a n = A341644 (n + 1)

end A341644

/-! ## A341644.P15874735526145607342

`A333750(A072505(n+1)²)`
-/

namespace A341644.P15874735526145607342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A072505 (n + 1) ^ 2).toNat

end

end A341644.P15874735526145607342

namespace A341644

/-- `A333750(A072505(n+1)²)` -/
def P15874735526145607342.Spec : Prop :=
  ∀ n, P15874735526145607342.a n = A341644 (n + 1)

end A341644

/-!
# A341645: Numbers without a strictly superior squarefree divisor.

The programs for A341645, there is no canonical definition to state claims against.
-/

/-! ## A341645.P10767142259621132010

`∪[(n+1)², A059172(n+1)]`
-/

namespace A341645.P10767142259621132010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P10767142259621132010

/-! ## A341645.P7030998382569367269

`∪[A059172(n+1), A062503(n+1)]`
-/

namespace A341645.P7030998382569367269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P7030998382569367269

/-! ## A341645.P14432169886613370934

`∪[A059172(n+1), A076292(n+1)]`
-/

namespace A341645.P14432169886613370934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P14432169886613370934

/-! ## A341645.P16220933928653385815

`∪[A059172(n+1), A182120(n+1)]`
-/

namespace A341645.P16220933928653385815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P16220933928653385815

/-! ## A341645.P287315190192526459

`∪[A059172(n+1), A266918(n+1)]`
-/

namespace A341645.P287315190192526459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P287315190192526459

/-! ## A341645.P6381264055470768945

`∪[A001694(n+1), A366250(n+1)]`
-/

namespace A341645.P6381264055470768945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P6381264055470768945

/-! ## A341645.P2941590622035601178

`∪[A001597(n+1), A370266(n+1)]`
-/

namespace A341645.P2941590622035601178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P2941590622035601178

/-! ## A341645.P2922820082980978816

`∪[A001694(n+1), A370266(n+1)]`
-/

namespace A341645.P2922820082980978816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P2922820082980978816

/-! ## A341645.P9461206981227123235

`∪[A059172(n+1), A317102(n+1)]`
-/

namespace A341645.P9461206981227123235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P9461206981227123235

/-! ## A341645.P13524882542901378598

`∪[A001597(n+1), A389528(n+1)]`
-/

namespace A341645.P13524882542901378598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P13524882542901378598

/-! ## A341645.P14831048040265068691

`∪[A001694(n+1), A389528(n+1)]`
-/

namespace A341645.P14831048040265068691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P14831048040265068691

/-! ## A341645.P17697414199024528480

`∪[A001597(n+1), A389752(n+1)]`
-/

namespace A341645.P17697414199024528480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P17697414199024528480

/-! ## A341645.P16459995923045935421

`∪[A001597(n+1), A389753(n+1)]`
-/

namespace A341645.P16459995923045935421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P16459995923045935421

/-! ## A341645.P13457926960138105917

`∪[A001694(n+1), A389752(n+1)]`
-/

namespace A341645.P13457926960138105917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P13457926960138105917

/-! ## A341645.P9522225753334098022

`∪[A001694(n+1), A389753(n+1)]`
-/

namespace A341645.P9522225753334098022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P9522225753334098022

/-! ## A341645.P10325466441241513706

`∪[A025475(n+1), A370266(n+1)]`
-/

namespace A341645.P10325466441241513706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P10325466441241513706

/-! ## A341645.P1655807952928000350

`∪[A059172(n+1), A338325(n+1)]`
-/

namespace A341645.P1655807952928000350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P1655807952928000350

/-! ## A341645.P4451368733469095454

`∪[A059172(n+1), A339497(n+1)]`
-/

namespace A341645.P4451368733469095454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P4451368733469095454

/-! ## A341645.P3143169805120596133

`∪[A059172(n+1), A350014(n+1)]`
-/

namespace A341645.P3143169805120596133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P3143169805120596133

/-! ## A341645.P2545018909759366103

`∪[A059172(n+1), A353485(n+1)]`
-/

namespace A341645.P2545018909759366103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341645.P2545018909759366103

/-!
# A341646: Numbers with a strictly superior squarefree divisor.

The programs for A341646, the canonical program `A341646.P6426192055247341292` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341646 has offset 1).

The definition of A341646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341646.P18347174865861762541

`comp[∪[A059172(n+1), n²]]`
-/

namespace A341646.P18347174865861762541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A341646.P18347174865861762541

namespace A341646

/-- `comp[∪[A059172(n+1), n²]]` -/
def P18347174865861762541.Spec : Prop :=
  ∀ n, (P18347174865861762541.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P4677329146808567433

`filter[A390538(n+1), A049240(#)]`
-/

namespace A341646.P4677329146808567433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A341646.P4677329146808567433

namespace A341646

/-- `filter[A390538(n+1), A049240(#)]` -/
def P4677329146808567433.Spec : Prop :=
  ∀ n, P4677329146808567433.a n = A341646 (n + 1)

end A341646

/-! ## A341646.P1253305847979659777

`∩[A052485(n+1), A390538(n+1)]`
-/

namespace A341646.P1253305847979659777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341646.P1253305847979659777

namespace A341646

/-- `∩[A052485(n+1), A390538(n+1)]` -/
def P1253305847979659777.Spec : Prop :=
  ∀ n, (P1253305847979659777.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P5998732331313352211

`∩[A007916(n+1), A390538(n+1)]`
-/

namespace A341646.P5998732331313352211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341646.P5998732331313352211

namespace A341646

/-- `∩[A007916(n+1), A390538(n+1)]` -/
def P5998732331313352211.Spec : Prop :=
  ∀ n, (P5998732331313352211.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P17763434094310485422

`∩[A259444(n+1), A390538(n+1)]`
-/

namespace A341646.P17763434094310485422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341646.P17763434094310485422

namespace A341646

/-- `∩[A259444(n+1), A390538(n+1)]` -/
def P17763434094310485422.Spec : Prop :=
  ∀ n, (P17763434094310485422.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P8797472276920264184

`∩[A094784(n+1), A390538(n+1)]`
-/

namespace A341646.P8797472276920264184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341646.P8797472276920264184

namespace A341646

/-- `∩[A094784(n+1), A390538(n+1)]` -/
def P8797472276920264184.Spec : Prop :=
  ∀ n, (P8797472276920264184.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P4822335829579539054

`∩[A000037(n+1), A390538(n+1)]`
-/

namespace A341646.P4822335829579539054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341646.P4822335829579539054

namespace A341646

/-- `∩[A000037(n+1), A390538(n+1)]` -/
def P4822335829579539054.Spec : Prop :=
  ∀ n, (P4822335829579539054.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P14121000895714018768

`∩[A386267(n+1), A390538(n+1)]`
-/

namespace A341646.P14121000895714018768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341646.P14121000895714018768

namespace A341646

/-- `∩[A386267(n+1), A390538(n+1)]` -/
def P14121000895714018768.Spec : Prop :=
  ∀ n, (P14121000895714018768.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P6426192055247341292

`lt[n+2, ∏{p}[n+2, #²]]+2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341646

/-- `lt[n+2, ∏{p}[n+2, #²]]+2` -/
def P6426192055247341292.Spec : Prop :=
  ∀ n, (P6426192055247341292.a n : ℤ) = A341646 (n + 1)

theorem P6426192055247341292.correct : P6426192055247341292.Spec := by
  intro n
  simp only [A341646, Nat.add_sub_cancel]

end A341646

/-! ## A341646.P17694891268452746470

`A020725(lt[n+2, A007947(n+1)²])`
-/

namespace A341646.P17694891268452746470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341646.P17694891268452746470

namespace A341646

/-- `A020725(lt[n+2, A007947(n+1)²])` -/
def P17694891268452746470.Spec : Prop :=
  ∀ n, P17694891268452746470.a n = A341646 (n + 1)

end A341646

/-! ## A341646.P7142496604523780948

`lt[n+1, ∏{p}[n, #²]]`
-/

namespace A341646.P7142496604523780948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341646.P7142496604523780948

namespace A341646

/-- `lt[n+1, ∏{p}[n, #²]]` -/
def P7142496604523780948.Spec : Prop :=
  ∀ n, (P7142496604523780948.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P13314759299411465688

`lt[1, ∏{p}[n, #²]-n]`
-/

namespace A341646.P13314759299411465688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p ^ 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341646.P13314759299411465688

namespace A341646

/-- `lt[1, ∏{p}[n, #²]-n]` -/
def P13314759299411465688.Spec : Prop :=
  ∀ n, (P13314759299411465688.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P7422355535939879611

`lt[(n/∏{p}[n, #])², n]`
-/

namespace A341646.P7422355535939879611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A341646.P7422355535939879611

namespace A341646

/-- `lt[(n/∏{p}[n, #])², n]` -/
def P7422355535939879611.Spec : Prop :=
  ∀ n, (P7422355535939879611.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P17117903342388856130

`lt[n+2, A078615(n+1)]+1`
-/

namespace A341646.P17117903342388856130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341646.P17117903342388856130

namespace A341646

/-- `lt[n+2, A078615(n+1)]+1` -/
def P17117903342388856130.Spec : Prop :=
  ∀ n, (P17117903342388856130.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P15096598193944198739

`lt[A003557(n+1)², n+1]+1`
-/

namespace A341646.P15096598193944198739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A341646.P15096598193944198739

namespace A341646

/-- `lt[A003557(n+1)², n+1]+1` -/
def P15096598193944198739.Spec : Prop :=
  ∀ n, (P15096598193944198739.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P6083768293883386610

`lt[A003557(A028310(n))², n]`
-/

namespace A341646.P6083768293883386610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A341646.P6083768293883386610

namespace A341646

/-- `lt[A003557(A028310(n))², n]` -/
def P6083768293883386610.Spec : Prop :=
  ∀ n, (P6083768293883386610.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P18259122694785237643

`filter[A390538(n+1), A267635(#)]`
-/

namespace A341646.P18259122694785237643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A341646.P18259122694785237643

namespace A341646

/-- `filter[A390538(n+1), A267635(#)]` -/
def P18259122694785237643.Spec : Prop :=
  ∀ n, P18259122694785237643.a n = A341646 (n + 1)

end A341646

/-! ## A341646.P11759881954221848513

`filter[A390538(n+2), A132350(#)]`
-/

namespace A341646.P11759881954221848513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A341646.P11759881954221848513

namespace A341646

/-- `filter[A390538(n+2), A132350(#)]` -/
def P11759881954221848513.Spec : Prop :=
  ∀ n, P11759881954221848513.a n = A341646 (n + 1)

end A341646

/-! ## A341646.P6196934287322936199

`lt[A003557(n+1), A007947(n+1)]+1`
-/

namespace A341646.P6196934287322936199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341646.P6196934287322936199

namespace A341646

/-- `lt[A003557(n+1), A007947(n+1)]+1` -/
def P6196934287322936199.Spec : Prop :=
  ∀ n, (P6196934287322936199.a n : ℤ) = A341646 (n + 1)

end A341646

/-! ## A341646.P1550959463999575602

`lt[A057521(n+1), A007948(n+1)]+1`
-/

namespace A341646.P1550959463999575602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341646.P1550959463999575602

namespace A341646

/-- `lt[A057521(n+1), A007948(n+1)]+1` -/
def P1550959463999575602.Spec : Prop :=
  ∀ n, (P1550959463999575602.a n : ℤ) = A341646 (n + 1)

end A341646

/-!
# A341647: a(n) = Sum_{k=0..n} A059432(n,k).

The programs for A341647, there is no canonical definition to state claims against.
-/

/-! ## A341647.P11155212383639538051

`A188320(∏[A109794(n)])`
-/

namespace A341647.P11155212383639538051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341647.P11155212383639538051

/-! ## A341647.P17523740953822789885

`A187181(∑[∑[A245060(n)]])`
-/

namespace A341647.P17523740953822789885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341647.P17523740953822789885

/-!
# A341648: a(n) = Sum_{k=0..n} A059434(n,k).

The programs for A341648, there is no canonical definition to state claims against.
-/

/-! ## A341648.P4296440836274401192

`∑[∑[A003601(A196560(n))]]`
-/

namespace A341648.P4296440836274401192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A196560 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341648.P4296440836274401192

/-!
# A341650: a(n) is the first prime p such that each of the first n primes divides at least one of the composites between p and the next prime.

The programs for A341650, there is no canonical definition to state claims against.
-/

/-! ## A341650.P12617449317044700538

`p?[∑[A242903(floor(2*n/5))]]`
-/

namespace A341650.P12617449317044700538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242903 ⌊2 * ((n : ℚ) / 5)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341650.P12617449317044700538

/-! ## A341650.P222451073616171791

`p?[A048689(A115520(n))]`
-/

namespace A341650.P222451073616171791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048689 (A115520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341650.P222451073616171791

/-! ## A341650.P8205371083738920828

`filter[A341640(n), A237048(#)]`
-/

namespace A341650.P8205371083738920828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A237048 (f1 j).toNat = 1) n)

end

end A341650.P8205371083738920828

/-! ## A341650.P16558914708140197032

`record[A120724(A003173(n+1))]`
-/

namespace A341650.P16558914708140197032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120724 (A003173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341650.P16558914708140197032

/-!
# A341655: a(n) is the number of divisors of prime(n)^2 - 1.

The programs for A341655, the canonical program `A341655.P6120096683060314371` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341655 has offset 1).

The definition of A341655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341655.P6120096683060314371

`A000005(A084920(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A341655

/-- `A000005(A084920(n+1))` -/
def P6120096683060314371.Spec : Prop :=
  ∀ n, P6120096683060314371.a n = A341655 (n + 1)

theorem P6120096683060314371.correct : P6120096683060314371.Spec := by
  intro n
  simp only [A341655, Nat.add_sub_cancel]

end A341655

/-! ## A341655.P13833091264254219352

`A000005(A000040(n+1)²-1)`
-/

namespace A341655.P13833091264254219352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) ^ 2 - 1).toNat

end

end A341655.P13833091264254219352

namespace A341655

/-- `A000005(A000040(n+1)²-1)` -/
def P13833091264254219352.Spec : Prop :=
  ∀ n, P13833091264254219352.a n = A341655 (n + 1)

theorem P13833091264254219352.correct : P13833091264254219352.Spec := by
  intro n
  simp only [A341655, Nat.add_sub_cancel, A341655.P13833091264254219352.a, A341655.P6120096683060314371.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341655

/-! ## A341655.P8758989730789849132

`A347191(A000040(n+1))`
-/

namespace A341655.P8758989730789849132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A000040 (n + 1)).toNat

end

end A341655.P8758989730789849132

namespace A341655

/-- `A347191(A000040(n+1))` -/
def P8758989730789849132.Spec : Prop :=
  ∀ n, P8758989730789849132.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P10832856479395494719

`A347191(A008578(n+2))`
-/

namespace A341655.P10832856479395494719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A008578 (n + 2)).toNat

end

end A341655.P10832856479395494719

namespace A341655

/-- `A347191(A008578(n+2))` -/
def P10832856479395494719.Spec : Prop :=
  ∀ n, P10832856479395494719.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P18308657027101160276

`A347191(A182986(n+2))`
-/

namespace A341655.P18308657027101160276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A182986 (n + 2)).toNat

end

end A341655.P18308657027101160276

namespace A341655

/-- `A347191(A182986(n+2))` -/
def P18308657027101160276.Spec : Prop :=
  ∀ n, P18308657027101160276.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P18116903021713601805

`2*A129296(Δ[A007504(n)])`
-/

namespace A341655.P18116903021713601805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129296 (f1 (n + 1) - f1 n).toNat

end

end A341655.P18116903021713601805

namespace A341655

/-- `2*A129296(Δ[A007504(n)])` -/
def P18116903021713601805.Spec : Prop :=
  ∀ n, P18116903021713601805.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P5602745254591638369

`A347191(record[A006530(n+2)])`
-/

namespace A341655.P5602745254591638369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341655.P5602745254591638369

namespace A341655

/-- `A347191(record[A006530(n+2)])` -/
def P5602745254591638369.Spec : Prop :=
  ∀ n, P5602745254591638369.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P2715342310353019804

`A347191(record[A020639(n+2)])`
-/

namespace A341655.P2715342310353019804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341655.P2715342310353019804

namespace A341655

/-- `A347191(record[A020639(n+2)])` -/
def P2715342310353019804.Spec : Prop :=
  ∀ n, P2715342310353019804.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P6181344269543953756

`2*A129296(p?[A000961(n+1)])`
-/

namespace A341655.P6181344269543953756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129296 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A341655.P6181344269543953756

namespace A341655

/-- `2*A129296(p?[A000961(n+1)])` -/
def P6181344269543953756.Spec : Prop :=
  ∀ n, P6181344269543953756.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P4449549526974738098

`2*A129296(record[A006530(n+2)])`
-/

namespace A341655.P4449549526974738098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341655.P4449549526974738098

namespace A341655

/-- `2*A129296(record[A006530(n+2)])` -/
def P4449549526974738098.Spec : Prop :=
  ∀ n, P4449549526974738098.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P7212349032098153189

`2*A129296(record[A020639(n+2)])`
-/

namespace A341655.P7212349032098153189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341655.P7212349032098153189

namespace A341655

/-- `2*A129296(record[A020639(n+2)])` -/
def P7212349032098153189.Spec : Prop :=
  ∀ n, P7212349032098153189.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P12753116627287890913

`2*A129296(A007504(n+1)-A007504(n))`
-/

namespace A341655.P12753116627287890913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129296 (A007504 (n + 1) - A007504 n).toNat

end

end A341655.P12753116627287890913

namespace A341655

/-- `2*A129296(A007504(n+1)-A007504(n))` -/
def P12753116627287890913.Spec : Prop :=
  ∀ n, P12753116627287890913.a n = A341655 (n + 1)

end A341655

/-! ## A341655.P5483989381788413181

`∏{e}[record[A014963(n+2)²]-1, #+1]`
-/

namespace A341655.P5483989381788413181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341655.P5483989381788413181

namespace A341655

/-- `∏{e}[record[A014963(n+2)²]-1, #+1]` -/
def P5483989381788413181.Spec : Prop :=
  ∀ n, (P5483989381788413181.a n : ℤ) = A341655 (n + 1)

end A341655

/-! ## A341655.P6596169543525202294

`∏{e}[record[(A000010(n+1)+1)²]-1, #+1]`
-/

namespace A341655.P6596169543525202294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341655.P6596169543525202294

namespace A341655

/-- `∏{e}[record[(A000010(n+1)+1)²]-1, #+1]` -/
def P6596169543525202294.Spec : Prop :=
  ∀ n, (P6596169543525202294.a n : ℤ) = A341655 (n + 1)

end A341655

/-!
# A341656: a(n) is the number of divisors of prime(n)^4 - 1.

The programs for A341656, there is no canonical definition to state claims against.
-/

/-! ## A341656.P16473737874649111628

`A347191(p?[xor(1, n)+1]²)`
-/

namespace A341656.P16473737874649111628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A341656.P16473737874649111628

/-! ## A341656.P2686301752260238683

`A347191(p?[abs(xor(1, -n))]²)`
-/

namespace A341656.P2686301752260238683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A341656.P2686301752260238683

/-! ## A341656.P4141526132523920600

`A347191(p?[round(8*n/7)]²)`
-/

namespace A341656.P4141526132523920600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A341656.P4141526132523920600

/-! ## A341656.P8860690883029141288

`A347191(A001248(n+1))`
-/

namespace A341656.P8860690883029141288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A001248 (n + 1)).toNat

end

end A341656.P8860690883029141288

/-! ## A341656.P8417447095863870577

`A347191(A112052(n+1))`
-/

namespace A341656.P8417447095863870577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A112052 (n + 1)).toNat

end

end A341656.P8417447095863870577

/-!
# A341657: a(n) is the number of divisors of prime(n)^6 - 1.

The programs for A341657, there is no canonical definition to state claims against.
-/

/-! ## A341657.P10181597906650546679

`A347191(p?[xor(1, n)+1]^3)`
-/

namespace A341657.P10181597906650546679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3)

end

end A341657.P10181597906650546679

/-! ## A341657.P3158519037462802818

`A347191(p?[abs(xor(1, -n))]^3)`
-/

namespace A341657.P3158519037462802818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3).toNat

end

end A341657.P3158519037462802818

/-! ## A341657.P7352009429171587392

`A347191(∏{d}[p?[round(8*n/7)]², #])`
-/

namespace A341657.P7352009429171587392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A341657.P7352009429171587392

/-! ## A341657.P1287901660163967621

`A347191(A030078(n+1))`
-/

namespace A341657.P1287901660163967621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (A030078 (n + 1)).toNat

end

end A341657.P1287901660163967621

/-!
# A341658: Primes p such that p^2 - 1 has 32 divisors.

The programs for A341658, there is no canonical definition to state claims against.
-/

/-! ## A341658.P4617373299541961588

`record[A057108(A175742(n+1)+1)]`
-/

namespace A341658.P4617373299541961588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (A175742 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341658.P4617373299541961588

/-!
# A341659: Primes p such that p^3 - 1 has 8 divisors.

The programs for A341659, there is no canonical definition to state claims against.
-/

/-! ## A341659.P1632084483408170979

`∩[A342690(n+1), A005385(n+2)]`
-/

namespace A341659.P1632084483408170979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341659.P1632084483408170979

/-! ## A341659.P10192149699494048253

`∩[A053182(n+1), A005385(n+3)]`
-/

namespace A341659.P10192149699494048253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341659.P10192149699494048253

/-! ## A341659.P13814599589872869152

`∩[A053182(n+1), A166496(n+1)]`
-/

namespace A341659.P13814599589872869152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341659.P13814599589872869152

/-! ## A341659.P10439081713375454264

`p?[A386915(n+3)]`
-/

namespace A341659.P10439081713375454264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386915 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341659.P10439081713375454264

/-! ## A341659.P13484079383948373188

`∩[A161897(n+1), A193066(n+1)]`
-/

namespace A341659.P13484079383948373188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341659.P13484079383948373188

/-! ## A341659.P18400297086421849252

`filter[A161897(n+1), A355938(#)]`
-/

namespace A341659.P18400297086421849252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A341659.P18400297086421849252

/-!
# A341660: Primes p such that p^2 - 1 has fewer than 32 divisors.

The programs for A341660, there is no canonical definition to state claims against.
-/

/-! ## A341660.P17959620146369382662

`A000040(eq[n+1, lcm(n+1, (n+1)%10)]+1)`
-/

namespace A341660.P17959620146369382662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) % 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A341660.P17959620146369382662

/-! ## A341660.P4085044647729489381

`A197298(record[A000700(n)])`
-/

namespace A341660.P4085044647729489381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197298 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341660.P4085044647729489381

/-! ## A341660.P13157977574934556093

`A000040(A034709(n+1))`
-/

namespace A341660.P13157977574934556093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A034709 (n + 1)).toNat

end

end A341660.P13157977574934556093

/-! ## A341660.P6789748724098151253

`A054403(A034838(n+1))`
-/

namespace A341660.P6789748724098151253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (A034838 (n + 1)).toNat

end

end A341660.P6789748724098151253

/-! ## A341660.P3313831103812661873

`A054403(A063527(n+1))`
-/

namespace A341660.P3313831103812661873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (A063527 (n + 1)).toNat

end

end A341660.P3313831103812661873

/-!
# A341661: Primes p such that p^4 - 1 has fewer than 160 divisors.

The programs for A341661, there is no canonical definition to state claims against.
-/

/-! ## A341661.P18003461939523492983

`∪[A061244(n+1), A137238(n+1)]`
-/

namespace A341661.P18003461939523492983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341661.P18003461939523492983

/-! ## A341661.P4379137779257337408

`p?[∑[A167413(2*n)]]`
-/

namespace A341661.P4379137779257337408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167413 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341661.P4379137779257337408

/-! ## A341661.P10908781155613022208

`A008578(lt[A118777(n), A072645(n)])`
-/

namespace A341661.P10908781155613022208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341661.P10908781155613022208

/-! ## A341661.P10825452440142592800

`A000040(lt[A033639(n), A303782(n+1)])`
-/

namespace A341661.P10825452440142592800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341661.P10825452440142592800

/-! ## A341661.P13880602130514350825

`eq[A003415(n), A130196(A135643(n+4))]`
-/

namespace A341661.P13880602130514350825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A135643 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341661.P13880602130514350825

/-!
# A341662: Primes p such that p^4 - 1 has 160 divisors.

The programs for A341662, there is no canonical definition to state claims against.
-/

/-! ## A341662.P145105417105803016

`A127956(A146364(n+2))`
-/

namespace A341662.P145105417105803016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127956 (A146364 (n + 2)).toNat

end

end A341662.P145105417105803016

/-!
# A341663: a(n) is the number of divisors of prime(n)^3 - 1.

The programs for A341663, the canonical program `A341663.P11008756272771736729` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341663 has offset 1).

The definition of A341663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341663.P11008756272771736729

`A000005(A000040(n+1)^3-1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A341663

/-- `A000005(A000040(n+1)^3-1)` -/
def P11008756272771736729.Spec : Prop :=
  ∀ n, P11008756272771736729.a n = A341663 (n + 1)

theorem P11008756272771736729.correct : P11008756272771736729.Spec := by
  intro n
  simp only [A341663, Nat.add_sub_cancel]

end A341663

/-! ## A341663.P18121487575906964315

`∏{e}[1-A030078(n+1), #+1]`
-/

namespace A341663.P18121487575906964315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341663.P18121487575906964315

namespace A341663

/-- `∏{e}[1-A030078(n+1), #+1]` -/
def P18121487575906964315.Spec : Prop :=
  ∀ n, (P18121487575906964315.a n : ℤ) = A341663 (n + 1)

end A341663

/-! ## A341663.P14672457987031068938

`∏{e}[A059376(p?[xor(1, n)+1]), #+1]`
-/

namespace A341663.P14672457987031068938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059376 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341663.P14672457987031068938

namespace A341663

/-- `∏{e}[A059376(p?[xor(1, n)+1]), #+1]` -/
def P14672457987031068938.Spec : Prop :=
  ∀ n, (P14672457987031068938.a n : ℤ) = A341663 (n + 1)

end A341663

/-! ## A341663.P8105251314626028079

`∏{e}[record[A006530(n+2)]^3-1, #+1]`
-/

namespace A341663.P8105251314626028079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 3 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341663.P8105251314626028079

namespace A341663

/-- `∏{e}[record[A006530(n+2)]^3-1, #+1]` -/
def P8105251314626028079.Spec : Prop :=
  ∀ n, (P8105251314626028079.a n : ℤ) = A341663 (n + 1)

end A341663

/-! ## A341663.P2819397465427094337

`∏{e}[(record[A000010(n+1)]+1)^3-1, #+1]`
-/

namespace A341663.P2819397465427094337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) ^ 3 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341663.P2819397465427094337

namespace A341663

/-- `∏{e}[(record[A000010(n+1)]+1)^3-1, #+1]` -/
def P2819397465427094337.Spec : Prop :=
  ∀ n, (P2819397465427094337.a n : ℤ) = A341663 (n + 1)

end A341663

/-!
# A341665: Primes p such that p^5 - 1 has 8 divisors.

The programs for A341665, there is no canonical definition to state claims against.
-/

/-! ## A341665.P10257163995793790902

`∩[A005385(n+1), A065509(n+1)]`
-/

namespace A341665.P10257163995793790902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P10257163995793790902

/-! ## A341665.P10972979092048943251

`∩[A065509(n+1), A065966(n+1)]`
-/

namespace A341665.P10972979092048943251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P10972979092048943251

/-! ## A341665.P15133292975693925723

`∩[A065509(n+1), A395563(n+1)]`
-/

namespace A341665.P15133292975693925723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P15133292975693925723

/-! ## A341665.P611717112677704633

`∩[A065509(n+1), A072055(n+1)]`
-/

namespace A341665.P611717112677704633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P611717112677704633

/-! ## A341665.P12780387414388380439

`∩[A065509(n+1), A166496(n+1)]`
-/

namespace A341665.P12780387414388380439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P12780387414388380439

/-! ## A341665.P10933301420449747152

`∩[A005385(n+1), A049409(n+1)]`
-/

namespace A341665.P10933301420449747152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P10933301420449747152

/-! ## A341665.P15851881419084946673

`∩[A065509(n+1), A124109(n+1)]`
-/

namespace A341665.P15851881419084946673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341665.P15851881419084946673

/-!
# A341666: Primes p such that p^6 - 1 has 384 divisors.

The programs for A341666, there is no canonical definition to state claims against.
-/

/-! ## A341666.P11916040770833068001

`A178642(A056763(n+2))`
-/

namespace A341666.P11916040770833068001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178642 (A056763 (n + 2)).toNat

end

end A341666.P11916040770833068001

/-! ## A341666.P17653062392513567665

`A341658(∏{e}[A344402(n), #])`
-/

namespace A341666.P17653062392513567665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341658 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A341666.P17653062392513567665

/-!
# A341667: Primes p such that p^6 - 1 has fewer than 384 divisors.

The programs for A341667, there is no canonical definition to state claims against.
-/

/-! ## A341667.P17796055051826618324

`eq[A003415(n), A288386(A298782(n+1))]`
-/

namespace A341667.P17796055051826618324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 (A298782 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341667.P17796055051826618324

/-! ## A341667.P9965976611231736920

`record[A006530(A093321(n+1)+1)]`
-/

namespace A341667.P9965976611231736920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A093321 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341667.P9965976611231736920

/-! ## A341667.P7541618785198620962

`record[A008472(A093321(n+1)+1)]`
-/

namespace A341667.P7541618785198620962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A093321 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341667.P7541618785198620962

/-! ## A341667.P11508179176743800897

`∩[A076564(n+1)-1, A233265(n+1)]`
-/

namespace A341667.P11508179176743800897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341667.P11508179176743800897

/-! ## A341667.P8189006312734095855

`A000040(lt[A097851(n), A342042(n+1)])`
-/

namespace A341667.P8189006312734095855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341667.P8189006312734095855

/-!
# A341669: Primes p such that p^7 - 1 has 8 divisors.

The programs for A341669, there is no canonical definition to state claims against.
-/

/-! ## A341669.P3171056512190866445

`∩[A161897(n+1), A163268(n+1)]`
-/

namespace A341669.P3171056512190866445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341669.P3171056512190866445

/-!
# A341671: Solutions y of the Diophantine equation 3*(x^2+x+1) = y^2.

The programs for A341671, the canonical program `A341671.P3353358136079603621` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341671 has offset 1).

The definition of A341671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341671.P3353358136079603621

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=3, a(1)=39, a(2)=543`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A341671

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P3353358136079603621.Spec : Prop :=
  ∀ n, P3353358136079603621.a n = A341671 (n + 1)

theorem P3353358136079603621.correct : P3353358136079603621.Spec := by
  intro n
  simp only [A341671, Nat.add_sub_cancel]

end A341671

/-! ## A341671.P9612895652316927367

`3*A001570(n+1)`
-/

namespace A341671.P9612895652316927367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001570 (n + 1)

end

end A341671.P9612895652316927367

namespace A341671

/-- `3*A001570(n+1)` -/
def P9612895652316927367.Spec : Prop :=
  ∀ n, P9612895652316927367.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P17774530825068706459

`ogf((3-3x)/(1-14x+x^2))`
-/

namespace A341671.P17774530825068706459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -14, 1] n

end

end A341671.P17774530825068706459

namespace A341671

/-- `ogf((3-3x)/(1-14x+x^2))` -/
def P17774530825068706459.Spec : Prop :=
  ∀ n, P17774530825068706459.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P12665520803855660313

`14*a(n-1)-a(n-2)` with `a(0)=3, a(1)=39`
-/

namespace A341671.P12665520803855660313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 39] fun n a =>
  14 * a (n - 1) - a (n - 2)

end

end A341671.P12665520803855660313

namespace A341671

/-- `14*a(n-1)-a(n-2)` -/
def P12665520803855660313.Spec : Prop :=
  ∀ n, P12665520803855660313.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P7489833266585939491

`record[3*A108946(n)]`
-/

namespace A341671.P7489833266585939491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341671.P7489833266585939491

namespace A341671

/-- `record[3*A108946(n)]` -/
def P7489833266585939491.Spec : Prop :=
  ∀ n, P7489833266585939491.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P17017046752116459434

`3*A122571(n+2)`
-/

namespace A341671.P17017046752116459434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122571 (n + 2)

end

end A341671.P17017046752116459434

namespace A341671

/-- `3*A122571(n+2)` -/
def P17017046752116459434.Spec : Prop :=
  ∀ n, P17017046752116459434.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P10119646278853432035

`3*A041017(2*n)`
-/

namespace A341671.P10119646278853432035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041017 (2 * n)

end

end A341671.P10119646278853432035

namespace A341671

/-- `3*A041017(2*n)` -/
def P10119646278853432035.Spec : Prop :=
  ∀ n, P10119646278853432035.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P5572068678627771057

`3*A041083(2*n)`
-/

namespace A341671.P5572068678627771057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041083 (2 * n)

end

end A341671.P5572068678627771057

namespace A341671

/-- `3*A041083(2*n)` -/
def P5572068678627771057.Spec : Prop :=
  ∀ n, P5572068678627771057.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P15451872596729245704

`3*A108946(2*n)`
-/

namespace A341671.P15451872596729245704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108946 (2 * n)

end

end A341671.P15451872596729245704

namespace A341671

/-- `3*A108946(2*n)` -/
def P15451872596729245704.Spec : Prop :=
  ∀ n, P15451872596729245704.a n = A341671 (n + 1)

end A341671

/-! ## A341671.P7865043054704572283

`3*A110293(2*n)`
-/

namespace A341671.P7865043054704572283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A110293 (2 * n)

end

end A341671.P7865043054704572283

namespace A341671

/-- `3*A110293(2*n)` -/
def P7865043054704572283.Spec : Prop :=
  ∀ n, P7865043054704572283.a n = A341671 (n + 1)

end A341671

/-!
# A341673: Irregular triangle read by rows giving the strictly superior divisors of n.

The programs for A341673, there is no canonical definition to state claims against.
-/

/-! ## A341673.P2127911354198788227

`A054531(lt[A004736(n+1), A127013(n+1)])`
-/

namespace A341673.P2127911354198788227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341673.P2127911354198788227

/-! ## A341673.P7242643041458649942

`A002260(eq[A002260(n+2), A227141(n)]+1)+1`
-/

namespace A341673.P7242643041458649942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A341673.P7242643041458649942

/-! ## A341673.P17986648555998137099

`A127013(lt[A004736(n+1), A127013(n+1)]+1)`
-/

namespace A341673.P17986648555998137099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A341673.P17986648555998137099

/-! ## A341673.P5372010446775287043

`A161908(lt[A146892(2*n+1), A248328(2*n)])`
-/

namespace A341673.P5372010446775287043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146892 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248328 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341673.P5372010446775287043

/-!
# A341674: Irregular triangle read by rows giving the strictly inferior divisors of n.

The programs for A341674, there is no canonical definition to state claims against.
-/

/-! ## A341674.P14084662485648777447

`A128227(lt[A128227(n), A126988(n+1)])`
-/

namespace A341674.P14084662485648777447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341674.P14084662485648777447

/-! ## A341674.P16656118218581206213

`A193738(lt[A193738(n), A126988(n+1)])`
-/

namespace A341674.P16656118218581206213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341674.P16656118218581206213

/-! ## A341674.P2945191082759642456

`A049834(lt[A010783(n+1), A127094(n+1)])`
-/

namespace A341674.P2945191082759642456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341674.P2945191082759642456

/-! ## A341674.P5741661101343572936

`A049834(lt[A277227(n+1), A127094(n+1)])`
-/

namespace A341674.P5741661101343572936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341674.P5741661101343572936

/-! ## A341674.P5719976003285386767

`A010783(lt[A010783(n+1), A127094(n+1)]+1)`
-/

namespace A341674.P5719976003285386767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A341674.P5719976003285386767

/-! ## A341674.P10468747644597645115

`A277227(lt[A277227(n+1), A127094(n+1)]+1)`
-/

namespace A341674.P10468747644597645115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A341674.P10468747644597645115

/-!
# A341675: Number of superior odd divisors of n.

The programs for A341675, there is no canonical definition to state claims against.
-/

/-! ## A341675.P8011176208399971370

`∑{digits}[A303818(n+1), A025435(#)]`
-/

namespace A341675.P8011176208399971370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025435 x).sum

end

end A341675.P8011176208399971370

/-! ## A341675.P15533749318166637980

`A001227(n+1)-A333805(n+1)`
-/

namespace A341675.P15533749318166637980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A333805 (n + 1)

end

end A341675.P15533749318166637980

/-! ## A341675.P12236030605417537162

`∑{digits}[A303818(n+1), A054973(#²²)]`
-/

namespace A341675.P12236030605417537162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054973 ((x ^ 2) ^ 2)).sum

end

end A341675.P12236030605417537162

/-! ## A341675.P8548030039168531451

`∑{digits}[A303818(n+1), (2-A003991(#))²]`
-/

namespace A341675.P8548030039168531451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (2 - A003991 x) ^ 2).sum

end

end A341675.P8548030039168531451

/-! ## A341675.P1845224629027058028

`∑{digits}[A303818(n+1), (2-A008619(#))²]`
-/

namespace A341675.P1845224629027058028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (2 - A008619 x) ^ 2).sum

end

end A341675.P1845224629027058028

/-! ## A341675.P15903696637494156007

`(A348515(n+1)+A038548(n+1))/2`
-/

namespace A341675.P15903696637494156007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348515 (n + 1) + A038548 (n + 1) : ℚ) / 2

end

end A341675.P15903696637494156007

/-! ## A341675.P141733206314994578

`A000005(A000265(n+1))-A333805(n+1)`
-/

namespace A341675.P141733206314994578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A333805 (n + 1)

end

end A341675.P141733206314994578

/-! ## A341675.P1555446719613818212

`A060831(n+1)-(A333805(n+1)+A060831(n))`
-/

namespace A341675.P1555446719613818212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - (A333805 (n + 1) + A060831 n)

end

end A341675.P1555446719613818212

/-! ## A341675.P3125829901427612413

`A082647(2*(n+1))-A361561(2*(n+1))`
-/

namespace A341675.P3125829901427612413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (2 * (n + 1)) - A361561 (2 * (n + 1))

end

end A341675.P3125829901427612413

/-!
# A341676: The unique superior prime divisor of each number that has one.

The programs for A341676, the canonical program `A341676.P8742406814871965653` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341676 has offset 1).

The definition of A341676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341676.P8742406814871965653

`A006530(A063538(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A341676

/-- `A006530(A063538(n+1))` -/
def P8742406814871965653.Spec : Prop :=
  ∀ n, P8742406814871965653.a n = A341676 (n + 1)

theorem P8742406814871965653.correct : P8742406814871965653.Spec := by
  intro n
  simp only [A341676, Nat.add_sub_cancel]

end A341676

/-! ## A341676.P12229012334521183030

`p?[A033677(n+1)]`
-/

namespace A341676.P12229012334521183030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341676.P12229012334521183030

namespace A341676

/-- `p?[A033677(n+1)]` -/
def P12229012334521183030.Spec : Prop :=
  ∀ n, P12229012334521183030.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P11988651123263901283

`p?[A097975(n+1)]`
-/

namespace A341676.P11988651123263901283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341676.P11988651123263901283

namespace A341676

/-- `p?[A097975(n+1)]` -/
def P11988651123263901283.Spec : Prop :=
  ∀ n, P11988651123263901283.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P10828379923208854260

`p?[A116548(n+1)]`
-/

namespace A341676.P10828379923208854260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341676.P10828379923208854260

namespace A341676

/-- `p?[A116548(n+1)]` -/
def P10828379923208854260.Spec : Prop :=
  ∀ n, P10828379923208854260.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P8458701630502775913

`p?[Δ[A219730(n+1)]]`
-/

namespace A341676.P8458701630502775913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219730 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341676.P8458701630502775913

namespace A341676

/-- `p?[Δ[A219730(n+1)]]` -/
def P8458701630502775913.Spec : Prop :=
  ∀ n, P8458701630502775913.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P8404137713369847613

`filter[A033677(n+1), A010051(#)]`
-/

namespace A341676.P8404137713369847613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341676.P8404137713369847613

namespace A341676

/-- `filter[A033677(n+1), A010051(#)]` -/
def P8404137713369847613.Spec : Prop :=
  ∀ n, P8404137713369847613.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P15043139956336435874

`filter[A097975(n+1), A014306(#)]`
-/

namespace A341676.P15043139956336435874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A341676.P15043139956336435874

namespace A341676

/-- `filter[A097975(n+1), A014306(#)]` -/
def P15043139956336435874.Spec : Prop :=
  ∀ n, P15043139956336435874.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P11821618846060439350

`filter[A116548(n+1), A010051(#)]`
-/

namespace A341676.P11821618846060439350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A341676.P11821618846060439350

namespace A341676

/-- `filter[A116548(n+1), A010051(#)]` -/
def P11821618846060439350.Spec : Prop :=
  ∀ n, P11821618846060439350.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P2747663653900151722

`filter[A097975(n+1), A097325(#)]`
-/

namespace A341676.P2747663653900151722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A341676.P2747663653900151722

namespace A341676

/-- `filter[A097975(n+1), A097325(#)]` -/
def P2747663653900151722.Spec : Prop :=
  ∀ n, P2747663653900151722.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P14709471123913516594

`filter[A097975(n+1), A098725(#)]`
-/

namespace A341676.P14709471123913516594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A341676.P14709471123913516594

namespace A341676

/-- `filter[A097975(n+1), A098725(#)]` -/
def P14709471123913516594.Spec : Prop :=
  ∀ n, P14709471123913516594.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P15977873434210329908

`filter[A097975(n+1), A165560(#)]`
-/

namespace A341676.P15977873434210329908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A341676.P15977873434210329908

namespace A341676

/-- `filter[A097975(n+1), A165560(#)]` -/
def P15977873434210329908.Spec : Prop :=
  ∀ n, P15977873434210329908.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P7603881782795851083

`filter[A097975(n+1), A166486(#)]`
-/

namespace A341676.P7603881782795851083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A341676.P7603881782795851083

namespace A341676

/-- `filter[A097975(n+1), A166486(#)]` -/
def P7603881782795851083.Spec : Prop :=
  ∀ n, P7603881782795851083.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P5004179247028332960

`filter[A097975(n+1), A168181(#)]`
-/

namespace A341676.P5004179247028332960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A341676.P5004179247028332960

namespace A341676

/-- `filter[A097975(n+1), A168181(#)]` -/
def P5004179247028332960.Spec : Prop :=
  ∀ n, P5004179247028332960.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P13202328294548914673

`filter[A097975(n+1), A168182(#)]`
-/

namespace A341676.P13202328294548914673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A341676.P13202328294548914673

namespace A341676

/-- `filter[A097975(n+1), A168182(#)]` -/
def P13202328294548914673.Spec : Prop :=
  ∀ n, P13202328294548914673.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P15304820304124674966

`filter[A097975(n+1), A168184(#)]`
-/

namespace A341676.P15304820304124674966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A341676.P15304820304124674966

namespace A341676

/-- `filter[A097975(n+1), A168184(#)]` -/
def P15304820304124674966.Spec : Prop :=
  ∀ n, P15304820304124674966.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P1032924555950493960

`filter[A097975(n+1), A168185(#)]`
-/

namespace A341676.P1032924555950493960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A341676.P1032924555950493960

namespace A341676

/-- `filter[A097975(n+1), A168185(#)]` -/
def P1032924555950493960.Spec : Prop :=
  ∀ n, P1032924555950493960.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P10059903203679322894

`filter[A097975(n+1), A182067(#)]`
-/

namespace A341676.P10059903203679322894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A341676.P10059903203679322894

namespace A341676

/-- `filter[A097975(n+1), A182067(#)]` -/
def P10059903203679322894.Spec : Prop :=
  ∀ n, P10059903203679322894.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P17774614846093063009

`filter[A097975(n+1), A257000(#)]`
-/

namespace A341676.P17774614846093063009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A341676.P17774614846093063009

namespace A341676

/-- `filter[A097975(n+1), A257000(#)]` -/
def P17774614846093063009.Spec : Prop :=
  ∀ n, P17774614846093063009.a n = A341676 (n + 1)

end A341676

/-! ## A341676.P12199419856721058337

`filter[A097975(n+1), A257680(#)]`
-/

namespace A341676.P12199419856721058337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A341676.P12199419856721058337

namespace A341676

/-- `filter[A097975(n+1), A257680(#)]` -/
def P12199419856721058337.Spec : Prop :=
  ∀ n, P12199419856721058337.a n = A341676 (n + 1)

end A341676

/-!
# A341677: Number of strictly inferior prime-power divisors of n.

The programs for A341677, the canonical program `A341677.P7034296537446804868` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341677 has offset 1).

The definition of A341677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341677.P7034296537446804868

`∑{e}[n+1, #]-A341593(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341677

/-- `∑{e}[n+1, #]-A341593(n+1)` -/
def P7034296537446804868.Spec : Prop :=
  ∀ n, P7034296537446804868.a n = A341677 (n + 1)

theorem P7034296537446804868.correct : P7034296537446804868.Spec := by
  intro n
  simp only [A341677, Nat.add_sub_cancel]

end A341677

/-! ## A341677.P3920885628546697912

`A333750(A048671(n+1))`
-/

namespace A341677.P3920885628546697912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A048671 (n + 1)).toNat

end

end A341677.P3920885628546697912

namespace A341677

/-- `A333750(A048671(n+1))` -/
def P3920885628546697912.Spec : Prop :=
  ∀ n, P3920885628546697912.a n = A341677 (n + 1)

end A341677

/-! ## A341677.P8015042776952051040

`Δ[A022559(n)]-A341593(n+1)`
-/

namespace A341677.P8015042776952051040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341593 (n + 1)

end

end A341677.P8015042776952051040

namespace A341677

/-- `Δ[A022559(n)]-A341593(n+1)` -/
def P8015042776952051040.Spec : Prop :=
  ∀ n, P8015042776952051040.a n = A341677 (n + 1)

end A341677

/-! ## A341677.P11282665161232341779

`A001222(n+1)-A341593(n+1)`
-/

namespace A341677.P11282665161232341779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A341593 (n + 1)

end

end A341677.P11282665161232341779

namespace A341677

/-- `A001222(n+1)-A341593(n+1)` -/
def P11282665161232341779.Spec : Prop :=
  ∀ n, P11282665161232341779.a n = A341677 (n + 1)

end A341677

/-! ## A341677.P13760215438819116636

`A333750((n+1)/A014963(n+1))`
-/

namespace A341677.P13760215438819116636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A341677.P13760215438819116636

namespace A341677

/-- `A333750((n+1)/A014963(n+1))` -/
def P13760215438819116636.Spec : Prop :=
  ∀ n, P13760215438819116636.a n = A341677 (n + 1)

end A341677

/-! ## A341677.P9130834564390781251

`log2(A061142(n+1))-A341593(n+1)`
-/

namespace A341677.P9130834564390781251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A341593 (n + 1) : ℝ)

end

end A341677.P9130834564390781251

namespace A341677

/-- `log2(A061142(n+1))-A341593(n+1)` -/
def P9130834564390781251.Spec : Prop :=
  ∀ n, P9130834564390781251.a n = (A341677 (n + 1) : ℝ)

end A341677

/-! ## A341677.P1589387522025063533

`val(A165839(n+1), 2)-A341593(n+1)`
-/

namespace A341677.P1589387522025063533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165839 (n + 1)).toNat 2 : ℤ) - A341593 (n + 1)

end

end A341677.P1589387522025063533

namespace A341677

/-- `val(A165839(n+1), 2)-A341593(n+1)` -/
def P1589387522025063533.Spec : Prop :=
  ∀ n, P1589387522025063533.a n = A341677 (n + 1)

end A341677

/-! ## A341677.P1931419429749724321

`val(A167334(n+1), 2)-A341593(n+1)`
-/

namespace A341677.P1931419429749724321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A167334 (n + 1)).toNat 2 : ℤ) - A341593 (n + 1)

end

end A341677.P1931419429749724321

namespace A341677

/-- `val(A167334(n+1), 2)-A341593(n+1)` -/
def P1931419429749724321.Spec : Prop :=
  ∀ n, P1931419429749724321.a n = A341677 (n + 1)

end A341677

/-!
# A341679: a(1) = 1; for n > 1, a(n) = n divided by the most recently appearing divisor of n in all previous terms.

The programs for A341679, there is no canonical definition to state claims against.
-/

/-! ## A341679.P6199664551779940001

`floor(A117818(n+1)/Δ[A020753(n+1)])`
-/

namespace A341679.P6199664551779940001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117818 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A341679.P6199664551779940001

/-! ## A341679.P15306024303816069621

`A117818(n+1)-A322338(A289484(n+1))`
-/

namespace A341679.P15306024303816069621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1) - A322338 (A289484 (n + 1)).toNat

end

end A341679.P15306024303816069621

/-! ## A341679.P4877086645016286646

`A117818(n+1)%A371594(A051248(n+1))`
-/

namespace A341679.P4877086645016286646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117818 (n + 1)) (A371594 (A051248 (n + 1)).toNat)

end

end A341679.P4877086645016286646

/-! ## A341679.P18084941306435932533

`A347044(n+1)%A362134(A286202(n+1))`
-/

namespace A341679.P18084941306435932533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347044 (n + 1)) (A362134 (A286202 (n + 1)).toNat)

end

end A341679.P18084941306435932533

/-! ## A341679.P16718130299964536745

`or(A010060(A306896(n+1)), A346703(n+1))`
-/

namespace A341679.P16718130299964536745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A306896 (n + 1)).toNat) (A346703 (n + 1))

end

end A341679.P16718130299964536745

/-!
# A341680: Successive approximations up to 2^n for the 2-adic integer Sum_{k>=0} k!.

The programs for A341680, there is no canonical definition to state claims against.
-/

/-! ## A341680.P6919012810569674790

`A003422(A007843(n))%A000079(n)`
-/

namespace A341680.P6919012810569674790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A007843 n).toNat) (A000079 n)

end

end A341680.P6919012810569674790

/-! ## A341680.P9203105380384790323

`and(A000225(n), A003422(A007843(n)))`
-/

namespace A341680.P9203105380384790323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A003422 (A007843 n).toNat)

end

end A341680.P9203105380384790323

/-! ## A341680.P7053778323972104121

`A003422(n+7)%∑[A011782(n)]`
-/

namespace A341680.P7053778323972104121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (n + 7)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341680.P7053778323972104121

/-! ## A341680.P11910801101110111497

`and(A000225(n), A003422(A135668(n+1)-1))`
-/

namespace A341680.P11910801101110111497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A003422 (A135668 (n + 1) - 1).toNat)

end

end A341680.P11910801101110111497

/-! ## A341680.P1952941081223508345

`A003422(A000037(n+1))%A000079(n)`
-/

namespace A341680.P1952941081223508345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A000037 (n + 1)).toNat) (A000079 n)

end

end A341680.P1952941081223508345

/-! ## A341680.P1432546670755635173

`and(A000225(n), A003422(A135668(n+1)))`
-/

namespace A341680.P1432546670755635173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A003422 (A135668 (n + 1)).toNat)

end

end A341680.P1432546670755635173

/-! ## A341680.P622783718600935989

`A003422(A135668(n+1))%A016116(2*n)`
-/

namespace A341680.P622783718600935989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A135668 (n + 1)).toNat) (A016116 (2 * n))

end

end A341680.P622783718600935989

/-! ## A341680.P13076098250635473964

`and(A000225(n), A003422(A286924(n+1)))`
-/

namespace A341680.P13076098250635473964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A003422 (A286924 (n + 1)).toNat)

end

end A341680.P13076098250635473964

/-! ## A341680.P381225932129931226

`and(A000225(n), A003422(A258833(n)))`
-/

namespace A341680.P381225932129931226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A003422 (A258833 n).toNat)

end

end A341680.P381225932129931226

/-!
# A341681: Successive approximations up to 3^n for the 3-adic integer Sum_{k>=0} k!.

The programs for A341681, there is no canonical definition to state claims against.
-/

/-! ## A341681.P4161964822663905252

`A003422(A007844(n))%A000244(n)`
-/

namespace A341681.P4161964822663905252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A007844 n).toNat) (A000244 n)

end

end A341681.P4161964822663905252

/-! ## A341681.P13969471810357141685

`A003422(A080579(n+1)-A087156(n+1))%A000244(n)`
-/

namespace A341681.P13969471810357141685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A080579 (n + 1) - A087156 (n + 1)).toNat) (A000244 n)

end

end A341681.P13969471810357141685

/-! ## A341681.P13503194301994030636

`A003422(A000007(n)+A080579(n+1)-(n+1))%A000244(n)`
-/

namespace A341681.P13503194301994030636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A000007 n + (A080579 (n + 1) - (n + 1 : ℤ))).toNat) (A000244 n)

end

end A341681.P13503194301994030636

/-! ## A341681.P16341050451413416988

`A003422(A080579(n+1)-(n+1)%A000603(n))%A000244(n)`
-/

namespace A341681.P16341050451413416988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A080579 (n + 1) - Int.tmod (n + 1 : ℤ) (A000603 n)).toNat) (A000244 n)

end

end A341681.P16341050451413416988

/-! ## A341681.P2164702709717898533

`A003422(A062545(n+2))%A000244(n)`
-/

namespace A341681.P2164702709717898533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 (A062545 (n + 2)).toNat) (A000244 n)

end

end A341681.P2164702709717898533

/-!
# A341682: Successive approximations up to 5^n for the 5-adic integer Sum_{k>=0} k!.

The programs for A341682, there is no canonical definition to state claims against.
-/

/-! ## A341682.P4154881587803505793

`A049782(5^A029915(n))`
-/

namespace A341682.P4154881587803505793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A029915 n : ℤ))).toNat

end

end A341682.P4154881587803505793

/-! ## A341682.P15441228442457279082

`A049782(5^A195181(n))`
-/

namespace A341682.P15441228442457279082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A195181 n : ℤ))).toNat

end

end A341682.P15441228442457279082

/-! ## A341682.P757652989552440272

`A216369(5^A029915(n))`
-/

namespace A341682.P757652989552440272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216369 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A029915 n : ℤ))).toNat

end

end A341682.P757652989552440272

/-!
# A341683: Successive approximations up to 7^n for the 7-adic integer Sum_{k>=0} k!.

The programs for A341683, there is no canonical definition to state claims against.
-/

/-! ## A341683.P2036042672928825895

`A067462(7^n)+ceil(n/6)`
-/

namespace A341683.P2036042672928825895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067462 (7 ^ n) + ⌈(n : ℚ) / 6⌉

end

end A341683.P2036042672928825895

/-!
# A341684: Expansion of the 2-adic integer Sum_{k>=0} k!.

The programs for A341684, there is no canonical definition to state claims against.
-/

/-! ## A341684.P2298213174730106160

`(A341680(n+1)-A341680(n))/2^n`
-/

namespace A341684.P2298213174730106160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341680 (n + 1) - A341680 n : ℚ) / (2 ^ n : ℚ)

end

end A341684.P2298213174730106160

/-! ## A341684.P7288884357850998676

`floor(atan(Δ[A341680(n)]))`
-/

namespace A341684.P7288884357850998676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A341684.P7288884357850998676

/-! ## A341684.P4162452139606537423

`Δ[A341680(n)]/A000079(n)`
-/

namespace A341684.P4162452139606537423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341680 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A341684.P4162452139606537423

/-! ## A341684.P3587777688151726663

`Δ[A341680(n)]/(A000225(n)+1)`
-/

namespace A341684.P3587777688151726663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341680 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000225 n + 1 : ℚ)

end

end A341684.P3587777688151726663

/-! ## A341684.P10517930192020808739

`Δ[A341680(n)]/(A000051(n)-1)`
-/

namespace A341684.P10517930192020808739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341680 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A341684.P10517930192020808739

/-! ## A341684.P4955464913126907348

`Δ[A341680(n)]/Δ[A000051(n)]`
-/

namespace A341684.P4955464913126907348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A341684.P4955464913126907348

/-! ## A341684.P13248595030075409159

`Δ[A341680(n)]/Δ[A000225(n)]`
-/

namespace A341684.P13248595030075409159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A341684.P13248595030075409159

/-!
# A341685: Expansion of the 3-adic integer Sum_{k>=0} k!.

The programs for A341685, there is no canonical definition to state claims against.
-/

/-! ## A341685.P17098301852584947817

`(A341681(n+1)-A341681(n))/3^n`
-/

namespace A341685.P17098301852584947817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341681 (n + 1) - A341681 n : ℚ) / (3 ^ n : ℚ)

end

end A341685.P17098301852584947817

/-! ## A341685.P18270895951317009592

`A108964(and(3, Δ[A341681(n)]))`
-/

namespace A341685.P18270895951317009592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A341685.P18270895951317009592

/-! ## A341685.P10195931488575738839

`A327306(and(3, Δ[A341681(n)]))`
-/

namespace A341685.P10195931488575738839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A341685.P10195931488575738839

/-! ## A341685.P6285204819974822603

`A341691(and(3, Δ[A341681(n)]))`
-/

namespace A341685.P6285204819974822603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A341685.P6285204819974822603

/-! ## A341685.P17392348220921392246

`Δ[A341681(n)]/A000244(n)`
-/

namespace A341685.P17392348220921392246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000244 n : ℚ)

end

end A341685.P17392348220921392246

/-!
# A341686: Expansion of the 5-adic integer Sum_{k>=0} k!.

The programs for A341686, there is no canonical definition to state claims against.
-/

/-! ## A341686.P17236448185594942864

`(A341682(n+1)-A341682(n))/5^n`
-/

namespace A341686.P17236448185594942864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341682 (n + 1) - A341682 n : ℚ) / (5 ^ n : ℚ)

end

end A341686.P17236448185594942864

/-! ## A341686.P1579479152277476026

`floor(A341682(n+1)/5^n)`
-/

namespace A341686.P1579479152277476026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341682 (n + 1) : ℚ) / (5 ^ n : ℚ)⌋

end

end A341686.P1579479152277476026

/-! ## A341686.P15792873535363499604

`Δ[A341682(n)]/A000351(n)`
-/

namespace A341686.P15792873535363499604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341682 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A341686.P15792873535363499604

/-!
# A341687: Expansion of the 7-adic integer Sum_{k>=0} k!.

The programs for A341687, there is no canonical definition to state claims against.
-/

/-! ## A341687.P1597880983506557852

`(A341683(n+1)-A341683(n))/7^n`
-/

namespace A341687.P1597880983506557852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341683 (n + 1) - A341683 n : ℚ) / (7 ^ n : ℚ)

end

end A341687.P1597880983506557852

/-! ## A341687.P10136748651772155699

`Δ[A341683(n)]/7^n`
-/

namespace A341687.P10136748651772155699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341683 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A341687.P10136748651772155699

/-!
# A341688: The number of regions inside a 2 by 1 ellipse formed by the straight line segments mutually connecting all points formed by dividing the ellipse into 2n equal angle sectors from its origin.

The programs for A341688, there is no canonical definition to state claims against.
-/

/-! ## A341688.P15615105107986707124

`A341764(n+1)+1-A341762(n+1)`
-/

namespace A341688.P15615105107986707124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341764 (n + 1) + (1 - A341762 (n + 1))

end

end A341688.P15615105107986707124

/-! ## A341688.P3973174850330911640

`A341764(n+1)-A185048(A341762(n+1))`
-/

namespace A341688.P3973174850330911640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341764 (n + 1) - A185048 (A341762 (n + 1)).toNat

end

end A341688.P3973174850330911640

/-!
# A341691: a(0) = 0, and for any n > 0, a(n) = n - a(k) where k is the greatest number < n such that n AND a(k) = a(k) (where AND denotes the bitwise AND operator).

The programs for A341691, the canonical program `A341691.P6028495003635313432` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341691 has offset 0).

The definition of A341691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341691.P6028495003635313432

`n-a(n-A006519(n))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A341691

/-- `n-a(n-A006519(n))` -/
def P6028495003635313432.Spec : Prop :=
  ∀ n, P6028495003635313432.a n = A341691 n

theorem P6028495003635313432.correct : P6028495003635313432.Spec := by
  intro n
  simp only [A341691]

end A341691

/-! ## A341691.P15114721790212350913

`n-a(and(n, n-1))` with `a(0)=0`
-/

namespace A341691.P15114721790212350913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A341691.P15114721790212350913

namespace A341691

/-- `n-a(and(n, n-1))` -/
def P15114721790212350913.Spec : Prop :=
  ∀ n, P15114721790212350913.a n = A341691 n

end A341691

/-! ## A341691.P14261043277083993516

`and(n, A104895(n))`
-/

namespace A341691.P14261043277083993516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A104895 n)

end

end A341691.P14261043277083993516

namespace A341691

/-- `and(n, A104895(n))` -/
def P14261043277083993516.Spec : Prop :=
  ∀ n, P14261043277083993516.a n = A341691 n

end A341691

/-! ## A341691.P14462075540919854500

`and(n, -A065620(n))`
-/

namespace A341691.P14462075540919854500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-A065620 n)

end

end A341691.P14462075540919854500

namespace A341691

/-- `and(n, -A065620(n))` -/
def P14462075540919854500.Spec : Prop :=
  ∀ n, P14462075540919854500.a n = A341691 n

end A341691

/-! ## A341691.P9682168698794598847

`n-a(A129760(n))` with `a(0)=0`
-/

namespace A341691.P9682168698794598847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (A129760 n).toNat

end

end A341691.P9682168698794598847

namespace A341691

/-- `n-a(A129760(n))` -/
def P9682168698794598847.Spec : Prop :=
  ∀ n, P9682168698794598847.a n = A341691 n

end A341691

/-! ## A341691.P17510932022599072169

`and(n, A065620(2*n)-1)`
-/

namespace A341691.P17510932022599072169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A065620 (2 * n) - 1)

end

end A341691.P17510932022599072169

namespace A341691

/-- `and(n, A065620(2*n)-1)` -/
def P17510932022599072169.Spec : Prop :=
  ∀ n, P17510932022599072169.a n = A341691 n

end A341691

/-! ## A341691.P9240545972100739037

`A229763(A231551(n))`
-/

namespace A341691.P9240545972100739037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (A231551 n).toNat

end

end A341691.P9240545972100739037

namespace A341691

/-- `A229763(A231551(n))` -/
def P9240545972100739037.Spec : Prop :=
  ∀ n, P9240545972100739037.a n = A341691 n

end A341691

/-! ## A341691.P9369409604070226902

`A377404(n)+A246160(n)`
-/

namespace A341691.P9369409604070226902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377404 n + A246160 n

end

end A341691.P9369409604070226902

namespace A341691

/-- `A377404(n)+A246160(n)` -/
def P9369409604070226902.Spec : Prop :=
  ∀ n, P9369409604070226902.a n = A341691 n

end A341691

/-! ## A341691.P7868830173817641068

`A265263(n)-A246159(n)`
-/

namespace A341691.P7868830173817641068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n - A246159 n

end

end A341691.P7868830173817641068

namespace A341691

/-- `A265263(n)-A246159(n)` -/
def P7868830173817641068.Spec : Prop :=
  ∀ n, P7868830173817641068.a n = A341691 n

end A341691

/-! ## A341691.P438845167359115526

`and(n, A030101(A341916(n)))`
-/

namespace A341691.P438845167359115526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A030101 (A341916 n).toNat)

end

end A341691.P438845167359115526

namespace A341691

/-- `and(n, A030101(A341916(n)))` -/
def P438845167359115526.Spec : Prop :=
  ∀ n, P438845167359115526.a n = A341691 n

end A341691

/-! ## A341691.P4165774402022269295

`xor(A102391(n), A265263(n))`
-/

namespace A341691.P4165774402022269295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102391 n) (A265263 n)

end

end A341691.P4165774402022269295

namespace A341691

/-- `xor(A102391(n), A265263(n))` -/
def P4165774402022269295.Spec : Prop :=
  ∀ n, P4165774402022269295.a n = A341691 n

end A341691

/-! ## A341691.P17679924993294243290

`xor(A102392(n), A377404(n))`
-/

namespace A341691.P17679924993294243290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102392 n) (A377404 n)

end

end A341691.P17679924993294243290

namespace A341691

/-- `xor(A102392(n), A377404(n))` -/
def P17679924993294243290.Spec : Prop :=
  ∀ n, P17679924993294243290.a n = A341691 n

end A341691

/-! ## A341691.P14208651899042650028

`(A001057(A006068(n))+n)/2`
-/

namespace A341691.P14208651899042650028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001057 (A006068 n).toNat + (n : ℤ) : ℚ) / 2

end

end A341691.P14208651899042650028

namespace A341691

/-- `(A001057(A006068(n))+n)/2` -/
def P14208651899042650028.Spec : Prop :=
  ∀ n, P14208651899042650028.a n = (A341691 n : ℚ)

end A341691

/-! ## A341691.P561953751787107124

`A104895(A003188(A065620(n)+n))`
-/

namespace A341691.P561953751787107124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A003188 (A065620 n + (n : ℤ)).toNat).toNat

end

end A341691.P561953751787107124

namespace A341691

/-- `A104895(A003188(A065620(n)+n))` -/
def P561953751787107124.Spec : Prop :=
  ∀ n, P561953751787107124.a n = A341691 n

end A341691

/-! ## A341691.P4561446962124827501

`A104895(A003188(n-A104895(n)))`
-/

namespace A341691.P4561446962124827501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A003188 ((n : ℤ) - A104895 n).toNat).toNat

end

end A341691.P4561446962124827501

namespace A341691

/-- `A104895(A003188(n-A104895(n)))` -/
def P4561446962124827501.Spec : Prop :=
  ∀ n, P4561446962124827501.a n = A341691 n

end A341691

/-! ## A341691.P3429466726882663480

`n-A025480(n-A065620(n))`
-/

namespace A341691.P3429466726882663480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025480 ((n : ℤ) - A065620 n).toNat

end

end A341691.P3429466726882663480

namespace A341691

/-- `n-A025480(n-A065620(n))` -/
def P3429466726882663480.Spec : Prop :=
  ∀ n, P3429466726882663480.a n = A341691 n

end A341691

/-! ## A341691.P12698466022874332866

`A006370(A065620(n)+n)`
-/

namespace A341691.P12698466022874332866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A065620 n + (n : ℤ)).toNat

end

end A341691.P12698466022874332866

namespace A341691

/-- `A006370(A065620(n)+n)` -/
def P12698466022874332866.Spec : Prop :=
  ∀ n, P12698466022874332866.a n = A341691 n

end A341691

/-! ## A341691.P17835080597413751261

`A025480(A065620(n)+n)`
-/

namespace A341691.P17835080597413751261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A065620 n + (n : ℤ)).toNat

end

end A341691.P17835080597413751261

namespace A341691

/-- `A025480(A065620(n)+n)` -/
def P17835080597413751261.Spec : Prop :=
  ∀ n, P17835080597413751261.a n = A341691 n

end A341691

/-! ## A341691.P4999962332304470395

`A004526(n-A104895(n))`
-/

namespace A341691.P4999962332304470395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A104895 n).toNat

end

end A341691.P4999962332304470395

namespace A341691

/-- `A004526(n-A104895(n))` -/
def P4999962332304470395.Spec : Prop :=
  ∀ n, P4999962332304470395.a n = A341691 n

end A341691

/-! ## A341691.P8360371932623029599

`A245710(A065620(n)+1+n)`
-/

namespace A341691.P8360371932623029599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (A065620 n + 1 + (n : ℤ)).toNat

end

end A341691.P8360371932623029599

namespace A341691

/-- `A245710(A065620(n)+1+n)` -/
def P8360371932623029599.Spec : Prop :=
  ∀ n, P8360371932623029599.a n = A341691 n

end A341691

/-!
# A341692: Lexicographically earliest sequence of distinct terms > 0 such that the n-th digit of the sequence is shared by a(n) and a(n+1).

The programs for A341692, there is no canonical definition to state claims against.
-/

/-! ## A341692.P3961675553220607434

`A323708(A255261(n+1)%A146205(2*(n+1)))`
-/

namespace A341692.P3961675553220607434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323708 (Int.tmod (A255261 (n + 1)) (A146205 (2 * (n + 1)))).toNat

end

end A341692.P3961675553220607434

/-!
# A341693: Numbers k whose sum of digits divides sigma(k)-k.

The programs for A341693, there is no canonical definition to state claims against.
-/

/-! ## A341693.P15902141425392688741

`lt[A001065(n+1)%A007953(n+1), 1]+1`
-/

namespace A341693.P15902141425392688741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (A007953 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A341693.P15902141425392688741

/-! ## A341693.P2791108996196034478

`A373676(A047255(n+1)%A098346(3*n+1))`
-/

namespace A341693.P2791108996196034478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373676 (Int.tmod (A047255 (n + 1)) (A098346 (3 * n + 1))).toNat

end

end A341693.P2791108996196034478

/-! ## A341693.P12868429472032591703

`A373676(A047255(n+1))%A114245(n+4)`
-/

namespace A341693.P12868429472032591703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373676 (A047255 (n + 1)).toNat) (A114245 (n + 4))

end

end A341693.P12868429472032591703

/-! ## A341693.P3510993552531200988

`A053869(lt[A067080(n+1), A046901(n+1)])`
-/

namespace A341693.P3510993552531200988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341693.P3510993552531200988

/-! ## A341693.P2786490109743557027

`A373676(lt[A000837(2*n), A305858(n+1)])`
-/

namespace A341693.P2786490109743557027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373676 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341693.P2786490109743557027

/-!
# A341694: Square array T(n, k) read by antidiagonals upwards, n, k > 0: T(n, k) = A227736(n, k) for k = 1..A005811(n), and T(n, k) = T(n, k - A005811(n)) + ... + T(n, k-1) for k > A005811(n).

The programs for A341694, there is no canonical definition to state claims against.
-/

/-! ## A341694.P1623459707131285167

`A353854(A329870(n+2)+A137288(n+1))`
-/

namespace A341694.P1623459707131285167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (A329870 (n + 2) + A137288 (n + 1)).toNat

end

end A341694.P1623459707131285167

/-! ## A341694.P2959684497966516186

`A095684(A000926(2*n+3)-A080683(n+1))`
-/

namespace A341694.P2959684497966516186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A000926 (2 * n + 3) - A080683 (n + 1)).toNat

end

end A341694.P2959684497966516186

