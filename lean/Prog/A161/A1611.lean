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
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A161100: Number of partitions of n into squares where every part appears at least 12 times.

The programs for A161100, there is no canonical definition to state claims against.
-/

/-! ## A161100.P5342335766116679314

`A156615(n+1)%A080513(A161048(n+1))`
-/

namespace A161100.P5342335766116679314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156615 (n + 1)) (A080513 (A161048 (n + 1)).toNat)

end

end A161100.P5342335766116679314

/-! ## A161100.P14297473143675320014

`A155989(n+1)%A080513(A161048(n+1))`
-/

namespace A161100.P14297473143675320014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155989 (n + 1)) (A080513 (A161048 (n + 1)).toNat)

end

end A161100.P14297473143675320014

/-! ## A161100.P9519247207890272760

`A161102(lt[A161116(n+3), A161135(n+1)])`
-/

namespace A161100.P9519247207890272760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161100.P9519247207890272760

/-! ## A161100.P2287192644269498685

`p?[A050042(n+1)]%A080513(A161074(n+1))`
-/

namespace A161100.P2287192644269498685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A080513 (A161074 (n + 1)).toNat)

end

end A161100.P2287192644269498685

/-! ## A161100.P394621079733245642

`A111851(A000194(A332378(n+1)-A005940(n+1)))`
-/

namespace A161100.P394621079733245642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (A000194 (A332378 (n + 1) - A005940 (n + 1)).toNat).toNat

end

end A161100.P394621079733245642

/-! ## A161100.P10199980913112530788

`A105452(A105453(n+1))%A080513(A161048(n+1))`
-/

namespace A161100.P10199980913112530788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105452 (A105453 (n + 1)).toNat) (A080513 (A161048 (n + 1)).toNat)

end

end A161100.P10199980913112530788

/-!
# A161101: Number of partitions of n into squares where every part appears at least 13 times.

The programs for A161101, there is no canonical definition to state claims against.
-/

/-! ## A161101.P5339209839932713806

`A161102(record[n+2-A161110(n+1)])`
-/

namespace A161101.P5339209839932713806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A161110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161101.P5339209839932713806

/-! ## A161101.P15399435852139037437

`A161073(A189512(n+1)-A244579(n+1))`
-/

namespace A161101.P15399435852139037437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161073 (A189512 (n + 1) - A244579 (n + 1)).toNat

end

end A161101.P15399435852139037437

/-! ## A161101.P10870017318842678577

`A161102(lt[A266282(n), A161135(n+4)])`
-/

namespace A161101.P10870017318842678577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161101.P10870017318842678577

/-! ## A161101.P15101422519283849770

`round(n/24)^A010815(A210717(n+1))`
-/

namespace A161101.P15101422519283849770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℚ) / 24) : ℚ) ^ (A010815 (A210717 (n + 1)).toNat : ℤ)

end

end A161101.P15101422519283849770

/-! ## A161101.P6745210725615043222

`A353835(A037203(n+3)^A177994(n))`
-/

namespace A161101.P6745210725615043222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (SequenceMachineLib.roundAway ((A037203 (n + 3) : ℚ) ^ (A177994 n : ℤ))).toNat

end

end A161101.P6745210725615043222

/-! ## A161101.P1080797211467098262

`A353835(A037203(n+3)^A063787(n+1))`
-/

namespace A161101.P1080797211467098262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (SequenceMachineLib.roundAway ((A037203 (n + 3) : ℚ) ^ (A063787 (n + 1) : ℤ))).toNat

end

end A161101.P1080797211467098262

/-! ## A161101.P9485838053927968268

`A353835(A037203(n+3)^A037203(n))`
-/

namespace A161101.P9485838053927968268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (SequenceMachineLib.roundAway ((A037203 (n + 3) : ℚ) ^ (A037203 n : ℤ))).toNat

end

end A161101.P9485838053927968268

/-! ## A161101.P12137926156260104351

`A353835(A037203(n+3)^6)`
-/

namespace A161101.P12137926156260104351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A037203 (n + 3) ^ 6).toNat

end

end A161101.P12137926156260104351

/-!
# A161102: Number of partitions of n into squares where every part appears at least 14 times.

The programs for A161102, there is no canonical definition to state claims against.
-/

/-! ## A161102.P17216885051970789453

`round(A257247(n+1)/A336900(n+1))`
-/

namespace A161102.P17216885051970789453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257247 (n + 1) : ℚ) / (A336900 (n + 1) : ℚ))

end

end A161102.P17216885051970789453

/-! ## A161102.P3148439254234303330

`A297038(A325711(n+1))*A297042(n+1)`
-/

namespace A161102.P3148439254234303330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A325711 (n + 1)).toNat * A297042 (n + 1)

end

end A161102.P3148439254234303330

/-! ## A161102.P12223660943705673051

`A297038(A325711(n+1)^A297042(n+1))`
-/

namespace A161102.P12223660943705673051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (SequenceMachineLib.roundAway ((A325711 (n + 1) : ℚ) ^ (A297042 (n + 1) : ℤ))).toNat

end

end A161102.P12223660943705673051

/-! ## A161102.P8117436059775211518

`A297038(C(A325711(n+1), A297042(n+1)))`
-/

namespace A161102.P8117436059775211518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (Nat.choose (A325711 (n + 1)).toNat (A297042 (n + 1)).toNat)

end

end A161102.P8117436059775211518

/-! ## A161102.P13388736660657812186

`ceil(A161115(n+1)/A212207(n))`
-/

namespace A161102.P13388736660657812186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161115 (n + 1) : ℚ) / (A212207 n : ℚ)⌉

end

end A161102.P13388736660657812186

/-! ## A161102.P4087795314547332946

`floor(A331994(n+1)/A007401(2*(n+2)))`
-/

namespace A161102.P4087795314547332946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331994 (n + 1) : ℚ) / (A007401 (2 * (n + 2)) : ℚ)⌋

end

end A161102.P4087795314547332946

/-!
# A161103: Number of partitions of n into nonzero triangular numbers where every part appears at least 2 times.

The programs for A161103, there is no canonical definition to state claims against.
-/

/-! ## A161103.P17716972506644544447

`∏{e}[2^(n+1), A029167(#)]`
-/

namespace A161103.P17716972506644544447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A029167 (Nat.factorization (f1 n) p)

end

end A161103.P17716972506644544447

/-! ## A161103.P11165537222384315871

`∑{e}[A000079(n+1), A029167(#)]`
-/

namespace A161103.P11165537222384315871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A029167 (Nat.factorization (f1 n).natAbs p)

end

end A161103.P11165537222384315871

/-! ## A161103.P11809242756326275979

`∑{e}[2*A000079(n), A029167(#)]`
-/

namespace A161103.P11809242756326275979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A029167 (Nat.factorization (f1 n).natAbs p)

end

end A161103.P11809242756326275979

/-! ## A161103.P4590933637686313471

`A029167(or(n+1, A185284(2*n+1)))`
-/

namespace A161103.P4590933637686313471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (Int.lor (n + 1 : ℤ) (A185284 (2 * n + 1))).toNat

end

end A161103.P4590933637686313471

/-! ## A161103.P16866092052033395822

`A185284(A185284(2*n))+A029167(n+1)`
-/

namespace A161103.P16866092052033395822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 (2 * n)).toNat + A029167 (n + 1)

end

end A161103.P16866092052033395822

/-!
# A161104: Number of partitions of n into nonzero triangular numbers where every part appears at least 3 times.

The programs for A161104, there is no canonical definition to state claims against.
-/

/-! ## A161104.P3916481486435492377

`A130945(A161065(n+1)%A219038(n+1))`
-/

namespace A161104.P3916481486435492377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (Int.tmod (A161065 (n + 1)) (A219038 (n + 1))).toNat

end

end A161104.P3916481486435492377

/-! ## A161104.P12578150406072444996

`A057164(A161065(n+1)%A224222(n))`
-/

namespace A161104.P12578150406072444996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (Int.tmod (A161065 (n + 1)) (A224222 n)).toNat

end

end A161104.P12578150406072444996

/-! ## A161104.P5742250610178199048

`A106405(n+1)+A007359(A301337(n+1))`
-/

namespace A161104.P5742250610178199048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (n + 1) + A007359 (A301337 (n + 1)).toNat

end

end A161104.P5742250610178199048

/-!
# A161106: Number of partitions of n into nonzero triangular numbers where every part appears at least 5 times.

The programs for A161106, there is no canonical definition to state claims against.
-/

/-! ## A161106.P3179779530490650483

`A082325(A161067(n+1)%A173061(n))`
-/

namespace A161106.P3179779530490650483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (Int.tmod (A161067 (n + 1)) (A173061 n)).toNat

end

end A161106.P3179779530490650483

/-! ## A161106.P6531719005728620279

`A161067(n+1)+A000007(A144879(n+1))`
-/

namespace A161106.P6531719005728620279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161067 (n + 1) + A000007 (A144879 (n + 1)).toNat

end

end A161106.P6531719005728620279

/-! ## A161106.P10014988150424745198

`or(A010051(A006206(n+1)), A161067(n+1))`
-/

namespace A161106.P10014988150424745198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A006206 (n + 1)).toNat) (A161067 (n + 1))

end

end A161106.P10014988150424745198

/-! ## A161106.P667478300177792997

`A082325(A161067(n+1)^A122698(n+1)!)`
-/

namespace A161106.P667478300177792997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (A161067 (n + 1) ^ Nat.factorial (A122698 (n + 1)).toNat).toNat

end

end A161106.P667478300177792997

/-! ## A161106.P11986182650637097068

`A082325(A161067(n+1))%A246748(A074122(n+1))`
-/

namespace A161106.P11986182650637097068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082325 (A161067 (n + 1)).toNat) (A246748 (A074122 (n + 1)).toNat)

end

end A161106.P11986182650637097068

/-!
# A161107: Number of partitions of n into nonzero triangular numbers where every part appears at least 6 times.

The programs for A161107, there is no canonical definition to state claims against.
-/

/-! ## A161107.P18332753942071902373

`A089854(A161068(n+1)%A005496(n))`
-/

namespace A161107.P18332753942071902373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (Int.tmod (A161068 (n + 1)) (A005496 n)).toNat

end

end A161107.P18332753942071902373

/-!
# A161108: Number of partitions of n into nonzero triangular numbers where every part appears at least 7 times.

The programs for A161108, there is no canonical definition to state claims against.
-/

/-! ## A161108.P9621968665794228108

`A185284(A161081(n+1))+A161069(n+1)`
-/

namespace A161108.P9621968665794228108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161081 (n + 1)).toNat + A161069 (n + 1)

end

end A161108.P9621968665794228108

/-! ## A161108.P12773861812540248625

`A037474(A161069(n+1)%A087867(n+1))`
-/

namespace A161108.P12773861812540248625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A161069 (n + 1)) (A087867 (n + 1))).toNat

end

end A161108.P12773861812540248625

/-! ## A161108.P6676790418009868131

`A037474(A161069(n+1))%A346022(n+1)`
-/

namespace A161108.P6676790418009868131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A161069 (n + 1)).toNat) (A346022 (n + 1))

end

end A161108.P6676790418009868131

/-!
# A161109: Number of partitions of n into nonzero triangular numbers where every part appears at least 8 times.

The programs for A161109, there is no canonical definition to state claims against.
-/

/-! ## A161109.P12758882177734120969

`A235489(A161070(n+1))^A014963(A035938(n))`
-/

namespace A161109.P12758882177734120969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235489 (A161070 (n + 1)).toNat : ℚ) ^ (A014963 (A035938 n).toNat : ℤ)

end

end A161109.P12758882177734120969

/-! ## A161109.P3034157378907631009

`or(A161070(n+1), A185284(A035463(n+1)))`
-/

namespace A161109.P3034157378907631009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161070 (n + 1)) (A185284 (A035463 (n + 1)).toNat)

end

end A161109.P3034157378907631009

/-!
# A161110: Number of partitions of n into nonzero triangular numbers where every part appears at least 9 times.

The programs for A161110, there is no canonical definition to state claims against.
-/

/-! ## A161110.P5704489916294779281

`A185284(A062830(n+1))+A161071(n+1)`
-/

namespace A161110.P5704489916294779281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A062830 (n + 1)).toNat + A161071 (n + 1)

end

end A161110.P5704489916294779281

/-!
# A161111: Number of partitions of n into nonzero triangular numbers where every part appears at least 10 times.

The programs for A161111, there is no canonical definition to state claims against.
-/

/-! ## A161111.P11714407153869007399

`A007095(A161072(n+1)%A176654(n+1))`
-/

namespace A161111.P11714407153869007399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A161072 (n + 1)) (A176654 (n + 1))).toNat

end

end A161111.P11714407153869007399

/-! ## A161111.P12608463021217768240

`A007095(A161072(n+1))%A278619(n+1)`
-/

namespace A161111.P12608463021217768240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A161072 (n + 1)).toNat) (A278619 (n + 1))

end

end A161111.P12608463021217768240

/-!
# A161112: Number of partitions of n into nonzero triangular numbers where every part appears at least 11 times.

The programs for A161112, there is no canonical definition to state claims against.
-/

/-! ## A161112.P18251195429265744331

`A065650(A161073(n+1))%A031133(n+1)`
-/

namespace A161112.P18251195429265744331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065650 (A161073 (n + 1)).toNat) (A031133 (n + 1))

end

end A161112.P18251195429265744331

/-! ## A161112.P8832870104064479181

`A065650(A161073(n+1))+A000038(A100082(n))`
-/

namespace A161112.P8832870104064479181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (A161073 (n + 1)).toNat + A000038 (A100082 n).toNat

end

end A161112.P8832870104064479181

/-! ## A161112.P3308849258548907511

`A065650(A161073(n+1))*A093178(A009946(n))`
-/

namespace A161112.P3308849258548907511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (A161073 (n + 1)).toNat * A093178 (A009946 n).toNat

end

end A161112.P3308849258548907511

/-! ## A161112.P9579237869300721487

`A324902(A155024(n+1))+A065650(A161073(n+1))`
-/

namespace A161112.P9579237869300721487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (A155024 (n + 1)).toNat + A065650 (A161073 (n + 1)).toNat

end

end A161112.P9579237869300721487

/-! ## A161112.P18180733740038004710

`A010051(A028871(n+1))*A065650(A161073(n+1))`
-/

namespace A161112.P18180733740038004710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028871 (n + 1)).toNat * A065650 (A161073 (n + 1)).toNat

end

end A161112.P18180733740038004710

/-! ## A161112.P5309144161834602836

`A014963(A343065(n+1))*A065650(A161073(n+1))`
-/

namespace A161112.P5309144161834602836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A343065 (n + 1)).toNat * A065650 (A161073 (n + 1)).toNat

end

end A161112.P5309144161834602836

/-!
# A161116: a(n) is the number of nontrivial positive divisors of 2n+3.

The programs for A161116, the canonical program `A161116.P10574643515255184138` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161116 has offset 0).

The definition of A161116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161116.P10009924611150061327

`A000005(2*n+3)-2`
-/

namespace A161116.P10009924611150061327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3) - 2

end

end A161116.P10009924611150061327

namespace A161116

/-- `A000005(2*n+3)-2` -/
def P10009924611150061327.Spec : Prop :=
  ∀ n, P10009924611150061327.a n = A161116 n

end A161116

/-! ## A161116.P10574643515255184138

`A070824(2*n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161116

/-- `A070824(2*n+3)` -/
def P10574643515255184138.Spec : Prop :=
  ∀ n, P10574643515255184138.a n = A161116 n

theorem P10574643515255184138.correct : P10574643515255184138.Spec := by
  intro n
  simp only [A161116]

end A161116

/-! ## A161116.P13300748774969310325

`∏{e}[2*n+3, #+1]-2`
-/

namespace A161116.P13300748774969310325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 2

end

end A161116.P13300748774969310325

namespace A161116

/-- `∏{e}[2*n+3, #+1]-2` -/
def P13300748774969310325.Spec : Prop :=
  ∀ n, P13300748774969310325.a n = A161116 n

end A161116

/-! ## A161116.P1634902327383368428

`∑{d}[2*n+3, #%2]-2`
-/

namespace A161116.P1634902327383368428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) - 2

end

end A161116.P1634902327383368428

namespace A161116

/-- `∑{d}[2*n+3, #%2]-2` -/
def P1634902327383368428.Spec : Prop :=
  ∀ n, P1634902327383368428.a n = A161116 n

end A161116

/-! ## A161116.P12269824775814046020

`∑{d}[2*n+3, gcd(2, #)]-2`
-/

namespace A161116.P12269824775814046020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d : ℕ) : ℤ) - 2

end

end A161116.P12269824775814046020

namespace A161116

/-- `∑{d}[2*n+3, gcd(2, #)]-2` -/
def P12269824775814046020.Spec : Prop :=
  ∀ n, P12269824775814046020.a n = A161116 n

end A161116

/-! ## A161116.P11735364603264424327

`∑{d}[2*n+3, 1-C(2, #)]`
-/

namespace A161116.P11735364603264424327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.choose 2 d : ℤ))

end

end A161116.P11735364603264424327

namespace A161116

/-- `∑{d}[2*n+3, 1-C(2, #)]` -/
def P11735364603264424327.Spec : Prop :=
  ∀ n, P11735364603264424327.a n = A161116 n

end A161116

/-! ## A161116.P8332604015775653194

`∑{d}[2*(n+1)+1, floor(atan(#))]-1`
-/

namespace A161116.P8332604015775653194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ - 1

end

end A161116.P8332604015775653194

namespace A161116

/-- `∑{d}[2*(n+1)+1, floor(atan(#))]-1` -/
def P8332604015775653194.Spec : Prop :=
  ∀ n, P8332604015775653194.a n = A161116 n

end A161116

/-! ## A161116.P16570105221518034777

`A095374(n+1)-1`
-/

namespace A161116.P16570105221518034777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 1) - 1

end

end A161116.P16570105221518034777

namespace A161116

/-- `A095374(n+1)-1` -/
def P16570105221518034777.Spec : Prop :=
  ∀ n, P16570105221518034777.a n = A161116 n

end A161116

/-! ## A161116.P15120458054432954104

`abs(∑[A066518(n+1)])`
-/

namespace A161116.P15120458054432954104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A161116.P15120458054432954104

namespace A161116

/-- `abs(∑[A066518(n+1)])` -/
def P15120458054432954104.Spec : Prop :=
  ∀ n, P15120458054432954104.a n = A161116 n

end A161116

/-! ## A161116.P10472380444587257562

`Δ[A263085(n+1)]-2`
-/

namespace A161116.P10472380444587257562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A161116.P10472380444587257562

namespace A161116

/-- `Δ[A263085(n+1)]-2` -/
def P10472380444587257562.Spec : Prop :=
  ∀ n, P10472380444587257562.a n = A161116 n

end A161116

/-! ## A161116.P15683768686406198538

`A211261(2*n+3)-1`
-/

namespace A161116.P15683768686406198538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (2 * n + 3) - 1

end

end A161116.P15683768686406198538

namespace A161116

/-- `A211261(2*n+3)-1` -/
def P15683768686406198538.Spec : Prop :=
  ∀ n, P15683768686406198538.a n = A161116 n

end A161116

/-! ## A161116.P13895528814875179893

`A211270(2*n+3)-1`
-/

namespace A161116.P13895528814875179893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211270 (2 * n + 3) - 1

end

end A161116.P13895528814875179893

namespace A161116

/-- `A211270(2*n+3)-1` -/
def P13895528814875179893.Spec : Prop :=
  ∀ n, P13895528814875179893.a n = A161116 n

end A161116

/-! ## A161116.P6429078196810074107

`A338117(2*n+3)-1`
-/

namespace A161116.P6429078196810074107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * n + 3) - 1

end

end A161116.P6429078196810074107

namespace A161116

/-- `A338117(2*n+3)-1` -/
def P6429078196810074107.Spec : Prop :=
  ∀ n, P6429078196810074107.a n = A161116 n

end A161116

/-! ## A161116.P1004122554392091316

`A060764(2*n+3)-2`
-/

namespace A161116.P1004122554392091316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (2 * n + 3) - 2

end

end A161116.P1004122554392091316

namespace A161116

/-- `A060764(2*n+3)-2` -/
def P1004122554392091316.Spec : Prop :=
  ∀ n, P1004122554392091316.a n = A161116 n

end A161116

/-! ## A161116.P10748981985437665476

`abs(2-A000005(n+3+n))`
-/

namespace A161116.P10748981985437665476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000005 (n + 3 + n)|

end

end A161116.P10748981985437665476

namespace A161116

/-- `abs(2-A000005(n+3+n))` -/
def P10748981985437665476.Spec : Prop :=
  ∀ n, P10748981985437665476.a n = A161116 n

end A161116

/-! ## A161116.P11388866612773955208

`abs(A000005(Δ[xor(n, -1)²])-2)`
-/

namespace A161116.P11388866612773955208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (f1 (n + 1) - f1 n).toNat - 2|

end

end A161116.P11388866612773955208

namespace A161116

/-- `abs(A000005(Δ[xor(n, -1)²])-2)` -/
def P11388866612773955208.Spec : Prop :=
  ∀ n, P11388866612773955208.a n = A161116 n

end A161116

/-! ## A161116.P13409746716641132452

`∑[Δ[A000005(2*n+1)]%(n+1)]`
-/

namespace A161116.P13409746716641132452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161116.P13409746716641132452

namespace A161116

/-- `∑[Δ[A000005(2*n+1)]%(n+1)]` -/
def P13409746716641132452.Spec : Prop :=
  ∀ n, P13409746716641132452.a n = A161116 n

end A161116

/-! ## A161116.P4342013049613164918

`Δ[A000005(n+1+n)]+a(n-1)` with `a(0)=0`
-/

namespace A161116.P4342013049613164918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A161116.P4342013049613164918

