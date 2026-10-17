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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

/-!
# A044001: Numbers k such that 0 and 6 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044001, there is no canonical definition to state claims against.
-/

/-! ## A044001.P2227736976271474749

`A052421(or(A043185(n+1), A185284((5-n)²))+1)`
-/

namespace A044001.P2227736976271474749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (Int.lor (A043185 (n + 1)) (A185284 ((5 - (n : ℤ)) ^ 2).toNat) + 1).toNat

end

end A044001.P2227736976271474749

/-!
# A044004: Numbers k such that 0 and 9 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044004, there is no canonical definition to state claims against.
-/

/-! ## A044004.P8905818349210527207

`A043489(9*n+10)%A156200(A001248(n+4))`
-/

namespace A044004.P8905818349210527207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043489 (9 * n + 10)) (A156200 (A001248 (n + 4)).toNat)

end

end A044004.P8905818349210527207

/-! ## A044004.P17985457628838945428

`or(A002266(A098841(n+1)), A039401(n+1))`
-/

namespace A044004.P17985457628838945428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002266 (A098841 (n + 1)).toNat) (A039401 (n + 1))

end

end A044004.P17985457628838945428

/-!
# A044005: Numbers k such that 1 and 2 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044005, there is no canonical definition to state claims against.
-/

/-! ## A044005.P11404383755478774099

`A052421(A043968(n+1)+A000034(Δ[(3/2-(n+2)²)²]))`
-/

namespace A044005.P11404383755478774099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 - ((n + 2) ^ 2 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A043968 (n + 1) + A000034 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat).toNat

end

end A044005.P11404383755478774099

/-! ## A044005.P4928323971367627007

`A052421(A043968(n+1)+A007814(Δ[(3/2-(n+2)²)²]))`
-/

namespace A044005.P4928323971367627007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 - ((n + 2) ^ 2 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A043968 (n + 1) + A007814 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat).toNat

end

end A044005.P4928323971367627007

/-! ## A044005.P8274380458727355563

`A052421(A043968(n+1)+A014963(Δ[(3/2-(n+2)²)²]))`
-/

namespace A044005.P8274380458727355563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 - ((n + 2) ^ 2 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A043968 (n + 1) + A014963 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat).toNat

end

end A044005.P8274380458727355563

/-! ## A044005.P10203868245588406062

`A052419(A061603(n)+A043968(n+1))`
-/

namespace A044005.P10203868245588406062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A061603 n + A043968 (n + 1)).toNat

end

end A044005.P10203868245588406062

/-!
# A044006: Numbers k such that 1 and 3 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044006, there is no canonical definition to state claims against.
-/

/-! ## A044006.P7249604130611373774

`or(A043226(n+1), A326584(A038318(n)))`
-/

namespace A044006.P7249604130611373774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043226 (n + 1)) (A326584 (A038318 n).toNat)

end

end A044006.P7249604130611373774

/-! ## A044006.P8246689555949199349

`or(A043226(n+1), A326584(A038320(n)))`
-/

namespace A044006.P8246689555949199349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043226 (n + 1)) (A326584 (A038320 n).toNat)

end

end A044006.P8246689555949199349

/-! ## A044006.P11909779484574997184

`or(A043226(n+1), A326584(A038326(n)))`
-/

namespace A044006.P11909779484574997184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043226 (n + 1)) (A326584 (A038326 n).toNat)

end

end A044006.P11909779484574997184

/-!
# A044007: Numbers k such that 1 and 4 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044007, there is no canonical definition to state claims against.
-/

/-! ## A044007.P9891869333453297334

`A347149(A000029(2*n+3))+A043227(n+1)`
-/

namespace A044007.P9891869333453297334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (A000029 (2 * n + 3)).toNat + A043227 (n + 1)

end

end A044007.P9891869333453297334

/-! ## A044007.P7227949385563502003

`A255808(A043970(n+1))%A106456(3*n+5)`
-/

namespace A044007.P7227949385563502003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255808 (A043970 (n + 1)).toNat) (A106456 (3 * n + 5))

end

end A044007.P7227949385563502003

/-! ## A044007.P3537926463134989221

`A255808(∪[A106456(3*n+5), A043970(n+1)])`
-/

namespace A044007.P3537926463134989221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106456 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A044007.P3537926463134989221

/-!
# A044008: Numbers k such that 1 and 5 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044008, there is no canonical definition to state claims against.
-/

/-! ## A044008.P14399572401602099210

`or(A043228(n+1), A065813(A206350(n+1)))`
-/

namespace A044008.P14399572401602099210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043228 (n + 1)) (A065813 (A206350 (n + 1)).toNat)

end

end A044008.P14399572401602099210

/-! ## A044008.P11147283177672675492

`or(A043228(n+1), A127648(A001871(n)))`
-/

namespace A044008.P11147283177672675492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043228 (n + 1)) (A127648 (A001871 n).toNat)

end

end A044008.P11147283177672675492

/-! ## A044008.P8989912266265299954

`or(A043228(n+1), A165824(A149044(n)))`
-/

namespace A044008.P8989912266265299954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043228 (n + 1)) (A165824 (A149044 n).toNat)

end

end A044008.P8989912266265299954

/-! ## A044008.P16129599855463500102

`or(A043228(n+1), A065813(A199004(n+1)))`
-/

namespace A044008.P16129599855463500102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043228 (n + 1)) (A065813 (A199004 (n + 1)).toNat)

end

end A044008.P16129599855463500102

/-!
# A044009: Numbers k such that 1 and 6 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044009, there is no canonical definition to state claims against.
-/

/-! ## A044009.P16034379357071471579

`A347149(A000029(2*n+3))+A043229(n+1)`
-/

namespace A044009.P16034379357071471579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (A000029 (2 * n + 3)).toNat + A043229 (n + 1)

end

end A044009.P16034379357071471579

/-!
# A044010: Numbers k such that 1 and 7 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044010, there is no canonical definition to state claims against.
-/

/-! ## A044010.P8622190923335938953

`A347149(A000029(2*n+3))+A043230(n+1)`
-/

namespace A044010.P8622190923335938953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (A000029 (2 * n + 3)).toNat + A043230 (n + 1)

end

end A044010.P8622190923335938953

/-!
# A044011: Numbers k such that 1 and 8 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044011, there is no canonical definition to state claims against.
-/

/-! ## A044011.P3969662947496661910

`or(A043231(n+1), A130069(A052905(n)))`
-/

namespace A044011.P3969662947496661910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043231 (n + 1)) (A130069 (A052905 n).toNat)

end

end A044011.P3969662947496661910

/-! ## A044011.P6113093596852537564

`A347149(A000029(2*n+3))+A043231(n+1)`
-/

namespace A044011.P6113093596852537564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (A000029 (2 * n + 3)).toNat + A043231 (n + 1)

end

end A044011.P6113093596852537564

/-!
# A044012: Numbers k such that 1 and 9 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044012, there is no canonical definition to state claims against.
-/

/-! ## A044012.P18087318791172258117

`A347149(A000029(2*n+3))+A043232(n+1)`
-/

namespace A044012.P18087318791172258117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (A000029 (2 * n + 3)).toNat + A043232 (n + 1)

end

end A044012.P18087318791172258117

/-! ## A044012.P16521812258575855977

`A255808(A043974(n+1)^A131324(n))`
-/

namespace A044012.P16521812258575855977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (SequenceMachineLib.roundAway ((A043974 (n + 1) : ℚ) ^ (A131324 n : ℤ))).toNat

end

end A044012.P16521812258575855977

/-! ## A044012.P17015564931568280594

`A255808(A043974(n+1)^A331567(n))`
-/

namespace A044012.P17015564931568280594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (SequenceMachineLib.roundAway ((A043974 (n + 1) : ℚ) ^ (A331567 n : ℤ))).toNat

end

end A044012.P17015564931568280594

/-!
# A044013: Numbers k such that 2 and 3 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044013, there is no canonical definition to state claims against.
-/

/-! ## A044013.P13570622586768909447

`A222238(A044018(n+1)^A194438(n+1))`
-/

namespace A044013.P13570622586768909447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (SequenceMachineLib.roundAway ((A044018 (n + 1) : ℚ) ^ (A194438 (n + 1) : ℤ))).toNat

end

end A044013.P13570622586768909447

/-! ## A044013.P11545477341256798014

`A222238(C(A044018(n+1), A194438(n+1)))`
-/

namespace A044013.P11545477341256798014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (Nat.choose (A044018 (n + 1)).toNat (A194438 (n + 1)).toNat)

end

end A044013.P11545477341256798014

/-!
# A044014: Numbers k such that 2 and 4 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044014, there is no canonical definition to state claims against.
-/

/-! ## A044014.P17565725241538907665

`A222243(A044018(n+1)^A280953(n))`
-/

namespace A044014.P17565725241538907665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (SequenceMachineLib.roundAway ((A044018 (n + 1) : ℚ) ^ (A280953 n : ℤ))).toNat

end

end A044014.P17565725241538907665

/-! ## A044014.P15495734609748118554

`A222243(A044018(n+1)^A270419(n+1))`
-/

namespace A044014.P15495734609748118554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (SequenceMachineLib.roundAway ((A044018 (n + 1) : ℚ) ^ (A270419 (n + 1) : ℤ))).toNat

end

end A044014.P15495734609748118554

/-!
# A044015: Numbers k such that 2 and 5 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044015, there is no canonical definition to state claims against.
-/

/-! ## A044015.P5267174280787302759

`A222246(A044017(n+1)^A122604(n+1))`
-/

namespace A044015.P5267174280787302759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.roundAway ((A044017 (n + 1) : ℚ) ^ (A122604 (n + 1) : ℤ))).toNat

end

end A044015.P5267174280787302759

/-! ## A044015.P408411798707441686

`A222246(C(A044017(n+1), A122604(n+1)))`
-/

namespace A044015.P408411798707441686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (Nat.choose (A044017 (n + 1)).toNat (A122604 (n + 1)).toNat)

end

end A044015.P408411798707441686

/-! ## A044015.P15381183927792952043

`A222246(A044017(n+1)*A287021(n))`
-/

namespace A044015.P15381183927792952043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A044017 (n + 1) * A287021 n).toNat

end

end A044015.P15381183927792952043

/-! ## A044015.P11304317532890435490

`A222246(A044017(n+1)^A287021(n))`
-/

namespace A044015.P11304317532890435490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.roundAway ((A044017 (n + 1) : ℚ) ^ (A287021 n : ℤ))).toNat

end

end A044015.P11304317532890435490

/-!
# A044016: Numbers k such that 2 and 6 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044016, there is no canonical definition to state claims against.
-/

/-! ## A044016.P12935903739184431472

`(A222246(A044015(n+1)*A287021(n))+A044015(n+1))/2`
-/

namespace A044016.P12935903739184431472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222246 (A044015 (n + 1) * A287021 n).toNat + A044015 (n + 1) : ℚ) / 2

end

end A044016.P12935903739184431472

/-! ## A044016.P1918791193316113377

`(A222246(A044015(n+1)^A287021(n))+A044015(n+1))/2`
-/

namespace A044016.P1918791193316113377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222246 (SequenceMachineLib.roundAway ((A044015 (n + 1) : ℚ) ^ (A287021 n : ℤ))).toNat + A044015 (n + 1) : ℚ) / 2

end

end A044016.P1918791193316113377

/-!
# A044017: Numbers k such that 2 and 7 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044017, there is no canonical definition to state claims against.
-/

/-! ## A044017.P17570163918893498392

`A222246(A044015(n+1))+A243250(n+1)%A033999(n)`
-/

namespace A044017.P17570163918893498392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A044015 (n + 1)).toNat + Int.tmod (A243250 (n + 1)) (A033999 n)

end

end A044017.P17570163918893498392

/-! ## A044017.P18149414205086857943

`A222246(A044015(n+1))%(A243250(n+1)+A046307(n+1))`
-/

namespace A044017.P18149414205086857943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222246 (A044015 (n + 1)).toNat) (A243250 (n + 1) + A046307 (n + 1))

end

end A044017.P18149414205086857943

/-! ## A044017.P17896783958497587158

`A222246(A044015(n+1)^A122604(n+1))`
-/

namespace A044017.P17896783958497587158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.roundAway ((A044015 (n + 1) : ℚ) ^ (A122604 (n + 1) : ℤ))).toNat

end

end A044017.P17896783958497587158

/-! ## A044017.P6252428241074463635

`A222246(C(A044015(n+1), A122604(n+1)))`
-/

namespace A044017.P6252428241074463635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (Nat.choose (A044015 (n + 1)).toNat (A122604 (n + 1)).toNat)

end

end A044017.P6252428241074463635

/-!
# A044018: Numbers k such that 2 and 8 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044018, there is no canonical definition to state claims against.
-/

/-! ## A044018.P11654674150478829242

`A102683(A276080(n))+A007095(A043980(n+1))`
-/

namespace A044018.P11654674150478829242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A276080 n).toNat + A007095 (A043980 (n + 1)).toNat

end

end A044018.P11654674150478829242

/-! ## A044018.P14379966748710715673

`A222243(A044014(n+1)^A280953(n))`
-/

namespace A044018.P14379966748710715673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (SequenceMachineLib.roundAway ((A044014 (n + 1) : ℚ) ^ (A280953 n : ℤ))).toNat

end

end A044018.P14379966748710715673

/-! ## A044018.P9852844443768427862

`A222243(A044014(n+1)^A270419(n+1))`
-/