namespace A161116

/-- `Δ[A000005(n+1+n)]+a(n-1)` -/
def P4342013049613164918.Spec : Prop :=
  ∀ n, P4342013049613164918.a n = A161116 n

end A161116

/-! ## A161116.P770515596918283238

`floor(A000005(Δ[(n+1)²])-(n+2)/(n+1))`
-/

namespace A161116.P770515596918283238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) - (n + 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A161116.P770515596918283238

namespace A161116

/-- `floor(A000005(Δ[(n+1)²])-(n+2)/(n+1))` -/
def P770515596918283238.Spec : Prop :=
  ∀ n, P770515596918283238.a n = A161116 n

end A161116

/-! ## A161116.P2695465785102359097

`A023645(A278223(n+2))`
-/

namespace A161116.P2695465785102359097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A278223 (n + 2)).toNat

end

end A161116.P2695465785102359097

namespace A161116

/-- `A023645(A278223(n+2))` -/
def P2695465785102359097.Spec : Prop :=
  ∀ n, P2695465785102359097.a n = A161116 n

end A161116

/-!
# A161118: Honaker emirps: terms in A033548 that are emirps.

The programs for A161118, there is no canonical definition to state claims against.
-/

/-! ## A161118.P9908888318334068649

`∩[A006567(n+1), A033548(n+1)]`
-/

namespace A161118.P9908888318334068649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161118.P9908888318334068649

/-! ## A161118.P12141355490166712371

`∩[A006567(n+1), A343139(n+1)]`
-/

namespace A161118.P12141355490166712371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161118.P12141355490166712371

/-! ## A161118.P8910121511458627947

`∩[A006567(n+1), A000040(A033549(n+1))]`
-/

namespace A161118.P8910121511458627947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033549 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161118.P8910121511458627947

/-! ## A161118.P17306560774536983837

`∩[A033548(n+1), A000040(A156793(n+1))]`
-/

namespace A161118.P17306560774536983837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161118.P17306560774536983837

/-! ## A161118.P13584882994556720329

`A000040(∩[A033549(n+1), A156793(n+1)])`
-/

namespace A161118.P13584882994556720329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A161118.P13584882994556720329

/-!
# A161119: Triangle read by rows: T(n,k) is the number of fixed-point-free involutions of {1,2,...,2n} having k cycles with entries of opposite parities (0 <= k <= n).

The programs for A161119, the canonical program `A161119.P4814406896109000407` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161119 has offset 0).

The definition of A161119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161119.P4814406896109000407

`A066325(n)²*A233543(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161119

/-- `A066325(n)²*A233543(n)` -/
def P4814406896109000407.Spec : Prop :=
  ∀ n, P4814406896109000407.a n = A161119 n

theorem P4814406896109000407.correct : P4814406896109000407.Spec := by
  intro n
  simp only [A161119]

end A161119

/-! ## A161119.P17437463503863295233

`A066325(n)²*A002262(n)!`
-/

namespace A161119.P17437463503863295233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2 * (Nat.factorial (A002262 n).toNat : ℤ)

end

end A161119.P17437463503863295233

namespace A161119

/-- `A066325(n)²*A002262(n)!` -/
def P17437463503863295233.Spec : Prop :=
  ∀ n, P17437463503863295233.a n = A161119 n

end A161119

/-! ## A161119.P7586184282975528968

`A099174(n)²*A002262(n)!`
-/

namespace A161119.P7586184282975528968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n ^ 2 * (Nat.factorial (A002262 n).toNat : ℤ)

end

end A161119.P7586184282975528968

namespace A161119

/-- `A099174(n)²*A002262(n)!` -/
def P7586184282975528968.Spec : Prop :=
  ∀ n, P7586184282975528968.a n = A161119 n

end A161119

/-! ## A161119.P5344533869489992789

`A066325(n)²*A144328(n+1)!`
-/

namespace A161119.P5344533869489992789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2 * (Nat.factorial (A144328 (n + 1)).toNat : ℤ)

end

end A161119.P5344533869489992789

namespace A161119

/-- `A066325(n)²*A144328(n+1)!` -/
def P5344533869489992789.Spec : Prop :=
  ∀ n, P5344533869489992789.a n = A161119 n

end A161119

/-! ## A161119.P17588675149568121810

`A099174(n)²*A104150(A002260(n+1))`
-/

namespace A161119.P17588675149568121810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n ^ 2 * A104150 (A002260 (n + 1)).toNat

end

end A161119.P17588675149568121810

namespace A161119

/-- `A099174(n)²*A104150(A002260(n+1))` -/
def P17588675149568121810.Spec : Prop :=
  ∀ n, P17588675149568121810.a n = A161119 n

end A161119

/-! ## A161119.P1221312408948925204

`A008279(n)/A007318(n)*A066325(n)²`
-/

namespace A161119.P1221312408948925204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A066325 n ^ 2 : ℚ)

end

end A161119.P1221312408948925204

namespace A161119

/-- `A008279(n)/A007318(n)*A066325(n)²` -/
def P1221312408948925204.Spec : Prop :=
  ∀ n, P1221312408948925204.a n = (A161119 n : ℚ)

end A161119

/-! ## A161119.P107768102560571158

`A099174(n)²*A267383(A292564(n))`
-/

namespace A161119.P107768102560571158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n ^ 2 * A267383 (A292564 n).toNat

end

end A161119.P107768102560571158

namespace A161119

/-- `A099174(n)²*A267383(A292564(n))` -/
def P107768102560571158.Spec : Prop :=
  ∀ n, P107768102560571158.a n = A161119 n

end A161119

/-! ## A161119.P4709491504392091805

`A066325(n)²*A001222(A059268(n))!`
-/

namespace A161119.P4709491504392091805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2 * (Nat.factorial (A001222 (A059268 n).toNat).toNat : ℤ)

end

end A161119.P4709491504392091805

namespace A161119

/-- `A066325(n)²*A001222(A059268(n))!` -/
def P4709491504392091805.Spec : Prop :=
  ∀ n, P4709491504392091805.a n = A161119 n

end A161119

/-! ## A161119.P2852427307056019087

`A099174(n)²*A112624(A059268(n))`
-/

namespace A161119.P2852427307056019087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n ^ 2 * A112624 (A059268 n).toNat

end

end A161119.P2852427307056019087

namespace A161119

/-- `A099174(n)²*A112624(A059268(n))` -/
def P2852427307056019087.Spec : Prop :=
  ∀ n, P2852427307056019087.a n = A161119 n

end A161119

/-!
# A161120: Number of cycles with entries of opposite parities in all fixed-point-free involutions of {1,2,...,2n}.

The programs for A161120, there is no canonical definition to state claims against.
-/

/-! ## A161120.P10476994646839116371

`n²*∏[abs(1-n)+n-2]`
-/

namespace A161120.P10476994646839116371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A161120.P10476994646839116371

/-! ## A161120.P780354804212367789

`∏[abs(1-2*n)]-(3-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A161120.P780354804212367789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (3 - (2 * n : ℤ)) * a (n - 1)

end

end A161120.P780354804212367789

/-! ## A161120.P5591701228322285729

`abs(n²*A330797(n))`
-/

namespace A161120.P5591701228322285729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A330797 n|

end

end A161120.P5591701228322285729

/-! ## A161120.P13557755401202005488

`n*A001147(n)-A161122(n)`
-/

namespace A161120.P13557755401202005488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001147 n - A161122 n

end

end A161120.P13557755401202005488

/-! ## A161120.P816620721742557498

`A161124(n)/(2*n-1)`
-/

namespace A161120.P816620721742557498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161124 n : ℚ) / ((2 * n : ℤ) - 1 : ℚ)

end

end A161120.P816620721742557498

/-! ## A161120.P12208715095666612061

`Δ[A161122(n)]-A161124(n)`
-/

namespace A161120.P12208715095666612061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A161124 n

end

end A161120.P12208715095666612061

/-! ## A161120.P3402829341820316417

`n²*A001147(n)/A060747(n)`
-/

namespace A161120.P3402829341820316417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A001147 n : ℚ) / (A060747 n : ℚ)

end

end A161120.P3402829341820316417

/-!
# A161122: Number of cycles with entries of the same parity in all fixed-point-free involutions of {1,2,...,2n}.

The programs for A161122, there is no canonical definition to state claims against.
-/

/-! ## A161122.P2258030964380889146

`n*record[-A334823(n)]`
-/

namespace A161122.P2258030964380889146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A334823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161122.P2258030964380889146

/-! ## A161122.P9534117390192646690

`abs(∏[a(n-1)-2])*A161680(n)` with `a(0)=2, a(1)=1`
-/

namespace A161122.P9534117390192646690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| * A161680 n

end

end A161122.P9534117390192646690

/-! ## A161122.P12281407790831042299

`n*A001147(n)-A161120(n)`
-/

namespace A161122.P12281407790831042299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001147 n - A161120 n

end

end A161122.P12281407790831042299

/-! ## A161122.P13614955856913906368

`abs(A129779(n+1)*A161680(n))`
-/

namespace A161122.P13614955856913906368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129779 (n + 1) * A161680 n|

end

end A161122.P13614955856913906368

/-! ## A161122.P2833753932244648263

`∏[A028310(A004274(n))]*A161680(n)`
-/

namespace A161122.P2833753932244648263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A161680 n

end

end A161122.P2833753932244648263

/-! ## A161122.P12291878992319612229

`A102625(A152947(n+1))*A161680(n)`
-/

namespace A161122.P12291878992319612229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102625 (A152947 (n + 1)).toNat * A161680 n

end

end A161122.P12291878992319612229

/-! ## A161122.P3647882657917468318

`A102625(A161680(n)+1)*A161680(n)`
-/

namespace A161122.P3647882657917468318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102625 (A161680 n + 1).toNat * A161680 n

end

end A161122.P3647882657917468318

/-!
# A161123: Triangle read by rows: T(n,k) is the number of fixed-point-free involutions of {1,2,...,2n} having k inversions (0 <= k <= n(2n-1)).

The programs for A161123, there is no canonical definition to state claims against.
-/

/-! ## A161123.P475482853126437619

`and(A121444(A003242(n)), A285777(n))`
-/

namespace A161123.P475482853126437619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121444 (A003242 n).toNat) (A285777 n)

end

end A161123.P475482853126437619

/-! ## A161123.P13689711243722263452

`and(A095384(n), A344318(A344325(n+1)))`
-/

namespace A161123.P13689711243722263452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095384 n) (A344318 (A344325 (n + 1)).toNat)

end

end A161123.P13689711243722263452

/-! ## A161123.P13342999650553799233

`A108964(41*A087443(n))`
-/

namespace A161123.P13342999650553799233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (41 * A087443 n).toNat

end

end A161123.P13342999650553799233

/-! ## A161123.P1187499318550793620

`A143262(A006156(n)+n)`
-/

namespace A161123.P1187499318550793620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A006156 n + (n : ℤ)).toNat

end

end A161123.P1187499318550793620

/-! ## A161123.P13389393864026210760

`A164704(6*(n+3))`
-/

namespace A161123.P13389393864026210760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164704 (6 * (n + 3))

end

end A161123.P13389393864026210760

/-!
# A161124: Number of inversions in all fixed-point-free involutions of {1,2,...,2n}.

The programs for A161124, the canonical program `A161124.P4802588664088639793` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161124 has offset 0).

The definition of A161124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161124.P4802588664088639793

`n²*A001147(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161124

/-- `n²*A001147(n)` -/
def P4802588664088639793.Spec : Prop :=
  ∀ n, P4802588664088639793.a n = A161124 n

theorem P4802588664088639793.correct : P4802588664088639793.Spec := by
  intro n
  simp only [A161124]

end A161124

/-! ## A161124.P3747657908111669482

`n²*(2*n)!/(n!*2^n)`
-/

namespace A161124.P3747657908111669482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * 2 ^ n : ℚ)

end

end A161124.P3747657908111669482

namespace A161124

/-- `n²*(2*n)!/(n!*2^n)` -/
def P3747657908111669482.Spec : Prop :=
  ∀ n, P3747657908111669482.a n = (A161124 n : ℚ)

end A161124

/-! ## A161124.P15375335006064691774

`∏[abs(1-2*n)]*n²`
-/

namespace A161124.P15375335006064691774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (n ^ 2 : ℤ)

end

end A161124.P15375335006064691774

namespace A161124

/-- `∏[abs(1-2*n)]*n²` -/
def P15375335006064691774.Spec : Prop :=
  ∀ n, P15375335006064691774.a n = A161124 n

end A161124

/-! ## A161124.P2534857003711063098

`abs(n²*Δ[A076795(n)])`
-/

namespace A161124.P2534857003711063098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A161124.P2534857003711063098

namespace A161124

/-- `abs(n²*Δ[A076795(n)])` -/
def P2534857003711063098.Spec : Prop :=
  ∀ n, P2534857003711063098.a n = A161124 n

end A161124

/-! ## A161124.P3772042503612611794

`Δ[A161122(n)]-A161120(n)`
-/

namespace A161124.P3772042503612611794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A161120 n

end

end A161124.P3772042503612611794

namespace A161124

/-- `Δ[A161122(n)]-A161120(n)` -/
def P3772042503612611794.Spec : Prop :=
  ∀ n, P3772042503612611794.a n = A161124 n

end A161124

/-! ## A161124.P9601114841581401455

`record[A002620(n)*A123023(n)]`
-/

namespace A161124.P9601114841581401455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A123023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161124.P9601114841581401455

namespace A161124

/-- `record[A002620(n)*A123023(n)]` -/
def P9601114841581401455.Spec : Prop :=
  ∀ n, P9601114841581401455.a n = A161124 n

end A161124

/-! ## A161124.P9447273273345283808

`A161120(n+1)-A001147(n+1)`
-/

namespace A161124.P9447273273345283808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161120 (n + 1) - A001147 (n + 1)

end

end A161124.P9447273273345283808

namespace A161124

/-- `A161120(n+1)-A001147(n+1)` -/
def P9447273273345283808.Spec : Prop :=
  ∀ n, P9447273273345283808.a n = A161124 n

end A161124

/-! ## A161124.P4380118402173215745

`A126965(n)+a(n-1)*A004273(n)` with `a(0)=0`
-/

namespace A161124.P4380118402173215745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126965 n + a (n - 1) * A004273 n

end

end A161124.P4380118402173215745

namespace A161124

/-- `A126965(n)+a(n-1)*A004273(n)` -/
def P4380118402173215745.Spec : Prop :=
  ∀ n, P4380118402173215745.a n = A161124 n

end A161124

/-! ## A161124.P15298235401186328237

`A126965(n)+a(n-1)*record[A006257(n)]` with `a(0)=0`
-/

namespace A161124.P15298235401186328237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126965 n + a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161124.P15298235401186328237

namespace A161124

/-- `A126965(n)+a(n-1)*record[A006257(n)]` -/
def P15298235401186328237.Spec : Prop :=
  ∀ n, P15298235401186328237.a n = A161124 n

end A161124

/-! ## A161124.P13810697364202536256

`A126965(n)+a(n-1)*lt[0, A083594(n)]` with `a(0)=0`
-/

namespace A161124.P13810697364202536256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083594 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126965 n + a (n - 1) * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A161124.P13810697364202536256

namespace A161124

/-- `A126965(n)+a(n-1)*lt[0, A083594(n)]` -/
def P13810697364202536256.Spec : Prop :=
  ∀ n, P13810697364202536256.a n = A161124 n

end A161124

/-!
# A161125: Number of descents in all involutions of {1,2,...,n}.

The programs for A161125, the canonical program `A161125.P4597035996949702107` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161125 has offset 0).

The definition of A161125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161125.P4597035996949702107

`(n-1)*(a(n-1)/(n-2)+(n-1)*a(n-2)/(n-3))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161125

/-- `(n-1)*(a(n-1)/(n-2)+(n-1)*a(n-2)/(n-3))` -/
def P4597035996949702107.Spec : Prop :=
  ∀ n, P4597035996949702107.a n = (A161125 n : ℚ)

end A161125

/-! ## A161125.P14594104741763108588

`ceil((n-1)*A000085(n)/2)`
-/

namespace A161125.P14594104741763108588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1) * A000085 n : ℚ) / 2⌉

end

end A161125.P14594104741763108588

namespace A161125

/-- `ceil((n-1)*A000085(n)/2)` -/
def P14594104741763108588.Spec : Prop :=
  ∀ n, P14594104741763108588.a n = A161125 n

end A161125

/-! ## A161125.P14930535482073434694

`A000085(n)/A028310(n)*A161680(n)`
-/

namespace A161125.P14930535482073434694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / (A028310 n : ℚ) * (A161680 n : ℚ)

end

end A161125.P14930535482073434694

namespace A161125

/-- `A000085(n)/A028310(n)*A161680(n)` -/
def P14930535482073434694.Spec : Prop :=
  ∀ n, P14930535482073434694.a n = (A161125 n : ℚ)

end A161125

/-! ## A161125.P11759026497883681127

`A189940(A028310(n))-A001475(A028310(n))`
-/

namespace A161125.P11759026497883681127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189940 (A028310 n).toNat - A001475 (A028310 n).toNat

end

end A161125.P11759026497883681127

namespace A161125

/-- `A189940(A028310(n))-A001475(A028310(n))` -/
def P11759026497883681127.Spec : Prop :=
  ∀ n, P11759026497883681127.a n = A161125 n

end A161125

/-! ## A161125.P14812139558877399035

`(n-1)*A238802(A000124(n))`
-/

namespace A161125.P14812139558877399035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A238802 (A000124 n).toNat

end

end A161125.P14812139558877399035

namespace A161125

/-- `(n-1)*A238802(A000124(n))` -/
def P14812139558877399035.Spec : Prop :=
  ∀ n, P14812139558877399035.a n = A161125 n

end A161125

/-! ## A161125.P16377679851450249927

`(n-1)*A238802(A342939(n+1))`
-/

namespace A161125.P16377679851450249927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A238802 (A342939 (n + 1)).toNat

end

end A161125.P16377679851450249927

namespace A161125

/-- `(n-1)*A238802(A342939(n+1))` -/
def P16377679851450249927.Spec : Prop :=
  ∀ n, P16377679851450249927.a n = A161125 n

end A161125

/-!
# A161126: Triangle read by rows: T(n,k) is the number of involutions of {1,2,...,n} having k descents (n >= 1; 0 <= k < n).

The programs for A161126, there is no canonical definition to state claims against.
-/

/-! ## A161126.P8971022402513978654

`A000115(2*A007318(n))-A267922(A252724(n+1))`
-/

namespace A161126.P8971022402513978654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * A007318 n).toNat - A267922 (A252724 (n + 1)).toNat

end

end A161126.P8971022402513978654

/-! ## A161126.P15775981055044744987

`A276611(A156184(n)²)`
-/

namespace A161126.P15775981055044744987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A156184 n ^ 2).toNat

end

end A161126.P15775981055044744987

/-! ## A161126.P10347191251171000847

`A112970(A382741(n+1))`
-/

namespace A161126.P10347191251171000847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (A382741 (n + 1)).toNat

end

end A161126.P10347191251171000847

/-! ## A161126.P6630379053893727685

`A117173(6*A007318(n))`
-/

namespace A161126.P6630379053893727685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (6 * A007318 n).toNat

end

end A161126.P6630379053893727685

/-! ## A161126.P11371459752675630345

`A130664(A302998(n)%A128367(2*n+1))`
-/

namespace A161126.P11371459752675630345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130664 (Int.tmod (A302998 n) (A128367 (2 * n + 1))).toNat

end

end A161126.P11371459752675630345

/-!
# A161128: a(n) = n!*(1/1 + 1/2 + ... + 1/n) - (1! + 2! + ... + n!).

The programs for A161128, the canonical program `A161128.P10683319585445762331` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161128 has offset 0).

The definition of A161128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161128.P10683319585445762331

`A000254(n)-A007489(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161128

/-- `A000254(n)-A007489(n)` -/
def P10683319585445762331.Spec : Prop :=
  ∀ n, P10683319585445762331.a n = A161128 n

theorem P10683319585445762331.correct : P10683319585445762331.Spec := by
  intro n
  simp only [A161128]

end A161128

/-! ## A161128.P17346456603230497673

`∑[A006675(abs(1-n))]`
-/

namespace A161128.P17346456603230497673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006675 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161128.P17346456603230497673

namespace A161128

/-- `∑[A006675(abs(1-n))]` -/
def P17346456603230497673.Spec : Prop :=
  ∀ n, P17346456603230497673.a n = A161128 n

end A161128

/-! ## A161128.P15854273889653278457

`abs(A081048(n))-A007489(n)`
-/

namespace A161128.P15854273889653278457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A007489 n

end

end A161128.P15854273889653278457

namespace A161128

/-- `abs(A081048(n))-A007489(n)` -/
def P15854273889653278457.Spec : Prop :=
  ∀ n, P15854273889653278457.a n = A161128 n

end A161128

/-! ## A161128.P11728792673417886297

`1-(A081047(n)+A003422(n))`
-/

namespace A161128.P11728792673417886297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A081047 n + A003422 n)

end

end A161128.P11728792673417886297

namespace A161128

/-- `1-(A081047(n)+A003422(n))` -/
def P11728792673417886297.Spec : Prop :=
  ∀ n, P11728792673417886297.a n = A161128 n

end A161128

/-! ## A161128.P1524767787121167922

`A000254(n)-(A033312(n)+A003422(n))`
-/

namespace A161128.P1524767787121167922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - (A033312 n + A003422 n)

end

end A161128.P1524767787121167922

namespace A161128

/-- `A000254(n)-(A033312(n)+A003422(n))` -/
def P1524767787121167922.Spec : Prop :=
  ∀ n, P1524767787121167922.a n = A161128 n

end A161128

/-! ## A161128.P7552955673789224435

`∑[A006675(n)]-A006675(n)`
-/

namespace A161128.P7552955673789224435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006675 n

end

end A161128.P7552955673789224435

namespace A161128

/-- `∑[A006675(n)]-A006675(n)` -/
def P7552955673789224435.Spec : Prop :=
  ∀ n, P7552955673789224435.a n = A161128 n

end A161128

/-!
# A161129: Triangle read by rows: T(n,k) is the number of non-derangements of {1,2,...,n} for which the difference between the largest and smallest fixed points is k (n>=1; 0 <= k <= n-1).

The programs for A161129, there is no canonical definition to state claims against.
-/

/-! ## A161129.P14317854993934672556

`A004736(n+1)*A134830(A061579(n))`
-/

namespace A161129.P14317854993934672556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A134830 (A061579 n).toNat

end

end A161129.P14317854993934672556

/-!
# A161130: Sum of the differences between the largest and the smallest fixed points over all non-derangement permutations of {1,2,...,n}.

The programs for A161130, the canonical program `A161130.P10498569127810044368` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161130 has offset 0).

The definition of A161130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161130.P10498569127810044368

`A000166(n+1)-A155521(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161130

/-- `A000166(n+1)-A155521(n)` -/
def P10498569127810044368.Spec : Prop :=
  ∀ n, P10498569127810044368.a n = A161130 n

theorem P10498569127810044368.correct : P10498569127810044368.Spec := by
  intro n
  simp only [A161130]

end A161130

/-! ## A161130.P14358528976870226395

`A316666(n)-a(n-1)` with `a(0)=0`
-/

namespace A161130.P14358528976870226395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A316666 n - a (n - 1)

end

end A161130.P14358528976870226395

namespace A161130

/-- `A316666(n)-a(n-1)` -/
def P14358528976870226395.Spec : Prop :=
  ∀ n, P14358528976870226395.a n = A161130 n

end A161130

/-! ## A161130.P14069492975695980419

`A306455(n)-n*A002467(n)`
-/

namespace A161130.P14069492975695980419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306455 n - (n : ℤ) * A002467 n

end

end A161130.P14069492975695980419

namespace A161130

/-- `A306455(n)-n*A002467(n)` -/
def P14069492975695980419.Spec : Prop :=
  ∀ n, P14069492975695980419.a n = A161130 n

end A161130

/-! ## A161130.P15280007704722419516

`A000240(n+1)-A055596(n+1)`
-/

namespace A161130.P15280007704722419516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1) - A055596 (n + 1)

end

end A161130.P15280007704722419516

namespace A161130

/-- `A000240(n+1)-A055596(n+1)` -/
def P15280007704722419516.Spec : Prop :=
  ∀ n, P15280007704722419516.a n = A161130 n

end A161130

/-! ## A161130.P1457574563031949525

`A212291(n+1)-A002467(n+1)`
-/

namespace A161130.P1457574563031949525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212291 (n + 1) - A002467 (n + 1)

end

end A161130.P1457574563031949525

namespace A161130

/-- `A212291(n+1)-A002467(n+1)` -/
def P1457574563031949525.Spec : Prop :=
  ∀ n, P1457574563031949525.a n = A161130 n

end A161130

/-! ## A161130.P1970928058012031866

`A212291(n+1)-A208956(A000124(n))`
-/

namespace A161130.P1970928058012031866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212291 (n + 1) - A208956 (A000124 n).toNat

end

end A161130.P1970928058012031866

namespace A161130

/-- `A212291(n+1)-A208956(A000124(n))` -/
def P1970928058012031866.Spec : Prop :=
  ∀ n, P1970928058012031866.a n = A161130 n

end A161130

/-! ## A161130.P2314727487964928883

`A000166(n+1)+A000240(n+1)-A002467(n+1)`
-/

namespace A161130.P2314727487964928883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A000240 (n + 1) - A002467 (n + 1))

end

end A161130.P2314727487964928883

namespace A161130

/-- `A000166(n+1)+A000240(n+1)-A002467(n+1)` -/
def P2314727487964928883.Spec : Prop :=
  ∀ n, P2314727487964928883.a n = A161130 n

end A161130

/-! ## A161130.P5552212275880359068

`A123513(A133263(n))-A208956(A133263(n))`
-/

namespace A161130.P5552212275880359068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A133263 n).toNat - A208956 (A133263 n).toNat

end

end A161130.P5552212275880359068

namespace A161130

/-- `A123513(A133263(n))-A208956(A133263(n))` -/
def P5552212275880359068.Spec : Prop :=
  ∀ n, P5552212275880359068.a n = A161130 n

end A161130

/-! ## A161130.P336120281879958102

`A000142(n+1)-(A155521(n)+A002467(n+1))`
-/

namespace A161130.P336120281879958102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - (A155521 n + A002467 (n + 1))

end

end A161130.P336120281879958102

namespace A161130

/-- `A000142(n+1)-(A155521(n)+A002467(n+1))` -/
def P336120281879958102.Spec : Prop :=
  ∀ n, P336120281879958102.a n = A161130 n

end A161130

/-! ## A161130.P14267341377553605958

`A000166(n+1)+A212291(n+1)-A000142(n+1)`
-/

namespace A161130.P14267341377553605958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A212291 (n + 1) - A000142 (n + 1))

end

end A161130.P14267341377553605958

namespace A161130

/-- `A000166(n+1)+A212291(n+1)-A000142(n+1)` -/
def P14267341377553605958.Spec : Prop :=
  ∀ n, P14267341377553605958.a n = A161130 n

end A161130

/-!
# A161131: Number of permutations of {1,2,...,n} that have no odd fixed points.

The programs for A161131, there is no canonical definition to state claims against.
-/

/-! ## A161131.P13583955467361295576

`A068106(record[A245300(n)])`
-/

namespace A161131.P13583955467361295576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161131.P13583955467361295576

/-! ## A161131.P12163555154503732336

`A161133(A024206(n+1))`
-/

namespace A161131.P12163555154503732336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161133 (A024206 (n + 1)).toNat

end

end A161131.P12163555154503732336

/-! ## A161131.P15098567039962614465

`A068106(A007590(n)+n)`
-/

namespace A161131.P15098567039962614465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A007590 n + (n : ℤ)).toNat

end

end A161131.P15098567039962614465

/-! ## A161131.P13590717841998214206

`A161133(A002620(n)+n)`
-/

namespace A161131.P13590717841998214206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161133 (A002620 n + (n : ℤ)).toNat

end

end A161131.P13590717841998214206

/-! ## A161131.P14402176274996828571

`A068106(∑[A063196(n+1)])`
-/

namespace A161131.P14402176274996828571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161131.P14402176274996828571

/-! ## A161131.P18042333650429601427

`A047920(ceil(n²/2)+n)`
-/

namespace A161131.P18042333650429601427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A161131.P18042333650429601427

/-!
# A161132: Number of permutations of {1,2,...,n} that have no even fixed points.

The programs for A161132, there is no canonical definition to state claims against.
-/

/-! ## A161132.P13243845751750318736

`A068106(∑[n%2+n])`
-/

namespace A161132.P13243845751750318736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161132.P13243845751750318736

/-! ## A161132.P15690643938400221035

`A068106(∑[or(1, n+1)-1])`
-/

namespace A161132.P15690643938400221035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161132.P15690643938400221035

/-! ## A161132.P7969493210281858625

`A068106(∑[n+1-C(gcd(2, n), 2)])`
-/

namespace A161132.P7969493210281858625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (Nat.gcd 2 n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161132.P7969493210281858625

/-! ## A161132.P14130699324736205842

`A161134(∑[A110654(n)])`
-/

namespace A161132.P14130699324736205842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161132.P14130699324736205842

/-! ## A161132.P10486637988308856543

`A068106(A007590(n+1))`
-/

namespace A161132.P10486637988308856543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A007590 (n + 1)).toNat

end

end A161132.P10486637988308856543

/-! ## A161132.P17075083823100578850

`A161134(A002620(n+1))`
-/

namespace A161132.P17075083823100578850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 (A002620 (n + 1)).toNat

end

end A161132.P17075083823100578850

/-! ## A161132.P1735809355118281013

`A161134(A076921(n+1))`
-/

namespace A161132.P1735809355118281013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 (A076921 (n + 1)).toNat

end

end A161132.P1735809355118281013

/-! ## A161132.P2071262430671377108

`A161134(A182531(n+1))`
-/

namespace A161132.P2071262430671377108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 (A182531 (n + 1)).toNat

end

end A161132.P2071262430671377108

/-! ## A161132.P5208586197895800716

`A161134(∑[∑[A000035(n)]])`
-/

namespace A161132.P5208586197895800716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161132.P5208586197895800716

/-! ## A161132.P8767888537089458426

`A068106(A110654(n²)+n)`
-/

namespace A161132.P8767888537089458426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A161132.P8767888537089458426

/-!
# A161135: Triangular array T(m,n), 1<=n<=m, giving the minimum positive number of deals of m cards into n piles required to collect all cards in the first pile. Each deal tosses all cards from a pile, the last dealt card indicates a pile to deal next, each deal tosses one card consecutively to the first, 2nd, ..., n-th, first, 2nd, ... pile.

The programs for A161135, there is no canonical definition to state claims against.
-/

/-! ## A161135.P8651271424748233298

`A121775(∑[n]%A054618(n+1))`
-/

namespace A161135.P8651271424748233298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121775 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A054618 (n + 1))).toNat

end

end A161135.P8651271424748233298

/-! ## A161135.P12178257660252969095

`A034968(C(A007091(n+2), A364912(n)))`
-/

namespace A161135.P12178257660252969095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Nat.choose (A007091 (n + 2)).toNat (A364912 n).toNat)

end

end A161135.P12178257660252969095

/-!
# A161137: Main diagonal of the triangular array A161135.

The programs for A161137, there is no canonical definition to state claims against.
-/

/-! ## A161137.P16311812156506999073

`A161135(∑[n+1])`
-/

namespace A161137.P16311812156506999073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161137.P16311812156506999073

/-! ## A161137.P17324151605303844489

`record[A161135(A001972(n))]`
-/

namespace A161137.P17324151605303844489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161137.P17324151605303844489

/-! ## A161137.P12896734114015256113

`record[A161135(∑[A008621(n)])]`
-/

namespace A161137.P12896734114015256113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161137.P12896734114015256113

/-! ## A161137.P18182158949765896515

`record[A161135(∑[A057979(n)])]`
-/

namespace A161137.P18182158949765896515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161137.P18182158949765896515

/-! ## A161137.P15057234696636141027

`record[A161135(A037123(n+1))]`
-/

namespace A161137.P15057234696636141027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (A037123 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161137.P15057234696636141027

/-!
# A161138: Main diagonal of the triangular array A161136.

The programs for A161138, there is no canonical definition to state claims against.
-/

/-! ## A161138.P7094953286357402128

`A161136(∑[n+1])`
-/

namespace A161138.P7094953286357402128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161136 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161138.P7094953286357402128

/-! ## A161138.P1382611417206604712

`record[A161136(A037123(n+1))]`
-/

namespace A161138.P1382611417206604712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161136 (A037123 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161138.P1382611417206604712

/-! ## A161138.P8713647911702618406

`record[A161136(A130270(n+1))]`
-/

namespace A161138.P8713647911702618406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161136 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161138.P8713647911702618406

/-! ## A161138.P6192522187262791089

`record[A161136(A134546(n+1))]`
-/

namespace A161138.P6192522187262791089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161136 (A134546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161138.P6192522187262791089

/-! ## A161138.P6650299860156701579

`A000027(A161136(C(n+2, 2)))`
-/

namespace A161138.P6650299860156701579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A161136 (Nat.choose (n + 2) 2)).toNat

end

end A161138.P6650299860156701579

/-!
# A161139: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 16.

The programs for A161139, there is no canonical definition to state claims against.
-/

/-! ## A161139.P14411127662298201443

`A263950(eq[16, A131818(n+1)])`
-/

namespace A161139.P14411127662298201443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161139.P14411127662298201443

/-! ## A161139.P16884892285140393955

`A161195(n+1)/A161195(A287384(n))`
-/

namespace A161139.P16884892285140393955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161195 (n + 1) : ℚ) / (A161195 (A287384 n).toNat : ℚ)

end

end A161139.P16884892285140393955

/-!
# A161140: Numbers which can be expressed as the product of numbers made of only twos.

The programs for A161140, there is no canonical definition to state claims against.
-/

/-! ## A161140.P294440154292665397

`lt[n+1, C(A002652(n)+1, 2)]`
-/

namespace A161140.P294440154292665397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002652 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161140.P294440154292665397

/-! ## A161140.P2508937033187281732

`lt[2*n, A002652(n+1)²]+1`
-/

namespace A161140.P2508937033187281732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161140.P2508937033187281732

/-! ## A161140.P7002433157291312794

`lt[A035311(n), A002652(n)²]`
-/

namespace A161140.P7002433157291312794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161140.P7002433157291312794

/-! ## A161140.P7367874525332370711

`filter[A385575(n+1), A326956(#)]`
-/

namespace A161140.P7367874525332370711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326956 (f1 j).toNat = 1) n)

end

end A161140.P7367874525332370711

/-! ## A161140.P3886868431135652018

`lt[A003056(n+1), A002652(n)]`
-/

namespace A161140.P3886868431135652018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161140.P3886868431135652018

/-!
# A161141: Numbers which can be expressed as the product of numbers made of only threes.

The programs for A161141, there is no canonical definition to state claims against.
-/

/-! ## A161141.P3646106598593571494

`record[or(A152066(n+3), A234747(n))]`
-/

namespace A161141.P3646106598593571494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152066 (n + 3)) (A234747 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161141.P3646106598593571494

/-! ## A161141.P4740536884961254800

`∩[A191126(n+1), A246093(n+1)]`
-/

namespace A161141.P4740536884961254800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161141.P4740536884961254800

/-! ## A161141.P18055866776185654148

`A372899(n+2)/A372905(A045648(n+1))`
-/

namespace A161141.P18055866776185654148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372899 (n + 2) : ℚ) / (A372905 (A045648 (n + 1)).toNat : ℚ)

end

end A161141.P18055866776185654148

/-! ## A161141.P10743113558250633964

`A335910(lt[A092260(n+1), A050499(2*n+3)])`
-/

namespace A161141.P10743113558250633964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335910 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161141.P10743113558250633964

/-!
# A161142: Numbers which can be expressed as the product of numbers made of only fours.

The programs for A161142, there is no canonical definition to state claims against.
-/

/-! ## A161142.P4599288343075142888

`record[A257736(A004277(n)²)]`
-/

namespace A161142.P4599288343075142888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257736 (A004277 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161142.P4599288343075142888

/-! ## A161142.P12077526419261364682

`record[A257736(A045828(n)²)]`
-/

namespace A161142.P12077526419261364682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257736 (A045828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161142.P12077526419261364682

/-! ## A161142.P7209919357889453564

`A257736(record[A258034(n)²])`
-/

namespace A161142.P7209919357889453564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161142.P7209919357889453564

/-!
# A161143: Numbers which can be expressed as the product of numbers made of only fives.

The programs for A161143, there is no canonical definition to state claims against.
-/

/-! ## A161143.P3992393168024324455

`A276147(A161144(n+1))`
-/

namespace A161143.P3992393168024324455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (A161144 (n + 1)).toNat

end

end A161143.P3992393168024324455

/-! ## A161143.P14933955130774601920

`record[A028234(A309761(n+1))]`
-/

namespace A161143.P14933955130774601920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A309761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161143.P14933955130774601920

/-! ## A161143.P17377238145589028695

`filter[A354838(n+1), A173859(#)]`
-/

namespace A161143.P17377238145589028695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173859 (f1 j).toNat = 1) n)

end

end A161143.P17377238145589028695

/-! ## A161143.P10054446516278237828

`record[A028234(record[A178569(n+1)])]`
-/

namespace A161143.P10054446516278237828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161143.P10054446516278237828

/-!
# A161144: Numbers which can be expressed as the product of numbers made of only sixs.

The programs for A161144, there is no canonical definition to state claims against.
-/

/-! ## A161144.P7224948838124599356

`A108698(comp[3*n]^7^val(n+1, 7))`
-/

namespace A161144.P7224948838124599356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108698 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 7 ^ SequenceMachineLib.valuation (n + 1) 7)

end

end A161144.P7224948838124599356

/-! ## A161144.P17261505272164646036

`A344328(A052199(n+1))`
-/

namespace A161144.P17261505272164646036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344328 (A052199 (n + 1)).toNat

end

end A161144.P17261505272164646036

/-!
# A161145: Numbers which can be expressed as the product of numbers made of only sevens.

The programs for A161145, there is no canonical definition to state claims against.
-/

/-! ## A161145.P3517955612096714566

`A235487(A161146(n+1))`
-/

namespace A161145.P3517955612096714566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A161146 (n + 1)).toNat

end

end A161145.P3517955612096714566

/-! ## A161145.P10151904713509220490

`record[∏{p}[n, A053671(#²)]]`
-/

namespace A161145.P10151904713509220490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A053671 (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161145.P10151904713509220490

/-!
# A161146: Numbers which can be expressed as the product of numbers made of only eights.

The programs for A161146, there is no canonical definition to state claims against.
-/

/-! ## A161146.P15177326015334952751

`A235487(A161145(n+1))`
-/

namespace A161146.P15177326015334952751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A161145 (n + 1)).toNat

end

end A161146.P15177326015334952751

/-! ## A161146.P1988945681515365108

`A235489(A161147(n+1))`
-/

namespace A161146.P1988945681515365108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A161147 (n + 1)).toNat

end

end A161146.P1988945681515365108

/-!
# A161147: Numbers which can be expressed as the product of numbers made of only nines.

The programs for A161147, there is no canonical definition to state claims against.
-/

/-! ## A161147.P10313148091249600833

`A394497(A161144(n+1))`
-/

namespace A161147.P10313148091249600833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394497 (A161144 (n + 1)).toNat

end

end A161147.P10313148091249600833

/-! ## A161147.P1007356513625571966

`A235489(A161146(n+1))`
-/

namespace A161147.P1007356513625571966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A161146 (n + 1)).toNat

end

end A161147.P1007356513625571966

/-! ## A161147.P11655809329187043626

`∩[A161141(n+1), A362505(n+1)]`
-/

namespace A161147.P11655809329187043626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161147.P11655809329187043626

/-!
# A161148: Number of partitions of n such that each term of the partition is a squared divisor of n.

The programs for A161148, there is no canonical definition to state claims against.
-/

/-! ## A161148.P1358765305787767769

`A143773(n+1)-A010815(A062835(3*n+2))`
-/

namespace A161148.P1358765305787767769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143773 (n + 1) - A010815 (A062835 (3 * n + 2)).toNat

end

end A161148.P1358765305787767769

/-! ## A161148.P5882256997404247028

`A038548(2^A322390(n+1))`
-/

namespace A161148.P5882256997404247028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat

end

end A161148.P5882256997404247028

/-! ## A161148.P1174318353526614945

`A046951(2^A322390(n+1))`
-/

namespace A161148.P1174318353526614945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat

end

end A161148.P1174318353526614945

/-! ## A161148.P1884995412351786365

`A110591(2^A322390(n+1))`
-/

namespace A161148.P1884995412351786365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat

end

end A161148.P1884995412351786365

/-! ## A161148.P11367378027154235384

`A226939(2^A322390(n+1))`
-/

namespace A161148.P11367378027154235384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat

end

end A161148.P11367378027154235384

/-!
# A161149: a(n) = (2*n)!*(2*n+1)!/n! = n!*A000909(n).

The programs for A161149, the canonical program `A161149.P17242516584261524791` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161149 has offset 0).

The definition of A161149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161149.P17242516584261524791

`n!*A000909(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161149

/-- `n!*A000909(n)` -/
def P17242516584261524791.Spec : Prop :=
  ∀ n, P17242516584261524791.a n = A161149 n

theorem P17242516584261524791.correct : P17242516584261524791.Spec := by
  intro n
  simp only [A161149]

end A161149

/-! ## A161149.P18419932970273604520

`(2*n)!*(2*n+1)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161149.P18419932970273604520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A161149.P18419932970273604520

namespace A161149

/-- `(2*n)!*(2*n+1)!/n!` -/
def P18419932970273604520.Spec : Prop :=
  ∀ n, P18419932970273604520.a n = (A161149 n : ℚ)

end A161149

/-! ## A161149.P4978782623614268965

`∏[4*n+2]/2*(2*n)!`
-/

namespace A161149.P4978782623614268965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * (Nat.factorial (2 * n) : ℚ)

end

end A161149.P4978782623614268965

namespace A161149

/-- `∏[4*n+2]/2*(2*n)!` -/
def P4978782623614268965.Spec : Prop :=
  ∀ n, P4978782623614268965.a n = (A161149 n : ℚ)

end A161149

/-! ## A161149.P7953270843161330020

`n!*Δ[n²]*(n!*C(2*n, n))²`
-/

namespace A161149.P7953270843161330020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((Nat.factorial n * Nat.choose (2 * n) n) ^ 2 : ℤ)

end

end A161149.P7953270843161330020

namespace A161149

/-- `n!*Δ[n²]*(n!*C(2*n, n))²` -/
def P7953270843161330020.Spec : Prop :=
  ∀ n, P7953270843161330020.a n = A161149 n

end A161149

/-! ## A161149.P2092558242353523467

`n!*Δ[n²]*∏[floor(abs(4*n-ϕ))]²`
-/

namespace A161149.P2092558242353523467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A161149.P2092558242353523467

namespace A161149

/-- `n!*Δ[n²]*∏[floor(abs(4*n-ϕ))]²` -/
def P2092558242353523467.Spec : Prop :=
  ∀ n, P2092558242353523467.a n = A161149 n

end A161149

/-!
# A161150: a(n) = (largest odd divisor of n)*(largest power of 2 dividing (n+1)).