namespace A044018.P9852844443768427862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (SequenceMachineLib.roundAway ((A044014 (n + 1) : ℚ) ^ (A270419 (n + 1) : ℤ))).toNat

end

end A044018.P9852844443768427862

/-!
# A044019: Numbers k such that 2 and 9 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044019, there is no canonical definition to state claims against.
-/

/-! ## A044019.P6980039334009820572

`2*A222246(A044015(n+1)*A287021(n))-A044015(n+1)`
-/

namespace A044019.P6980039334009820572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222246 (A044015 (n + 1) * A287021 n).toNat - A044015 (n + 1)

end

end A044019.P6980039334009820572

/-! ## A044019.P672620044277332361

`∩[A037477(A043980(n+1)), A037477(n)]`
-/

namespace A044019.P672620044277332361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043980 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044019.P672620044277332361

/-!
# A044021: Numbers k such that 3 and 5 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044021, there is no canonical definition to state claims against.
-/

/-! ## A044021.P856471827629714574

`A052421(A043982(n+1)+A136400(n)!)`
-/

namespace A044021.P856471827629714574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A043982 (n + 1) + (Nat.factorial (A136400 n).toNat : ℤ)).toNat

end

end A044021.P856471827629714574

/-!
# A044024: Numbers k such that 3 and 8 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044024, there is no canonical definition to state claims against.
-/

/-! ## A044024.P15665556789631292258

`A157271(A044025(n+1)+A044023(n+1))`
-/

namespace A044024.P15665556789631292258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044025 (n + 1) + A044023 (n + 1)).toNat

end

end A044024.P15665556789631292258

/-! ## A044024.P8498087666285569577

`A043244(n+1)+A004198(A243324(n+1))`
-/

namespace A044024.P8498087666285569577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043244 (n + 1) + A004198 (A243324 (n + 1)).toNat

end

end A044024.P8498087666285569577

/-!
# A044025: Numbers k such that 3 and 9 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044025, there is no canonical definition to state claims against.
-/

/-! ## A044025.P2200899574812188605

`or(A043245(n+1), A112996(A078122(n)))`
-/

namespace A044025.P2200899574812188605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043245 (n + 1)) (A112996 (A078122 n).toNat)

end

end A044025.P2200899574812188605

/-! ## A044025.P1558724271161659869

`A043245(n+1)+A004198(A243324(n+1))`
-/

namespace A044025.P1558724271161659869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043245 (n + 1) + A004198 (A243324 (n + 1)).toNat

end

end A044025.P1558724271161659869

/-!
# A044027: Numbers k such that 4 and 6 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044027, there is no canonical definition to state claims against.
-/

/-! ## A044027.P3800384565025043432

`A157271(A044028(n+1)+A044026(n+1))`
-/

namespace A044027.P3800384565025043432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044028 (n + 1) + A044026 (n + 1)).toNat

end

end A044027.P3800384565025043432

/-!
# A044028: Numbers k such that 4 and 7 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044028, there is no canonical definition to state claims against.
-/

/-! ## A044028.P10175193531630470040

`A157271(A044029(n+1)+A044027(n+1))`
-/

namespace A044028.P10175193531630470040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044029 (n + 1) + A044027 (n + 1)).toNat

end

end A044028.P10175193531630470040

/-! ## A044028.P5790915473860702978

`A157271(A044030(n+1)+A044026(n+1))`
-/

namespace A044028.P5790915473860702978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044030 (n + 1) + A044026 (n + 1)).toNat

end

end A044028.P5790915473860702978

/-!
# A044034: Numbers k such that 5 and 9 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044034, there is no canonical definition to state claims against.
-/

/-! ## A044034.P14240387956660376933

`A043254(A062399(n)+1)`
-/

namespace A044034.P14240387956660376933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043254 (A062399 n + 1).toNat

end

end A044034.P14240387956660376933

/-! ## A044034.P2086285195647544277

`A043254(A351870(n)+1)`
-/

namespace A044034.P2086285195647544277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043254 (A351870 n + 1).toNat

end

end A044034.P2086285195647544277

/-! ## A044034.P4788280662480969610

`A043254(n+1)^A083117(A224808(n))`
-/

namespace A044034.P4788280662480969610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043254 (n + 1) : ℚ) ^ (A083117 (A224808 n).toNat : ℤ)

end

end A044034.P4788280662480969610

/-! ## A044034.P14601305680610147910

`A043254(n+1)%A000578(A005010(n))`
-/

namespace A044034.P14601305680610147910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043254 (n + 1)) (A000578 (A005010 n).toNat)

end

end A044034.P14601305680610147910

/-! ## A044034.P11918698231936063999

`A043254(n+1)*A043290(A000108(n+1))`
-/

namespace A044034.P11918698231936063999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043254 (n + 1) * A043290 (A000108 (n + 1)).toNat

end

end A044034.P11918698231936063999

/-!
# A044040: Numbers k such that 8 and 9 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A044040, there is no canonical definition to state claims against.
-/

/-! ## A044040.P398042583839890548

`A185255(A004275(n))+A043260(n+1)`
-/

namespace A044040.P398042583839890548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A004275 n).toNat + A043260 (n + 1)

end

end A044040.P398042583839890548

/-! ## A044040.P7070997542223058500

`A185255(A053868(n+1)+1)+A043260(n+1)`
-/

namespace A044040.P7070997542223058500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A053868 (n + 1) + 1).toNat + A043260 (n + 1)

end

end A044040.P7070997542223058500

/-!
# A044041: Numbers k such that 0 and 1 occur juxtaposed in the base-11 representation of k but not of k+1.

The programs for A044041, there is no canonical definition to state claims against.
-/

/-! ## A044041.P5419592176363896126

`A007095(A043996(n+1)%A204762(n+1))`
-/

namespace A044041.P5419592176363896126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043996 (n + 1)) (A204762 (n + 1))).toNat

end

end A044041.P5419592176363896126

/-! ## A044041.P10920933129202125894

`A007095(A043996(n+1))*A056926(5*4^n)`
-/

namespace A044041.P10920933129202125894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043996 (n + 1)).toNat * A056926 (5 * 4 ^ n)

end

end A044041.P10920933129202125894

/-! ## A044041.P1451848348437901883

`A007095(A007095(A043960(A037441(A007094(n+1)))))`
-/

namespace A044041.P1451848348437901883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A007095 (A043960 (A037441 (A007094 (n + 1)).toNat).toNat).toNat).toNat

end

end A044041.P1451848348437901883

/-!
# A044042: Primes congruent to {1, 2, 3, 4, 5} (mod 7).

The programs for A044042, the canonical program `A044042.P9099708772331727754` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044042 has offset 1).

The definition of A044042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044042.P9099708772331727754