The programs for A161150, the canonical program `A161150.P4576201331525909670` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161150 has offset 1).

The definition of A161150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161150.P4576201331525909670

`A000265(n+1)*A006519(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A161150

/-- `A000265(n+1)*A006519(n+2)` -/
def P4576201331525909670.Spec : Prop :=
  ∀ n, P4576201331525909670.a n = A161150 (n + 1)

theorem P4576201331525909670.correct : P4576201331525909670.Spec := by
  intro n
  simp only [A161150, Nat.add_sub_cancel]

end A161150

/-! ## A161150.P13039171034864886857

`(n+1)*ratio[xor(n, -(n+2))]`
-/

namespace A161150.P13039171034864886857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161150.P13039171034864886857

namespace A161150

/-- `(n+1)*ratio[xor(n, -(n+2))]` -/
def P13039171034864886857.Spec : Prop :=
  ∀ n, P13039171034864886857.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P14377829758913104960

`(n+1)*2^Δ[val(n+1, 2)]`
-/

namespace A161150.P14377829758913104960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A161150.P14377829758913104960

namespace A161150

/-- `(n+1)*2^Δ[val(n+1, 2)]` -/
def P14377829758913104960.Spec : Prop :=
  ∀ n, P14377829758913104960.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P14689207097393324089

`(n+1)*ratio[2^val(n+1, 2)]`
-/

namespace A161150.P14689207097393324089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161150.P14689207097393324089

namespace A161150

/-- `(n+1)*ratio[2^val(n+1, 2)]` -/
def P14689207097393324089.Spec : Prop :=
  ∀ n, P14689207097393324089.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P9748780444643761801

`(n+1)*ratio[xor(n, n+1)+1]`
-/

namespace A161150.P9748780444643761801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161150.P9748780444643761801

namespace A161150

/-- `(n+1)*ratio[xor(n, n+1)+1]` -/
def P9748780444643761801.Spec : Prop :=
  ∀ n, P9748780444643761801.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P12614494508321947328

`(n+1)*ratio[or(n, n+1)-n]`
-/

namespace A161150.P12614494508321947328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161150.P12614494508321947328

namespace A161150

/-- `(n+1)*ratio[or(n, n+1)-n]` -/
def P12614494508321947328.Spec : Prop :=
  ∀ n, P12614494508321947328.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P16437875410459329806

`(n+1)*ratio[and(n+1, -(n+1))]`
-/

namespace A161150.P16437875410459329806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161150.P16437875410459329806

namespace A161150

/-- `(n+1)*ratio[and(n+1, -(n+1))]` -/
def P16437875410459329806.Spec : Prop :=
  ∀ n, P16437875410459329806.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P14792625102010431705

`(n+1)*ratio[n+1-and(n, n+1)]`
-/

namespace A161150.P14792625102010431705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161150.P14792625102010431705

namespace A161150

/-- `(n+1)*ratio[n+1-and(n, n+1)]` -/
def P14792625102010431705.Spec : Prop :=
  ∀ n, P14792625102010431705.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P18202138064262876980

`(n+1)*2^A094267(n)`
-/

namespace A161150.P18202138064262876980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A094267 n : ℤ)

end

end A161150.P18202138064262876980

namespace A161150

/-- `(n+1)*2^A094267(n)` -/
def P18202138064262876980.Spec : Prop :=
  ∀ n, P18202138064262876980.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P11850851535239575551

`(A289357(n+1)+A161550(n+1))/A161151(n+1)`
-/

namespace A161150.P11850851535239575551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289357 (n + 1) + A161550 (n + 1) : ℚ) / (A161151 (n + 1) : ℚ)

end

end A161150.P11850851535239575551

namespace A161150

/-- `(A289357(n+1)+A161550(n+1))/A161151(n+1)` -/
def P11850851535239575551.Spec : Prop :=
  ∀ n, P11850851535239575551.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P3443974017109009553

`(A182047(n+1)-A289356(n+1))/A161151(n+1)`
-/

namespace A161150.P3443974017109009553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182047 (n + 1) - A289356 (n + 1) : ℚ) / (A161151 (n + 1) : ℚ)

end

end A161150.P3443974017109009553

namespace A161150

/-- `(A182047(n+1)-A289356(n+1))/A161151(n+1)` -/
def P3443974017109009553.Spec : Prop :=
  ∀ n, P3443974017109009553.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P18121462444286401199

`A002378(n+1)/A161151(n+1)`
-/

namespace A161150.P18121462444286401199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A161151 (n + 1) : ℚ)

end

end A161150.P18121462444286401199

namespace A161150

/-- `A002378(n+1)/A161151(n+1)` -/
def P18121462444286401199.Spec : Prop :=
  ∀ n, P18121462444286401199.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P424469387189251028

`A000079(A007814(n+2))*A000265(n+1)`
-/

namespace A161150.P424469387189251028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 2)).toNat * A000265 (n + 1)

end

end A161150.P424469387189251028

namespace A161150

/-- `A000079(A007814(n+2))*A000265(n+1)` -/
def P424469387189251028.Spec : Prop :=
  ∀ n, P424469387189251028.a n = A161150 (n + 1)

end A161150

/-! ## A161150.P15037564125464728375

`A000265(n+1)*A016116(A037227(n+2))`
-/

namespace A161150.P15037564125464728375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A016116 (A037227 (n + 2)).toNat

end

end A161150.P15037564125464728375

namespace A161150

/-- `A000265(n+1)*A016116(A037227(n+2))` -/
def P15037564125464728375.Spec : Prop :=
  ∀ n, P15037564125464728375.a n = A161150 (n + 1)

end A161150

/-! ## A161150.P9481263115832858124

`A000265(n+1)*A065331(A038502(n+2))`
-/

namespace A161150.P9481263115832858124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A065331 (A038502 (n + 2)).toNat

end

end A161150.P9481263115832858124

namespace A161150

/-- `A000265(n+1)*A065331(A038502(n+2))` -/
def P9481263115832858124.Spec : Prop :=
  ∀ n, P9481263115832858124.a n = A161150 (n + 1)

end A161150

/-! ## A161150.P15975857454345661192

`A000265(n+1)*A132741(A132739(n+2))`
-/

namespace A161150.P15975857454345661192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A132741 (A132739 (n + 2)).toNat

end

end A161150.P15975857454345661192

namespace A161150

/-- `A000265(n+1)*A132741(A132739(n+2))` -/
def P15975857454345661192.Spec : Prop :=
  ∀ n, P15975857454345661192.a n = A161150 (n + 1)

end A161150

/-! ## A161150.P18358297291791200702

`(A025480(n)+A003602(n+1))*A006519(n+2)`
-/

namespace A161150.P18358297291791200702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025480 n + A003602 (n + 1)) * A006519 (n + 2)

end

end A161150.P18358297291791200702

namespace A161150

/-- `(A025480(n)+A003602(n+1))*A006519(n+2)` -/
def P18358297291791200702.Spec : Prop :=
  ∀ n, P18358297291791200702.a n = A161150 (n + 1)

end A161150

/-! ## A161150.P11674726130439106978

`A038500(n+1)*A065330(n+1)*A006519(n+2)`
-/

namespace A161150.P11674726130439106978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A065330 (n + 1) * A006519 (n + 2)

end

end A161150.P11674726130439106978

namespace A161150

/-- `A038500(n+1)*A065330(n+1)*A006519(n+2)` -/
def P11674726130439106978.Spec : Prop :=
  ∀ n, P11674726130439106978.a n = A161150 (n + 1)

end A161150

/-! ## A161150.P9643210886706834990

`A026741(n+1)/A160467(n+1)*A006519(n+2)`
-/

namespace A161150.P9643210886706834990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) : ℚ) / (A160467 (n + 1) : ℚ) * (A006519 (n + 2) : ℚ)

end

end A161150.P9643210886706834990

namespace A161150

/-- `A026741(n+1)/A160467(n+1)*A006519(n+2)` -/
def P9643210886706834990.Spec : Prop :=
  ∀ n, P9643210886706834990.a n = (A161150 (n + 1) : ℚ)

end A161150

/-! ## A161150.P13166809632431644504

`A299149(n+1)/A046643(n+1)*A006519(n+2)`
-/

namespace A161150.P13166809632431644504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (n + 1) : ℚ) / (A046643 (n + 1) : ℚ) * (A006519 (n + 2) : ℚ)

end

end A161150.P13166809632431644504

namespace A161150

/-- `A299149(n+1)/A046643(n+1)*A006519(n+2)` -/
def P13166809632431644504.Spec : Prop :=
  ∀ n, P13166809632431644504.a n = (A161150 (n + 1) : ℚ)

end A161150

/-!
# A161151: a(n) = (largest odd divisor of (n+1))*(largest power of 2 dividing n).

The programs for A161151, the canonical program `A161151.P6562315491543427` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161151 has offset 1).

The definition of A161151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161151.P6562315491543427

`A000265(n+2)*A006519(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A161151

/-- `A000265(n+2)*A006519(n+1)` -/
def P6562315491543427.Spec : Prop :=
  ∀ n, P6562315491543427.a n = A161151 (n + 1)

theorem P6562315491543427.correct : P6562315491543427.Spec := by
  intro n
  simp only [A161151, Nat.add_sub_cancel]

end A161151

/-! ## A161151.P12471994905909001849

`(n+2)/2^Δ[val(n+1, 2)]`
-/

namespace A161151.P12471994905909001849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A161151.P12471994905909001849

namespace A161151

/-- `(n+2)/2^Δ[val(n+1, 2)]` -/
def P12471994905909001849.Spec : Prop :=
  ∀ n, P12471994905909001849.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P6007961455803173673

`(n+1)*ratio[(n+1)/and(n+1, -(n+1))]`
-/

namespace A161151.P6007961455803173673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) / f1 n)

end

end A161151.P6007961455803173673

namespace A161151

/-- `(n+1)*ratio[(n+1)/and(n+1, -(n+1))]` -/
def P6007961455803173673.Spec : Prop :=
  ∀ n, P6007961455803173673.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P16734666899280112040

`(n+2)/2^A094267(n)`
-/

namespace A161151.P16734666899280112040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 : ℚ) ^ (A094267 n : ℤ)

end

end A161151.P16734666899280112040

namespace A161151

/-- `(n+2)/2^A094267(n)` -/
def P16734666899280112040.Spec : Prop :=
  ∀ n, P16734666899280112040.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P16197793991414058438

`(n+1)*ratio[A000265(n+1)]`
-/

namespace A161151.P16197793991414058438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161151.P16197793991414058438

namespace A161151

/-- `(n+1)*ratio[A000265(n+1)]` -/
def P16197793991414058438.Spec : Prop :=
  ∀ n, P16197793991414058438.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P16076561657324792260

`A000265(n+2)*A118824(2*(n+1))`
-/

namespace A161151.P16076561657324792260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A118824 (2 * (n + 1))

end

end A161151.P16076561657324792260

namespace A161151

/-- `A000265(n+2)*A118824(2*(n+1))` -/
def P16076561657324792260.Spec : Prop :=
  ∀ n, P16076561657324792260.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P10014516954665656413

`A000265(n+2)+(n+2)*A135481(n)`
-/

namespace A161151.P10014516954665656413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) + (n + 2 : ℤ) * A135481 n

end

end A161151.P10014516954665656413

namespace A161151

/-- `A000265(n+2)+(n+2)*A135481(n)` -/
def P10014516954665656413.Spec : Prop :=
  ∀ n, P10014516954665656413.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P13167245468097978629

`A118830(2*(n+1))/2*A000265(n+2)`
-/

namespace A161151.P13167245468097978629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118830 (2 * (n + 1)) : ℚ) / 2 * (A000265 (n + 2) : ℚ)

end

end A161151.P13167245468097978629

namespace A161151

/-- `A118830(2*(n+1))/2*A000265(n+2)` -/
def P13167245468097978629.Spec : Prop :=
  ∀ n, P13167245468097978629.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P16201715559576096264

`(n+1)/A000265(n+1)*A000265(n+2)`
-/

namespace A161151.P16201715559576096264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (n + 1) : ℚ) * (A000265 (n + 2) : ℚ)

end

end A161151.P16201715559576096264

namespace A161151

/-- `(n+1)/A000265(n+1)*A000265(n+2)` -/
def P16201715559576096264.Spec : Prop :=
  ∀ n, P16201715559576096264.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P5920482872947567606

`lcm(n+2, 2*A001316(n))/A001316(n+1)`
-/

namespace A161151.P5920482872947567606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (2 * A001316 n) : ℚ) / (A001316 (n + 1) : ℚ)

end

end A161151.P5920482872947567606

namespace A161151

/-- `lcm(n+2, 2*A001316(n))/A001316(n+1)` -/
def P5920482872947567606.Spec : Prop :=
  ∀ n, P5920482872947567606.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P8959356292214782039

`A000079(A007814(n+1))*A000265(n+2)`
-/

namespace A161151.P8959356292214782039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A000265 (n + 2)

end

end A161151.P8959356292214782039

namespace A161151

/-- `A000079(A007814(n+1))*A000265(n+2)` -/
def P8959356292214782039.Spec : Prop :=
  ∀ n, P8959356292214782039.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P4170034677798978013

`A000265(n+2)*A065331(A038502(n+1))`
-/

namespace A161151.P4170034677798978013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A065331 (A038502 (n + 1)).toNat

end

end A161151.P4170034677798978013

namespace A161151

/-- `A000265(n+2)*A065331(A038502(n+1))` -/
def P4170034677798978013.Spec : Prop :=
  ∀ n, P4170034677798978013.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P11504300849810381191

`A000265(n+2)*A132741(A132739(n+1))`
-/

namespace A161151.P11504300849810381191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A132741 (A132739 (n + 1)).toNat

end

end A161151.P11504300849810381191

namespace A161151

/-- `A000265(n+2)*A132741(A132739(n+1))` -/
def P11504300849810381191.Spec : Prop :=
  ∀ n, P11504300849810381191.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P8740216341894558345

`A000265(n+2)*A011782(A007814(n+1)+1)`
-/

namespace A161151.P8740216341894558345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) * A011782 (A007814 (n + 1) + 1).toNat

end

end A161151.P8740216341894558345

namespace A161151

/-- `A000265(n+2)*A011782(A007814(n+1)+1)` -/
def P8740216341894558345.Spec : Prop :=
  ∀ n, P8740216341894558345.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P14740310732962373626

`A000010(A038712(n+1)+1)*A000265(n+2)`
-/

namespace A161151.P14740310732962373626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038712 (n + 1) + 1).toNat * A000265 (n + 2)

end

end A161151.P14740310732962373626

namespace A161151

/-- `A000010(A038712(n+1)+1)*A000265(n+2)` -/
def P14740310732962373626.Spec : Prop :=
  ∀ n, P14740310732962373626.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P6569195519654286802

`(A140670(n+1)+A000035(n))*A000265(n+2)`
-/

namespace A161151.P6569195519654286802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140670 (n + 1) + A000035 n) * A000265 (n + 2)

end

end A161151.P6569195519654286802

namespace A161151

/-- `(A140670(n+1)+A000035(n))*A000265(n+2)` -/
def P6569195519654286802.Spec : Prop :=
  ∀ n, P6569195519654286802.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P13174576866463946380

`A048896(n+1)*A220466(n+1)/A048896(n)`
-/

namespace A161151.P13174576866463946380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048896 (n + 1) * A220466 (n + 1) : ℚ) / (A048896 n : ℚ)

end

end A161151.P13174576866463946380

namespace A161151

/-- `A048896(n+1)*A220466(n+1)/A048896(n)` -/
def P13174576866463946380.Spec : Prop :=
  ∀ n, P13174576866463946380.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P9407666395691252334

`A220466(n+1)+A220466(n+1)-A331739(n+2)`
-/

namespace A161151.P9407666395691252334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (n + 1) + (A220466 (n + 1) - A331739 (n + 2))

end

end A161151.P9407666395691252334

namespace A161151

/-- `A220466(n+1)+A220466(n+1)-A331739(n+2)` -/
def P9407666395691252334.Spec : Prop :=
  ∀ n, P9407666395691252334.a n = A161151 (n + 1)

end A161151

/-! ## A161151.P1817987809938531059

`(A289357(n+1)+A161550(n+1))/A161150(n+1)`
-/

namespace A161151.P1817987809938531059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289357 (n + 1) + A161550 (n + 1) : ℚ) / (A161150 (n + 1) : ℚ)

end

end A161151.P1817987809938531059

namespace A161151

/-- `(A289357(n+1)+A161550(n+1))/A161150(n+1)` -/
def P1817987809938531059.Spec : Prop :=
  ∀ n, P1817987809938531059.a n = (A161151 (n + 1) : ℚ)

end A161151

/-! ## A161151.P4075889488173943697

`(A182047(n+1)-A289356(n+1))/A161150(n+1)`
-/

namespace A161151.P4075889488173943697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182047 (n + 1) - A289356 (n + 1) : ℚ) / (A161150 (n + 1) : ℚ)

end

end A161151.P4075889488173943697

namespace A161151

/-- `(A182047(n+1)-A289356(n+1))/A161150(n+1)` -/
def P4075889488173943697.Spec : Prop :=
  ∀ n, P4075889488173943697.a n = (A161151 (n + 1) : ℚ)

end A161151

/-!
# A161152: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n.

The programs for A161152, the canonical program `A161152.P4512711989289517509` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161152 has offset 1).

The definition of A161152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161152.P4512711989289517509

`eq[1, gcd(n, A080791(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A161152

/-- `eq[1, gcd(n, A080791(n))]` -/
def P4512711989289517509.Spec : Prop :=
  ∀ n, (P4512711989289517509.a n : ℤ) = A161152 (n + 1)

theorem P4512711989289517509.correct : P4512711989289517509.Spec := by
  intro n
  simp only [A161152, Nat.add_sub_cancel]

end A161152

/-! ## A161152.P7505583723574816079

`eq[1, gcd(n+1, A023416(n+1))]+1`
-/

namespace A161152.P7505583723574816079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A023416 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161152.P7505583723574816079

namespace A161152

/-- `eq[1, gcd(n+1, A023416(n+1))]+1` -/
def P7505583723574816079.Spec : Prop :=
  ∀ n, (P7505583723574816079.a n : ℤ) = A161152 (n + 1)

end A161152

/-! ## A161152.P8519159956725793691

`eq[gcd(n*A023416(n), n²), A028310(n)]`
-/

namespace A161152.P8519159956725793691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A023416 n) (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161152.P8519159956725793691

namespace A161152

/-- `eq[gcd(n*A023416(n), n²), A028310(n)]` -/
def P8519159956725793691.Spec : Prop :=
  ∀ n, (P8519159956725793691.a n : ℤ) = A161152 (n + 1)

end A161152

/-! ## A161152.P15254051134432995424

`lt[A334460(A055944(2*(n+2))), A001221(n+1)]`
-/

namespace A161152.P15254051134432995424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334460 (A055944 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161152.P15254051134432995424

namespace A161152

/-- `lt[A334460(A055944(2*(n+2))), A001221(n+1)]` -/
def P15254051134432995424.Spec : Prop :=
  ∀ n, (P15254051134432995424.a n : ℤ) = A161152 (n + 1)

end A161152

/-! ## A161152.P18319334477284388886

`lt[A324520(A061782(n+1)), A001065(n+1)]`
-/

namespace A161152.P18319334477284388886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324520 (A061782 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161152.P18319334477284388886

namespace A161152

/-- `lt[A324520(A061782(n+1)), A001065(n+1)]` -/
def P18319334477284388886.Spec : Prop :=
  ∀ n, (P18319334477284388886.a n : ℤ) = A161152 (n + 1)

end A161152

/-!
# A161153: Positive integers that are coprime to their number of digits in binary representation.

The programs for A161153, the canonical program `A161153.P2026840443107816770` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161153 has offset 1).

The definition of A161153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161153.P1045023984682719980

`eq[1, gcd(n, ceil(log2(n+1)))]`
-/

namespace A161153.P1045023984682719980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161153.P1045023984682719980

namespace A161153

/-- `eq[1, gcd(n, ceil(log2(n+1)))]` -/
def P1045023984682719980.Spec : Prop :=
  ∀ n, (P1045023984682719980.a n : ℤ) = A161153 (n + 1)

end A161153

/-! ## A161153.P2026840443107816770

`lt[gcd(n+1, A070939(n+1)), 2]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161153

/-- `lt[gcd(n+1, A070939(n+1)), 2]+1` -/
def P2026840443107816770.Spec : Prop :=
  ∀ n, (P2026840443107816770.a n : ℤ) = A161153 (n + 1)

theorem P2026840443107816770.correct : P2026840443107816770.Spec := by
  intro n
  simp only [A161153, Nat.add_sub_cancel]

end A161153

/-! ## A161153.P16620249936174000299

`eq[gcd(n, A070939(n)), A054977(n)]`
-/

namespace A161153.P16620249936174000299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A070939 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161153.P16620249936174000299

namespace A161153

/-- `eq[gcd(n, A070939(n)), A054977(n)]` -/
def P16620249936174000299.Spec : Prop :=
  ∀ n, (P16620249936174000299.a n : ℤ) = A161153 (n + 1)

end A161153

/-! ## A161153.P4542956531824546129

`record[lcm(n+1, A029837(n+2))/A029837(n+2)]`
-/