`p?[2*floor(n/5)+1+n]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A044042

/-- `p?[2*floor(n/5)+1+n]` -/
def P9099708772331727754.Spec : Prop :=
  ∀ n, P9099708772331727754.a n = A044042 (n + 1)

theorem P9099708772331727754.correct : P9099708772331727754.Spec := by
  intro n
  simp only [A044042, Nat.add_sub_cancel]

end A044042

/-! ## A044042.P13676676861920650834

`∪[A045308(n+1), A045313(n+1)]`
-/

namespace A044042.P13676676861920650834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P13676676861920650834

namespace A044042

/-- `∪[A045308(n+1), A045313(n+1)]` -/
def P13676676861920650834.Spec : Prop :=
  ∀ n, (P13676676861920650834.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P543950456174990679

`∪[A045308(n+1), A045337(n+1)]`
-/

namespace A044042.P543950456174990679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P543950456174990679

namespace A044042

/-- `∪[A045308(n+1), A045337(n+1)]` -/
def P543950456174990679.Spec : Prop :=
  ∀ n, (P543950456174990679.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P7703749093517355775

`∪[A045308(n+1), A045342(n+1)]`
-/

namespace A044042.P7703749093517355775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P7703749093517355775

namespace A044042

/-- `∪[A045308(n+1), A045342(n+1)]` -/
def P7703749093517355775.Spec : Prop :=
  ∀ n, (P7703749093517355775.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P15308217804283138901

`∪[A045313(n+1), A045337(n+1)]`
-/

namespace A044042.P15308217804283138901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P15308217804283138901

namespace A044042

/-- `∪[A045313(n+1), A045337(n+1)]` -/
def P15308217804283138901.Spec : Prop :=
  ∀ n, (P15308217804283138901.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P13441463633977375357

`∪[A045313(n+1), A045338(n+1)]`
-/

namespace A044042.P13441463633977375357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P13441463633977375357

namespace A044042

/-- `∪[A045313(n+1), A045338(n+1)]` -/
def P13441463633977375357.Spec : Prop :=
  ∀ n, (P13441463633977375357.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P15602491892481154337

`∪[A045314(n+1), A045337(n+1)]`
-/

namespace A044042.P15602491892481154337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P15602491892481154337

namespace A044042

/-- `∪[A045314(n+1), A045337(n+1)]` -/
def P15602491892481154337.Spec : Prop :=
  ∀ n, (P15602491892481154337.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P13639212307662637509

`∪[A045308(n+1), A045362(n+1)]`
-/

namespace A044042.P13639212307662637509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P13639212307662637509

namespace A044042

/-- `∪[A045308(n+1), A045362(n+1)]` -/
def P13639212307662637509.Spec : Prop :=
  ∀ n, (P13639212307662637509.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P9713191589856666946

`∪[A045308(n+1), A045367(n+1)]`
-/

namespace A044042.P9713191589856666946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P9713191589856666946

namespace A044042

/-- `∪[A045308(n+1), A045367(n+1)]` -/
def P9713191589856666946.Spec : Prop :=
  ∀ n, (P9713191589856666946.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P14870689011386325403

`∪[A045313(n+1), A045362(n+1)]`
-/

namespace A044042.P14870689011386325403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P14870689011386325403

namespace A044042

/-- `∪[A045313(n+1), A045362(n+1)]` -/
def P14870689011386325403.Spec : Prop :=
  ∀ n, (P14870689011386325403.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P1749855210692181319

`∪[A045368(n+1), A045337(n+1)]`
-/

namespace A044042.P1749855210692181319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P1749855210692181319

namespace A044042

/-- `∪[A045368(n+1), A045337(n+1)]` -/
def P1749855210692181319.Spec : Prop :=
  ∀ n, (P1749855210692181319.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P14303444434702044562

`∪[A045387(n+1), A045313(n+1)]`
-/

namespace A044042.P14303444434702044562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P14303444434702044562

namespace A044042

/-- `∪[A045387(n+1), A045313(n+1)]` -/
def P14303444434702044562.Spec : Prop :=
  ∀ n, (P14303444434702044562.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P10207539097632747151

`A042988(A326178(n))`
-/

namespace A044042.P10207539097632747151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (A326178 n).toNat

end

end A044042.P10207539097632747151

namespace A044042

/-- `A042988(A326178(n))` -/
def P10207539097632747151.Spec : Prop :=
  ∀ n, P10207539097632747151.a n = A044042 (n + 1)

end A044042

/-! ## A044042.P1624901961051929652

`∩[A356451(n+1), A042988(n)]`
-/

namespace A044042.P1624901961051929652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P1624901961051929652

namespace A044042

/-- `∩[A356451(n+1), A042988(n)]` -/
def P1624901961051929652.Spec : Prop :=
  ∀ n, (P1624901961051929652.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P11816629247314023101

`record[A006530(A047369(n+2))]`
-/

namespace A044042.P11816629247314023101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047369 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044042.P11816629247314023101

namespace A044042

/-- `record[A006530(A047369(n+2))]` -/
def P11816629247314023101.Spec : Prop :=
  ∀ n, P11816629247314023101.a n = A044042 (n + 1)

end A044042

/-! ## A044042.P13049376326900608037

`filter[A047369(n+1), A010051(#)]`
-/

namespace A044042.P13049376326900608037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A044042.P13049376326900608037

namespace A044042

/-- `filter[A047369(n+1), A010051(#)]` -/
def P13049376326900608037.Spec : Prop :=
  ∀ n, P13049376326900608037.a n = A044042 (n + 1)

end A044042

/-! ## A044042.P13613242820947309429

`∩[A047369(n+1), A042988(n)]`
-/

namespace A044042.P13613242820947309429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044042.P13613242820947309429

namespace A044042

/-- `∩[A047369(n+1), A042988(n)]` -/
def P13613242820947309429.Spec : Prop :=
  ∀ n, (P13613242820947309429.a n : ℤ) = A044042 (n + 1)

end A044042

/-! ## A044042.P895352310021712215

`record[A006530(A047287(n+1)+2)]`
-/

namespace A044042.P895352310021712215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047287 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044042.P895352310021712215

namespace A044042

/-- `record[A006530(A047287(n+1)+2)]` -/
def P895352310021712215.Spec : Prop :=
  ∀ n, P895352310021712215.a n = A044042 (n + 1)

end A044042

/-! ## A044042.P12853479767972349362

`record[A006530(A047337(n+2)+1)]`
-/

namespace A044042.P12853479767972349362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047337 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044042.P12853479767972349362

namespace A044042

/-- `record[A006530(A047337(n+2)+1)]` -/
def P12853479767972349362.Spec : Prop :=
  ∀ n, P12853479767972349362.a n = A044042 (n + 1)

end A044042

/-! ## A044042.P9551109521974206482

`record[A006530(A047305(n+2)-1)]`
-/

namespace A044042.P9551109521974206482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047305 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044042.P9551109521974206482

namespace A044042

/-- `record[A006530(A047305(n+2)-1)]` -/
def P9551109521974206482.Spec : Prop :=
  ∀ n, P9551109521974206482.a n = A044042 (n + 1)

end A044042

/-!
# A044044: Catafusenes (see reference for precise definition).

The programs for A044044, there is no canonical definition to state claims against.
-/

/-! ## A044044.P13290264684592484200

`A323920(n+1)+A044045(A110654(n))`
-/

namespace A044044.P13290264684592484200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323920 (n + 1) + A044045 (A110654 n).toNat

end

end A044044.P13290264684592484200

/-! ## A044044.P14161069755654841317

`A002215(n+1)-A178401(A129575(2*n+3))`
-/

namespace A044044.P14161069755654841317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (n + 1) - A178401 (A129575 (2 * n + 3)).toNat

end

end A044044.P14161069755654841317

/-! ## A044044.P3113908969772360546

`A123578(A026898(n))-∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A044044.P3113908969772360546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A026898 n).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)

end

end A044044.P3113908969772360546

/-! ## A044044.P18351403900633496439

`A003056(A026898(n))-A000931(n)`
-/

namespace A044044.P18351403900633496439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026898 n).toNat - A000931 n

end

end A044044.P18351403900633496439

/-!
# A044045: Same as A038392 except for initial term.

The programs for A044045, there is no canonical definition to state claims against.
-/

/-! ## A044045.P2129444811732212254

`A038392(n+1)-floor(acot(n))`
-/

namespace A044045.P2129444811732212254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A044045.P2129444811732212254

/-! ## A044045.P4712797796285194482

`A038392(n+1)-A000007(n)`
-/

namespace A044045.P4712797796285194482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - A000007 n

end

end A044045.P4712797796285194482

/-! ## A044045.P3785239773336891442

`A038392(n+1)*A057427(n)`
-/

namespace A044045.P3785239773336891442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) * A057427 n

end

end A044045.P3785239773336891442

/-! ## A044045.P16933189741001849561

`A038392(n+1)%A086405(n)`
-/

namespace A044045.P16933189741001849561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038392 (n + 1)) (A086405 n)

end

end A044045.P16933189741001849561

/-! ## A044045.P3383664143004174035

`lcm(A011626(n), A038392(n+1))`
-/

namespace A044045.P3383664143004174035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011626 n) (A038392 (n + 1))

end

end A044045.P3383664143004174035

/-! ## A044045.P17689614687956199760

`and(A038392(n+1), A057428(n))`
-/

namespace A044045.P17689614687956199760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038392 (n + 1)) (A057428 n)

end

end A044045.P17689614687956199760

/-! ## A044045.P12990487540151782224

`and(A038392(n+1), A134824(n))`
-/

namespace A044045.P12990487540151782224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038392 (n + 1)) (A134824 n)

end

end A044045.P12990487540151782224

/-! ## A044045.P4986495380955849771

`char[A126759(n)]*A038392(n+1)`
-/

namespace A044045.P4986495380955849771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038392 (n + 1)

end

end A044045.P4986495380955849771

/-! ## A044045.P3536820418339201316

`A038392(n+1)-A019590(n+2)`
-/

namespace A044045.P3536820418339201316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - A019590 (n + 2)

end

end A044045.P3536820418339201316

/-! ## A044045.P6208130123191156651

`A038392(n+1)-A178225(2*n)`
-/

namespace A044045.P6208130123191156651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - A178225 (2 * n)

end

end A044045.P6208130123191156651

/-! ## A044045.P16081834606153544045

`A038392(n+1)*A178226(2*n)`
-/

namespace A044045.P16081834606153544045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) * A178226 (2 * n)

end

end A044045.P16081834606153544045

/-! ## A044045.P3285580631107325124

`A038392(n+1)+A000918(n)%2`
-/

namespace A044045.P3285580631107325124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + Int.tmod (A000918 n) 2

end

end A044045.P3285580631107325124

/-! ## A044045.P5768099572422581714

`xor(A000007(2*n), A038392(n+1))`
-/

namespace A044045.P5768099572422581714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A038392 (n + 1))

end

end A044045.P5768099572422581714

/-! ## A044045.P18252982335105567512

`A038392(n+1)-A008683((n+1)²)`
-/

namespace A044045.P18252982335105567512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A044045.P18252982335105567512

/-! ## A044045.P5995846677221497091

`char[A002260(n+1)]*A038392(n+1)`
-/

namespace A044045.P5995846677221497091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038392 (n + 1)

end

end A044045.P5995846677221497091

/-! ## A044045.P12080293646148884704

`char[A038388(n+1)]*A038392(n+1)`
-/

namespace A044045.P12080293646148884704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038392 (n + 1)

end

end A044045.P12080293646148884704

/-! ## A044045.P12077275738897577642

`A038392(n+1)-A007814(A000040(n+1))`
-/

namespace A044045.P12077275738897577642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - A007814 (A000040 (n + 1)).toNat

end

end A044045.P12077275738897577642

/-! ## A044045.P13005672517003643007

`A045908(n)-A024311(n+1)`
-/

namespace A044045.P13005672517003643007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n - A024311 (n + 1)

end

end A044045.P13005672517003643007

/-! ## A044045.P2699882479306259684

`A038392(n+2)-(A044046(n)+A002212(n))`
-/

namespace A044045.P2699882479306259684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) - (A044046 n + A002212 n)

end

end A044045.P2699882479306259684

/-! ## A044045.P6675761327412073769

`A030529(n+3)-(A030529(n+2)+A024311(n+1))`
-/

namespace A044045.P6675761327412073769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030529 (n + 3) - (A030529 (n + 2) + A024311 (n + 1))

end

end A044045.P6675761327412073769

/-!
# A044046: Nonisomorphic catacondensed monoheptafusenes (see reference for precise definition).

The programs for A044046, there is no canonical definition to state claims against.
-/

/-! ## A044046.P7805661106978709144

`A121071(n)/2`
-/

namespace A044046.P7805661106978709144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121071 n : ℚ) / 2

end

end A044046.P7805661106978709144

/-! ## A044046.P13067152071136597461

`Δ[A044045(n)]-A002212(n)`
-/

namespace A044046.P13067152071136597461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002212 n

end

end A044046.P13067152071136597461

/-! ## A044046.P16080477040013551071

`Δ[A044045(n)%A181768(n)]`
-/

namespace A044046.P16080477040013551071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044045 n) (A181768 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044046.P16080477040013551071

/-! ## A044046.P14439694134406244239

`A030520(n+2)-∑[A045908(n)]`
-/

namespace A044046.P14439694134406244239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044046.P14439694134406244239

/-! ## A044046.P12169351647518749735

`Δ[A038392(n+1)-A181768(n)]`
-/

namespace A044046.P12169351647518749735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) - A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044046.P12169351647518749735

/-! ## A044046.P4630033767987490800

`Δ[A038392(n+1)]%A002212(n)`
-/

namespace A044046.P4630033767987490800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002212 n)

end

end A044046.P4630033767987490800

/-! ## A044046.P6520006776743677250

`A046697(n+1)-A038392(n+1)`
-/

namespace A044046.P6520006776743677250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) - A038392 (n + 1)

end

end A044046.P6520006776743677250

/-! ## A044046.P7297734077567094004

`A030520(n+2)-A030529(n+3)`
-/

namespace A044046.P7297734077567094004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2) - A030529 (n + 3)

end

end A044046.P7297734077567094004

/-! ## A044046.P12329155221280572350

`A044045(n+1)-(A044045(n)+A002212(n))`
-/

namespace A044046.P12329155221280572350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) - (A044045 n + A002212 n)

end

end A044046.P12329155221280572350

/-! ## A044046.P4519342673853399725

`A024311(n+1)+A055879(n+1)-A038392(n+1)`
-/

namespace A044046.P4519342673853399725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024311 (n + 1) + (A055879 (n + 1) - A038392 (n + 1))

end

end A044046.P4519342673853399725

/-! ## A044046.P9408659667344697029

`Δ[A039919(n+1)-A030520(n+2)]`
-/

namespace A044046.P9408659667344697029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (n + 1) - A030520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044046.P9408659667344697029

/-!
# A044047: Catafusenes (see reference for precise definition).

The programs for A044047, there is no canonical definition to state claims against.
-/

/-! ## A044047.P17996462462288358929

`A044048(n)-A046697(n+1)`
-/

namespace A044047.P17996462462288358929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044048 n - A046697 (n + 1)

end

end A044047.P17996462462288358929

/-! ## A044047.P17049422558374908558

`A044048(round(sqrt(n²+1)))%A046697(n+1)`
-/

namespace A044047.P17049422558374908558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044048 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A046697 (n + 1))

end

end A044047.P17049422558374908558

/-! ## A044047.P721919678691810035

`A044048(n)%(A046697(n+1)/A033999(n))`
-/

namespace A044047.P721919678691810035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044048 n) (SequenceMachineLib.roundAway ((A046697 (n + 1) : ℚ) / (A033999 n : ℚ)))

end

end A044047.P721919678691810035

/-! ## A044047.P15017045115228184603

`A044048(n)+A046697(n+1)*A316441(A007491(n+1))`
-/

namespace A044047.P15017045115228184603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044048 n + A046697 (n + 1) * A316441 (A007491 (n + 1)).toNat

end

end A044047.P15017045115228184603

/-!
# A044048: Catafusenes (see reference for precise definition).

The programs for A044048, there is no canonical definition to state claims against.
-/

/-! ## A044048.P10587723386423637358

`A046697(n+1)+A044047(n)`
-/

namespace A044048.P10587723386423637358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) + A044047 n

end

end A044048.P10587723386423637358

/-! ## A044048.P5869034826892176973

`A044047(n)+A045868(n)-∑[A045908(n)]`
-/

namespace A044048.P5869034826892176973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044047 n + (A045868 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044048.P5869034826892176973

/-! ## A044048.P3896128816290641453

`A044047(n)+Δ[∑[A044045(n)]-A181768(n)]`
-/

namespace A044048.P3896128816290641453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044047 n + (f1 (n + 1) - f1 n)

end

end A044048.P3896128816290641453

/-! ## A044048.P9396025824458577894

`A044047(n)+Δ[A044045(n)]-A030529(n+2)`
-/

namespace A044048.P9396025824458577894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044047 n + (f1 (n + 1) - f1 n - A030529 (n + 2))

end

end A044048.P9396025824458577894

/-! ## A044048.P8055874692242171161

`A044047(n)+A044046(n)+A044045(A028310(n))`
-/

namespace A044048.P8055874692242171161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044047 n + (A044046 n + A044045 (A028310 n).toNat)

end

end A044048.P8055874692242171161

/-!
# A044049: Catafusenes (see reference for precise definition).

The programs for A044049, there is no canonical definition to state claims against.
-/

/-! ## A044049.P9709841869938052406

`A390844(A151155(n))`
-/

namespace A044049.P9709841869938052406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390844 (A151155 n).toNat

end

end A044049.P9709841869938052406

/-! ## A044049.P1675762710764465851

`floor(A302569(A130707(2*n+1))/8)`
-/

namespace A044049.P1675762710764465851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A302569 (A130707 (2 * n + 1)).toNat : ℚ) / 8⌋

end

end A044049.P1675762710764465851

/-! ## A044049.P10033505264455545061

`A059995(A297200(n)+A180141(n))`
-/

namespace A044049.P10033505264455545061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A297200 n + A180141 n).toNat

end

end A044049.P10033505264455545061

/-!
# A044050: a(n) = "length" of the aliquot sequence for n.

The programs for A044050, there is no canonical definition to state claims against.
-/

/-! ## A044050.P1611891092968330737

`A098007(n+1)-A057427(A098008(n+1))`
-/

namespace A044050.P1611891092968330737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A057427 (A098008 (n + 1)).toNat

end

end A044050.P1611891092968330737

/-! ## A044050.P8491805207183604002

`A028310(A098008(n+1)%A181262(n+1))`
-/

namespace A044050.P8491805207183604002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A098008 (n + 1)) (A181262 (n + 1))).toNat

end

end A044050.P8491805207183604002

/-! ## A044050.P6159793239236315790

`A028310(A098008(n+1))%A210892(n+1)`
-/

namespace A044050.P6159793239236315790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A098008 (n + 1)).toNat) (A210892 (n + 1))

end

end A044050.P6159793239236315790

/-! ## A044050.P715716539409817416

`A028310(A098008(n+1))*A294935(A059268(n))`
-/

namespace A044050.P715716539409817416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A098008 (n + 1)).toNat * A294935 (A059268 n).toNat

end

end A044050.P715716539409817416

/-! ## A044050.P1228148445462406042

`A098007(A173455(n+1))-C(2, n+2)`
-/

namespace A044050.P1228148445462406042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (A173455 (n + 1)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A044050.P1228148445462406042

/-! ## A044050.P13335476170083563382

`A098008(A173455(n+1))+A057427(n)`
-/

namespace A044050.P13335476170083563382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A173455 (n + 1)).toNat + A057427 n

end

end A044050.P13335476170083563382

/-! ## A044050.P17578850556213404938

`A098007(A173455(n+1))-A000007(n)`
-/

namespace A044050.P17578850556213404938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (A173455 (n + 1)).toNat - A000007 n

end

end A044050.P17578850556213404938

/-! ## A044050.P17861271789426587356

`A098007(A173455(n+1))/A054977(n)`
-/

namespace A044050.P17861271789426587356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098007 (A173455 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A044050.P17861271789426587356

/-! ## A044050.P4352001759212009623

`A098008(A173455(n+1))+A062157(n)²`
-/

namespace A044050.P4352001759212009623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A173455 (n + 1)).toNat + A062157 n ^ 2

end

end A044050.P4352001759212009623

/-! ## A044050.P14922478143077954615

`A098007(A173455(n+1))-A099894(2*n)`
-/

namespace A044050.P14922478143077954615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (A173455 (n + 1)).toNat - A099894 (2 * n)

end

end A044050.P14922478143077954615

/-! ## A044050.P2677971188008446237

`gcd(A098007(A173455(n+1)), A098008(n+1))`
-/

namespace A044050.P2677971188008446237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098007 (A173455 (n + 1)).toNat) (A098008 (n + 1))

end

end A044050.P2677971188008446237

/-! ## A044050.P7545151542113398378

`A098007(A173455(n+1))^(A000040(n+1)%2)`
-/

namespace A044050.P7545151542113398378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098007 (A173455 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A044050.P7545151542113398378

/-! ## A044050.P12006629464141744104

`A098008(A173455(n+1))+∑{e}[A020639(n+1), #]`
-/

namespace A044050.P12006629464141744104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A173455 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A044050.P12006629464141744104

/-! ## A044050.P3054343968542710604

`A098007(A173455(n+1))-A135481(A311228(n))`
-/

namespace A044050.P3054343968542710604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (A173455 (n + 1)).toNat - A135481 (A311228 n).toNat

end

end A044050.P3054343968542710604

/-! ## A044050.P3694439710260976542

`A098008(A173455(n+1))+A001221(A008578(n+1))`
-/

namespace A044050.P3694439710260976542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A173455 (n + 1)).toNat + A001221 (A008578 (n + 1)).toNat

end

end A044050.P3694439710260976542

/-! ## A044050.P4731888519526667663

`A137734(A098008(n+1)²)`
-/

namespace A044050.P4731888519526667663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A098008 (n + 1) ^ 2).toNat

end

end A044050.P4731888519526667663

/-! ## A044050.P13428769003273768466

`A137735(A098008(n+1)²)`
-/

namespace A044050.P13428769003273768466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A098008 (n + 1) ^ 2).toNat

end

end A044050.P13428769003273768466

/-! ## A044050.P4137988242329083717

`A137735(A098008(n+1)^2)`
-/

namespace A044050.P4137988242329083717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A098008 (n + 1) ^ 2).toNat

end

end A044050.P4137988242329083717

/-!
# A044051: a(n) = (s(n+1) + 1)/2, where s = A006995 (base-2 palindromes).

The programs for A044051, the canonical program `A044051.P14539941956317774734` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044051 has offset 1).

The definition of A044051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044051.P14539941956317774734

`round(A164302(n+1)/4)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A044051

/-- `round(A164302(n+1)/4)` -/
def P14539941956317774734.Spec : Prop :=
  ∀ n, P14539941956317774734.a n = A044051 (n + 1)

theorem P14539941956317774734.correct : P14539941956317774734.Spec := by
  intro n
  simp only [A044051, Nat.add_sub_cancel]

end A044051

/-! ## A044051.P4493174121448432113

`(∑[A164126(n+1)]+1)/2`
-/

namespace A044051.P4493174121448432113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A044051.P4493174121448432113

namespace A044051

/-- `(∑[A164126(n+1)]+1)/2` -/
def P4493174121448432113.Spec : Prop :=
  ∀ n, P4493174121448432113.a n = (A044051 (n + 1) : ℚ)

end A044051

/-! ## A044051.P8101004698218908400

`∑[A164126(A028310(n)+1)/2]`
-/

namespace A044051.P8101004698218908400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164126 (A028310 n + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044051.P8101004698218908400

namespace A044051

/-- `∑[A164126(A028310(n)+1)/2]` -/
def P8101004698218908400.Spec : Prop :=
  ∀ n, P8101004698218908400.a n = (A044051 (n + 1) : ℚ)

end A044051

/-! ## A044051.P12564226211863274551

`ceil(A006995(n+2)/2)`
-/

namespace A044051.P12564226211863274551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006995 (n + 2) : ℚ) / 2⌉

end

end A044051.P12564226211863274551

namespace A044051

/-- `ceil(A006995(n+2)/2)` -/
def P12564226211863274551.Spec : Prop :=
  ∀ n, P12564226211863274551.a n = A044051 (n + 1)

end A044051

/-! ## A044051.P12715572978595832578

`(Δ[A206920(n+1)]+1)/2`
-/

namespace A044051.P12715572978595832578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206920 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A044051.P12715572978595832578

namespace A044051

/-- `(Δ[A206920(n+1)]+1)/2` -/
def P12715572978595832578.Spec : Prop :=
  ∀ n, P12715572978595832578.a n = (A044051 (n + 1) : ℚ)

end A044051

/-! ## A044051.P6626476000231344277

`∑[A004525(Δ[A006995(n+1)])]`
-/

namespace A044051.P6626476000231344277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044051.P6626476000231344277

namespace A044051

/-- `∑[A004525(Δ[A006995(n+1)])]` -/
def P6626476000231344277.Spec : Prop :=
  ∀ n, P6626476000231344277.a n = A044051 (n + 1)

end A044051

/-! ## A044051.P18168323777182972933

`∑[A032742(Δ[A006995(n+1)])]`
-/

namespace A044051.P18168323777182972933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044051.P18168323777182972933

namespace A044051

/-- `∑[A032742(Δ[A006995(n+1)])]` -/
def P18168323777182972933.Spec : Prop :=
  ∀ n, P18168323777182972933.a n = A044051 (n + 1)

end A044051

/-! ## A044051.P5218602959442595970

`∑[A078898(Δ[A006995(n+1)])]`
-/

namespace A044051.P5218602959442595970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044051.P5218602959442595970

namespace A044051

/-- `∑[A078898(Δ[A006995(n+1)])]` -/
def P5218602959442595970.Spec : Prop :=
  ∀ n, P5218602959442595970.a n = A044051 (n + 1)

end A044051

/-! ## A044051.P12881583718196479644

`(A006995(n+2)+1)/A020639(2*(n+1))`
-/

namespace A044051.P12881583718196479644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006995 (n + 2) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A044051.P12881583718196479644

namespace A044051

/-- `(A006995(n+2)+1)/A020639(2*(n+1))` -/
def P12881583718196479644.Spec : Prop :=
  ∀ n, P12881583718196479644.a n = (A044051 (n + 1) : ℚ)

end A044051

/-! ## A044051.P17987997104716488431

`eq[1, A303536(2*n+1)]+1`
-/

namespace A044051.P17987997104716488431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044051.P17987997104716488431

namespace A044051

/-- `eq[1, A303536(2*n+1)]+1` -/
def P17987997104716488431.Spec : Prop :=
  ∀ n, (P17987997104716488431.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P2758597633057646551

`lt[A178226(2*n+1), 1]+1`
-/

namespace A044051.P2758597633057646551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A044051.P2758597633057646551

namespace A044051

/-- `lt[A178226(2*n+1), 1]+1` -/
def P2758597633057646551.Spec : Prop :=
  ∀ n, (P2758597633057646551.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P12824336126128805604

`lt[A303534(2*n+1), 1]+1`
-/

namespace A044051.P12824336126128805604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A044051.P12824336126128805604

namespace A044051

/-- `lt[A303534(2*n+1), 1]+1` -/
def P12824336126128805604.Spec : Prop :=
  ∀ n, (P12824336126128805604.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P18054052677102725098

`eq[1, A303534(2*n)]`
-/

namespace A044051.P18054052677102725098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044051.P18054052677102725098

namespace A044051

/-- `eq[1, A303534(2*n)]` -/
def P18054052677102725098.Spec : Prop :=
  ∀ n, (P18054052677102725098.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P1207186708948646772

`eq[1, A303534(n)]/2`
-/

namespace A044051.P1207186708948646772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A044051.P1207186708948646772

namespace A044051

/-- `eq[1, A303534(n)]/2` -/
def P1207186708948646772.Spec : Prop :=
  ∀ n, P1207186708948646772.a n = (A044051 (n + 1) : ℚ)

end A044051

/-! ## A044051.P9616977807220108844

`eq[A006257(n), A325401(n)]+1`
-/

namespace A044051.P9616977807220108844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044051.P9616977807220108844

namespace A044051

/-- `eq[A006257(n), A325401(n)]+1` -/
def P9616977807220108844.Spec : Prop :=
  ∀ n, (P9616977807220108844.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P16020431715259257459

`eq[1, A141707(n+1)]+1`
-/

namespace A044051.P16020431715259257459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044051.P16020431715259257459

namespace A044051

/-- `eq[1, A141707(n+1)]+1` -/
def P16020431715259257459.Spec : Prop :=
  ∀ n, (P16020431715259257459.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P2665646501233771277

`eq[A006257(n), A030101(n)]+1`
-/

namespace A044051.P2665646501233771277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044051.P2665646501233771277

namespace A044051

/-- `eq[A006257(n), A030101(n)]+1` -/
def P2665646501233771277.Spec : Prop :=
  ∀ n, (P2665646501233771277.a n : ℤ) = A044051 (n + 1)

end A044051

/-! ## A044051.P5486987627068861677

`record[A265509(n)-n]`
-/

namespace A044051.P5486987627068861677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044051.P5486987627068861677

namespace A044051

/-- `record[A265509(n)-n]` -/
def P5486987627068861677.Spec : Prop :=
  ∀ n, P5486987627068861677.a n = A044051 (n + 1)

end A044051

/-! ## A044051.P7253774958730167339

`record[(A145799(n+1)+1)/2]`
-/

namespace A044051.P7253774958730167339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145799 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044051.P7253774958730167339

namespace A044051

/-- `record[(A145799(n+1)+1)/2]` -/
def P7253774958730167339.Spec : Prop :=
  ∀ n, P7253774958730167339.a n = (A044051 (n + 1) : ℚ)

end A044051

/-! ## A044051.P16400029390173064872

`record[A145799(2*n+1)-n]`
-/

namespace A044051.P16400029390173064872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044051.P16400029390173064872

namespace A044051

/-- `record[A145799(2*n+1)-n]` -/
def P16400029390173064872.Spec : Prop :=
  ∀ n, P16400029390173064872.a n = A044051 (n + 1)

end A044051

/-!
# A044052: Numbers k such that string 0,0 occurs in the base 3 representation of k but not of k-1.

The programs for A044052, there is no canonical definition to state claims against.
-/

/-! ## A044052.P7002612386782643824

`record[9*A112689(A002150(n+1))]`
-/

namespace A044052.P7002612386782643824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A112689 (A002150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044052.P7002612386782643824

/-! ## A044052.P12991770591316516128

`A020664(n+1)*A180599(A062200(n))`
-/

namespace A044052.P12991770591316516128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020664 (n + 1) * A180599 (A062200 n).toNat

end

end A044052.P12991770591316516128

/-! ## A044052.P4664708997722983218

`A017173(A346693(3*(n+1)))-A017173(n)`
-/

namespace A044052.P4664708997722983218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A346693 (3 * (n + 1))).toNat - A017173 n

end

end A044052.P4664708997722983218

/-! ## A044052.P2076031166055669338

`∩[A236300(n+1), A248050(n)]`
-/

namespace A044052.P2076031166055669338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248050 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044052.P2076031166055669338

/-! ## A044052.P14395762344843758969

`∩[A382912(n+1), A248050(n)]`
-/

namespace A044052.P14395762344843758969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248050 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044052.P14395762344843758969

/-!
# A044053: Numbers k such that string 0,1 occurs in the base 3 representation of k but not of k-1.

The programs for A044053, there is no canonical definition to state claims against.
-/

/-! ## A044053.P3284668008352262208

`A350667(A007953(A359003(A055264(n+2))))`
-/

namespace A044053.P3284668008352262208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 (A007953 (A359003 (A055264 (n + 2)).toNat).toNat).toNat

end

end A044053.P3284668008352262208

/-! ## A044053.P12436134061811743621

`A044435(n+1)-A060904(A128126(n+1))`
-/

namespace A044053.P12436134061811743621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044435 (n + 1) - A060904 (A128126 (n + 1)).toNat

end

end A044053.P12436134061811743621

/-!
# A044054: Numbers k such that string 0,2 occurs in the base-3 representation of k but not of k-1.

The programs for A044054, there is no canonical definition to state claims against.
-/

/-! ## A044054.P955220009280948575

`A044434(n+1)%A128337(n+1)+1`
-/

namespace A044054.P955220009280948575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044434 (n + 1)) (A128337 (n + 1)) + 1

end

end A044054.P955220009280948575

/-! ## A044054.P10733956484687891092

`A044434(n+1)+A000035(A001333(n))`
-/

namespace A044054.P10733956484687891092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044434 (n + 1) + A000035 (A001333 n).toNat

end

end A044054.P10733956484687891092

/-! ## A044054.P9887724657118486295

`A132056(A001498(n))+A044434(n+1)`
-/

namespace A044054.P9887724657118486295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132056 (A001498 n).toNat + A044434 (n + 1)

end

end A044054.P9887724657118486295

/-! ## A044054.P10818369417451919828

`A044434(n+1)+A040583(A164558(n))`
-/

namespace A044054.P10818369417451919828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044434 (n + 1) + A040583 (A164558 n).toNat

end

end A044054.P10818369417451919828

/-! ## A044054.P16764353161112191456

`A144112(A186236(n))+A044434(n+1)`
-/

namespace A044054.P16764353161112191456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A186236 n).toNat + A044434 (n + 1)

end

end A044054.P16764353161112191456

/-!
# A044055: Numbers n such that string 1,0 occurs in the base 3 representation of n but not of n-1.

The programs for A044055, there is no canonical definition to state claims against.
-/

/-! ## A044055.P2974392458289878267

`∩[A043097(n+1), A145283(n+1)]`
-/

namespace A044055.P2974392458289878267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044055.P2974392458289878267

/-! ## A044055.P6697844946455445764

`∩[A043097(n+1), A337244(n+1)]`
-/

namespace A044055.P6697844946455445764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044055.P6697844946455445764

/-! ## A044055.P12406025120801040640

`∩[A043097(n+1), A366847(n+1)]`
-/

namespace A044055.P12406025120801040640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044055.P12406025120801040640

/-! ## A044055.P916586391955572172

`∩[A043097(n+1), A187041(n+1)]`
-/

namespace A044055.P916586391955572172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044055.P916586391955572172

/-! ## A044055.P9172215454917155127

`∩[A043097(n+1), A328168(n+1)]`
-/

namespace A044055.P9172215454917155127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044055.P9172215454917155127

/-!
# A044056: Numbers n such that string 1,1 occurs in the base 3 representation of n but not of n-1.

The programs for A044056, the canonical program `A044056.P17555869598845722757` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044056 has offset 1).

The definition of A044056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044056.P17555869598845722757

`eq[A048735(A289813(n+1)), A318666(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044056

/-- `eq[A048735(A289813(n+1)), A318666(n+1)]+1` -/
def P17555869598845722757.Spec : Prop :=
  ∀ n, (P17555869598845722757.a n : ℤ) = A044056 (n + 1)

theorem P17555869598845722757.correct : P17555869598845722757.Spec := by
  intro n
  simp only [A044056, Nat.add_sub_cancel]

end A044056

/-! ## A044056.P8230441699645404267

`A017233(n)-A346651(A017353(n))`
-/

namespace A044056.P8230441699645404267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n - A346651 (A017353 n).toNat

end

end A044056.P8230441699645404267

namespace A044056

/-- `A017233(n)-A346651(A017353(n))` -/
def P8230441699645404267.Spec : Prop :=
  ∀ n, P8230441699645404267.a n = A044056 (n + 1)

end A044056

/-!
# A044057: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n-1.

The programs for A044057, the canonical program `A044057.P8945552730682165796` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044057 has offset 1).

The definition of A044057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044057.P546362596354025364

`A017221(eq[A000989(n), A081603(n)])`
-/

namespace A044057.P546362596354025364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044057.P546362596354025364

namespace A044057

/-- `A017221(eq[A000989(n), A081603(n)])` -/
def P546362596354025364.Spec : Prop :=
  ∀ n, P546362596354025364.a n = A044057 (n + 1)

end A044057

/-! ## A044057.P8945552730682165796

`A017221(eq[A062756(n), A065363(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A044057

/-- `A017221(eq[A062756(n), A065363(n)])` -/
def P8945552730682165796.Spec : Prop :=
  ∀ n, P8945552730682165796.a n = A044057 (n + 1)

theorem P8945552730682165796.correct : P8945552730682165796.Spec := by
  intro n
  simp only [A044057, Nat.add_sub_cancel]

end A044057

/-! ## A044057.P13062795061182023258

`record[A016813(A061800(n))+A004488(n)]`
-/

namespace A044057.P13062795061182023258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A061800 n).toNat + A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044057.P13062795061182023258

namespace A044057

/-- `record[A016813(A061800(n))+A004488(n)]` -/
def P13062795061182023258.Spec : Prop :=
  ∀ n, P13062795061182023258.a n = A044057 (n + 1)

end A044057

/-! ## A044057.P8198366898893242370

`eq[4, A213370(A023717(n))]`
-/

namespace A044057.P8198366898893242370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044057.P8198366898893242370

namespace A044057

/-- `eq[4, A213370(A023717(n))]` -/
def P8198366898893242370.Spec : Prop :=
  ∀ n, (P8198366898893242370.a n : ℤ) = A044057 (n + 1)

end A044057

/-! ## A044057.P14638386162749535689

`A215090(2*A213540(n+1))`
-/

namespace A044057.P14638386162749535689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (2 * A213540 (n + 1)).toNat

end

end A044057.P14638386162749535689

namespace A044057

/-- `A215090(2*A213540(n+1))` -/
def P14638386162749535689.Spec : Prop :=
  ∀ n, P14638386162749535689.a n = A044057 (n + 1)

end A044057

/-! ## A044057.P7084872218024706675

`eq[A036453(n+1), A348710(A023717(n))]`
-/

namespace A044057.P7084872218024706675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044057.P7084872218024706675

namespace A044057

/-- `eq[A036453(n+1), A348710(A023717(n))]` -/
def P7084872218024706675.Spec : Prop :=
  ∀ n, (P7084872218024706675.a n : ℤ) = A044057 (n + 1)

end A044057

/-!
# A044058: Numbers n such that string 2,0 occurs in the base 3 representation of n but not of n-1.

The programs for A044058, there is no canonical definition to state claims against.
-/

/-! ## A044058.P6900136139225178088

`eq[A019430(a(n-1))+A026225(n+1)-1, 2*n]` with `a(0)=2`
-/

namespace A044058.P6900136139225178088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A019430 (f1 (n - 1)).toNat + (A026225 (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A044058.P6900136139225178088

/-! ## A044058.P15105516122638860924

`lt[A026141(A189630(n+1)), A321102(n)]`
-/

namespace A044058.P15105516122638860924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (A189630 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044058.P15105516122638860924

/-! ## A044058.P6387201169962722656

`eq[A026141(3*n+5), A189640(A055456(n+2))]`
-/

namespace A044058.P6387201169962722656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A055456 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044058.P6387201169962722656

/-! ## A044058.P5614993271479411550

`3*A230902(A077342(n+1))`
-/

namespace A044058.P5614993271479411550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230902 (A077342 (n + 1)).toNat

end

end A044058.P5614993271479411550

/-! ## A044058.P1661487070117202873

`∩[A230902(n+1), A138670(n)]`
-/

namespace A044058.P1661487070117202873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044058.P1661487070117202873

/-!
# A044059: Numbers n such that string 2,1 occurs in the base 3 representation of n but not of n-1.

The programs for A044059, there is no canonical definition to state claims against.
-/

/-! ## A044059.P3420457935445448083

`lt[A265364(n)+A264049(n+1), n]`
-/

namespace A044059.P3420457935445448083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 n + A264049 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A044059.P3420457935445448083

/-! ## A044059.P4982009709375365977

`lt[A000351(A265364(n)), A000351(n)]`
-/

namespace A044059.P4982009709375365977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A265364 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044059.P4982009709375365977

/-! ## A044059.P8472220596031426281

`lt[A265364(n), A089852(A089852(n))]`
-/

namespace A044059.P8472220596031426281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089852 (A089852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044059.P8472220596031426281

/-! ## A044059.P3879560453934480083

`lt[A099384(A265364(n)), A099384(n)]`
-/

namespace A044059.P3879560453934480083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (A265364 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044059.P3879560453934480083

/-!
# A044060: Numbers n such that string 2,2 occurs in the base 3 representation of n but not of n-1.

The programs for A044060, there is no canonical definition to state claims against.
-/

/-! ## A044060.P14853790838940940225

`A044433(n+1)-A347398(A129445(n+1))`
-/

namespace A044060.P14853790838940940225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044433 (n + 1) - A347398 (A129445 (n + 1)).toNat

end

end A044060.P14853790838940940225

/-!
# A044061: Numbers k such that string 0,0 occurs in the base 4 representation of k but not of k-1.

The programs for A044061, there is no canonical definition to state claims against.
-/

/-! ## A044061.P16210149139762305816

`A008598(lt[A183127(n), A008598(n)])`
-/

namespace A044061.P16210149139762305816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A044061.P16210149139762305816

/-! ## A044061.P8923186842401672016

`A008598(lt[A098352(n+1)/4, A182633(n)])`
-/

namespace A044061.P8923186842401672016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A044061.P8923186842401672016

/-!
# A044062: Numbers k such that string 0,1 occurs in the base 4 representation of k but not of k-1.

The programs for A044062, there is no canonical definition to state claims against.
-/

/-! ## A044062.P16485371377033913449

`record[A289813(A044252(n+1))]`
-/

namespace A044062.P16485371377033913449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044062.P16485371377033913449

/-! ## A044062.P2980747624187049856

`record[A289813(A044633(n+1))]`
-/

namespace A044062.P2980747624187049856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044062.P2980747624187049856

/-! ## A044062.P12690800953592588081

`and(A044444(n+1)+A038763(A050534(n)), -11)`
-/

namespace A044062.P12690800953592588081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044444 (n + 1) + A038763 (A050534 n).toNat) (-11)

end

end A044062.P12690800953592588081

/-! ## A044062.P16831414707592108641

`and(A044444(n+1)+A038763(A086602(n)+n²), -11)`
-/

namespace A044062.P16831414707592108641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044444 (n + 1) + A038763 (A086602 n + (n ^ 2 : ℤ)).toNat) (-11)

end

end A044062.P16831414707592108641

/-!
# A044063: Numbers n such that string 0,2 occurs in the base 4 representation of n but not of n-1.

The programs for A044063, there is no canonical definition to state claims against.
-/

/-! ## A044063.P5087261131764969644

`and(A044444(n+1)+1, A044444(n+1))`
-/

namespace A044063.P5087261131764969644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044444 (n + 1) + 1) (A044444 (n + 1))

end

end A044063.P5087261131764969644

/-! ## A044063.P11081418920372812148

`A129760(A044444(n+1)+1)`
-/

namespace A044063.P11081418920372812148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044444 (n + 1) + 1).toNat

end

end A044063.P11081418920372812148

/-! ## A044063.P15547885844687315180

`A044443(n+1)+A244173(n)!`
-/

namespace A044063.P15547885844687315180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044443 (n + 1) + (Nat.factorial (A244173 (n + 10)).toNat : ℤ)

end

end A044063.P15547885844687315180

/-! ## A044063.P18366667519079400047

`A057427(A000032(n))+A044443(n+1)`
-/

namespace A044063.P18366667519079400047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000032 n).toNat + A044443 (n + 1)

end

end A044063.P18366667519079400047

/-! ## A044063.P1877028853456546262

`A057427(A034878(3*n+2))+A044443(n+1)`
-/

namespace A044063.P1877028853456546262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A034878 (3 * n + 2)).toNat + A044443 (n + 1)

end

end A044063.P1877028853456546262

/-!
# A044064: Numbers k such that string 0,3 occurs in the base 4 representation of k but not of k-1.

The programs for A044064, there is no canonical definition to state claims against.
-/

/-! ## A044064.P15331459405972809662

`(A044444(n+1)+1)%A075941(n)`
-/

namespace A044064.P15331459405972809662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044444 (n + 1) + 1) (A075941 n)

end

end A044064.P15331459405972809662

/-! ## A044064.P5054708140679192437

`A057427(A108451(n))+A044444(n+1)`
-/

namespace A044064.P5054708140679192437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A108451 n).toNat + A044444 (n + 1)

end

end A044064.P5054708140679192437

/-! ## A044064.P5057866582554468324

`A057427(A113350(n))+A044444(n+1)`
-/

namespace A044064.P5057866582554468324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A113350 n).toNat + A044444 (n + 1)

end

end A044064.P5057866582554468324

/-! ## A044064.P9114533673808353900

`A057427(A127624(n+1))+A044444(n+1)`
-/

namespace A044064.P9114533673808353900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A127624 (n + 1)).toNat + A044444 (n + 1)

end

end A044064.P9114533673808353900

/-! ## A044064.P14780545486430142529

`A057427(A205101(n+1))+A044444(n+1)`
-/

namespace A044064.P14780545486430142529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A205101 (n + 1)).toNat + A044444 (n + 1)

end

end A044064.P14780545486430142529

/-!
# A044065: Numbers n such that string 1,0 occurs in the base 4 representation of n but not of n-1.

The programs for A044065, there is no canonical definition to state claims against.
-/

/-! ## A044065.P199730117709513146

`record[A175542(A043100(n+1))]`
-/

namespace A044065.P199730117709513146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A043100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044065.P199730117709513146

/-! ## A044065.P11656940492420252312

`∩[A043100(n+1), A261811(n+1)]`
-/

namespace A044065.P11656940492420252312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044065.P11656940492420252312

/-! ## A044065.P13911507737137591614

`∩[A043100(n+1), A263636(n+1)]`
-/

namespace A044065.P13911507737137591614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044065.P13911507737137591614

/-! ## A044065.P18120035179607258084

`∩[A043100(n+1), A337080(n+1)]`
-/

namespace A044065.P18120035179607258084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044065.P18120035179607258084

/-! ## A044065.P13032678271798146887

`∩[A043100(n+1), A349079(n+1)]`
-/

namespace A044065.P13032678271798146887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044065.P13032678271798146887

/-!
# A044066: Numbers n such that string 1,1 occurs in the base 4 representation of n but not of n-1.

The programs for A044066, there is no canonical definition to state claims against.
-/

/-! ## A044066.P3404507662259095846

`record[A289813(A044261(n+1))]`
-/

namespace A044066.P3404507662259095846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044066.P3404507662259095846

/-! ## A044066.P11721279081505139620

`A051062(n)-A261461(A145867(n+1))`
-/

namespace A044066.P11721279081505139620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n - A261461 (A145867 (n + 1)).toNat

end

end A044066.P11721279081505139620

/-! ## A044066.P5571930109499483616

`A301724(3*n+1)-A055483(A275715(3*n+2))`
-/

namespace A044066.P5571930109499483616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 (3 * n + 1) - A055483 (A275715 (3 * n + 2)).toNat

end

end A044066.P5571930109499483616

/-!
# A044067: Numbers k such that string 1,2 occurs in the base 4 representation of k but not of k-1.

The programs for A044067, there is no canonical definition to state claims against.
-/

/-! ## A044067.P18394276694402791968

`A129760(A044448(n+1)+1)`
-/

namespace A044067.P18394276694402791968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044448 (n + 1) + 1).toNat

end

end A044067.P18394276694402791968

/-! ## A044067.P10903407996545495554

`record[A289813(A044263(n+1))]`
-/

namespace A044067.P10903407996545495554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044067.P10903407996545495554

/-! ## A044067.P15971881664570884152

`record[A289813(A044644(n+1))]`
-/

namespace A044067.P15971881664570884152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044067.P15971881664570884152

/-! ## A044067.P6761533783243200355

`∩[A055043(n+1), A130734(n+1)]`
-/

namespace A044067.P6761533783243200355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044067.P6761533783243200355

/-! ## A044067.P14188201791244049446

`∩[A055043(n+1), A377989(n+1)]`
-/

namespace A044067.P14188201791244049446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044067.P14188201791244049446

/-!
# A044068: Numbers n such that string 1,3 occurs in the base 4 representation of n but not of n-1.

The programs for A044068, there is no canonical definition to state claims against.
-/

/-! ## A044068.P8185278764864761130

`record[A289813(A044264(n+1))]`
-/

namespace A044068.P8185278764864761130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044068.P8185278764864761130

/-! ## A044068.P1941140952951501509

`eq[A246578(A246660(n)), A246631(n)]`
-/

namespace A044068.P1941140952951501509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246578 (A246660 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044068.P1941140952951501509

/-! ## A044068.P6135243047434622091

`eq[4, A002262(A342410(n+1)²)]+1`
-/

namespace A044068.P6135243047434622091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A342410 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044068.P6135243047434622091

/-!
# A044069: Numbers n such that string 2,0 occurs in the base 4 representation of n but not of n-1.

The programs for A044069, the canonical program `A044069.P11354972915602530706` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044069 has offset 1).

The definition of A044069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044069.P11354972915602530706

`and(A044450(n+1)+1, A044450(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A044069

/-- `and(A044450(n+1)+1, A044450(n+1))` -/
def P11354972915602530706.Spec : Prop :=
  ∀ n, P11354972915602530706.a n = A044069 (n + 1)

theorem P11354972915602530706.correct : P11354972915602530706.Spec := by
  intro n
  simp only [A044069, Nat.add_sub_cancel]

end A044069

/-! ## A044069.P14741895821388975293

`A322018(or(1, A044450(n+1)))`
-/

namespace A044069.P14741895821388975293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (Int.lor 1 (A044450 (n + 1))).toNat

end

end A044069.P14741895821388975293

namespace A044069

/-- `A322018(or(1, A044450(n+1)))` -/
def P14741895821388975293.Spec : Prop :=
  ∀ n, P14741895821388975293.a n = A044069 (n + 1)

end A044069

/-! ## A044069.P221435252508120958

`A129760(A044450(n+1)+1)`
-/

namespace A044069.P221435252508120958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044450 (n + 1) + 1).toNat

end

end A044069.P221435252508120958

namespace A044069

/-- `A129760(A044450(n+1)+1)` -/
def P221435252508120958.Spec : Prop :=
  ∀ n, P221435252508120958.a n = A044069 (n + 1)

end A044069

/-! ## A044069.P7379102892952644370

`A352729(A044450(n+1))`
-/

namespace A044069.P7379102892952644370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044450 (n + 1)).toNat

end

end A044069.P7379102892952644370

namespace A044069

/-- `A352729(A044450(n+1))` -/
def P7379102892952644370.Spec : Prop :=
  ∀ n, P7379102892952644370.a n = A044069 (n + 1)

end A044069

/-! ## A044069.P10577389434765769655

`∩[A043101(n+1), A261811(n+1)]`
-/

namespace A044069.P10577389434765769655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044069.P10577389434765769655

namespace A044069

/-- `∩[A043101(n+1), A261811(n+1)]` -/
def P10577389434765769655.Spec : Prop :=
  ∀ n, (P10577389434765769655.a n : ℤ) = A044069 (n + 1)

end A044069

/-!
# A044070: Numbers k such that string 2,1 occurs in the base 4 representation of k but not of k-1.

The programs for A044070, there is no canonical definition to state claims against.
-/

/-! ## A044070.P1416472034606542346

`record[A289813(A044279(n+1))]`
-/

namespace A044070.P1416472034606542346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044070.P1416472034606542346

/-! ## A044070.P15758035688815055721

`record[A289813(A044660(n+1))]`
-/

namespace A044070.P15758035688815055721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044070.P15758035688815055721

/-! ## A044070.P16081320641519422436

`A044450(∑{e}[(-4)^n, #]/2+1)+1`
-/

namespace A044070.P16081320641519422436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044450 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 2 + 1)).toNat + 1