namespace A161153.P4542956531824546129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A029837 (n + 2)) : ℚ) / (A029837 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161153.P4542956531824546129

namespace A161153

/-- `record[lcm(n+1, A029837(n+2))/A029837(n+2)]` -/
def P4542956531824546129.Spec : Prop :=
  ∀ n, P4542956531824546129.a n = (A161153 (n + 1) : ℚ)

end A161153

/-! ## A161153.P8032483267651814760

`record[A054531(A000523(n+1)+∑[n]+1)]`
-/

namespace A161153.P8032483267651814760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000523 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161153.P8032483267651814760

namespace A161153

/-- `record[A054531(A000523(n+1)+∑[n]+1)]` -/
def P8032483267651814760.Spec : Prop :=
  ∀ n, P8032483267651814760.a n = A161153 (n + 1)

end A161153

/-!
# A161154: Positive integers n such that both {the number of (non-leading) 0's in the binary representation of n} is coprime to n and {the number of 1's in the binary representation of n} is coprime to n.

The programs for A161154, the canonical program `A161154.P13076449686572951639` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161154 has offset 1).

The definition of A161154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161154.P13076449686572951639

`eq[1, gcd(n, A071295(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161154

/-- `eq[1, gcd(n, A071295(n))]` -/
def P13076449686572951639.Spec : Prop :=
  ∀ n, (P13076449686572951639.a n : ℤ) = A161154 (n + 1)

theorem P13076449686572951639.correct : P13076449686572951639.Spec := by
  intro n
  simp only [A161154, Nat.add_sub_cancel]

end A161154

/-! ## A161154.P9087263507950250200

`∪[A161155(n+1), A161156(n+1)]`
-/

namespace A161154.P9087263507950250200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161154.P9087263507950250200

namespace A161154

/-- `∪[A161155(n+1), A161156(n+1)]` -/
def P9087263507950250200.Spec : Prop :=
  ∀ n, (P9087263507950250200.a n : ℤ) = A161154 (n + 1)

end A161154

/-! ## A161154.P8546085649536378593

`eq[1, gcd(A000120(n)*A023416(n), n²)]`
-/

namespace A161154.P8546085649536378593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 n * A023416 n) (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161154.P8546085649536378593

namespace A161154

/-- `eq[1, gcd(A000120(n)*A023416(n), n²)]` -/
def P8546085649536378593.Spec : Prop :=
  ∀ n, (P8546085649536378593.a n : ℤ) = A161154 (n + 1)

end A161154

/-! ## A161154.P13691385220271282045

`∩[A094387(n+1), A161152(n+1)]`
-/

namespace A161154.P13691385220271282045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161154.P13691385220271282045

namespace A161154

/-- `∩[A094387(n+1), A161152(n+1)]` -/
def P13691385220271282045.Spec : Prop :=
  ∀ n, (P13691385220271282045.a n : ℤ) = A161154 (n + 1)

end A161154

/-! ## A161154.P15584931842234903358

`∩[eq[1, A348416(n+1)]+1, A161152(n+1)]`
-/

namespace A161154.P15584931842234903358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348416 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A161154.P15584931842234903358

namespace A161154

/-- `∩[eq[1, A348416(n+1)]+1, A161152(n+1)]` -/
def P15584931842234903358.Spec : Prop :=
  ∀ n, (P15584931842234903358.a n : ℤ) = A161154 (n + 1)

end A161154

/-!
# A161155: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n, {the number of 1's in the binary representation of n} is coprime to n and {the number of digits in the binary representation of n} is coprime to n.

The programs for A161155, the canonical program `A161155.P953879474877932114` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161155 has offset 1).

The definition of A161155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161155.P4522191469854073394

`∩[A161154(n+1), comp[A161156(n+1)]]`
-/

namespace A161155.P4522191469854073394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161156 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161155.P4522191469854073394

namespace A161155

/-- `∩[A161154(n+1), comp[A161156(n+1)]]` -/
def P4522191469854073394.Spec : Prop :=
  ∀ n, (P4522191469854073394.a n : ℤ) = A161155 (n + 1)

end A161155

/-! ## A161155.P953879474877932114

`∩[A161153(n+1), A161154(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161155

/-- `∩[A161153(n+1), A161154(n+1)]` -/
def P953879474877932114.Spec : Prop :=
  ∀ n, (P953879474877932114.a n : ℤ) = A161155 (n + 1)

theorem P953879474877932114.correct : P953879474877932114.Spec := by
  intro n
  simp only [A161155, Nat.add_sub_cancel]

end A161155

/-! ## A161155.P3364676249822160654

`eq[gcd(2, n), A070950(A343405(n+1))]`
-/

namespace A161155.P3364676249822160654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (A343405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161155.P3364676249822160654

namespace A161155

/-- `eq[gcd(2, n), A070950(A343405(n+1))]` -/
def P3364676249822160654.Spec : Prop :=
  ∀ n, (P3364676249822160654.a n : ℤ) = A161155 (n + 1)

end A161155

/-! ## A161155.P9925384470304961006

`eq[A062157(n), A070950(A343405(n+1))]`
-/

namespace A161155.P9925384470304961006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (A343405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161155.P9925384470304961006

namespace A161155

/-- `eq[A062157(n), A070950(A343405(n+1))]` -/
def P9925384470304961006.Spec : Prop :=
  ∀ n, (P9925384470304961006.a n : ℤ) = A161155 (n + 1)

end A161155

/-! ## A161155.P16499051109482244185

`lt[A035363(n), A070950(A343405(n+1))]`
-/

namespace A161155.P16499051109482244185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (A343405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161155.P16499051109482244185

namespace A161155

/-- `lt[A035363(n), A070950(A343405(n+1))]` -/
def P16499051109482244185.Spec : Prop :=
  ∀ n, (P16499051109482244185.a n : ℤ) = A161155 (n + 1)

end A161155

/-!
# A161156: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n, and {the number of 1's in the binary representation of n} is coprime to n, but {the number of digits in the binary representation of n} is not coprime to n.

The programs for A161156, the canonical program `A161156.P1156421313180752501` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161156 has offset 1).

The definition of A161156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161156.P1156421313180752501

`∩[A161154(n+1), comp[A161155(n+1)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A161156

/-- `∩[A161154(n+1), comp[A161155(n+1)]]` -/
def P1156421313180752501.Spec : Prop :=
  ∀ n, (P1156421313180752501.a n : ℤ) = A161156 (n + 1)

theorem P1156421313180752501.correct : P1156421313180752501.Spec := by
  intro n
  simp only [A161156, Nat.add_sub_cancel]

end A161156

/-!
# A161158: a(n) = A003696(n+1)/A001353(n+1).

The programs for A161158, there is no canonical definition to state claims against.
-/

/-! ## A161158.P801101550051503922

`A003696(n+1)/A001353(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161158.P801101550051503922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003696 (n + 1) : ℚ) / (A001353 (n + 1) : ℚ)

end

end A161158.P801101550051503922

/-! ## A161158.P205521323469927047

`A003696(n+1)/Δ[A061278(n)]`
-/

namespace A161158.P205521323469927047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003696 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161158.P205521323469927047

/-! ## A161158.P15850277488997227500

`A003696(n+1)/A108412(2*n+1)`
-/

namespace A161158.P15850277488997227500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003696 (n + 1) : ℚ) / (A108412 (2 * n + 1) : ℚ)

end

end A161158.P15850277488997227500

/-! ## A161158.P2480526988040663552

`A189004(2*n+1)/A001353(n+1)`
-/

namespace A161158.P2480526988040663552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 (2 * n + 1) : ℚ) / (A001353 (n + 1) : ℚ)

end

end A161158.P2480526988040663552

/-! ## A161158.P7387249007025464405

`A189004(2*n+1)/(A072110(n+1)-1)`
-/

namespace A161158.P7387249007025464405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 (2 * n + 1) : ℚ) / (A072110 (n + 1) - 1 : ℚ)

end

end A161158.P7387249007025464405

/-! ## A161158.P7932615117181979356

`A189004(2*n+1)/(A002530(2*n+1)+A002530(2*n))`
-/

namespace A161158.P7932615117181979356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 (2 * n + 1) : ℚ) / (A002530 (2 * n + 1) + A002530 (2 * n) : ℚ)

end

end A161158.P7932615117181979356

/-!
# A161159: a(n) = A003739(n)/(5*A001906(n)*A006238(n)).

The programs for A161159, there is no canonical definition to state claims against.
-/

/-! ## A161159.P3501439046195015811