end

end A044070.P16081320641519422436

/-! ## A044070.P3406050554333710545

`A044450(∑{e}[(-4)^n, #]-n+1)+1`
-/

namespace A044070.P3406050554333710545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044450 (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (n : ℤ) + 1).toNat + 1

end

end A044070.P3406050554333710545

/-! ## A044070.P16220868580812122855

`A044450(n+1)+ceil(tanh(∏{p}[n+1, #²]))`
-/

namespace A044070.P16220868580812122855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044450 (n + 1) + ⌈Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℝ)⌉

end

end A044070.P16220868580812122855

/-!
# A044071: Numbers n such that string 2,2 occurs in the base 4 representation of n but not of n-1.

The programs for A044071, there is no canonical definition to state claims against.
-/

/-! ## A044071.P5062667083360149144

`and(A044452(n+1)+1, A044452(n+1))`
-/

namespace A044071.P5062667083360149144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044452 (n + 1) + 1) (A044452 (n + 1))

end

end A044071.P5062667083360149144

/-! ## A044071.P11324160935970453350

`A129760(A044452(n+1)+1)`
-/

namespace A044071.P11324160935970453350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044452 (n + 1) + 1).toNat

end

end A044071.P11324160935970453350

/-! ## A044071.P15850644044958759179

`record[A289813(A044662(n+1))]`
-/

namespace A044071.P15850644044958759179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044071.P15850644044958759179

/-! ## A044071.P4440115740812906996

`eq[A261394(2*n), A325280(A329897(n+1))]`
-/

namespace A044071.P4440115740812906996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A329897 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044071.P4440115740812906996

/-! ## A044071.P3276430100779481865

`A080425(A001254(n))+A051062(n)`
-/

namespace A044071.P3276430100779481865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A001254 n).toNat + A051062 n

end

end A044071.P3276430100779481865

/-!
# A044072: Numbers k such that string 2,3 occurs in the base 4 representation of k but not of k-1.

The programs for A044072, there is no canonical definition to state claims against.
-/

/-! ## A044072.P5456564331161946625

`A106839(record[A289186(n+2)%A329901(n+1)])`
-/

namespace A044072.P5456564331161946625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289186 (n + 2)) (A329901 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044072.P5456564331161946625

/-! ## A044072.P1043728035525404906

`A106839(A249626(n)%A032418(n+1))`
-/

namespace A044072.P1043728035525404906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (Int.tmod (A249626 n) (A032418 (n + 1))).toNat

end

end A044072.P1043728035525404906

/-! ## A044072.P5857588101944011488

`A106839(comp[A106839(n)])%A222965(n+4)`
-/

namespace A044072.P5857588101944011488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106839 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A222965 (n + 4))

end

end A044072.P5857588101944011488

/-! ## A044072.P4816904412213317096

`A047470(4*∑[A230730(n+1)!])`
-/

namespace A044072.P4816904412213317096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A044072.P4816904412213317096

/-! ## A044072.P5129896724876077258

`A047471(4*∑[A230730(n+1)!])`
-/

namespace A044072.P5129896724876077258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A044072.P5129896724876077258

/-!
# A044073: Numbers k such that string 3,0 occurs in the base 4 representation of k but not of k-1.

The programs for A044073, there is no canonical definition to state claims against.
-/

/-! ## A044073.P4181649642982844918

`and(A044454(n+1)+1, A044454(n+1))`
-/

namespace A044073.P4181649642982844918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044454 (n + 1) + 1) (A044454 (n + 1))

end

end A044073.P4181649642982844918

/-! ## A044073.P15167998625452421515

`A129760(A044454(n+1)+1)`
-/

namespace A044073.P15167998625452421515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044454 (n + 1) + 1).toNat

end

end A044073.P15167998625452421515

/-! ## A044073.P1977889203917067775

`A352729(A044454(n+1))`
-/

namespace A044073.P1977889203917067775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044454 (n + 1)).toNat

end

end A044073.P1977889203917067775

/-! ## A044073.P12048685334207792766

`∩[A043102(n+1), A354038(n+1)]`
-/

namespace A044073.P12048685334207792766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044073.P12048685334207792766

/-! ## A044073.P575357763424253125

`∩[A043102(n+1), A337080(n+1)]`
-/

namespace A044073.P575357763424253125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044073.P575357763424253125

/-!
# A044074: Numbers k such that string 3,1 occurs in the base 4 representation of k but not of k-1.

The programs for A044074, there is no canonical definition to state claims against.
-/

/-! ## A044074.P968930404110783144

`record[A289813(A044288(n+1))]`
-/

namespace A044074.P968930404110783144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044074.P968930404110783144

/-! ## A044074.P7557173220904712995

`record[A289813(A044669(n+1))]`
-/

namespace A044074.P7557173220904712995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044074.P7557173220904712995

/-! ## A044074.P13521311821151197174

`A044454(A187829(n+1))+1`
-/

namespace A044074.P13521311821151197174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044454 (A187829 (n + 1)).toNat + 1

end

end A044074.P13521311821151197174

/-! ## A044074.P15567938155150652256

`A044454(n+1)+A010051(A128066(n+1))`
-/

namespace A044074.P15567938155150652256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044454 (n + 1) + A010051 (A128066 (n + 1)).toNat

end

end A044074.P15567938155150652256

/-! ## A044074.P8766049889963054233

`A325509(A145882(n+1))+A044454(n+1)`
-/

namespace A044074.P8766049889963054233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (A145882 (n + 1)).toNat + A044454 (n + 1)

end

end A044074.P8766049889963054233

/-!
# A044075: Numbers k such that the string 3,2 occurs in the base-4 representation of k but not of k-1.

The programs for A044075, there is no canonical definition to state claims against.
-/

/-! ## A044075.P16986070079682705145

`and(A044456(n+1)+1, A044456(n+1))`
-/

namespace A044075.P16986070079682705145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044456 (n + 1) + 1) (A044456 (n + 1))

end

end A044075.P16986070079682705145

/-! ## A044075.P4826783104013337933

`A044456(n+1)+1-gcd(A044456(n+1)+1, A137688(n))`
-/

namespace A044075.P4826783104013337933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044456 (n + 1) + 1 - (Int.gcd (A044456 (n + 1) + 1) (A137688 n) : ℤ)

end

end A044075.P4826783104013337933

/-! ## A044075.P11026410185232276412

`A129760(A044456(n+1)+1)`
-/

namespace A044075.P11026410185232276412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044456 (n + 1) + 1).toNat

end

end A044075.P11026410185232276412

/-! ## A044075.P13526624226233537451

`A055039(∑[A225654(A057019(n+1))])`
-/

namespace A044075.P13526624226233537451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A057019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055039 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044075.P13526624226233537451

/-! ## A044075.P2971058164771389942

`eq[A000122(A008653(n)), A004015(n)]`
-/

namespace A044075.P2971058164771389942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A008653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044075.P2971058164771389942

/-!
# A044076: Numbers k such that string 3,3 occurs in the base 4 representation of k but not of k-1.

The programs for A044076, there is no canonical definition to state claims against.
-/

/-! ## A044076.P10298546568716604837

`and(-A276330(A081437(n)), A125169(n))`
-/

namespace A044076.P10298546568716604837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A276330 (A081437 n).toNat) (A125169 n)

end

end A044076.P10298546568716604837

/-! ## A044076.P15923344576177647798

`and(-A185216(A248576(n+1)), A125169(n))`
-/

namespace A044076.P15923344576177647798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A185216 (A248576 (n + 1)).toNat) (A125169 n)

end

end A044076.P15923344576177647798

/-! ## A044076.P8659331273403641925

`A125169(n)+1-A010121(A187829(n+1))`
-/

namespace A044076.P8659331273403641925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + (1 - A010121 (A187829 (n + 1)).toNat)

end

end A044076.P8659331273403641925

/-! ## A044076.P15766614158191937186

`A310565(3*(n+1))-A185216(A248576(n+1))`
-/

namespace A044076.P15766614158191937186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310565 (3 * (n + 1)) - A185216 (A248576 (n + 1)).toNat

end

end A044076.P15766614158191937186

/-! ## A044076.P7026129216085787563

`A310565(3*(n+1))-A276330(A187829(n+1))`
-/

namespace A044076.P7026129216085787563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310565 (3 * (n + 1)) - A276330 (A187829 (n + 1)).toNat

end

end A044076.P7026129216085787563

/-!
# A044077: Numbers n such that string 0,0 occurs in the base 5 representation of n but not of n-1.