`A003739(n+1)/(5*A001906(n+1)*A006238(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161159.P3501439046195015811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003739 (n + 1) : ℚ) / (5 * A001906 (n + 1) * A006238 (n + 1) : ℚ)

end

end A161159.P3501439046195015811

/-! ## A161159.P3402260180052150494

`Δ[A002878(n)]*A161495(n+1)`
-/

namespace A161159.P3402260180052150494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A161495 (n + 1)

end

end A161159.P3402260180052150494

/-! ## A161159.P768787500111673358

`A005248(n+1)*A161495(n+1)`
-/

namespace A161159.P768787500111673358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A161495 (n + 1)

end

end A161159.P768787500111673358

/-! ## A161159.P176620053725457818

`A005248(n+1)²*A004254(n+1)`
-/

namespace A161159.P176620053725457818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) ^ 2 * A004254 (n + 1)

end

end A161159.P176620053725457818

/-! ## A161159.P4907061878374153690

`A290902(n)/3*A005248(n+1)²`
-/

namespace A161159.P4907061878374153690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290902 n : ℚ) / 3 * (A005248 (n + 1) ^ 2 : ℚ)

end

end A161159.P4907061878374153690

/-! ## A161159.P16394215812925272739

`Δ[A002878(n)]²*∑[A004253(n+1)]`
-/

namespace A161159.P16394215812925272739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A161159.P16394215812925272739

/-! ## A161159.P14989431365122244477

`A000204(2*(n+1))²*A004254(n+1)`
-/

namespace A161159.P14989431365122244477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) ^ 2 * A004254 (n + 1)

end

end A161159.P14989431365122244477

/-! ## A161159.P5163904756064163881

`Δ[A000032(2*n+1)]²*A004254(n+1)`
-/

namespace A161159.P5163904756064163881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A004254 (n + 1)

end

end A161159.P5163904756064163881

/-! ## A161159.P6929410370519836772

`Δ[A000032(2*n+1)]²*A136211(2*n+1)`
-/

namespace A161159.P6929410370519836772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A136211 (2 * n + 1)

end

end A161159.P6929410370519836772

/-! ## A161159.P14721094590767722609

`A161495(n+1)/A004254(n+1)*A161495(n+1)`
-/

namespace A161159.P14721094590767722609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161495 (n + 1) : ℚ) / (A004254 (n + 1) : ℚ) * (A161495 (n + 1) : ℚ)

end

end A161159.P14721094590767722609

/-!
# A161161: Irregular triangle of differences T(n,k) = A083906(n,k) - A083906(n-1,k) of q-Binomial coefficients.

The programs for A161161, there is no canonical definition to state claims against.
-/

/-! ## A161161.P185113118222045719

`gcd(A005476(n), A346624(A158705(n+1)))`
-/

namespace A161161.P185113118222045719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005476 n) (A346624 (A158705 (n + 1)).toNat)

end

end A161161.P185113118222045719

/-! ## A161161.P9868135010441508105

`gcd(A030709(n+1), A255693(A277087(n)))`
-/

namespace A161161.P9868135010441508105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030709 (n + 1)) (A255693 (A277087 n).toNat)

end

end A161161.P9868135010441508105

/-! ## A161161.P11601501456733401211

`A104763(∑[A123163(A123163(n))])`
-/

namespace A161161.P11601501456733401211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123163 (A123163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161161.P11601501456733401211

/-! ## A161161.P17187022941115859864

`A256660(lcm(A007956(n+1), A034968(n)))`
-/

namespace A161161.P17187022941115859864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 (Int.lcm (A007956 (n + 1)) (A034968 n))

end

end A161161.P17187022941115859864

/-! ## A161161.P1703787944097236453

`A006530(Δ[A220136(A329383(n+1))]!)`
-/

namespace A161161.P1703787944097236453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A329383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A161161.P1703787944097236453

/-!
# A161162: An irregular array distributing the values of A053445 having powers of two as column sums. (cf. A011782).

The programs for A161162, there is no canonical definition to state claims against.
-/

/-! ## A161162.P904886536981064486

`A060144(n)+A011603(A278468(n))`
-/

namespace A161162.P904886536981064486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 n + A011603 (A278468 n).toNat

end

end A161162.P904886536981064486

/-! ## A161162.P11691270831819027416

`A060144(n)-A011603(2*A278468(n))`
-/

namespace A161162.P11691270831819027416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 n - A011603 (2 * A278468 n).toNat

end

end A161162.P11691270831819027416

/-! ## A161162.P15310879544329711059

`A316864(A045623(n))+A115720(n)`
-/

namespace A161162.P15310879544329711059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A045623 n).toNat + A115720 n

end

end A161162.P15310879544329711059

/-! ## A161162.P15468578597645764656

`xor(A284289(n), A309395(A138653(n)))`
-/

namespace A161162.P15468578597645764656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284289 n) (A309395 (A138653 n).toNat)

end

end A161162.P15468578597645764656

/-! ## A161162.P10607727703602293831

`A134024(A122086(n+1)*A339373(n))`
-/

namespace A161162.P10607727703602293831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A122086 (n + 1) * A339373 n).toNat

end

end A161162.P10607727703602293831

/-!
# A161163: Indices of the isolated primes in the prime sequence, if indices are odd.

The programs for A161163, there is no canonical definition to state claims against.
-/

/-! ## A161163.P16471197183456270811

`comp[∪[2*n, A334142(n+1)]]`
-/

namespace A161163.P16471197183456270811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161163.P16471197183456270811

/-! ## A161163.P17509533320879581913

`∩[2*n+1, A176656(n+1)]`
-/

namespace A161163.P17509533320879581913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161163.P17509533320879581913

/-! ## A161163.P7744668708807138732

`2*comp[ceil(A155752(n+1)/2)]+1`
-/

namespace A161163.P7744668708807138732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155752 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A161163.P7744668708807138732

/-! ## A161163.P405546445344108713

`A176656(A004277(n))`
-/

namespace A161163.P405546445344108713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (A004277 n).toNat

end

end A161163.P405546445344108713

/-! ## A161163.P10032931593959969081

`A176656(A004275(n+1))`
-/

namespace A161163.P10032931593959969081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (A004275 (n + 1)).toNat

end

end A161163.P10032931593959969081

/-! ## A161163.P13832398686179477303

`filter[A176656(n+1), A000035(#)]`
-/

namespace A161163.P13832398686179477303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A161163.P13832398686179477303

/-! ## A161163.P17401667452761678290

`filter[A176656(n+1), A266789(#)]`
-/

namespace A161163.P17401667452761678290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A161163.P17401667452761678290

/-! ## A161163.P7607712727934648026

`filter[A176656(n+1), A267256(#)]`
-/

namespace A161163.P7607712727934648026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A161163.P7607712727934648026

/-! ## A161163.P14523837157213132022

`∩[A176656(n+1), A004273(n)]`
-/

namespace A161163.P14523837157213132022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161163.P14523837157213132022

/-! ## A161163.P4539917936144556880

`∩[A176656(n+1), A004274(n)]`
-/

namespace A161163.P4539917936144556880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161163.P4539917936144556880

/-!
# A161164: Absolute value of (the n-th twin prime minus the n-th non-twin prime).

The programs for A161164, the canonical program `A161164.P5309740144092016312` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161164 has offset 1).

The definition of A161164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161164.P5309740144092016312

`abs(A001097(n+1)-A007510(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A161164

/-- `abs(A001097(n+1)-A007510(n+1))` -/
def P5309740144092016312.Spec : Prop :=
  ∀ n, P5309740144092016312.a n = A161164 (n + 1)

theorem P5309740144092016312.correct : P5309740144092016312.Spec := by
  intro n
  simp only [A161164, Nat.add_sub_cancel]

end A161164

/-! ## A161164.P16163788407756370625

`abs(2*A001097(n+1)-A161165(n+1))`
-/

namespace A161164.P16163788407756370625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A001097 (n + 1) - A161165 (n + 1)|

end

end A161164.P16163788407756370625

namespace A161164

/-- `abs(2*A001097(n+1)-A161165(n+1))` -/
def P16163788407756370625.Spec : Prop :=
  ∀ n, P16163788407756370625.a n = A161164 (n + 1)

theorem P16163788407756370625.correct : P16163788407756370625.Spec := by
  intro n
  simp only [A161164, Nat.add_sub_cancel, A161164.P16163788407756370625.a, A161164.P5309740144092016312.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A161165, A161165.P7740314374936360020.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161164

/-! ## A161164.P4736349855860389341

`abs(2*A007510(n+1)-A161165(n+1))`
-/

namespace A161164.P4736349855860389341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A007510 (n + 1) - A161165 (n + 1)|

end

end A161164.P4736349855860389341

namespace A161164

/-- `abs(2*A007510(n+1)-A161165(n+1))` -/
def P4736349855860389341.Spec : Prop :=
  ∀ n, P4736349855860389341.a n = A161164 (n + 1)

end A161164

/-! ## A161164.P7694774752372501522

`abs(A001097(n+1)-p?[A167706(n+1)])`
-/

namespace A161164.P7694774752372501522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001097 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A161164.P7694774752372501522

namespace A161164

/-- `abs(A001097(n+1)-p?[A167706(n+1)])` -/
def P7694774752372501522.Spec : Prop :=
  ∀ n, P7694774752372501522.a n = A161164 (n + 1)

end A161164

/-! ## A161164.P10965645385318587083

`abs(A001097(n+1)-A000040(A176656(n+1)))`
-/

namespace A161164.P10965645385318587083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001097 (n + 1) - A000040 (A176656 (n + 1)).toNat|

end

end A161164.P10965645385318587083

namespace A161164

/-- `abs(A001097(n+1)-A000040(A176656(n+1)))` -/
def P10965645385318587083.Spec : Prop :=
  ∀ n, P10965645385318587083.a n = A161164 (n + 1)

end A161164

/-! ## A161164.P10587747224050718093

`abs(A001097(n+1)-p?[A062729(n+1)])`
-/

namespace A161164.P10587747224050718093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001097 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A161164.P10587747224050718093

namespace A161164

/-- `abs(A001097(n+1)-p?[A062729(n+1)])` -/
def P10587747224050718093.Spec : Prop :=
  ∀ n, P10587747224050718093.a n = A161164 (n + 1)

end A161164

/-! ## A161164.P2024596795491430846

`∑{d}[A001097(n+1)-A007510(n+1), A000010(#)]`
-/

namespace A161164.P2024596795491430846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A161164.P2024596795491430846

namespace A161164

/-- `∑{d}[A001097(n+1)-A007510(n+1), A000010(#)]` -/
def P2024596795491430846.Spec : Prop :=
  ∀ n, P2024596795491430846.a n = A161164 (n + 1)

end A161164

/-! ## A161164.P4368802762525422550

`abs(A007510(n+1)-p?[A167707(n+1)])`
-/

namespace A161164.P4368802762525422550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007510 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A161164.P4368802762525422550

namespace A161164

/-- `abs(A007510(n+1)-p?[A167707(n+1)])` -/
def P4368802762525422550.Spec : Prop :=
  ∀ n, P4368802762525422550.a n = A161164 (n + 1)

end A161164

/-!
# A161165: The n-th twin prime plus the n-th isolated prime.

The programs for A161165, the canonical program `A161165.P7740314374936360020` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161165 has offset 1).

The definition of A161165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, A007510, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161165.P7740314374936360020

`A001097(n+1)+A007510(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A161165

/-- `A001097(n+1)+A007510(n+1)` -/
def P7740314374936360020.Spec : Prop :=
  ∀ n, P7740314374936360020.a n = A161165 (n + 1)

theorem P7740314374936360020.correct : P7740314374936360020.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel]

end A161165

/-! ## A161165.P8857371025737681851

`A001097(n+1)+A167277(n+1)+1`
-/

namespace A161165.P8857371025737681851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + (A167277 (n + 1) + 1)

end

end A161165.P8857371025737681851

namespace A161165

/-- `A001097(n+1)+A167277(n+1)+1` -/
def P8857371025737681851.Spec : Prop :=
  ∀ n, P8857371025737681851.a n = A161165 (n + 1)

theorem P8857371025737681851.correct : P8857371025737681851.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel, A161165.P8857371025737681851.a, A161165.P7740314374936360020.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167277, A167277.P12308341413257393222.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161165

/-! ## A161165.P10046549505142011437

`A001097(n+1)+A167397(n+1)+1+n`
-/

namespace A161165.P10046549505142011437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + (A167397 (n + 1) + 1 + (n : ℤ))

end

end A161165.P10046549505142011437

namespace A161165

/-- `A001097(n+1)+A167397(n+1)+1+n` -/
def P10046549505142011437.Spec : Prop :=
  ∀ n, P10046549505142011437.a n = A161165 (n + 1)

theorem P10046549505142011437.correct : P10046549505142011437.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel, A161165.P10046549505142011437.a, A161165.P7740314374936360020.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167397, A167397.P6695962093421447498.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161165

/-! ## A161165.P12379719702670759317

`A001097(n+1)+A164274(n+1)-A014574(n+1)`
-/

namespace A161165.P12379719702670759317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + (A164274 (n + 1) - A014574 (n + 1))

end

end A161165.P12379719702670759317

namespace A161165

/-- `A001097(n+1)+A164274(n+1)-A014574(n+1)` -/
def P12379719702670759317.Spec : Prop :=
  ∀ n, P12379719702670759317.a n = A161165 (n + 1)

theorem P12379719702670759317.correct : P12379719702670759317.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel, A161165.P12379719702670759317.a, A161165.P7740314374936360020.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A014574, A014574.P4587706211531852143.a, A164274, A164274.P11426709217476400918.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A280968, A280968.P4817024604496871762.a, A000010, A000010.P4673923239450215316.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A063919, A063919.P11181265949704613022.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A166597, A166597.P14552351031517696526.a, A353464, A353464.P7528674575556997429.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A054541, A054541.P347795157194570387.a, A065164, A065164.P11898003082546795665.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A173557, A173557.P15666735857375843373.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161165

/-! ## A161165.P5617083438636075978

`A001097(n+1)+A163654(n+1)-A134797(n+1)`
-/

namespace A161165.P5617083438636075978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + (A163654 (n + 1) - A134797 (n + 1))

end

end A161165.P5617083438636075978

namespace A161165

/-- `A001097(n+1)+A163654(n+1)-A134797(n+1)` -/
def P5617083438636075978.Spec : Prop :=
  ∀ n, P5617083438636075978.a n = A161165 (n + 1)

theorem P5617083438636075978.correct : P5617083438636075978.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel, A161165.P5617083438636075978.a, A161165.P7740314374936360020.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A134797, A134797.P10926386183801791278.a, A163654, A163654.P17404434252909917711.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161165

/-! ## A161165.P16068707197970113770

`A001097(n+1)+A164274(n+1)-sqrt(A075369(n+1))`
-/

namespace A161165.P16068707197970113770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001097 (n + 1) : ℝ) + ((A164274 (n + 1) : ℝ) - Real.sqrt (A075369 (n + 1) : ℝ))

end

end A161165.P16068707197970113770

namespace A161165

/-- `A001097(n+1)+A164274(n+1)-sqrt(A075369(n+1))` -/
def P16068707197970113770.Spec : Prop :=
  ∀ n, P16068707197970113770.a n = (A161165 (n + 1) : ℝ)

end A161165

/-! ## A161165.P17836855658207907829

`A001097(n+1)+A164274(n+1)-A054735(n+1)/2`
-/

namespace A161165.P17836855658207907829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001097 (n + 1) : ℚ) + ((A164274 (n + 1) : ℚ) - (A054735 (n + 1) : ℚ) / 2)

end

end A161165.P17836855658207907829

namespace A161165

/-- `A001097(n+1)+A164274(n+1)-A054735(n+1)/2` -/
def P17836855658207907829.Spec : Prop :=
  ∀ n, P17836855658207907829.a n = (A161165 (n + 1) : ℚ)

theorem P17836855658207907829.correct : P17836855658207907829.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel, A161165.P17836855658207907829.a, A161165.P7740314374936360020.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A054735, A054735.P17392456198016609014.a, A164274, A164274.P11426709217476400918.a, A014574, A014574.P4587706211531852143.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A063919, A063919.P11181265949704613022.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A166597, A166597.P14552351031517696526.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161165

/-! ## A161165.P2072556621933442979

`A001097(n+1)+A164274(n+1)-A111046(n+1)/4`
-/

namespace A161165.P2072556621933442979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001097 (n + 1) : ℚ) + ((A164274 (n + 1) : ℚ) - (A111046 (n + 1) : ℚ) / 4)

end

end A161165.P2072556621933442979

namespace A161165

/-- `A001097(n+1)+A164274(n+1)-A111046(n+1)/4` -/
def P2072556621933442979.Spec : Prop :=
  ∀ n, P2072556621933442979.a n = (A161165 (n + 1) : ℚ)

theorem P2072556621933442979.correct : P2072556621933442979.Spec := by
  intro n
  simp only [A161165, Nat.add_sub_cancel, A161165.P2072556621933442979.a, A161165.P7740314374936360020.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A111046, A111046.P4495621465565882332.a, A164274, A164274.P11426709217476400918.a, A014574, A014574.P4587706211531852143.a, A025584, A025584.P1747553391340850671.a, A054735, A054735.P17392456198016609014.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A063919, A063919.P11181265949704613022.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A166597, A166597.P14552351031517696526.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161165

/-! ## A161165.P16267012911111812453

`A171821(n+2)+A007510(n+1)`
-/

namespace A161165.P16267012911111812453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) + A007510 (n + 1)

end

end A161165.P16267012911111812453

namespace A161165

/-- `A171821(n+2)+A007510(n+1)` -/
def P16267012911111812453.Spec : Prop :=
  ∀ n, P16267012911111812453.a n = A161165 (n + 1)

end A161165

/-! ## A161165.P1694303754672797643

`A001097(n+1)+p?[A167706(n+1)]`
-/

namespace A161165.P1694303754672797643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161165.P1694303754672797643

namespace A161165

/-- `A001097(n+1)+p?[A167706(n+1)]` -/
def P1694303754672797643.Spec : Prop :=
  ∀ n, P1694303754672797643.a n = A161165 (n + 1)

end A161165

/-! ## A161165.P8262277854793291296

`A151800(A167277(n+1))+A001097(n+1)`
-/

namespace A161165.P8262277854793291296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A167277 (n + 1)).toNat + A001097 (n + 1)

end

end A161165.P8262277854793291296

namespace A161165

/-- `A151800(A167277(n+1))+A001097(n+1)` -/
def P8262277854793291296.Spec : Prop :=
  ∀ n, P8262277854793291296.a n = A161165 (n + 1)

end A161165

/-! ## A161165.P18314889279980439014

`A007510(n+1)+record[A077800(A133310(n))]`
-/

namespace A161165.P18314889279980439014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161165.P18314889279980439014

namespace A161165

/-- `A007510(n+1)+record[A077800(A133310(n))]` -/
def P18314889279980439014.Spec : Prop :=
  ∀ n, P18314889279980439014.a n = A161165 (n + 1)

end A161165

/-! ## A161165.P2129270058007876348

`A001097(n+1)+p?[A062729(n+1)]`
-/

namespace A161165.P2129270058007876348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161165.P2129270058007876348

namespace A161165

/-- `A001097(n+1)+p?[A062729(n+1)]` -/
def P2129270058007876348.Spec : Prop :=
  ∀ n, P2129270058007876348.a n = A161165 (n + 1)

end A161165

/-! ## A161165.P8530082693549814650

`A008578(A334142(n+1)+1)+A007510(n+1)`
-/

namespace A161165.P8530082693549814650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A334142 (n + 1) + 1).toNat + A007510 (n + 1)

end

end A161165.P8530082693549814650

namespace A161165

/-- `A008578(A334142(n+1)+1)+A007510(n+1)` -/
def P8530082693549814650.Spec : Prop :=
  ∀ n, P8530082693549814650.a n = A161165 (n + 1)

end A161165

/-! ## A161165.P2052011292467653419

`A007510(n+1)+p?[A062505(n+1)]`
-/

namespace A161165.P2052011292467653419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161165.P2052011292467653419

namespace A161165

/-- `A007510(n+1)+p?[A062505(n+1)]` -/
def P2052011292467653419.Spec : Prop :=
  ∀ n, P2052011292467653419.a n = A161165 (n + 1)

end A161165

/-!
# A161167: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 17.

The programs for A161167, the canonical program `A161167.P8417611068697688135` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161167 has offset 1).

The definition of A161167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161167.P11522655845743453168

`A160908(n+1)*A351303(n+1)`
-/

namespace A161167.P11522655845743453168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160908 (n + 1) * A351303 (n + 1)

end

end A161167.P11522655845743453168

namespace A161167

/-- `A160908(n+1)*A351303(n+1)` -/
def P11522655845743453168.Spec : Prop :=
  ∀ n, P11522655845743453168.a n = A161167 (n + 1)

end A161167

/-! ## A161167.P15229781963756873963

`A069093(n+1)/A000010(n+1)*A351303(n+1)`
-/

namespace A161167.P15229781963756873963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A351303 (n + 1) : ℚ)

end

end A161167.P15229781963756873963

namespace A161167

/-- `A069093(n+1)/A000010(n+1)*A351303(n+1)` -/
def P15229781963756873963.Spec : Prop :=
  ∀ n, P15229781963756873963.a n = (A161167 (n + 1) : ℚ)

end A161167

/-! ## A161167.P13279844496292528085

`∑{d}[n+1, A306412(#)*A351302((n+1)/#)]*A160908(n+1)`
-/

namespace A161167.P13279844496292528085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A306412 d * A351302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A160908 (n + 1)

end

end A161167.P13279844496292528085

namespace A161167

/-- `∑{d}[n+1, A306412(#)*A351302((n+1)/#)]*A160908(n+1)` -/
def P13279844496292528085.Spec : Prop :=
  ∀ n, P13279844496292528085.a n = A161167 (n + 1)

end A161167

/-! ## A161167.P8417611068697688135

`A001615(n+1)*A065958(n+1)*A065960(n+1)*A351303(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A161167

/-- `A001615(n+1)*A065958(n+1)*A065960(n+1)*A351303(n+1)` -/
def P8417611068697688135.Spec : Prop :=
  ∀ n, P8417611068697688135.a n = A161167 (n + 1)

theorem P8417611068697688135.correct : P8417611068697688135.Spec := by
  intro n
  simp only [A161167, Nat.add_sub_cancel]

end A161167

/-! ## A161167.P9170487651633553685

`A263950(eq[17, A131818(n+1)])`
-/

namespace A161167.P9170487651633553685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161167.P9170487651633553685

namespace A161167

/-- `A263950(eq[17, A131818(n+1)])` -/
def P9170487651633553685.Spec : Prop :=
  ∀ n, P9170487651633553685.a n = A161167 (n + 1)

end A161167

/-!
# A161168: a(n) = 2^n + 4^n.

The programs for A161168, the canonical program `A161168.P10156154460995207162` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161168 has offset 0).

The definition of A161168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n` (program `A161168.P10156154460995207162`, by `A161168.P10156154460995207162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161168.P10156154460995207162

`2^n+4^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161168

/-- `2^n+4^n` -/
def P10156154460995207162.Spec : Prop :=
  ∀ n, (P10156154460995207162.a n : ℤ) = A161168 n

theorem P10156154460995207162.correct : P10156154460995207162.Spec := by
  intro n
  simp only [A161168]

end A161168

/-! ## A161168.P205529999229199529

`2*A007582(n)`
-/

namespace A161168.P205529999229199529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007582 n

end

end A161168.P205529999229199529

namespace A161168

/-- `2*A007582(n)` -/
def P205529999229199529.Spec : Prop :=
  ∀ n, P205529999229199529.a n = A161168 n

end A161168

/-! ## A161168.P14384504549350303629

`ogf((2-6x)/(1-6x+8x^2))`
-/

namespace A161168.P14384504549350303629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -6, 8] n

end

end A161168.P14384504549350303629

namespace A161168

/-- `ogf((2-6x)/(1-6x+8x^2))` -/
def P14384504549350303629.Spec : Prop :=
  ∀ n, P14384504549350303629.a n = A161168 n

end A161168

/-! ## A161168.P16838649807079137556

`abs(xor(-2^n, 4^n))`
-/

namespace A161168.P16838649807079137556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(2 ^ n : ℤ)) (4 ^ n : ℤ)|

end

end A161168.P16838649807079137556

namespace A161168

/-- `abs(xor(-2^n, 4^n))` -/
def P16838649807079137556.Spec : Prop :=
  ∀ n, P16838649807079137556.a n = A161168 n

end A161168

/-! ## A161168.P15235674189641089054

`-xor(-2^n, 4^n)`
-/

namespace A161168.P15235674189641089054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(2 ^ n : ℤ)) (4 ^ n : ℤ)

end

end A161168.P15235674189641089054

namespace A161168

/-- `-xor(-2^n, 4^n)` -/
def P15235674189641089054.Spec : Prop :=
  ∀ n, P15235674189641089054.a n = A161168 n

end A161168

/-! ## A161168.P4322767658109878917

`2^n*Δ[or(n, 2^n)]`
-/

namespace A161168.P4322767658109878917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A161168.P4322767658109878917

namespace A161168

/-- `2^n*Δ[or(n, 2^n)]` -/
def P4322767658109878917.Spec : Prop :=
  ∀ n, P4322767658109878917.a n = A161168 n

end A161168

/-! ## A161168.P9556526231064772922

`floor(4*a(n-1)-2^n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A161168.P9556526231064772922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - (2 ^ n : ℤ)

end

end A161168.P9556526231064772922

namespace A161168

/-- `floor(4*a(n-1)-2^n)` -/
def P9556526231064772922.Spec : Prop :=
  ∀ n, P9556526231064772922.a n = A161168 n

theorem P9556526231064772922.correct : P9556526231064772922.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A161168, Nat.add_sub_cancel, A161168.P9556526231064772922.a, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A161168, Nat.add_sub_cancel, A161168.P9556526231064772922.a, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A161168

/-! ## A161168.P8387796763458673922

`ceil(4*a(n-1)-2^n)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A161168.P8387796763458673922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - (2 ^ n : ℤ)

end

end A161168.P8387796763458673922

namespace A161168

/-- `ceil(4*a(n-1)-2^n)` -/
def P8387796763458673922.Spec : Prop :=
  ∀ n, P8387796763458673922.a n = A161168 n

theorem P8387796763458673922.correct : P8387796763458673922.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A161168, Nat.add_sub_cancel, A161168.P8387796763458673922.a, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A161168, Nat.add_sub_cancel, A161168.P8387796763458673922.a, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A161168

/-! ## A161168.P11428833633180414794

`lcm(or(1, 2^n), Δ[or(1, 2^n)])`
-/

namespace A161168.P11428833633180414794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 (2 ^ n) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A161168.P11428833633180414794

namespace A161168

/-- `lcm(or(1, 2^n), Δ[or(1, 2^n)])` -/
def P11428833633180414794.Spec : Prop :=
  ∀ n, (P11428833633180414794.a n : ℤ) = A161168 n

end A161168

/-! ## A161168.P10424140757454298361

`4*(a(n-1)-2^(n-2))` with `a(0)=2`
-/

namespace A161168.P10424140757454298361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 * (a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A161168.P10424140757454298361

namespace A161168

/-- `4*(a(n-1)-2^(n-2))` -/
def P10424140757454298361.Spec : Prop :=
  ∀ n, P10424140757454298361.a n = (A161168 n : ℚ)

theorem P10424140757454298361.correct : P10424140757454298361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A161168, Nat.add_sub_cancel, A161168.P10424140757454298361.a, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A161168, Nat.add_sub_cancel, A161168.P10424140757454298361.a, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A161168

/-! ## A161168.P16729516874374664162

`floor((∑[2*a(n-1)]/2)²)` with `a(0)=3, a(1)=2`
-/

namespace A161168.P16729516874374664162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌋

end

end A161168.P16729516874374664162

namespace A161168

/-- `floor((∑[2*a(n-1)]/2)²)` -/
def P16729516874374664162.Spec : Prop :=
  ∀ n, P16729516874374664162.a n = A161168 n

end A161168

/-! ## A161168.P181207236226278607

`A052957(2*n)`
-/

namespace A161168.P181207236226278607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 (2 * n)

end

end A161168.P181207236226278607

namespace A161168

/-- `A052957(2*n)` -/
def P181207236226278607.Spec : Prop :=
  ∀ n, P181207236226278607.a n = A161168 n

end A161168

/-! ## A161168.P11725983620789573446

`A185376(Δ[n²])`
-/

namespace A161168.P11725983620789573446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A161168.P11725983620789573446

namespace A161168

/-- `A185376(Δ[n²])` -/
def P11725983620789573446.Spec : Prop :=
  ∀ n, P11725983620789573446.a n = A161168 n

end A161168

/-! ## A161168.P12903525743081374034

`2*Δ[A007581(n)]`
-/

namespace A161168.P12903525743081374034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A161168.P12903525743081374034

namespace A161168

/-- `2*Δ[A007581(n)]` -/
def P12903525743081374034.Spec : Prop :=
  ∀ n, P12903525743081374034.a n = A161168 n

end A161168

/-! ## A161168.P16122056458824026486

`2*Δ[A076024(n)]`
-/

namespace A161168.P16122056458824026486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A161168.P16122056458824026486

namespace A161168

/-- `2*Δ[A076024(n)]` -/
def P16122056458824026486.Spec : Prop :=
  ∀ n, P16122056458824026486.a n = A161168 n

end A161168

/-! ## A161168.P16221240273144256907

`A005418(2*(n+1))`
-/

namespace A161168.P16221240273144256907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 * (n + 1))

end

end A161168.P16221240273144256907

namespace A161168

/-- `A005418(2*(n+1))` -/
def P16221240273144256907.Spec : Prop :=
  ∀ n, P16221240273144256907.a n = A161168 n

end A161168

/-! ## A161168.P5715259152632425523

`A113979(2*(n+1))`
-/

namespace A161168.P5715259152632425523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 (2 * (n + 1))

end

end A161168.P5715259152632425523

namespace A161168

/-- `A113979(2*(n+1))` -/
def P5715259152632425523.Spec : Prop :=
  ∀ n, P5715259152632425523.a n = A161168 n

end A161168

/-! ## A161168.P10511343830567299847

`2*(A281481(n)-1)`
-/

namespace A161168.P10511343830567299847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A281481 n - 1)

end

end A161168.P10511343830567299847

namespace A161168

/-- `2*(A281481(n)-1)` -/
def P10511343830567299847.Spec : Prop :=
  ∀ n, P10511343830567299847.a n = A161168 n

end A161168

/-! ## A161168.P2186093936715206013

`2^n*A000051(n)`
-/

namespace A161168.P2186093936715206013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000051 n

end

end A161168.P2186093936715206013

namespace A161168

/-- `2^n*A000051(n)` -/
def P2186093936715206013.Spec : Prop :=
  ∀ n, P2186093936715206013.a n = A161168 n

end A161168

/-!
# A161169: Triangle read by rows: T(n,k) = number of permutations of {1..n} with at most k inversions.

The programs for A161169, there is no canonical definition to state claims against.
-/

/-! ## A161169.P9114508176564307874

`A008302(lt[A274948(3*n+1), A008302(n+1)])`
-/

namespace A161169.P9114508176564307874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274948 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161169.P9114508176564307874

/-! ## A161169.P1134111144482890139

`A274887(lt[A274948(3*n+1), A259936(n+1)])`
-/

namespace A161169.P1134111144482890139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274948 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161169.P1134111144482890139

/-! ## A161169.P9125244916634168529

`A274887(lt[A274948(3*n+1), A274887(n+1)])`
-/

namespace A161169.P9125244916634168529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274948 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161169.P9125244916634168529

/-!
# A161175: Triangle read by rows, modified Thue-Morse sequence (A010060 with offset 1): change 0 to 2, else 1.

The programs for A161175, the canonical program `A161175.P5682246142615444328` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161175 has offset 1).

The definition of A161175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161175.P5682246142615444328