The programs for A044077, there is no canonical definition to state claims against.
-/

/-! ## A044077.P8577739188365742997

`A008607(A348553(n)%A166046(n))`
-/

namespace A044077.P8577739188365742997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (Int.tmod (A348553 n) (A166046 n)).toNat

end

end A044077.P8577739188365742997

/-! ## A044077.P10236997134958969982

`A010051(A107665(3*n+5))+25*A348553(n)`
-/

namespace A044077.P10236997134958969982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A107665 (3 * n + 5)).toNat + 25 * A348553 n

end

end A044077.P10236997134958969982

/-! ## A044077.P4566952292242774993

`25*A348553(n)-A000007(A059268(n))`
-/

namespace A044077.P4566952292242774993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A348553 n - A000007 (A059268 n).toNat

end

end A044077.P4566952292242774993

/-! ## A044077.P16184303040281149729

`25*A348553(n)-A010815(A059268(n)+2)`
-/

namespace A044077.P16184303040281149729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A348553 n - A010815 (A059268 n + 2).toNat

end

end A044077.P16184303040281149729

/-! ## A044077.P1040714737419834145

`25*A348553(n)*A007913(A000203(n+1)²)`
-/

namespace A044077.P1040714737419834145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A348553 n * A007913 (A000203 (n + 1) ^ 2).toNat

end

end A044077.P1040714737419834145

/-! ## A044077.P2230633635112415311

`(25*A348553(n))%∑[A255415(A059268(n)+1)]`
-/

namespace A044077.P2230633635112415311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255415 (A059268 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (25 * A348553 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044077.P2230633635112415311

/-! ## A044077.P17721382959928467687

`A000038(A275490(n+2))+25*A348553(n)`
-/

namespace A044077.P17721382959928467687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A275490 (n + 2)).toNat + 25 * A348553 n

end

end A044077.P17721382959928467687

/-! ## A044077.P16310237771109403784

`(25*A348553(n))%A250691(n+1)`
-/

namespace A044077.P16310237771109403784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (25 * A348553 n) (A250691 (n + 1))

end

end A044077.P16310237771109403784

/-! ## A044077.P3088398462579231778

`25*A000035(A240453(n+1))*A348553(n)`
-/

namespace A044077.P3088398462579231778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (A000035 (A240453 (n + 1)).toNat * A348553 n)

end

end A044077.P3088398462579231778

/-! ## A044077.P6054233644656566923

`25*A348553(n)/A096809(n*A204177(n+1))²`
-/

namespace A044077.P6054233644656566923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * A348553 n : ℚ) / (A096809 ((n : ℤ) * A204177 (n + 1)).toNat ^ 2 : ℚ)

end

end A044077.P6054233644656566923

/-! ## A044077.P1281339692183364182

`A000038(A332443(n+1))+25*A348553(n)`
-/

namespace A044077.P1281339692183364182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A332443 (n + 1)).toNat + 25 * A348553 n

end

end A044077.P1281339692183364182

/-! ## A044077.P6826422865503409861

`A326292(A144379(n+1))+25*A348553(n)`
-/

namespace A044077.P6826422865503409861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A144379 (n + 1)).toNat + 25 * A348553 n

end

end A044077.P6826422865503409861

/-! ## A044077.P16858348411733315058

`25*A348553(n)*A159335(∑[n]+1)`
-/

namespace A044077.P16858348411733315058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A348553 n * A159335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A044077.P16858348411733315058

/-! ## A044077.P535815042476986910

`A089310(A089312(n))+25*A348553(n)`
-/

namespace A044077.P535815042476986910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A089312 n).toNat + 25 * A348553 n

end

end A044077.P535815042476986910

/-! ## A044077.P11843392977121236146

`A000038((n+1)²)+25*A348553(n)`
-/

namespace A044077.P11843392977121236146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n + 1) ^ 2) + 25 * A348553 n

end

end A044077.P11843392977121236146

/-!
# A044078: Numbers k such that string 0,1 occurs in the base 5 representation of k but not of k-1.

The programs for A044078, there is no canonical definition to state claims against.
-/

/-! ## A044078.P12741224230922416447

`A044460(n+1)-A062379(A149643(n))`
-/

namespace A044078.P12741224230922416447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) - A062379 (A149643 n).toNat

end

end A044078.P12741224230922416447

/-! ## A044078.P16455261865426717789

`A044460(n+1)-A009195(A146389(n+1))`
-/

namespace A044078.P16455261865426717789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) - A009195 (A146389 (n + 1)).toNat

end

end A044078.P16455261865426717789

/-! ## A044078.P936910953653930048

`A044460(n+1)-A146392(A146383(n+1))`
-/

namespace A044078.P936910953653930048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) - A146392 (A146383 (n + 1)).toNat

end

end A044078.P936910953653930048

/-!
# A044079: Numbers k such that string 0,2 occurs in the base 5 representation of k but not of k-1.

The programs for A044079, there is no canonical definition to state claims against.
-/

/-! ## A044079.P9864506170755598600

`A057427(A027642(n))+A044459(n+1)`
-/

namespace A044079.P9864506170755598600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A027642 n).toNat + A044459 (n + 1)

end

end A044079.P9864506170755598600

/-! ## A044079.P12014310479133532869

`A093178(A016116(n))+A044459(n+1)`
-/

namespace A044079.P12014310479133532869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A016116 n).toNat + A044459 (n + 1)

end

end A044079.P12014310479133532869

/-! ## A044079.P7811776324678616946

`A044459(n+1)+A001222(A078862(n+1))`
-/

namespace A044079.P7811776324678616946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044459 (n + 1) + A001222 (A078862 (n + 1)).toNat

end

end A044079.P7811776324678616946

/-! ## A044079.P13316662442696505889

`A044459(n+1)+A001221(A089360(n+1))`
-/

namespace A044079.P13316662442696505889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044459 (n + 1) + A001221 (A089360 (n + 1)).toNat

end

end A044079.P13316662442696505889

/-!
# A044080: Numbers k such that string 0,3 occurs in the base 5 representation of k but not of k-1.

The programs for A044080, there is no canonical definition to state claims against.
-/

/-! ## A044080.P8526043536981577841

`A044460(n+1)+A151815(n)!`
-/

namespace A044080.P8526043536981577841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) + (Nat.factorial (A151815 n).toNat : ℤ)

end

end A044080.P8526043536981577841

/-! ## A044080.P8418776208101051800

`A044460(n+1)+A001222(A169586(n+1))`
-/

namespace A044080.P8418776208101051800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) + A001222 (A169586 (n + 1)).toNat

end

end A044080.P8418776208101051800

/-! ## A044080.P593569440942878507

`A188584(A188584(n+1))+A044460(n+1)`
-/

namespace A044080.P593569440942878507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188584 (A188584 (n + 1)).toNat + A044460 (n + 1)

end

end A044080.P593569440942878507

/-! ## A044080.P8364529989779325458

`A151815(n*A151815(n))+A044460(n+1)`
-/

namespace A044080.P8364529989779325458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 ((n : ℤ) * A151815 n).toNat + A044460 (n + 1)

end

end A044080.P8364529989779325458

/-! ## A044080.P4770936901728020567

`A296082(A000040(n+1)²)+A044460(n+1)`
-/

namespace A044080.P4770936901728020567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (A000040 (n + 1) ^ 2).toNat + A044460 (n + 1)

end

end A044080.P4770936901728020567

/-!
# A044081: Numbers n such that string 0,4 occurs in the base 5 representation of n but not of n-1.

The programs for A044081, there is no canonical definition to state claims against.
-/

/-! ## A044081.P2821212306341000483

`A044461(∑[∑[A151660(n)]])+1`
-/

namespace A044081.P2821212306341000483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A044081.P2821212306341000483

/-! ## A044081.P2306306523796986477

`A256915(n²)+A044461(n+1)`
-/

namespace A044081.P2306306523796986477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (n ^ 2) + A044461 (n + 1)

end

end A044081.P2306306523796986477

/-! ## A044081.P8601417658196015519

`A044461(n+1)+A000041(A151660(n))`
-/

namespace A044081.P8601417658196015519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044461 (n + 1) + A000041 (A151660 n).toNat

end

end A044081.P8601417658196015519

/-! ## A044081.P3601390174278186795

`A044461(n+1)+A001222(A273756(n))`
-/

namespace A044081.P3601390174278186795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044461 (n + 1) + A001222 (A273756 n).toNat

end

end A044081.P3601390174278186795

/-! ## A044081.P14644794531244967111

`A306438(A073751(n+4))+A044461(n+1)`
-/

namespace A044081.P14644794531244967111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306438 (A073751 (n + 4)).toNat + A044461 (n + 1)

end

end A044081.P14644794531244967111

/-!
# A044082: Numbers n such that string 1,0 occurs in the base 5 representation of n but not of n-1.

The programs for A044082, there is no canonical definition to state claims against.
-/

/-! ## A044082.P17719062002282625290

`∩[A043106(n+1), A353280(n+1)]`
-/

namespace A044082.P17719062002282625290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044082.P17719062002282625290

/-!
# A044083: Numbers k such that string 1,1 occurs in the base 5 representation of k but not of k-1.

The programs for A044083, there is no canonical definition to state claims against.
-/

/-! ## A044083.P6904626731203374646

`A044089(2*n+1)/A020639(A110754(n+1))`
-/

namespace A044083.P6904626731203374646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044089 (2 * n + 1) : ℚ) / (A020639 (A110754 (n + 1)).toNat : ℚ)

end

end A044083.P6904626731203374646

/-! ## A044083.P17869631785733523285

`A044089(2*n+1)/A020639(A077444(n+1))`
-/

namespace A044083.P17869631785733523285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044089 (2 * n + 1) : ℚ) / (A020639 (A077444 (n + 1)).toNat : ℚ)

end

end A044083.P17869631785733523285

/-!
# A044084: Numbers n such that string 1,2 occurs in the base 5 representation of n but not of n-1.

The programs for A044084, there is no canonical definition to state claims against.
-/

/-! ## A044084.P18129596327921555294

`A044085(n+1)-A014963(A060516(n))`
-/

namespace A044084.P18129596327921555294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (n + 1) - A014963 (A060516 n).toNat

end

end A044084.P18129596327921555294

/-! ## A044084.P9482900802923120371

`A044085(n+1)-A014963(A215506(n))`
-/

namespace A044084.P9482900802923120371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (n + 1) - A014963 (A215506 n).toNat

end

end A044084.P9482900802923120371

/-!
# A044085: Numbers k such that string 1,3 occurs in the base 5 representation of k but not of k-1.

The programs for A044085, there is no canonical definition to state claims against.
-/

/-! ## A044085.P11267013922253520160

`A044465(A032559(n+1))+1`
-/

namespace A044085.P11267013922253520160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044465 (A032559 (n + 1)).toNat + 1

end

end A044085.P11267013922253520160

/-! ## A044085.P14386564207921214043

`A044465(A077739(n+1))+1`
-/

namespace A044085.P14386564207921214043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044465 (A077739 (n + 1)).toNat + 1

end

end A044085.P14386564207921214043

/-! ## A044085.P4430546730825159973

`A044465(A082217(n+1))+1`
-/

namespace A044085.P4430546730825159973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044465 (A082217 (n + 1)).toNat + 1

end

end A044085.P4430546730825159973

/-! ## A044085.P7133111498513964141

`A044465(A067132(3^n))+1`
-/

namespace A044085.P7133111498513964141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044465 (A067132 (3 ^ n)).toNat + 1

end

end A044085.P7133111498513964141

/-! ## A044085.P9505635325294472226

`A044465(n+1)+A035178(3^n)`
-/

namespace A044085.P9505635325294472226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044465 (n + 1) + A035178 (3 ^ n)

end

end A044085.P9505635325294472226

/-!
# A044086: Numbers n such that string 1,4 occurs in the base 5 representation of n but not of n-1.

The programs for A044086, there is no canonical definition to state claims against.
-/

/-! ## A044086.P4143581511354806744

`A250208(2^n)+A044466(n+1)`
-/

namespace A044086.P4143581511354806744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250208 (2 ^ n) + A044466 (n + 1)

end

end A044086.P4143581511354806744

/-! ## A044086.P13347448876774766147

`A044466(n+1)+exp(A153761(n+1))`
-/

namespace A044086.P13347448876774766147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A044466 (n + 1) : ℝ) + Real.exp (A153761 (n + 1) : ℝ)

end

end A044086.P13347448876774766147

/-! ## A044086.P11274981470224611591

`(A044466(n+1)+1)%A019283(n+1)`
-/

namespace A044086.P11274981470224611591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044466 (n + 1) + 1) (A019283 (n + 1))

end

end A044086.P11274981470224611591

/-! ## A044086.P16780159301995582307

`A044466(n+1)+A011558(A001835(n))`
-/

namespace A044086.P16780159301995582307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044466 (n + 1) + A011558 (A001835 n).toNat

end

end A044086.P16780159301995582307

/-! ## A044086.P5141303998961095805

`A044466(n+1)+A001222(A109216(n))`
-/

namespace A044086.P5141303998961095805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044466 (n + 1) + A001222 (A109216 n).toNat

end

end A044086.P5141303998961095805

/-!
# A044087: Numbers n such that string 2,0 occurs in the base 5 representation of n but not of n-1.

The programs for A044087, there is no canonical definition to state claims against.
-/

/-! ## A044087.P3180211689135069870

`A088839(A141498(3*n+1))*A277551(n+1)`
-/