`gcd(2, ∑[val(n+1, 2)+1])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161175

/-- `gcd(2, ∑[val(n+1, 2)+1])` -/
def P5682246142615444328.Spec : Prop :=
  ∀ n, (P5682246142615444328.a n : ℤ) = A161175 (n + 1)

theorem P5682246142615444328.correct : P5682246142615444328.Spec := by
  intro n
  simp only [A161175, Nat.add_sub_cancel]

end A161175

/-! ## A161175.P11482097796814916657

`char[xor(n, 2*(n+1))]+1`
-/

namespace A161175.P11482097796814916657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A161175.P11482097796814916657

namespace A161175

/-- `char[xor(n, 2*(n+1))]+1` -/
def P11482097796814916657.Spec : Prop :=
  ∀ n, (P11482097796814916657.a n : ℤ) = A161175 (n + 1)

end A161175

/-! ## A161175.P15234347549255543838

`2-char[xor(n, 2*n-1)]`
-/

namespace A161175.P15234347549255543838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A161175.P15234347549255543838

namespace A161175

/-- `2-char[xor(n, 2*n-1)]` -/
def P15234347549255543838.Spec : Prop :=
  ∀ n, P15234347549255543838.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P2018347157098731395

`(2^(n-∑[val(n+1, 2)]))%3`
-/

namespace A161175.P2018347157098731395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))) 3

end

end A161175.P2018347157098731395

namespace A161175

/-- `(2^(n-∑[val(n+1, 2)]))%3` -/
def P2018347157098731395.Spec : Prop :=
  ∀ n, P2018347157098731395.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P11388930674987480953

`A048896(n)%3`
-/

namespace A161175.P11388930674987480953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048896 n) 3

end

end A161175.P11388930674987480953

namespace A161175

/-- `A048896(n)%3` -/
def P11388930674987480953.Spec : Prop :=
  ∀ n, P11388930674987480953.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P3401055712329609788

`ceil(ratio[A159481(n)])`
-/

namespace A161175.P3401055712329609788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A161175.P3401055712329609788

namespace A161175

/-- `ceil(ratio[A159481(n)])` -/
def P3401055712329609788.Spec : Prop :=
  ∀ n, P3401055712329609788.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P9560753886910990342

`Δ[A245710(n)]+1`
-/

namespace A161175.P9560753886910990342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A161175.P9560753886910990342

namespace A161175

/-- `Δ[A245710(n)]+1` -/
def P9560753886910990342.Spec : Prop :=
  ∀ n, P9560753886910990342.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P598789924153996921

`2-Δ[A115384(n)]`
-/

namespace A161175.P598789924153996921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A161175.P598789924153996921

namespace A161175

/-- `2-Δ[A115384(n)]` -/
def P598789924153996921.Spec : Prop :=
  ∀ n, P598789924153996921.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P6513712936354070985

`A010059(n+1)+1`
-/

namespace A161175.P6513712936354070985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) + 1

end

end A161175.P6513712936354070985

namespace A161175

/-- `A010059(n+1)+1` -/
def P6513712936354070985.Spec : Prop :=
  ∀ n, P6513712936354070985.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P15363863416767732139

`A092436(n+1)+1`
-/

namespace A161175.P15363863416767732139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (n + 1) + 1

end

end A161175.P15363863416767732139

namespace A161175

/-- `A092436(n+1)+1` -/
def P15363863416767732139.Spec : Prop :=
  ∀ n, P15363863416767732139.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P8700940888456708372

`2-A010060(n+1)`
-/

namespace A161175.P8700940888456708372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010060 (n + 1)

end

end A161175.P8700940888456708372

namespace A161175

/-- `2-A010060(n+1)` -/
def P8700940888456708372.Spec : Prop :=
  ∀ n, P8700940888456708372.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P13793984765913368674

`3-A001285(n+1)`
-/

namespace A161175.P13793984765913368674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001285 (n + 1)

end

end A161175.P13793984765913368674

namespace A161175

/-- `3-A001285(n+1)` -/
def P13793984765913368674.Spec : Prop :=
  ∀ n, P13793984765913368674.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P10340694963639559741

`(3-A186032(n))/2`
-/

namespace A161175.P10340694963639559741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A186032 n : ℚ) / 2

end

end A161175.P10340694963639559741

namespace A161175

/-- `(3-A186032(n))/2` -/
def P10340694963639559741.Spec : Prop :=
  ∀ n, P10340694963639559741.a n = (A161175 (n + 1) : ℚ)

end A161175

/-! ## A161175.P9749021703071052495

`A151780(n+1)%3`
-/

namespace A161175.P9749021703071052495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151780 (n + 1)) 3

end

end A161175.P9749021703071052495

namespace A161175

/-- `A151780(n+1)%3` -/
def P9749021703071052495.Spec : Prop :=
  ∀ n, P9749021703071052495.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P13189666687120136152

`A151786(n+1)%3`
-/

namespace A161175.P13189666687120136152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151786 (n + 1)) 3

end

end A161175.P13189666687120136152

namespace A161175

/-- `A151786(n+1)%3` -/
def P13189666687120136152.Spec : Prop :=
  ∀ n, P13189666687120136152.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P12655805609297112237

`and(1, A048881(n))+1`
-/

namespace A161175.P12655805609297112237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048881 n) + 1

end

end A161175.P12655805609297112237

namespace A161175

/-- `and(1, A048881(n))+1` -/
def P12655805609297112237.Spec : Prop :=
  ∀ n, P12655805609297112237.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P7815922963308376145

`2-∑[A029883(n+1)]`
-/

namespace A161175.P7815922963308376145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161175.P7815922963308376145

namespace A161175

/-- `2-∑[A029883(n+1)]` -/
def P7815922963308376145.Spec : Prop :=
  ∀ n, P7815922963308376145.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P9758636682410341424

`2-A000120(n+1)%2`
-/

namespace A161175.P9758636682410341424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A000120 (n + 1)) 2

end

end A161175.P9758636682410341424

namespace A161175

/-- `2-A000120(n+1)%2` -/
def P9758636682410341424.Spec : Prop :=
  ∀ n, P9758636682410341424.a n = A161175 (n + 1)

end A161175

/-! ## A161175.P17194115306740984675

`and(1, A056004(n+1))+1`
-/

namespace A161175.P17194115306740984675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A056004 (n + 1)) + 1

end

end A161175.P17194115306740984675

namespace A161175

/-- `and(1, A056004(n+1))+1` -/
def P17194115306740984675.Spec : Prop :=
  ∀ n, P17194115306740984675.a n = A161175 (n + 1)

end A161175

/-!
# A161176: a(n) = 4n^2 - 10n + 107.

The programs for A161176, the canonical program `A161176.P16237426868920470617` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161176 has offset 0).

The definition of A161176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²-10*n+107` (program `A161176.P16237426868920470617`, by `A161176.P16237426868920470617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161176.P16237426868920470617

`4*n²-10*n+107`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161176

/-- `4*n²-10*n+107` -/
def P16237426868920470617.Spec : Prop :=
  ∀ n, P16237426868920470617.a n = A161176 n

theorem P16237426868920470617.correct : P16237426868920470617.Spec := by
  intro n
  simp only [A161176]

end A161176

/-! ## A161176.P17716763018313790532

`A161372(A004277(n))`
-/

namespace A161176.P17716763018313790532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161372 (A004277 n).toNat

end

end A161176.P17716763018313790532

namespace A161176

/-- `A161372(A004277(n))` -/
def P17716763018313790532.Spec : Prop :=
  ∀ n, P17716763018313790532.a n = A161176 n

end A161176

/-! ## A161176.P4401486808972140932

`A161372(A004275(n+1))`
-/

namespace A161176.P4401486808972140932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161372 (A004275 (n + 1)).toNat

end

end A161176.P4401486808972140932

namespace A161176

/-- `A161372(A004275(n+1))` -/
def P4401486808972140932.Spec : Prop :=
  ∀ n, P4401486808972140932.a n = A161176 n

end A161176

/-! ## A161176.P14954604029618499067

`A161372(A016742(n)%A054554(n+1)+1)`
-/

namespace A161176.P14954604029618499067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161372 (Int.tmod (A016742 n) (A054554 (n + 1)) + 1).toNat

end

end A161176.P14954604029618499067

namespace A161176

/-- `A161372(A016742(n)%A054554(n+1)+1)` -/
def P14954604029618499067.Spec : Prop :=
  ∀ n, P14954604029618499067.a n = A161176 n

end A161176

/-!
# A161177: Index of first multiple of n-th prime in A005179.

The programs for A161177, there is no canonical definition to state claims against.
-/

/-! ## A161177.P10521111851356120479

`record[A143986(n+2)]`
-/

namespace A161177.P10521111851356120479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161177.P10521111851356120479

/-! ## A161177.P7294029638424065294

`A143986(p?[comp[n²]])`
-/

namespace A161177.P7294029638424065294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143986 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A161177.P7294029638424065294

/-! ## A161177.P15166586540011827055

`A143986(A390240(n))`
-/

namespace A161177.P15166586540011827055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143986 (A390240 n).toNat

end

end A161177.P15166586540011827055

/-! ## A161177.P5686563208940840516

`A143986(A000040(n+1))`
-/

namespace A161177.P5686563208940840516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143986 (A000040 (n + 1)).toNat

end

end A161177.P5686563208940840516

/-! ## A161177.P364570063277829947

`A143986(A030291(n+1))`
-/

namespace A161177.P364570063277829947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143986 (A030291 (n + 1)).toNat

end

end A161177.P364570063277829947

/-!
# A161178: Sum of the double factorials of the digits of n.

The programs for A161178, the canonical program `A161178.P8855392918829510295` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161178 has offset 0).

The definition of A161178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161178.P8855392918829510295

`∑{digits}[n, A006882(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161178

/-- `∑{digits}[n, A006882(#)]` -/
def P8855392918829510295.Spec : Prop :=
  ∀ n, P8855392918829510295.a n = A161178 n

theorem P8855392918829510295.correct : P8855392918829510295.Spec := by
  intro n
  simp only [A161178]

end A161178

/-! ## A161178.P2007519382552035871

`∑{digits}[n, A128882(#)+1]`
-/

namespace A161178.P2007519382552035871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A128882 x + 1).sum

end

end A161178.P2007519382552035871

namespace A161178

/-- `∑{digits}[n, A128882(#)+1]` -/
def P2007519382552035871.Spec : Prop :=
  ∀ n, P2007519382552035871.a n = A161178 n

theorem P2007519382552035871.correct : P2007519382552035871.Spec := by
  intro n
  simp only [A161178, Nat.add_sub_cancel, A161178.P2007519382552035871.f1, A161178.P2007519382552035871.a, A161178.P8855392918829510295.f1, A161178.P8855392918829510295.a, A006882, A006882.P4505634677935663530.a, A128882, A128882.P10026494431697835336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161178

/-! ## A161178.P17283248970911465259

`∑{digits}[n, A172089(A000124(#))]`
-/

namespace A161178.P17283248970911465259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A172089 (A000124 x).toNat).sum

end

end A161178.P17283248970911465259

namespace A161178

/-- `∑{digits}[n, A172089(A000124(#))]` -/
def P17283248970911465259.Spec : Prop :=
  ∀ n, P17283248970911465259.a n = A161178 n

end A161178

/-! ## A161178.P18313794007484610717

`∑{digits}[n, A172089(A025747(#))]`
-/

namespace A161178.P18313794007484610717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A172089 (A025747 x).toNat).sum

end

end A161178.P18313794007484610717

namespace A161178

/-- `∑{digits}[n, A172089(A025747(#))]` -/
def P18313794007484610717.Spec : Prop :=
  ∀ n, P18313794007484610717.a n = A161178 n

end A161178

/-! ## A161178.P4691295651009887516

`∑{digits}[n, A230698(A000217(#))]`
-/

namespace A161178.P4691295651009887516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A230698 (A000217 x).toNat).sum

end

end A161178.P4691295651009887516

namespace A161178

/-- `∑{digits}[n, A230698(A000217(#))]` -/
def P4691295651009887516.Spec : Prop :=
  ∀ n, P4691295651009887516.a n = A161178 n

end A161178

/-! ## A161178.P10264653860873580880

`∑{digits}[n, A248809(A161680(#))]`
-/

namespace A161178.P10264653860873580880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A248809 (A161680 x).toNat).sum

end

end A161178.P10264653860873580880

namespace A161178

/-- `∑{digits}[n, A248809(A161680(#))]` -/
def P10264653860873580880.Spec : Prop :=
  ∀ n, P10264653860873580880.a n = A161178 n

end A161178

/-! ## A161178.P14062922106037600086

`∑{digits}[n, A172089(A253145(#))]`
-/

namespace A161178.P14062922106037600086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A172089 (A253145 x).toNat).sum

end

end A161178.P14062922106037600086

namespace A161178

/-- `∑{digits}[n, A172089(A253145(#))]` -/
def P14062922106037600086.Spec : Prop :=
  ∀ n, P14062922106037600086.a n = A161178 n

end A161178

/-!
# A161179: A double interspersion, R(n,k), by antidiagonals.

The programs for A161179, there is no canonical definition to state claims against.
-/

/-! ## A161179.P12566679018430961748

`A209293(A066182(n+1)+1)-1`
-/

namespace A161179.P12566679018430961748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A066182 (n + 1) + 1).toNat - 1

end

end A161179.P12566679018430961748

/-! ## A161179.P1466181970056477973

`A209293(2-A167407(n)+n)-1`
-/

namespace A161179.P1466181970056477973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (2 - A167407 n + (n : ℤ)).toNat - 1

end

end A161179.P1466181970056477973

/-! ## A161179.P10176432983293951911

`A260196(n+2)+A209293(A066182(n+1)+1)`
-/

namespace A161179.P10176432983293951911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A209293 (A066182 (n + 1) + 1).toNat

end

end A161179.P10176432983293951911

/-!
# A161181: A117805/3.

The programs for A161181, the canonical program `A161181.P1237942820060759865` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161181 has offset 0).

The definition of A161181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161181.P1237942820060759865

`a(n-1)*(3*a(n-1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161181

/-- `a(n-1)*(3*a(n-1)-1)` -/
def P1237942820060759865.Spec : Prop :=
  ∀ n, P1237942820060759865.a n = A161181 n

theorem P1237942820060759865.correct : P1237942820060759865.Spec := by
  intro n
  simp only [A161181]

end A161181

/-! ## A161181.P16198875812458938097

`3*a(n-1)²-a(n-1)` with `a(0)=1`
-/

namespace A161181.P16198875812458938097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) ^ 2 - a (n - 1)

end

end A161181.P16198875812458938097

namespace A161181

/-- `3*a(n-1)²-a(n-1)` -/
def P16198875812458938097.Spec : Prop :=
  ∀ n, P16198875812458938097.a n = A161181 n

theorem P16198875812458938097.correct : P16198875812458938097.Spec := by
  intro n
  simp only [A161181, Nat.add_sub_cancel, A161181.P16198875812458938097.a, A161181.P1237942820060759865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A161181

/-! ## A161181.P15069668362676846519

`lcm(3, a(n-1)²)-a(n-1)` with `a(0)=1`
-/

namespace A161181.P15069668362676846519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 3 (a (n - 1) ^ 2) : ℤ) - a (n - 1)

end

end A161181.P15069668362676846519

namespace A161181

/-- `lcm(3, a(n-1)²)-a(n-1)` -/
def P15069668362676846519.Spec : Prop :=
  ∀ n, P15069668362676846519.a n = A161181 n

end A161181

/-! ## A161181.P12414553372067263060

`lcm((3-lcm(9, a(n-1)))/3, a(n-1))` with `a(0)=1`
-/

namespace A161181.P12414553372067263060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 - (Nat.lcm 9 (a (n - 1)) : ℤ) : ℚ) / 3)) (a (n - 1) : ℤ)

end

end A161181.P12414553372067263060

namespace A161181

/-- `lcm((3-lcm(9, a(n-1)))/3, a(n-1))` -/
def P12414553372067263060.Spec : Prop :=
  ∀ n, (P12414553372067263060.a n : ℤ) = A161181 n

end A161181

/-! ## A161181.P6452293681036734128

`A117805(n)/3`
-/

namespace A161181.P6452293681036734128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117805 n : ℚ) / 3

end

end A161181.P6452293681036734128

namespace A161181

/-- `A117805(n)/3` -/
def P6452293681036734128.Spec : Prop :=
  ∀ n, P6452293681036734128.a n = (A161181 n : ℚ)

end A161181

/-!
# A161182: Successive differences between positions of squares in list of nonprimes.

The programs for A161182, there is no canonical definition to state claims against.
-/

/-! ## A161182.P7969215610009557658

`Δ[n²]-A014085(n)`
-/

namespace A161182.P7969215610009557658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A014085 n

end

end A161182.P7969215610009557658

/-! ## A161182.P16224262600599345236

`A005843(n)+1-A014085(n)`
-/

namespace A161182.P16224262600599345236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A014085 n)

end

end A161182.P16224262600599345236

/-! ## A161182.P8390228083832933569

`A000027(n+1)+n-A014085(n)`
-/

namespace A161182.P8390228083832933569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A014085 n)

end

end A161182.P8390228083832933569

/-! ## A161182.P7828084840330352921

`abs(A000265(2*n+1)-A014085(n))`
-/

namespace A161182.P7828084840330352921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000265 (2 * n + 1) - A014085 n|

end

end A161182.P7828084840330352921

/-! ## A161182.P12737087375442633730

`A000027(A005408(n)-A014085(n))`
-/

namespace A161182.P12737087375442633730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005408 n - A014085 n).toNat

end

end A161182.P12737087375442633730

/-! ## A161182.P12661716525173505707

`A000290(n+1)-(A014085(n)+A000290(n))`
-/

namespace A161182.P12661716525173505707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A014085 n + A000290 n)

end

end A161182.P12661716525173505707

/-! ## A161182.P2447913215366888862

`Δ[n²-A038107(n)]`
-/

namespace A161182.P2447913215366888862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161182.P2447913215366888862

/-! ## A161182.P8674882421067026664

`A005408(n)-Δ[A038107(n)]`
-/

namespace A161182.P8674882421067026664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (f1 (n + 1) - f1 n)

end

end A161182.P8674882421067026664

/-! ## A161182.P866127986461251501

`A005843(n)+1-Δ[A038107(n)]`
-/

namespace A161182.P866127986461251501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - (f1 (n + 1) - f1 n))

end

end A161182.P866127986461251501

/-! ## A161182.P18342008179409981825

`2*n+1-(A038107(n+1)-A038107(n))`
-/

namespace A161182.P18342008179409981825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (A038107 (n + 1) - A038107 n)

end

end A161182.P18342008179409981825

/-! ## A161182.P3121013365619917736

`A002522(n+1)-(A014085(n)+A002522(n))`
-/

namespace A161182.P3121013365619917736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) - (A014085 n + A002522 n)

end

end A161182.P3121013365619917736

/-! ## A161182.P18439647229362777988

`A028310(2*n+1-A014085(n))`
-/

namespace A161182.P18439647229362777988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((2 * n + 1 : ℤ) - A014085 n).toNat

end

end A161182.P18439647229362777988

/-! ## A161182.P103844821582305569

`A023443(2*n+1)-A023443(A014085(n))`
-/

namespace A161182.P103844821582305569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * n + 1) - A023443 (A014085 n).toNat

end

end A161182.P103844821582305569

/-! ## A161182.P8469767338257631445

`Δ[n²-A000720(A253909(n))]`
-/

namespace A161182.P8469767338257631445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000720 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161182.P8469767338257631445

/-! ## A161182.P8589065854952668162

`Δ[n²-A084360(A187873(n))]`
-/

namespace A161182.P8589065854952668162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A084360 (A187873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161182.P8589065854952668162

/-! ## A161182.P11131675804049408256

`2*n+1-A189025((n+1)²)`
-/

namespace A161182.P11131675804049408256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A189025 ((n + 1) ^ 2)

end

end A161182.P11131675804049408256

/-!
# A161184: Digital roots of highly composite numbers (A002182).

The programs for A161184, there is no canonical definition to state claims against.
-/

/-! ## A161184.P2941442573531759978

`A010888(A140645(n+1))`
-/

namespace A161184.P2941442573531759978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A140645 (n + 1)).toNat

end

end A161184.P2941442573531759978

/-!
# A161185: First column of a table of all primes sorted by recursive look-up depending on the primality of their indices.

The programs for A161185, there is no canonical definition to state claims against.
-/

/-! ## A161185.P10123128334349127109

`p?[A175298(A087845(n+1))+n+1]`
-/

namespace A161185.P10123128334349127109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A087845 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161185.P10123128334349127109

/-! ## A161185.P2570751438653489657

`p?[A000463(n+1)*A091258(n+1)]`
-/

namespace A161185.P2570751438653489657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) * A091258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161185.P2570751438653489657

/-! ## A161185.P561995512228984239

`p?[A101688(A300650(n))+n+1]`
-/

namespace A161185.P561995512228984239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 (A300650 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161185.P561995512228984239

/-! ## A161185.P3956343082576829923

`A000040(lt[A106400(n), A185209(3*n+1)])`
-/

namespace A161185.P3956343082576829923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185209 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161185.P3956343082576829923

/-! ## A161185.P5739372753435076082

`p?[(n+1)^∏{e}[2*n+1, #]]`
-/

namespace A161185.P5739372753435076082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161185.P5739372753435076082

/-!
# A161187: Let S = A089237\{0} = union of primes and nonzero squares; sequence gives indices of squares.

The programs for A161187, the canonical program `A161187.P14587540227680804446` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161187 has offset 1).

The definition of A161187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161187.P10502799848388733313

`∑[A014085(n)+1]`
-/

namespace A161187.P10502799848388733313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161187.P10502799848388733313

namespace A161187

/-- `∑[A014085(n)+1]` -/
def P10502799848388733313.Spec : Prop :=
  ∀ n, P10502799848388733313.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P14745543843219621135

`∑[Δ[n²]-A161182(n+1)+1]`
-/

namespace A161187.P14745543843219621135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A161182 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161187.P14745543843219621135

namespace A161187

/-- `∑[Δ[n²]-A161182(n+1)+1]` -/
def P14745543843219621135.Spec : Prop :=
  ∀ n, P14745543843219621135.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P3309340088827120887

`A147609(n+1)+A016777(n)`
-/

namespace A161187.P3309340088827120887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147609 (n + 1) + A016777 n

end

end A161187.P3309340088827120887

namespace A161187

/-- `A147609(n+1)+A016777(n)` -/
def P3309340088827120887.Spec : Prop :=
  ∀ n, P3309340088827120887.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P8221062442886002074

`A028387(n)-A065893(n+1)`
-/

namespace A161187.P8221062442886002074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A065893 (n + 1)

end

end A161187.P8221062442886002074

namespace A161187

/-- `A028387(n)-A065893(n+1)` -/
def P8221062442886002074.Spec : Prop :=
  ∀ n, P8221062442886002074.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P13302209498457236292

`A073882(n+1)+A064427(n+1)`
-/

namespace A161187.P13302209498457236292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (n + 1) + A064427 (n + 1)

end

end A161187.P13302209498457236292

namespace A161187

/-- `A073882(n+1)+A064427(n+1)` -/
def P13302209498457236292.Spec : Prop :=
  ∀ n, P13302209498457236292.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P14587540227680804446

`A117490(n+1)+∑[A010051(n+1)+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161187

/-- `A117490(n+1)+∑[A010051(n+1)+1]` -/
def P14587540227680804446.Spec : Prop :=
  ∀ n, P14587540227680804446.a n = A161187 (n + 1)

theorem P14587540227680804446.correct : P14587540227680804446.Spec := by
  intro n
  simp only [A161187, Nat.add_sub_cancel]

end A161187

/-! ## A161187.P2301516210505851930

`∑[Δ[A038107(n)]+1]`
-/

namespace A161187.P2301516210505851930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161187.P2301516210505851930

namespace A161187

/-- `∑[Δ[A038107(n)]+1]` -/
def P2301516210505851930.Spec : Prop :=
  ∀ n, P2301516210505851930.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P16001530962379028355

`A038107(n+1)+1+n`
-/

namespace A161187.P16001530962379028355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) + 1 + (n : ℤ)

end

end A161187.P16001530962379028355

namespace A161187

/-- `A038107(n+1)+1+n` -/
def P16001530962379028355.Spec : Prop :=
  ∀ n, P16001530962379028355.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P12901535908419869092

`A289207(n+1)+A132635(n+1)`
-/

namespace A161187.P12901535908419869092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (n + 1) + A132635 (n + 1)

end

end A161187.P12901535908419869092

namespace A161187

/-- `A289207(n+1)+A132635(n+1)` -/
def P12901535908419869092.Spec : Prop :=
  ∀ n, P12901535908419869092.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P8861581011116975573

`A220506(2*(n+1))+n+1`
-/

namespace A161187.P8861581011116975573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A161187.P8861581011116975573

namespace A161187

/-- `A220506(2*(n+1))+n+1` -/
def P8861581011116975573.Spec : Prop :=
  ∀ n, P8861581011116975573.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P11928927462161662483

`lt[n*char[A161188(n+1)], n]`
-/

namespace A161187.P11928927462161662483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A161187.P11928927462161662483

namespace A161187

/-- `lt[n*char[A161188(n+1)], n]` -/
def P11928927462161662483.Spec : Prop :=
  ∀ n, (P11928927462161662483.a n : ℤ) = A161187 (n + 1)

end A161187

/-! ## A161187.P8213250618962075609

`lt[char[A161188(n+1)], A057427(n)]`
-/

namespace A161187.P8213250618962075609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A161187.P8213250618962075609

namespace A161187

/-- `lt[char[A161188(n+1)], A057427(n)]` -/
def P8213250618962075609.Spec : Prop :=
  ∀ n, (P8213250618962075609.a n : ℤ) = A161187 (n + 1)

end A161187

/-! ## A161187.P10067518987167152645

`n+1+A000720((n+1)²)`
-/

namespace A161187.P10067518987167152645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000720 ((n + 1) ^ 2)

end

end A161187.P10067518987167152645

namespace A161187

/-- `n+1+A000720((n+1)²)` -/
def P10067518987167152645.Spec : Prop :=
  ∀ n, P10067518987167152645.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P7594609761779000467

`A000720(∑[2*n+1])+n+1`
-/

namespace A161187.P7594609761779000467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A161187.P7594609761779000467

namespace A161187

/-- `A000720(∑[2*n+1])+n+1` -/
def P7594609761779000467.Spec : Prop :=
  ∀ n, P7594609761779000467.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P12086389298658682909

`A036234((n+1)²)+n`
-/

namespace A161187.P12086389298658682909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ((n + 1) ^ 2) + (n : ℤ)

end

end A161187.P12086389298658682909

namespace A161187

/-- `A036234((n+1)²)+n` -/
def P12086389298658682909.Spec : Prop :=
  ∀ n, P12086389298658682909.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P12296983177903883449

`∑[A189025((n+1)²)+1]`
-/

namespace A161187.P12296983177903883449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189025 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161187.P12296983177903883449

namespace A161187

/-- `∑[A189025((n+1)²)+1]` -/
def P12296983177903883449.Spec : Prop :=
  ∀ n, P12296983177903883449.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P4616952188627310776

`A063084((n+1)²)+n+1`
-/

namespace A161187.P4616952188627310776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A161187.P4616952188627310776

namespace A161187

/-- `A063084((n+1)²)+n+1` -/
def P4616952188627310776.Spec : Prop :=
  ∀ n, P4616952188627310776.a n = A161187 (n + 1)

end A161187

/-! ## A161187.P3175018718611569488

`A230980(A005563(n))+1+n`
-/

namespace A161187.P3175018718611569488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A005563 n).toNat + 1 + (n : ℤ)

end

end A161187.P3175018718611569488

namespace A161187

/-- `A230980(A005563(n))+1+n` -/
def P3175018718611569488.Spec : Prop :=
  ∀ n, P3175018718611569488.a n = A161187 (n + 1)

end A161187

/-!
# A161188: Let S = A089237\{0} = union of primes and nonzero squares; sequence gives indices of primes.

The programs for A161188, the canonical program `A161188.P8302005611444177040` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161188 has offset 1).

The definition of A161188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161188.P8302005611444177040

`floor(sqrt(A000040(n+1)))+n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A161188

/-- `floor(sqrt(A000040(n+1)))+n+1` -/
def P8302005611444177040.Spec : Prop :=
  ∀ n, P8302005611444177040.a n = A161188 (n + 1)

theorem P8302005611444177040.correct : P8302005611444177040.Spec := by
  intro n
  simp only [A161188, Nat.add_sub_cancel]

end A161188

/-! ## A161188.P127374705987539430

`comp[A038107(n)+n]`
-/

namespace A161188.P127374705987539430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161188.P127374705987539430

namespace A161188

/-- `comp[A038107(n)+n]` -/
def P127374705987539430.Spec : Prop :=
  ∀ n, (P127374705987539430.a n : ℤ) = A161188 (n + 1)

end A161188

/-! ## A161188.P124226900416886293

`A104103(n+1)+n`
-/

namespace A161188.P124226900416886293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) + (n : ℤ)