namespace A044087.P3180211689135069870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088839 (A141498 (3 * n + 1)).toNat * A277551 (n + 1)

end

end A044087.P3180211689135069870

/-! ## A044087.P8379013439185494110

`A008587(A277551(n+1)%A094679(2*n+5))`
-/

namespace A044087.P8379013439185494110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (Int.tmod (A277551 (n + 1)) (A094679 (2 * n + 5))).toNat

end

end A044087.P8379013439185494110

/-! ## A044087.P1835279506935952906

`A122234(A251072(n))*A277551(n+1)`
-/

namespace A044087.P1835279506935952906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122234 (A251072 n).toNat * A277551 (n + 1)

end

end A044087.P1835279506935952906

/-! ## A044087.P2185361333942686787

`A277544(A007530(n+1))*A277551(n+1)`
-/

namespace A044087.P2185361333942686787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A007530 (n + 1)).toNat * A277551 (n + 1)

end

end A044087.P2185361333942686787

/-! ## A044087.P5489962161824835747

`∩[A043107(n+1), A199860(n+1)]`
-/

namespace A044087.P5489962161824835747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044087.P5489962161824835747

/-!
# A044088: Numbers k such that string 2,1 occurs in the base 5 representation of k but not of k-1.

The programs for A044088, there is no canonical definition to state claims against.
-/

/-! ## A044088.P15058663290139730909

`A054977(abs(Δ[(-2)^n]+2))+A044468(n+1)`
-/

namespace A044088.P15058663290139730909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 |f1 (n + 1) - f1 n + 2|.toNat + A044468 (n + 1)

end

end A044088.P15058663290139730909

/-! ## A044088.P5769417240838458988

`A044468(n+1)+A001222(A126691(n+1))`
-/

namespace A044088.P5769417240838458988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044468 (n + 1) + A001222 (A126691 (n + 1)).toNat

end

end A044088.P5769417240838458988

/-! ## A044088.P7131074077196373466

`A044468(n+1)+A001222(A274909(n+1))`
-/

namespace A044088.P7131074077196373466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044468 (n + 1) + A001222 (A274909 (n + 1)).toNat

end

end A044088.P7131074077196373466

/-! ## A044088.P15080723313816943645

`A044468(n+1)+A001222(A289756(n+1))`
-/

namespace A044088.P15080723313816943645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044468 (n + 1) + A001222 (A289756 (n + 1)).toNat

end

end A044088.P15080723313816943645

/-! ## A044088.P10835890443102650699

`A356233(A192229(n+1))+A044468(n+1)`
-/

namespace A044088.P10835890443102650699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (A192229 (n + 1)).toNat + A044468 (n + 1)

end

end A044088.P10835890443102650699

/-!
# A044089: Numbers k such that string 2,2 occurs in the base 5 representation of k but not of k-1.

The programs for A044089, there is no canonical definition to state claims against.
-/

/-! ## A044089.P14455601886698060244

`A098242(A184820(n+1)%A049059(n))`
-/

namespace A044089.P14455601886698060244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098242 (Int.tmod (A184820 (n + 1)) (A049059 n)).toNat

end

end A044089.P14455601886698060244

/-!
# A044091: Numbers n such that string 2,4 occurs in the base 5 representation of n but not of n-1.

The programs for A044091, there is no canonical definition to state claims against.
-/

/-! ## A044091.P18125158639438719507

`A044471(n+1)+gcd(7, A272154(n))`
-/

namespace A044091.P18125158639438719507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044471 (n + 1) + (Int.gcd 7 (A272154 n) : ℤ)

end

end A044091.P18125158639438719507

/-! ## A044091.P13096623558438227930

`A044471(n+1)+A001221(A268109(n+1))`
-/

namespace A044091.P13096623558438227930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044471 (n + 1) + A001221 (A268109 (n + 1)).toNat

end

end A044091.P13096623558438227930

/-! ## A044091.P11465763005719323529

`A044471(n+1)+A001221(A308838(n+1))`
-/

namespace A044091.P11465763005719323529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044471 (n + 1) + A001221 (A308838 (n + 1)).toNat

end

end A044091.P11465763005719323529

/-! ## A044091.P3348727038577917489

`A309754(A143632(2*(n+1)))+A044471(n+1)`
-/

namespace A044091.P3348727038577917489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309754 (A143632 (2 * (n + 1))).toNat + A044471 (n + 1)

end

end A044091.P3348727038577917489

/-! ## A044091.P2793302495969009674

`A044471(n+1)-A057077(A073577(3*n+2))`
-/

namespace A044091.P2793302495969009674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044471 (n + 1) - A057077 (A073577 (3 * n + 2)).toNat

end

end A044091.P2793302495969009674

/-!
# A044092: Numbers n such that string 3,0 occurs in the base 5 representation of n but not of n-1.

The programs for A044092, there is no canonical definition to state claims against.
-/

/-! ## A044092.P1026403289787251123

`5*A277555(n+1)%A180163(n+1)`
-/

namespace A044092.P1026403289787251123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A277555 (n + 1)) (A180163 (n + 1))

end

end A044092.P1026403289787251123

/-! ## A044092.P15559819133163033700

`A008706(or(A151838(n), A277555(n+1)))`
-/

namespace A044092.P15559819133163033700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.lor (A151838 n) (A277555 (n + 1))).toNat

end

end A044092.P15559819133163033700

/-! ## A044092.P11171513126382012003

`A008706(∑[A151838(n)]*A277555(n+1))`
-/

namespace A044092.P11171513126382012003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 ((∑ j ∈ Finset.range (n + 1), f1 j) * A277555 (n + 1)).toNat

end

end A044092.P11171513126382012003

/-! ## A044092.P8843172106581021546

`A230995(∑[A151838(n)])*A277555(n+1)`
-/

namespace A044092.P8843172106581021546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A277555 (n + 1)

end

end A044092.P8843172106581021546

/-! ## A044092.P10532111995118637711

`A231002(∑[A151838(n)])*A277555(n+1)`
-/

namespace A044092.P10532111995118637711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A277555 (n + 1)

end

end A044092.P10532111995118637711

/-!
# A044093: Numbers n such that string 3,1 occurs in the base 5 representation of n but not of n-1.

The programs for A044093, there is no canonical definition to state claims against.
-/

/-! ## A044093.P6719427185736739370

`A044473(n+1)+A001222(A339096(n+4))`
-/

namespace A044093.P6719427185736739370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044473 (n + 1) + A001222 (A339096 (n + 4)).toNat

end

end A044093.P6719427185736739370

/-! ## A044093.P17170103042285825120

`A049076(A000292(2*(n+2)))+A044473(n+1)`
-/

namespace A044093.P17170103042285825120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A000292 (2 * (n + 2))).toNat + A044473 (n + 1)

end

end A044093.P17170103042285825120

/-! ## A044093.P2883678751197221493

`A044473(n+1)+A001222(A014210(n))`
-/

namespace A044093.P2883678751197221493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044473 (n + 1) + A001222 (A014210 n).toNat

end

end A044093.P2883678751197221493

/-! ## A044093.P9891621824520222974

`A350714(A078441(n+1))+A044473(n+1)`
-/

namespace A044093.P9891621824520222974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350714 (A078441 (n + 1)).toNat + A044473 (n + 1)

end

end A044093.P9891621824520222974

/-! ## A044093.P13611880313012184435

`A309754(A143632(2*(n+1)))+A044473(n+1)`
-/

namespace A044093.P13611880313012184435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309754 (A143632 (2 * (n + 1))).toNat + A044473 (n + 1)

end

end A044093.P13611880313012184435

/-!
# A044094: Numbers k such that string 3,2 occurs in the base 5 representation of k but not of k-1.

The programs for A044094, there is no canonical definition to state claims against.
-/

/-! ## A044094.P5942018771078817500

`∑{d}[A044474(n+1), A225530(#)]`
-/

namespace A044094.P5942018771078817500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A225530 d

end

end A044094.P5942018771078817500

/-! ## A044094.P4793354489156952485

`record[A044474(A132663(n+1))+1]`
-/

namespace A044094.P4793354489156952485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044474 (A132663 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044094.P4793354489156952485

/-! ## A044094.P13204434031834537833

`A051953(A000230(n))+A044474(n+1)`
-/

namespace A044094.P13204434031834537833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000230 n).toNat + A044474 (n + 1)

end

end A044094.P13204434031834537833

/-! ## A044094.P12564796609933621191

`A349084(A349097(n+3))+A044474(n+1)`
-/

namespace A044094.P12564796609933621191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349084 (A349097 (n + 3)).toNat + A044474 (n + 1)

end

end A044094.P12564796609933621191

/-! ## A044094.P4719828355511718860

`A044474(n+1)-A060376(A044517(n+1))`
-/

namespace A044094.P4719828355511718860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044474 (n + 1) - A060376 (A044517 (n + 1)).toNat

end

end A044094.P4719828355511718860

/-!
# A044095: Numbers k such that string 3,3 occurs in the base 5 representation of k but not of k-1.

The programs for A044095, there is no canonical definition to state claims against.
-/

/-! ## A044095.P16562000334886620951

`A044096(n+1)-A105535(A007623(n))`
-/

namespace A044095.P16562000334886620951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044096 (n + 1) - A105535 (A007623 n).toNat

end

end A044095.P16562000334886620951

/-! ## A044095.P3087858329775434587

`A296179(n+1)+A112759(A251221(n+1))`
-/

namespace A044095.P3087858329775434587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296179 (n + 1) + A112759 (A251221 (n + 1)).toNat

end

end A044095.P3087858329775434587

/-!
# A044097: Numbers n such that string 4,0 occurs in the base-5 representation of n but not of n-1.

The programs for A044097, there is no canonical definition to state claims against.
-/

/-! ## A044097.P8698422480832445999

`or(5*A277548(n+1), A101637(A191786(n)))`
-/

namespace A044097.P8698422480832445999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * A277548 (n + 1)) (A101637 (A191786 n).toNat)

end

end A044097.P8698422480832445999

/-! ## A044097.P5541243279479137361

`5*A277548(A187829(n+1))`
-/

namespace A044097.P5541243279479137361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A277548 (A187829 (n + 1)).toNat

end

end A044097.P5541243279479137361

/-! ## A044097.P14909675199135564311

`A277548(A277548(n+1)+A187829(n+1))`
-/

namespace A044097.P14909675199135564311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277548 (A277548 (n + 1) + A187829 (n + 1)).toNat

end

end A044097.P14909675199135564311

/-! ## A044097.P6425310764676169163

`A122995(A059711(or(1, 2^n-1)))*A277548(n+1)`
-/

namespace A044097.P6425310764676169163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122995 (A059711 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat).toNat * A277548 (n + 1)

end

end A044097.P6425310764676169163

/-!
# A044098: Numbers k such that the string 4,1 occurs in the base 5 representation of k but not of k-1.

The programs for A044098, there is no canonical definition to state claims against.
-/

/-! ## A044098.P15416839710866271671

`A057427(A003410(n))+A044478(n+1)`
-/

namespace A044098.P15416839710866271671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A003410 n).toNat + A044478 (n + 1)

end

end A044098.P15416839710866271671

/-! ## A044098.P6779211843988946761

`A044478(n+1)+A003963(A112032(n))`
-/

namespace A044098.P6779211843988946761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044478 (n + 1) + A003963 (A112032 n).toNat

end

end A044098.P6779211843988946761

/-! ## A044098.P7997668872773684612

`A044478(n+1)+A035115(A035115(2*n+1))`
-/

namespace A044098.P7997668872773684612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044478 (n + 1) + A035115 (A035115 (2 * n + 1)).toNat

end

end A044098.P7997668872773684612

/-! ## A044098.P9919734251134228945

`A057427(A299264(n))+A044478(n+1)`
-/

namespace A044098.P9919734251134228945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A299264 n).toNat + A044478 (n + 1)

end

end A044098.P9919734251134228945

/-! ## A044098.P18075366710447641278

`A177702(A073102(n+1))+A044478(n+1)`
-/

namespace A044098.P18075366710447641278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A073102 (n + 1)).toNat + A044478 (n + 1)

end

end A044098.P18075366710447641278

/-!
# A044099: Numbers n such that string 4,2 occurs in the base 5 representation of n but not of n-1.

The programs for A044099, there is no canonical definition to state claims against.
-/

/-! ## A044099.P4703854719139427576

`A119350(4*n+5)+A044479(n+1)`
-/

namespace A044099.P4703854719139427576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119350 (4 * n + 5) + A044479 (n + 1)

end

end A044099.P4703854719139427576

/-! ## A044099.P9738974138840141732

`A044479(n+1)+A000034(A006331(n))`
-/

namespace A044099.P9738974138840141732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044479 (n + 1) + A000034 (A006331 n).toNat

end

end A044099.P9738974138840141732

/-! ## A044099.P2582776239186469654

`A109008(A005894(n))+A044479(n+1)`
-/

namespace A044099.P2582776239186469654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 (A005894 n).toNat + A044479 (n + 1)

end

end A044099.P2582776239186469654

/-! ## A044099.P4172626767427049164

`A109008(A073102(n+1))+A044479(n+1)`
-/

namespace A044099.P4172626767427049164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 (A073102 (n + 1)).toNat + A044479 (n + 1)

end

end A044099.P4172626767427049164

/-! ## A044099.P1506266903610993090

`A379733(A020639(3*n+2))+A044479(n+1)`
-/

namespace A044099.P1506266903610993090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379733 (A020639 (3 * n + 2)).toNat + A044479 (n + 1)

end

end A044099.P1506266903610993090