end

end A161188.P124226900416886293

namespace A161188

/-- `A104103(n+1)+n` -/
def P124226900416886293.Spec : Prop :=
  ∀ n, P124226900416886293.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P15148866756609204387

`Δ[n²]-A103416(n)`
-/

namespace A161188.P15148866756609204387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A103416 n

end

end A161188.P15148866756609204387

namespace A161188

/-- `Δ[n²]-A103416(n)` -/
def P15148866756609204387.Spec : Prop :=
  ∀ n, P15148866756609204387.a n = A161188 (n + 1)

theorem P15148866756609204387.correct : P15148866756609204387.Spec := by
  intro n
  simp only [A161188, Nat.add_sub_cancel, A161188.P15148866756609204387.f1, A161188.P15148866756609204387.a, A161188.P8302005611444177040.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103416, A103416.P11972475855525546389.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161188

/-! ## A161188.P10186536833348380838

`sqrt(A145445(n+1))+n`
-/

namespace A161188.P10186536833348380838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145445 (n + 1) : ℝ) + (n : ℝ)

end

end A161188.P10186536833348380838

namespace A161188

/-- `sqrt(A145445(n+1))+n` -/
def P10186536833348380838.Spec : Prop :=
  ∀ n, P10186536833348380838.a n = (A161188 (n + 1) : ℝ)

end A161188

/-! ## A161188.P9028004872399354622

`∑[char[∑[A014085(n)]]+1]`
-/

namespace A161188.P9028004872399354622
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161188.P9028004872399354622

namespace A161188

/-- `∑[char[∑[A014085(n)]]+1]` -/
def P9028004872399354622.Spec : Prop :=
  ∀ n, (P9028004872399354622.a n : ℤ) = A161188 (n + 1)

end A161188

/-! ## A161188.P3739348290732385328

`A000006(n+1)+1+n`
-/

namespace A161188.P3739348290732385328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) + 1 + (n : ℤ)

end

end A161188.P3739348290732385328

namespace A161188

/-- `A000006(n+1)+1+n` -/
def P3739348290732385328.Spec : Prop :=
  ∀ n, P3739348290732385328.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P13480326118893990494

`∑[char[A038107(n+1)]+1]`
-/

namespace A161188.P13480326118893990494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161188.P13480326118893990494

namespace A161188

/-- `∑[char[A038107(n+1)]+1]` -/
def P13480326118893990494.Spec : Prop :=
  ∀ n, (P13480326118893990494.a n : ℤ) = A161188 (n + 1)

end A161188

/-! ## A161188.P5251271606363156739

`∑[2-char[A221056(n+1)]]`
-/

namespace A161188.P5251271606363156739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221056 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161188.P5251271606363156739

namespace A161188

/-- `∑[2-char[A221056(n+1)]]` -/
def P5251271606363156739.Spec : Prop :=
  ∀ n, P5251271606363156739.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P9184020634142655821

`floor(sqrt(A145826(n+1))+n)`
-/

namespace A161188.P9184020634142655821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A145826 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A161188.P9184020634142655821

namespace A161188

/-- `floor(sqrt(A145826(n+1))+n)` -/
def P9184020634142655821.Spec : Prop :=
  ∀ n, P9184020634142655821.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P9137398763594470281

`ceil(sqrt(A000040(n+1))+n)`
-/

namespace A161188.P9137398763594470281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000040 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A161188.P9137398763594470281

namespace A161188

/-- `ceil(sqrt(A000040(n+1))+n)` -/
def P9137398763594470281.Spec : Prop :=
  ∀ n, P9137398763594470281.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P18090760652241891849

`ceil(sqrt(A008864(n+1))+n)`
-/

namespace A161188.P18090760652241891849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008864 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A161188.P18090760652241891849

namespace A161188

/-- `ceil(sqrt(A008864(n+1))+n)` -/
def P18090760652241891849.Spec : Prop :=
  ∀ n, P18090760652241891849.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P6791464716544671306

`ceil(sqrt(A028815(n+1))+n)`
-/

namespace A161188.P6791464716544671306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028815 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A161188.P6791464716544671306

namespace A161188

/-- `ceil(sqrt(A028815(n+1))+n)` -/
def P6791464716544671306.Spec : Prop :=
  ∀ n, P6791464716544671306.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P2167539551076350155

`ceil(sqrt(A082542(n+1))+n)`
-/

namespace A161188.P2167539551076350155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A082542 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A161188.P2167539551076350155

namespace A161188

/-- `ceil(sqrt(A082542(n+1))+n)` -/
def P2167539551076350155.Spec : Prop :=
  ∀ n, P2167539551076350155.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P13082935558161483017

`ceil(sqrt(A175216(n+1))+n)`
-/

namespace A161188.P13082935558161483017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A175216 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A161188.P13082935558161483017

namespace A161188

/-- `ceil(sqrt(A175216(n+1))+n)` -/
def P13082935558161483017.Spec : Prop :=
  ∀ n, P13082935558161483017.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P2066082265605254866

`sqrt(A065730(n+1))+n+1`
-/

namespace A161188.P2066082265605254866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065730 (n + 1) : ℝ) + (n + 1 : ℝ)

end

end A161188.P2066082265605254866

namespace A161188

/-- `sqrt(A065730(n+1))+n+1` -/
def P2066082265605254866.Spec : Prop :=
  ∀ n, P2066082265605254866.a n = (A161188 (n + 1) : ℝ)

end A161188

/-! ## A161188.P577975448177708093

`ceil(sqrt(sqrt(A036689(n+1)))+n)`
-/

namespace A161188.P577975448177708093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036689 (n + 1) : ℝ)) + (n : ℝ)⌉

end

end A161188.P577975448177708093

namespace A161188

/-- `ceil(sqrt(sqrt(A036689(n+1)))+n)` -/
def P577975448177708093.Spec : Prop :=
  ∀ n, P577975448177708093.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P3552460421548734472

`ceil(sqrt(sqrt(A036690(n+1)))+n)`
-/

namespace A161188.P3552460421548734472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036690 (n + 1) : ℝ)) + (n : ℝ)⌉

end

end A161188.P3552460421548734472

namespace A161188

/-- `ceil(sqrt(sqrt(A036690(n+1)))+n)` -/
def P3552460421548734472.Spec : Prop :=
  ∀ n, P3552460421548734472.a n = A161188 (n + 1)

end A161188

/-! ## A161188.P8489454826358283818

`A096494(n+1)/2+n+1`
-/

namespace A161188.P8489454826358283818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096494 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A161188.P8489454826358283818

namespace A161188

/-- `A096494(n+1)/2+n+1` -/
def P8489454826358283818.Spec : Prop :=
  ∀ n, P8489454826358283818.a n = (A161188 (n + 1) : ℚ)

end A161188

/-! ## A161188.P5197192299718772698

`2*(n+1)-A103355(n+1)`
-/

namespace A161188.P5197192299718772698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A103355 (n + 1)

end

end A161188.P5197192299718772698

namespace A161188

/-- `2*(n+1)-A103355(n+1)` -/
def P5197192299718772698.Spec : Prop :=
  ∀ n, P5197192299718772698.a n = A161188 (n + 1)

theorem P5197192299718772698.correct : P5197192299718772698.Spec := by
  intro n
  simp only [A161188, Nat.add_sub_cancel, A161188.P5197192299718772698.a, A161188.P8302005611444177040.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161188

/-!
# A161189: Set a(n) = k if n is in the set zeta(k) - 1 in the notation defined by William J. Keith in 2010.

The programs for A161189, there is no canonical definition to state claims against.
-/

/-! ## A161189.P11090503335223983361

`A085058(∑[n]*A065637(n+1))`
-/

namespace A161189.P11090503335223983361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A065637 (n + 1)).toNat

end

end A161189.P11090503335223983361

/-! ## A161189.P5303768009798363654

`A085058(A337377(n)+A188475(n))`
-/

namespace A161189.P5303768009798363654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A337377 n + A188475 n).toNat

end

end A161189.P5303768009798363654

/-! ## A161189.P110410378284792547

`A085058(A188475(n)-A337377(n))`
-/

namespace A161189.P110410378284792547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A188475 n - A337377 n).toNat

end

end A161189.P110410378284792547

/-! ## A161189.P3431832283560132539

`A085058(xor(A188475(n), A337377(n)))`
-/

namespace A161189.P3431832283560132539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (Int.xor (A188475 n) (A337377 n)).toNat

end

end A161189.P3431832283560132539

/-! ## A161189.P11612927877888273341

`A163894(A106907(n+1))+A014082(2*n+3)`
-/

namespace A161189.P11612927877888273341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 (A106907 (n + 1)).toNat + A014082 (2 * n + 3)

end

end A161189.P11612927877888273341

/-!
# A161191: Primes in A161190.

The programs for A161191, there is no canonical definition to state claims against.
-/

/-! ## A161191.P9559959665492698958

`p?[A161190(n+1)]`
-/

namespace A161191.P9559959665492698958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161191.P9559959665492698958

/-! ## A161191.P17275398030598282613

`filter[A161190(n+1), A010051(#)]`
-/

namespace A161191.P17275398030598282613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161191.P17275398030598282613

/-! ## A161191.P2529847980674248951

`filter[A161190(n+1), A069513(#)]`
-/

namespace A161191.P2529847980674248951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A161191.P2529847980674248951

/-! ## A161191.P955054414500433817

`filter[A161190(n+1), A174275(#)]`
-/

namespace A161191.P955054414500433817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A161191.P955054414500433817

/-! ## A161191.P3918948502754119859

`filter[A161190(n+1), A174897(#)]`
-/

namespace A161191.P3918948502754119859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A161191.P3918948502754119859

/-!
# A161194: Index of last term where no prime sums occur in A161190 in a 4 diagonal set of 24 terms.

The programs for A161194, there is no canonical definition to state claims against.
-/

/-! ## A161194.P6214553434596061677

`floor(A161193(n+1)/64)`
-/

namespace A161194.P6214553434596061677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161193 (n + 1) : ℚ) / 64⌋

end

end A161194.P6214553434596061677

/-! ## A161194.P13542064728060839253

`A007318(∑[n])*round(A161193(n+1)/64)`
-/

namespace A161194.P13542064728060839253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A161193 (n + 1) : ℚ) / 64)

end

end A161194.P13542064728060839253

/-! ## A161194.P17546614569080139602

`round(A161193(n+1)/64)/A007318(C(2, n))`
-/

namespace A161194.P17546614569080139602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A161193 (n + 1) : ℚ) / 64) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A161194.P17546614569080139602

/-! ## A161194.P3934179848061164785

`round(A161193(n+1)/64)%A000045(n+11)`
-/

namespace A161194.P3934179848061164785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A161193 (n + 1) : ℚ) / 64)) (A000045 (n + 11))

end

end A161194.P3934179848061164785

/-!
# A161198: Triangle of polynomial coefficients related to the series expansions of (1-x)^((-1-2*n)/2).

The programs for A161198, the canonical program `A161198.P450461106075019141` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161198 has offset 0).

The definition of A161198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161198.P450461106075019141

`2*T(n-1,k-1)+(2*row(n)-1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161198

/-- `2*T(n-1,k-1)+(2*row(n)-1)*T(n-1,k)` -/
def P450461106075019141.Spec : Prop :=
  ∀ n, P450461106075019141.a n = A161198 n

theorem P450461106075019141.correct : P450461106075019141.Spec := by
  intro n
  simp only [A161198]

end A161198

/-! ## A161198.P7348198270217442569

`A028338(n)*A059268(n)`
-/

namespace A161198.P7348198270217442569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A059268 n

end

end A161198.P7348198270217442569

namespace A161198

/-- `A028338(n)*A059268(n)` -/
def P7348198270217442569.Spec : Prop :=
  ∀ n, P7348198270217442569.a n = A161198 n

end A161198

/-! ## A161198.P366743997880437382

`abs(A039757(n)*A059268(n))`
-/

namespace A161198.P366743997880437382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 n * A059268 n|

end

end A161198.P366743997880437382

namespace A161198

/-- `abs(A039757(n)*A059268(n))` -/
def P366743997880437382.Spec : Prop :=
  ∀ n, P366743997880437382.a n = A161198 n

end A161198

/-! ## A161198.P15084646311623329888

`2^A002262(n)*A028338(n)`
-/

namespace A161198.P15084646311623329888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A028338 n : ℚ)

end

end A161198.P15084646311623329888

namespace A161198

/-- `2^A002262(n)*A028338(n)` -/
def P15084646311623329888.Spec : Prop :=
  ∀ n, P15084646311623329888.a n = (A161198 n : ℚ)

end A161198

/-! ## A161198.P7997688859449436202

`A225474(n)/A233543(n)`
-/

namespace A161198.P7997688859449436202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225474 n : ℚ) / (A233543 n : ℚ)

end

end A161198.P7997688859449436202

namespace A161198

/-- `A225474(n)/A233543(n)` -/
def P7997688859449436202.Spec : Prop :=
  ∀ n, P7997688859449436202.a n = (A161198 n : ℚ)

end A161198

/-! ## A161198.P14353827118128316741

`A225474(n)/A002262(n)!`
-/

namespace A161198.P14353827118128316741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225474 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A161198.P14353827118128316741

namespace A161198

/-- `A225474(n)/A002262(n)!` -/
def P14353827118128316741.Spec : Prop :=
  ∀ n, P14353827118128316741.a n = (A161198 n : ℚ)

end A161198

/-! ## A161198.P6758235964803629452

`A028338(n)/A225475(n)*A225474(n)`
-/

namespace A161198.P6758235964803629452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028338 n : ℚ) / (A225475 n : ℚ) * (A225474 n : ℚ)

end

end A161198.P6758235964803629452

namespace A161198

/-- `A028338(n)/A225475(n)*A225474(n)` -/
def P6758235964803629452.Spec : Prop :=
  ∀ n, P6758235964803629452.a n = (A161198 n : ℚ)

end A161198

/-!
# A161199: Numerators in expansion of (1-x)^(-5/2).

The programs for A161199, the canonical program `A161199.P11902296088430852582` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161199 has offset 0).

The definition of A161199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161199.P11902296088430852582

`A000108(n)/A001316(n)*∑[A016754(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161199

/-- `A000108(n)/A001316(n)*∑[A016754(n)]` -/
def P11902296088430852582.Spec : Prop :=
  ∀ n, P11902296088430852582.a n = (A161199 n : ℚ)

end A161199

/-! ## A161199.P5985201105808768436

`A004733(2*n)/3`
-/

namespace A161199.P5985201105808768436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004733 (2 * n) : ℚ) / 3

end

end A161199.P5985201105808768436

namespace A161199

/-- `A004733(2*n)/3` -/
def P5985201105808768436.Spec : Prop :=
  ∀ n, P5985201105808768436.a n = (A161199 n : ℚ)

end A161199

/-! ## A161199.P13896179908733062849

`A002802(n)/A001316(n)`
-/

namespace A161199.P13896179908733062849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002802 n : ℚ) / (A001316 n : ℚ)

end

end A161199.P13896179908733062849

namespace A161199

/-- `A002802(n)/A001316(n)` -/
def P13896179908733062849.Spec : Prop :=
  ∀ n, P13896179908733062849.a n = (A161199 n : ℚ)

end A161199

/-! ## A161199.P3876426073073247071

`A002802(n)/(A038573(n)+1)`
-/

namespace A161199.P3876426073073247071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002802 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A161199.P3876426073073247071

namespace A161199

/-- `A002802(n)/(A038573(n)+1)` -/
def P3876426073073247071.Spec : Prop :=
  ∀ n, P3876426073073247071.a n = (A161199 n : ℚ)

end A161199

/-! ## A161199.P5578705726799734299

`A002802(n)/A000079(A000120(n))`
-/

namespace A161199.P5578705726799734299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002802 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A161199.P5578705726799734299

namespace A161199

/-- `A002802(n)/A000079(A000120(n))` -/
def P5578705726799734299.Spec : Prop :=
  ∀ n, P5578705726799734299.a n = (A161199 n : ℚ)

end A161199

/-! ## A161199.P6406113652282287861

`A072285(A167614(n+2))`
-/

namespace A161199.P6406113652282287861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072285 (A167614 (n + 2)).toNat

end

end A161199.P6406113652282287861

namespace A161199

/-- `A072285(A167614(n+2))` -/
def P6406113652282287861.Spec : Prop :=
  ∀ n, P6406113652282287861.a n = A161199 n

end A161199

/-! ## A161199.P14774599803429685267

`A072285(A052905(n)+8)`
-/

namespace A161199.P14774599803429685267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072285 (A052905 n + 8).toNat

end

end A161199.P14774599803429685267

namespace A161199

/-- `A072285(A052905(n)+8)` -/
def P14774599803429685267.Spec : Prop :=
  ∀ n, P14774599803429685267.a n = A161199 n

end A161199

/-! ## A161199.P12321834971362864608

`A072285(eq[3, A002262(n)])`
-/

namespace A161199.P12321834971362864608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161199.P12321834971362864608

namespace A161199

/-- `A072285(eq[3, A002262(n)])` -/
def P12321834971362864608.Spec : Prop :=
  ∀ n, P12321834971362864608.a n = A161199 n

end A161199

/-! ## A161199.P12657989159849866352

`A072285(A134869(n+3)+2)`
-/

namespace A161199.P12657989159849866352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072285 (A134869 (n + 3) + 2).toNat

end

end A161199.P12657989159849866352

namespace A161199

/-- `A072285(A134869(n+3)+2)` -/
def P12657989159849866352.Spec : Prop :=
  ∀ n, P12657989159849866352.a n = A161199 n

end A161199

/-! ## A161199.P7615339671996941004

`lcm(A000079(n), A002802(n))/A000079(n)`
-/

namespace A161199.P7615339671996941004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A002802 n) : ℚ) / (A000079 n : ℚ)

end

end A161199.P7615339671996941004

namespace A161199

/-- `lcm(A000079(n), A002802(n))/A000079(n)` -/
def P7615339671996941004.Spec : Prop :=
  ∀ n, P7615339671996941004.a n = (A161199 n : ℚ)

end A161199

